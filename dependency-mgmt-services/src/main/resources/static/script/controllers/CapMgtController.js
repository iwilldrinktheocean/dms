DMTApp.controller('capMgtController', function($scope, $http, $location) {
    $scope.title = "Capability Management";
    $scope.totalNoCapability = "18K";
    $scope.totalNoCompCapability = 729;
    $scope.totalNoAssignedCosts = "3k";
    $scope.totalNoAlignedRelease = 46;
    $scope.totalNoCapInProd = 426;

    $scope.go = function(location) {
        $location.path(location);
    }



    var capWithRelationshipData = {
        type: 'doughnut',
        defaultFontSize: "10px",
        data: {
            datasets: [{
                data: [4, 5],
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
                    text: $scope.totalNoCapability,
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
    var capCompletedData = {
        type: 'doughnut',
        defaultFontSize: "10px",
        data: {
            datasets: [{
                data: [10, 1],
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
                    text: $scope.totalNoCompCapability,
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

    var assignedCosts = {
        type: 'doughnut',
        defaultFontSize: "10px",
        data: {
            datasets: [{
                data: [10, 1],
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
                    text: $scope.totalNoAssignedCosts,
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

    var alignedRelease = {
        type: 'doughnut',
        defaultFontSize: "10px",
        data: {
            datasets: [{
                data: [10, 1],
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
                    text: $scope.totalNoAlignedRelease,
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
    var capInProduction = {
        type: 'doughnut',
        defaultFontSize: "10px",
        data: {
            datasets: [{
                data: [10, 1],
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
                    text: $scope.totalNoCapInProd,
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

    var capRel = document.getElementById("cap-with-relationship").getContext("2d");
    window.myDoughnut = new Chart(capRel, capWithRelationshipData);

    var compChart = document.getElementById("tot-completed-capabilities").getContext("2d");
    window.myDoughnut = new Chart(compChart, capCompletedData);

    var assCostsChart = document.getElementById("cap-assigned-cost").getContext("2d");
    window.myDoughnut = new Chart(assCostsChart, assignedCosts);

    var alignedReleaseChart = document.getElementById("cap-alligned-release").getContext("2d");
    window.myDoughnut = new Chart(alignedReleaseChart, alignedRelease);

    var capInProductionChart = document.getElementById("cap-in-production").getContext("2d");
    window.myDoughnut = new Chart(capInProductionChart, capInProduction);

    //$("#leftpanel").height($("#rightpanel").height() - 50 + "px");

});