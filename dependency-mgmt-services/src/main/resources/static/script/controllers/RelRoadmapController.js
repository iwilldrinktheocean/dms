DMTApp.controller('relRoadmapController', function($scope, $http, $location,config) {
    $scope.title = "As a software developer, I've always loved to build things...";
	$scope.releases = null;
    $http.get(config.apiURL + 'releaseDependencyMgmt/releases').then(function(response) {
        try {
            $scope.releases = response.data.releaseDetails;
        } catch (err) {
            $scope.error = response.data;
        }
    });

    Chart.defaults.global.defaultFontFamily = "'Roboto', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif";
    Chart.defaults.global.legend.position = 'bottom';
    Chart.defaults.global.legend.labels.usePointStyle = true;
    Chart.defaults.global.legend.labels.boxWidth = 5;
    Chart.defaults.global.legend.labels.fontSize = 5;
    Chart.defaults.global.tooltips.backgroundColor = '#000';
    $scope.renderTable = function() {
        $('#projecttable').dataTable({
            "bFilter": false,
            "bPaginate": false,
            "bInfo": false
        });
    };
    $scope.go = function(path) {
        $location.path(path);
    };
    $scope.renderTable();
    var config1 = {
        type: 'doughnut',
        defaultFontSize: "10px",
        data: {
            datasets: [{
                data: [4, 5, 8, 9, 5, 7, 8],
                backgroundColor: [
                    window.chartColors.red,
                    window.chartColors.orange,
                    window.chartColors.yellow,
                    window.chartColors.green,
                    window.chartColors.blue,
                    window.chartColors.blue,
                    window.chartColors.red
                ],
                label: 'Dataset 1'
            }],
            labels: ["Scope", "Assesment", "Funding", "Design", "Bus Req", "Code", "Test"]
        },
        options: {
            responsive: true,
            legend: {
                position: 'right',
            },
            title: {
                display: false
            },
            animation: {
                animateScale: true,
                animateRotate: true
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
    var config3 = {
        type: 'doughnut',
        defaultFontSize: "10px",
        data: {
            datasets: [{
                data: [4, 5, 8, 9, 5, 7, 8],
                backgroundColor: [
                    window.chartColors.red,
                    window.chartColors.orange,
                    window.chartColors.yellow,
                    window.chartColors.green,
                    window.chartColors.blue,
                    window.chartColors.blue,
                    window.chartColors.red
                ],
                label: 'Dataset 1'
            }],
            labels: ["Scope", "Assesment", "Funding", "Design", "Bus Req", "Code", "Test"]
        },
        options: {
            responsive: true,
            legend: {
                position: 'right',
            },
            title: {
                display: false
            },
            animation: {
                animateScale: true,
                animateRotate: true
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

    var MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    var color = Chart.helpers.color;
    var barChartData = {
        labels: MONTHS,
        datasets: [{
            label: '',
            data: [31, 42, 53, 45, 65, 26, 37, 45, 57, 34, 44, 43]
        }]
    };
    var barChartData2 = {
        labels: MONTHS,
        datasets: [{
            label: '',
            data: [22, 42, 32, 42, 42, 26, 39, 35, 57, 65, 44, 21]
        }]
    };
    var config2 = {
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
    var config4 = {
        type: 'bar',
        data: barChartData2,
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
    var ctx1 = document.getElementById("release-chart-area").getContext("2d");
    window.myDoughnut = new Chart(ctx1, config1);
    var ctx2 = document.getElementById("budget-tracking-chart-area").getContext("2d");
    window.myDoughnut = new Chart(ctx2, config2);
    var ctx3 = document.getElementById("known-gaps-chart-area").getContext("2d");
    window.myDoughnut = new Chart(ctx3, config3);
    var ctx4 = document.getElementById("resource-allocation-chart-area").getContext("2d");
    window.myDoughnut = new Chart(ctx4, config4);
    $("#leftpanel").height($("#rightpanel").height() - 50 + "px");
});