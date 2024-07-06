<?php
include "koneksi.php";
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>StatisF1 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />
    <link href="ai.css" rel="stylesheet" />
    <script src="ai.js" defer></script>
  </head>

  <body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
      <!-- Sidebar -->
      <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
          <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
          </div>
          <div class="sidebar-brand-text mx-3">StatisF1</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0" />

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
          <a class="nav-link" href="index.php">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a
          >
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider my-0" />

        <li class="nav-item active">
          <a class="nav-link" href="login.php">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Login Admin</span></a
          >
        </li>

       

        
        

        

        

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block" />

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
          <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
      </ul>
      <!-- End of Sidebar -->

      <!-- Content Wrapper -->
      <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
          <!-- Topbar -->
          <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
            <!-- Sidebar Toggle (Topbar) -->
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
              <i class="fa fa-bars"></i>
            </button>

            

            
          </nav>
          <!-- End of Topbar -->

          <!-- Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
            </div>

            <!-- Content Row -->
            <div class="row">

            <?php
                $result = mysqli_query($conn, "SELECT * FROM `teams2023` WHERE pos = '1'");
                if ($result) {
                  $row = mysqli_fetch_assoc($result);
                  if ($row) {
            ?>
            <!-- Earnings (Monthly) Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Tim dengan point terbanyak</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $row['team']; ?></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <?php
                    } else {
                        echo "<div class='col-12'>No data found.</div>";
                    }
                } else {
                    echo "<div class='col-12'>Query failed: " . mysqli_error($conn) . "</div>";
                }
            ?>


            <?php
                $result = mysqli_query($conn, "SELECT * FROM `drivers2023` WHERE pos = '1'");
                if ($result) {
                  $row = mysqli_fetch_assoc($result);
                  if ($row) {
            ?>
              <!-- Earnings (Monthly) Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-success shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Driver dengan point terbanyak</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $row['driver']; ?></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <?php
                    } else {
                        echo "<div class='col-12'>No data found.</div>";
                    }
                } else {
                    echo "<div class='col-12'>Query failed: " . mysqli_error($conn) . "</div>";
                }
            ?>

<?php
                // Assuming you have already established a connection to your database in $conn
                $result = mysqli_query($conn, "SELECT car, COUNT(*) as win_count FROM `races2023` GROUP BY car ORDER BY win_count DESC LIMIT 1");
                if ($result) {
                    $row = mysqli_fetch_assoc($result);
                    if ($row) {
                        ?>
              <!-- Earnings (Monthly) Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-info shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Tim dengan kemenangan terbanyak</div>
                        <div class="row no-gutters align-items-center">
                          <div class="col-auto">
                            <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?php echo $row['car']; ?> | <?php echo $row['win_count']; ?></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <?php
                    } else {
                        echo "<div class='col-12'>No data found.</div>";
                    }
                } else {
                    echo "<div class='col-12'>Query failed: " . mysqli_error($conn) . "</div>";
                }
            ?>
              
              <?php
                // Assuming you have already established a connection to your database in $conn
                $result = mysqli_query($conn, "SELECT winner, COUNT(*) as win_count FROM `races2023` GROUP BY winner ORDER BY win_count DESC LIMIT 1");
                if ($result) {
                    $row = mysqli_fetch_assoc($result);
                    if ($row) {
                        ?>
              <!-- Pending Requests Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-warning shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Driver dengan kemenangan terbanyak</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $row['winner']; ?> | <?php echo $row['win_count']; ?></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <?php
                    } else {
                        echo "<div class='col-12'>No data found.</div>";
                    }
                } else {
                    echo "<div class='col-12'>Query failed: " . mysqli_error($conn) . "</div>";
                }
            ?>

            <!-- Content Row -->

            <div class="row">
              <!-- Area Chart -->
               <?php
              $query = "SELECT * FROM teams2023";
$result = mysqli_query($conn, $query);

$datatim = [];
while ($row = mysqli_fetch_assoc($result)) {
    $datatim[] = $row;
}
?>
              <div class="col-xl-8 col-lg-7">
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Team Standings Overview</h6>
                    <div class="dropdown no-arrow">
                      <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                      </a>
                      <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                        <div class="dropdown-header">Dropdown Header:</div>
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                      </div>
                    </div>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    <div class="chart-bar">
                      <canvas id="teamChartBar"></canvas>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Pie Chart -->
               <?php
              $query = "SELECT * FROM teams2023 GROUP BY pts";
$result = mysqli_query($conn, $query);

$datatim = [];
while ($row = mysqli_fetch_assoc($result)) {
    $datatim[] = $row;
}
?>
              <div class="col-xl-4 col-lg-5">
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Distribusi Point Tim</h6>
                    <div class="dropdown no-arrow">
                      <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                      </a>
                      <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                        <div class="dropdown-header">Dropdown Header:</div>
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                      </div>
                    </div>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    <div class="chart-pie pt-4 pb-2">
                      <canvas id="pointsChart"></canvas>
                    </div>
                    <div class="mt-4 text-center small">
                      <span class="mr-2"> <i class="fas fa-circle" style="color: #E6002B;"></i> Haas </span>
                      <span class="mr-2"> <i class="fas fa-circle" style="color: #A42134;"></i> Alpha Romeo </span>
                      <span class="mr-2"> <i class="fas fa-circle" style="color: #20394C;"></i> Alphatauri </span>
                      <span class="mr-2"> <i class="fas fa-circle" style="color: #00A0DE;"></i> Williams </span>
                      <span class="mr-2"> <i class="fas fa-circle" style="color: #2173B8;"></i> Alpine </span>
                      <span class="mr-2"> <i class="fas fa-circle" style="color: #002420;"></i> Aston Martin </span>
                      <span class="mr-2"> <i class="fas fa-circle" style="color: #FF8000;"></i> Mclaren </span>
                      <span class="mr-2"> <i class="fas fa-circle" style="color: #FFF200;"></i> Ferrari </span>
                      <span class="mr-2"> <i class="fas fa-circle" style="color: #00A19B;"></i> Mercedez </span>
                      <span class="mr-2"> <i class="fas fa-circle" style="color: #0402C4;"></i> Red Bull </span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            

            <!-- Content Row -->

            <div class="row">
              <!-- Area Chart -->
              <?php
              $query = "SELECT * FROM drivers2023 order by driver";
$result = mysqli_query($conn, $query);

$datadriver = [];
while ($row = mysqli_fetch_assoc($result)) {
    $datadriver[] = $row;
}
?>
              <div class="col-xl-12 col-lg-7">
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Driver Standings Overview</h6>
                    <div class="dropdown no-arrow">
                      <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                      </a>
                      <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                        <div class="dropdown-header">Dropdown Header:</div>
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                      </div>
                    </div>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    <div class="chart-area">
                      <canvas id="driverChartBar"></canvas>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <!-- area Chart -->
              <?php
              $query1 = "SELECT * FROM teams2023 order by team";
$result1 = mysqli_query($conn, $query1);

$data1 = [];
while ($row = mysqli_fetch_assoc($result1)) {
    $data1[] = $row;
}
?>

<?php
              $query2 = "SELECT * FROM teams2022 order by team";
$result2 = mysqli_query($conn, $query2);

$data2 = [];
while ($row = mysqli_fetch_assoc($result2)) {
    $data2[] = $row;
}
?>
              <div class="col-xl-12 col-lg-7">
                <div class="card shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Perbandingan Point Sekarang dengan Point Tahun Lalu</h6>
                  </div>
                  <div class="card-body">
                    <div class="chart-area">
                      <canvas id="perbandinganChartLine"></canvas>
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>

            <!-- Content Row -->
            <div class="row">
              <!-- Content Column -->
              <div class="col-lg-12 mb-4">
                <!-- Project Card Example -->
                <div class="card shadow mb-4">
                  <div class="card-header py-3">
                      <h6 class="m-0 font-weight-bold text-primary">Data Tabel Race</h6>
                  </div>
                  <div class="card-body">
                      <div class="table-responsive">
                          <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                              <thead>
                                  <tr>
                                      <th>No.</th>
                                      <th>Grand Prix</th>
                                      
                                      <th>Winner</th>
                                      <th>Car</th>
                                      <th>Laps</th>
                                      <th>Date</th>
                                  </tr>
                              </thead>
                              <tfoot>
                                  <tr>
                                      <th>No.</th>
                                      <th>Grand Prix</th>
                                      
                                      <th>Winner</th>
                                      <th>Car</th>
                                      <th>Laps</th>
                                      <th>Date</th>
                                  </tr>
                              </tfoot>
                              <tbody>
                              <?php
                    $nomor = 1;
                    $results = mysqli_query($conn, "SELECT * FROM races2023 ORDER BY id_race DESC");
                    while($rows = mysqli_fetch_array($results, MYSQLI_ASSOC))
                    {
                    ?>
                                  <tr>
                                    <td><?php echo $nomor; ?>.</td>
                                    <td><?php echo $rows['grand_prix'];?></td>
                                    <td><?php echo $rows['winner'];?></td>
                                    <td><?php echo $rows['car'];?></td>
                                    <td><?php echo $rows['laps'];?></td>
                                    <td><?php echo $rows['date'];?></td>
                                  </tr>
                                  <?php
                    $nomor = $nomor+1;
                    }
                    ?>
                              </tbody>
                          </table>
                      </div>
                  </div>
              </div>

                <!-- Color System -->
                
              

              
            </div>
          </div>
          <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright &copy; Kelompok 2 | 2024</span>
            </div>
          </div>
        </footer>
        <!-- End of Footer -->
      </div>
      <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>
    <script src="js/demo/chart-bar-demo.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', (event) => {
            // Prepare data for the chart
            const chartData = <?php echo json_encode($datatim); ?>;
            const labels = chartData.map(item => item.team);
            const points = chartData.map(item => item.pts);

            // Set new default font family and font color to mimic Bootstrap's default styling
            Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
            Chart.defaults.global.defaultFontColor = '#858796';

            // Pie Chart Example
            var ctx = document.getElementById("pointsChart");
            var myPieChart = new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: labels,
                    datasets: [{
                        data: points,
                        backgroundColor: ['#E6002B', '#A42134', '#20394C', '#00A0DE', '#2173B8', '#002420', '#FF8000', '#FFF200', '#00A19B', '#0402C4'],
                        hoverBackgroundColor: [],
                        hoverBorderColor: "rgba(234, 236, 244, 1)",
                    }],
                },
                options: {
                    maintainAspectRatio: false,
                    tooltips: {
                        backgroundColor: "rgb(255,255,255)",
                        bodyFontColor: "#858796",
                        borderColor: '#dddfeb',
                        borderWidth: 1,
                        xPadding: 15,
                        yPadding: 15,
                        displayColors: false,
                        caretPadding: 10,
                    },
                    legend: {
                        display: false
                    },
                    cutoutPercentage: 80,
                },
            });
        });
    </script>

<script>
        document.addEventListener('DOMContentLoaded', (event) => {
            // Prepare data for the chart
            const chartData = <?php echo json_encode($datatim); ?>;
            const labels = chartData.map(item => item.team);
            const points = chartData.map(item => item.pts);

            // Predefined colors for the chart
            const backgroundColors = ['#E6002B', '#A42134', '#20394C', '#00A0DE', '#2173B8', '#002420', '#FF8000', '#FFF200', '#00A19B', '#0402C4'];
            const borderColors = backgroundColors;

            // Set new default font family and font color to mimic Bootstrap's default styling
            Chart.defaults.global.defaultFontFamily = 'Nunito, -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif';
            Chart.defaults.global.defaultFontColor = '#858796';

            // Bar Chart Example
            var ctx = document.getElementById("teamChartBar");
            var myBarChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Points',
                        backgroundColor: backgroundColors.slice(0, labels.length),
                        borderColor: borderColors.slice(0, labels.length),
                        borderWidth: 1,
                        data: points,
                    }],
                },
                options: {
                    maintainAspectRatio: false,
                    layout: {
                        padding: {
                            left: 10,
                            right: 25,
                            top: 25,
                            bottom: 0
                        }
                    },
                    scales: {
                        xAxes: [{
                            gridLines: {
                                display: false,
                                drawBorder: false
                            },
                            ticks: {
                              autoSkip: false, // Ensure all labels are shown
                                maxRotation: 25, // Set the maximum rotation for the labels
                                minRotation: 25 // Set the minimum rotation for the labels
                            
                            },
                            maxBarThickness: 25,
                        }],
                        yAxes: [{
                            ticks: {
                                min: 0,
                                maxTicksLimit: 5,
                                padding: 10,
                            },
                            gridLines: {
                                color: "rgb(234, 236, 244)",
                                zeroLineColor: "rgb(234, 236, 244)",
                                drawBorder: false,
                                borderDash: [2],
                                zeroLineBorderDash: [2]
                            }
                        }],
                    },
                    legend: {
                        display: false
                    },
                    tooltips: {
                        titleMarginBottom: 10,
                        titleFontColor: '#6e707e',
                        titleFontSize: 14,
                        backgroundColor: "rgb(255,255,255)",
                        bodyFontColor: "#858796",
                        borderColor: '#dddfeb',
                        borderWidth: 1,
                        xPadding: 15,
                        yPadding: 15,
                        displayColors: false,
                        caretPadding: 10,
                        callbacks: {
                            label: function(tooltipItem, chart) {
                                var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
                                return datasetLabel + ': ' + tooltipItem.yLabel;
                            }
                        }
                    },
                },
            });
        });
    </script>


<script>
        document.addEventListener('DOMContentLoaded', (event) => {
            // Prepare data for the chart
            const chartData = <?php echo json_encode($datadriver); ?>;
            const labels = chartData.map(item => item.driver);
            const points = chartData.map(item => item.pts);

            // Generate random colors for the chart if needed
            function getRandomColor() {
                const letters = '0123456789ABCDEF';
                let color = '#';
                for (let i = 0; i < 6; i++) {
                    color += letters[Math.floor(Math.random() * 16)];
                }
                return color;
            }

            const backgroundColors = labels.map((_, i) => getRandomColor());
            const borderColors = backgroundColors.map(color => {
                // Slightly darken the color for border effect
                let col = parseInt(color.slice(1), 16);
                col = ((col & 0xfefefe) >> 1) | (col & 0x808080);
                return `#${col.toString(16).padStart(6, '0')}`;
            });

            // Set new default font family and font color to mimic Bootstrap's default styling
            Chart.defaults.global.defaultFontFamily = 'Nunito, -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif';
            Chart.defaults.global.defaultFontColor = '#858796';

            // Bar Chart Example
            var ctx = document.getElementById("driverChartBar");
            var myBarChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Points',
                        backgroundColor: backgroundColors,
                        borderColor: borderColors,
                        borderWidth: 1,
                        data: points,
                    }],
                },
                options: {
                    maintainAspectRatio: false,
                    layout: {
                        padding: {
                            left: 10,
                            right: 25,
                            top: 25,
                            bottom: 0
                        }
                    },
                    scales: {
                        xAxes: [{
                            gridLines: {
                                display: false,
                                drawBorder: false
                            },
                            ticks: {
                              autoSkip: false, // Ensure all labels are shown
                                maxRotation: 25, // Set the maximum rotation for the labels
                                minRotation: 25 // Set the minimum rotation for the labels
                            
                            },
                            maxBarThickness: 25,
                        }],
                        yAxes: [{
                            ticks: {
                                min: 0,
                                maxTicksLimit: 5,
                                padding: 10,
                            },
                            gridLines: {
                                color: "rgb(234, 236, 244)",
                                zeroLineColor: "rgb(234, 236, 244)",
                                drawBorder: false,
                                borderDash: [2],
                                zeroLineBorderDash: [2]
                            }
                        }],
                    },
                    legend: {
                        display: false
                    },
                    tooltips: {
                        titleMarginBottom: 10,
                        titleFontColor: '#6e707e',
                        titleFontSize: 14,
                        backgroundColor: "rgb(255,255,255)",
                        bodyFontColor: "#858796",
                        borderColor: '#dddfeb',
                        borderWidth: 1,
                        xPadding: 15,
                        yPadding: 15,
                        displayColors: false,
                        caretPadding: 10,
                        callbacks: {
                            label: function(tooltipItem, chart) {
                                var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
                                return datasetLabel + ': ' + tooltipItem.yLabel;
                            }
                        }
                    },
                },
            });
        });
    </script>

<script>
        document.addEventListener('DOMContentLoaded', (event) => {
            // Prepare data for the chart
            const chartData1 = <?php echo json_encode($data1); ?>;
            const chartData2 = <?php echo json_encode($data2); ?>;

            const labels = chartData1.map(item => item.team);

            const dataPoints1 = chartData1.map(item => item.pts);
            const dataPoints2 = chartData2.map(item => item.pts);

            // Line Chart Example
            var ctx = document.getElementById("perbandinganChartLine");
            var myLineChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: labels,
                    datasets: [
                        {
                            label: '2023 Points',
                            lineTension: 0.3,
                            backgroundColor: "rgba(78, 115, 223, 0.05)",
                            borderColor: "rgba(78, 115, 223, 1)",
                            pointRadius: 3,
                            pointBackgroundColor: "rgba(78, 115, 223, 1)",
                            pointBorderColor: "rgba(78, 115, 223, 1)",
                            pointHoverRadius: 3,
                            pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
                            pointHoverBorderColor: "rgba(78, 115, 223, 1)",
                            pointHitRadius: 10,
                            pointBorderWidth: 2,
                            data: dataPoints1,
                        },
                        {
                            label: '2022 Points',
                            lineTension: 0.3,
                            backgroundColor: "rgba(28, 200, 138, 0.05)",
                            borderColor: "rgba(28, 200, 138, 1)",
                            pointRadius: 3,
                            pointBackgroundColor: "rgba(28, 200, 138, 1)",
                            pointBorderColor: "rgba(28, 200, 138, 1)",
                            pointHoverRadius: 3,
                            pointHoverBackgroundColor: "rgba(28, 200, 138, 1)",
                            pointHoverBorderColor: "rgba(28, 200, 138, 1)",
                            pointHitRadius: 10,
                            pointBorderWidth: 2,
                            data: dataPoints2,
                        }
                    ],
                },
                options: {
                    maintainAspectRatio: false,
                    layout: {
                        padding: {
                            left: 10,
                            right: 25,
                            top: 25,
                            bottom: 0
                        }
                    },
                    scales: {
                        xAxes: [{
                            time: {
                                unit: 'date'
                            },
                            gridLines: {
                                display: false,
                                drawBorder: false
                            },
                            ticks: {
                              autoSkip: false, // Ensure all labels are shown
                                maxRotation: 25, // Set the maximum rotation for the labels
                                minRotation: 25, // Set the minimum rotation for the labels
                                maxTicksLimit: 7
                            }
                        }],
                        yAxes: [{
                            ticks: {
                                maxTicksLimit: 5,
                                padding: 10,
                                // Include a unit sign in the ticks
                                callback: function(value, index, values) {
                                    return number_format(value) + ' pts';
                                }
                            },
                            gridLines: {
                                color: "rgb(234, 236, 244)",
                                zeroLineColor: "rgb(234, 236, 244)",
                                drawBorder: false,
                                borderDash: [2],
                                zeroLineBorderDash: [2]
                            }
                        }],
                    },
                    legend: {
                        display: true
                    },
                    tooltips: {
                        backgroundColor: "rgb(255,255,255)",
                        bodyFontColor: "#858796",
                        titleMarginBottom: 10,
                        titleFontColor: '#6e707e',
                        titleFontSize: 14,
                        borderColor: '#dddfeb',
                        borderWidth: 1,
                        xPadding: 15,
                        yPadding: 15,
                        displayColors: false,
                        intersect: false,
                        mode: 'index',
                        caretPadding: 10,
                        callbacks: {
                            label: function(tooltipItem, chart) {
                                var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
                                return datasetLabel + ': ' + tooltipItem.yLabel + ' pts';
                            }
                        }
                    },
                },
            });
        });

        function number_format(number, decimals, dec_point, thousands_sep) {
            // *     example: number_format(1234.56, 2, ',', ' ');
            // *     return: '1 234,56'
            number = (number + '').replace(',', '').replace(' ', '');
            var n = !isFinite(+number) ? 0 : +number,
                prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
                sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
                dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
                s = '',
                toFixedFix = function(n, prec) {
                    var k = Math.pow(10, prec);
                    return '' + Math.round(n * k) / k;
                };
            // Fix for IE parseFloat(0.55).toFixed(0) = 0;
            s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
            if (s[0].length > 3) {
                s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
            }
            if ((s[1] || '').length < prec) {
                s[1] = s[1] || '';
                s[1] += new Array(prec - s[1].length + 1).join('0');
            }
            return s.join(dec);
        }
    </script>

<button class="chatbot-toggler">
      <span class="material-symbols-outlined">CB</span>
      <span class="material-symbols-outlined">X</span>
  </button>
  <div class="chatbot">
      <header>
          <h2>StatiBot</h2>
          <span class="close-btn material-symbols-outlined">close</span>
      </header>
      <ul class="chatbox">
          <li class="chat incoming">
              <span class="material-symbols-outlined">O</span>
              <p>Hi there! How can I help you today?</p>
          </li>
      </ul>
      <div class="chat-input">
          <textarea placeholder="Enter a message..." required></textarea>
          <span id="send-btn" class="material-symbols-outlined">SEND</span>
      </div>
  </div>
    
  </body>
</html>

<?php mysqli_close($conn); ?>