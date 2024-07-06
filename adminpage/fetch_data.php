<?php
// fetch_data.php

include 'db_connect.php';

//unconditioned variables
// Fetch admin data
$admin_query = "SELECT * FROM admins";
$admin_result = $conn->query($admin_query);

// Fetch user data
$user_query = "SELECT * FROM users";
$user_result = $conn->query($user_query);

// Fetch link data
$link_query = "SELECT * FROM links";
$link_result = $conn->query($link_query);

// Fetch click data
$click_query = "SELECT * FROM clicks";
$click_result = $conn->query($click_query);

// Fetch order data
$order_query = "SELECT * FROM orders";
$order_result = $conn->query($order_query);

// Fetch sales data
$sales_query = "SELECT * FROM sales";
$sales_result = $conn->query($sales_query);

//conditioned variables
// Fetch sales data within the last 30 days
$sales_query = "
    SELECT o.amount, s.sale_time 
    FROM sales s 
    JOIN orders o ON s.order_id = o.order_id 
    WHERE o.status = 'completed' AND s.sale_time >= NOW() - INTERVAL 30 DAY";
$sales_result = $conn->query($sales_query);

// Fetch current month earnings
$current_month_query = "
    SELECT SUM(o.amount) AS earnings
    FROM sales s 
    JOIN orders o ON s.order_id = o.order_id 
    WHERE o.status = 'completed' AND MONTH(s.sale_time) = MONTH(NOW()) AND YEAR(s.sale_time) = YEAR(NOW())";
$current_month_result = $conn->query($current_month_query);
$current_month_earnings = $current_month_result->fetch_assoc()['earnings'];

// Fetch previous month earnings
$previous_month_query = "
    SELECT SUM(o.amount) AS earnings
    FROM sales s 
    JOIN orders o ON s.order_id = o.order_id 
    WHERE o.status = 'completed' AND MONTH(s.sale_time) = MONTH(NOW() - INTERVAL 1 MONTH) AND YEAR(s.sale_time) = YEAR(NOW() - INTERVAL 1 MONTH)";
$previous_month_result = $conn->query($previous_month_query);
$previous_month_earnings = $previous_month_result->fetch_assoc()['earnings'];

// Fetch total orders
$total_orders_query = "SELECT COUNT(*) AS total_orders FROM orders";
$total_orders_result = $conn->query($total_orders_query);
$total_orders = $total_orders_result->fetch_assoc()['total_orders'];

// Fetch total clicks
$total_clicks_query = "SELECT COUNT(*) AS total_clicks FROM clicks";
$total_clicks_result = $conn->query($total_clicks_query);
$total_clicks = $total_clicks_result->fetch_assoc()['total_clicks'];

// Fetch total sales
$total_sales_query = "SELECT COUNT(*) AS total_sales FROM sales";
$total_sales_result = $conn->query($total_sales_query);
$total_sales = $total_sales_result->fetch_assoc()['total_sales'];

// Fetch the number of pending orders
$pending_orders_query = "SELECT COUNT(*) AS pending_orders FROM orders WHERE status = 'pending'";
$pending_orders_result = $conn->query($pending_orders_query);
$pending_orders = $pending_orders_result->fetch_assoc()['pending_orders'];

// Fetch the number of completed orders
$completed_orders_query = "SELECT COUNT(*) AS completed_orders FROM orders WHERE status = 'completed'";
$completed_orders_result = $conn->query($completed_orders_query);
$completed_orders = $completed_orders_result->fetch_assoc()['completed_orders'];

// Fetch the number of canceled orders
$cancelled_orders_query = "SELECT COUNT(*) AS cancelled_orders FROM orders WHERE status = 'cancelled'";
$cancelled_orders_result = $conn->query($cancelled_orders_query);
$cancelled_orders = $cancelled_orders_result->fetch_assoc()['cancelled_orders'];

// Calculate clicksDoNotSale directly in SQL
$clicksDoNotSale_query = "
    SELECT (total_clicks - total_orders) AS clicksDoNotSale 
    FROM (
        SELECT COUNT(*) AS total_clicks 
        FROM clicks
    ) AS total_clicks, (
        SELECT COUNT(*) AS total_orders 
        FROM orders
    ) AS total_orders";
$clicksDoNotSale_result = $conn->query($clicksDoNotSale_query);
$clicksDoNotSale = $clicksDoNotSale_result->fetch_assoc()['clicksDoNotSale'];

// Create data array for conversion rate and ensure all values are strings
$conversion_rate_data = [
    'completed_orders' => $completed_orders,
    'pending_orders' => $pending_orders,
    'cancelled_orders' => $cancelled_orders,
    'clicksDoNotSale' => $clicksDoNotSale
];

// Fetch clicks per month
$clicks_per_month_query = "
    SELECT DATE_FORMAT(click_time, '%Y-%m') AS month, COUNT(*) AS clicks
    FROM clicks
    GROUP BY month
    ORDER BY month";
$clicks_per_month_result = $conn->query($clicks_per_month_query);

$clicks_per_month = [];
while ($row = $clicks_per_month_result->fetch_assoc()) {
    $clicks_per_month[$row['month']] = $row['clicks'];
}

// Fetch sales per month
$sales_per_month_query = "
    SELECT DATE_FORMAT(s.sale_time, '%Y-%m') AS month, COUNT(*) AS sales
    FROM sales s
    JOIN orders o ON s.order_id = o.order_id
    WHERE o.status = 'completed'
    GROUP BY month
    ORDER BY month";
$sales_per_month_result = $conn->query($sales_per_month_query);

$sales_per_month = [];
while ($row = $sales_per_month_result->fetch_assoc()) {
    $sales_per_month[$row['month']] = $row['sales'];
}

// Fetch earnings per month
$earnings_per_month_query = "
    SELECT DATE_FORMAT(s.sale_time, '%Y-%m') AS month, SUM(o.amount) AS earnings
    FROM sales s
    JOIN orders o ON s.order_id = o.order_id
    WHERE o.status = 'completed'
    GROUP BY month
    ORDER BY month";
$earnings_per_month_result = $conn->query($earnings_per_month_query);

$earnings_per_month = [];
while ($row = $earnings_per_month_result->fetch_assoc()) {
    $earnings_per_month[$row['month']] = $row['earnings'];
}

// komparasi 2 link
// Fetch performance for two links
$link1_id = 4; // Change to the actual link ID
$link2_id = 10; // Change to the actual link ID

$performance_query = "
    SELECT DATE_FORMAT(click_time, '%Y-%m') AS month, 
           SUM(CASE WHEN link_id = $link1_id THEN 1 ELSE 0 END) AS link1_performance,
           SUM(CASE WHEN link_id = $link2_id THEN 1 ELSE 0 END) AS link2_performance
    FROM clicks
    GROUP BY month
    ORDER BY month";
$performance_result = $conn->query($performance_query);

$link1_performance = [];
$link2_performance = [];
$months = [];
while ($row = $performance_result->fetch_assoc()) {
    $months[] = $row['month'];
    $link1_performance[] = $row['link1_performance'];
    $link2_performance[] = $row['link2_performance'];
}

$conn->close();
?>

<script>
    // data buat bar chart
    var clicksPerMonth = <?php echo json_encode(array_values($clicks_per_month)); ?>;
    var salesPerMonth = <?php echo json_encode(array_values($sales_per_month)); ?>;
    var months_of_clicks = <?php echo json_encode(array_keys($clicks_per_month)); ?>;
    var months_of_sales = <?php echo json_encode(array_keys($sales_per_month)); ?>;
</script>
<script>
    // data buat Pie Chart
    var conversionRateData = <?php echo json_encode(array_values($conversion_rate_data)); ?>;
</script>
<script>
    var earningsPerMonth = <?php echo json_encode(array_values($earnings_per_month)); ?>;
    var months_of_earnings = <?php echo json_encode(array_keys($earnings_per_month)); ?>;
</script>
<script>
    var months_of_linksPerformance = <?php echo json_encode($months); ?>;
    var link1Performance = <?php echo json_encode($link1_performance); ?>;
    var link2Performance = <?php echo json_encode($link2_performance); ?>;
</script>