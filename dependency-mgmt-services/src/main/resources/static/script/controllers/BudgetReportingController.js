DMTApp.controller('budgetReportingController', function($scope, $http, $location) {
    $http.get('http://localhost:8080/dependency-mgmt-services/releaseDependencyMgmt/releases').then(function(response) {
        $scope.releases = null;
        try {
            $scope.releases = response.data.releaseDetails;
        } catch (err) {
            $scope.error = response.data;
        }
    });
    $('#projecttable').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });

    var lineConfig = {
        type: 'line',
        pointDotRadius: 10,
        bezierCurve: false,
        data: {
            fill: false,
            datasets: [{
                    label: "My First dataset",
                    fill: false,
                    lineTension: 0.1,
                    backgroundColor: "rgba(75,192,192,0.4)",
                    borderColor: "rgba(75,192,192,1)",
                    data: [65, 59, 80, 81, 56, 55, 40]
                },
                {
                    label: "My First dataset",
                    fill: false,
                    lineTension: 0.1,
                    backgroundColor: "rgba(25,22,92,0.6)",
                    borderColor: "rgba(175,211,122,1)",
                    data: [6, 45, 56, 76, 57, 87, 34]
                }
            ],
            labels: ["Scope", "Assesment", "Funding", "Design", "Bus Req", "Code", "Test"]
        },
        options: {
            responsive: true,
            pointDotRadius: 1,
            bezierCurve: false,
            scaleShowVerticalLines: false,
            scaleShowHorizontalLines: false,
            scaleGridLineColor: "black",
            legend: {
                display: false,
                position: 'right',
            },
            title: {
                display: false
            },
            scales: {
                xAxes: [{
                    display: false,
                    gridLines: {
                        display: false
                    },
                    ticks: {
                        display: false
                    }
                }],
                yAxes: [{
                    display: false,
                    gridLines: {
                        display: false
                    },
                    ticks: {
                        display: false
                    }
                }]
            },
            animation: {
                animateScale: false,
                animateRotate: false
            }
        }
    };


    var MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    var color = Chart.helpers.color;
    var barChartData = {
        labels: MONTHS,
        datasets: [{
            label: '',
            data: [31, 42, 53, 45, 65, 26, 37, 45, 57, 34, 44, 43]
        }]
    };
    var barConfig = {
        type: 'bar',
        data: barChartData,
        options: {
            responsive: true,
            animation: false,
            showScale: true,
            scaleShowGridLines: false,
            barShowStroke: false,
            tooltipXPadding: 10,
            tooltipYPadding: 6,
            tooltipFontSize: 18,
            tooltipFontStyle: 'bold',
            scaleShowLabels: false,
            showScale: false,
            legend: {
                position: 'top',
                display: false
            },
            title: {
                display: false,
                text: 'Chart.js Bar Chart'
            },
            scales: {
                xAxes: [{
                    display: false,
                    gridLines: {
                        display: false
                    },
                    ticks: {
                        display: false
                    }
                }],
                yAxes: [{
                    display: false,
                    gridLines: {
                        display: false
                    },
                    ticks: {
                        display: false
                    }
                }]
            }
        }
    };
    var pieData = {
        labels: ["Cost", "Release"],
        datasets: [{
            label: '',
            backgroundColor: [
                window.chartColors.orange,
                window.chartColors.green
            ],
            data: [22, 42]
        }]
    };
    var pieConfig = {
        type: 'pie',
        data: pieData,
        options: {
            responsive: true,
            animation: false,
            showScale: false,
            scaleShowGridLines: false,
            barShowStroke: false,
            tooltipXPadding: 10,
            tooltipYPadding: 6,
            tooltipFontSize: 18,
            tooltipFontStyle: 'bold',
            scaleShowLabels: false,
            showScale: false,
            legend: {
                position: 'top',
                display: false
            },
            title: {
                display: false,
                text: 'Pie Chart'
            },
            scales: {
                xAxes: [{
                    display: false,
                    gridLines: {
                        display: false
                    },
                    ticks: {
                        display: false
                    }
                }],
                yAxes: [{
                    display: false,
                    gridLines: {
                        display: false
                    },
                    ticks: {
                        display: false
                    }
                }]
            }
        }
    };

    var ctx1 = document.getElementById("overallcost-budget-chart-area").getContext("2d");
    window.myLine = new Chart(ctx1, lineConfig);
    var ctx2 = document.getElementById("cost-allocation-chart-area").getContext("2d");
    window.myBar = new Chart(ctx2, barConfig);
    var ctx3 = document.getElementById("cost-release-chart-area").getContext("2d");
    window.myPie = new Chart(ctx3, pieConfig);

    $scope.go = function(path) {
        $location.path(path);
    };
});