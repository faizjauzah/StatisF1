// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

var key_metrics = ["Completed Orders", "Pending Orders", "Cancelled Orders", "Clicks Do Not Sale"];

//Pie Chart Example
var Conversionctx = document.getElementById("myPieChart");
var myPieChart = new Chart(Conversionctx, {
    type: 'doughnut',
    data: {
        labels: key_metrics,
        datasets: [{
            data: conversionRateData,
            backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#ff6384'],
            hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf', '#ff6384'],
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
