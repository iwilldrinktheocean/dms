DMTApp.controller('ProjectDetailController', function($scope, $http, $location,config) {

    var projectStatusData = {
        type: 'doughnut',
        defaultFontSize: "10px",
        data: {
            datasets: [{
                data: [10, 5],
                backgroundColor: [
                    "#A2D0F1",
                    "#55ACEE"
                ],
                label: 'Dataset 1'
            }],
            labels: ["Scope", "Assesment"]
        },
        options: {
            elements: {
                center: {
                    // the longest text that could appear in the center
                    maxText: '100',
                    text: '',
                    fontColor: '#36A2EB',
                    fontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
                    fontStyle: 'normal',
                    // fontSize: 12,
                    // if a fontSize is NOT specified, we will scale (within the below limits) maxText to take up the maximum space in the center
                    // if these are not specified either, we default to 1 and 256
                    minFontSize: 1,
                    maxFontSize: 20,
                }
            },
            responsive: true,
            legend: {
                position: 'none',
            },
            title: {
                display: false
            },
            animation: {
                animateScale: true,
                animateRotate: true
            }
        }
    };

    var projectStatusChart = document.getElementById("project-status").getContext("2d");
    window.myDoughnut = new Chart(projectStatusChart, projectStatusData);


    $scope.go = function(location) {
        $location.path(location);
    }

    $scope.LoadData = function() {

    }

    $('#relProjectTable').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });

    $('#impactedApplication').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });
});