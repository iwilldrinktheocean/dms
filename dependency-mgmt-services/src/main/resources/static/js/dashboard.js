var DMTApp = angular.module('DMTApp', []);
// Create the service that share the Fact
DMTApp.controller('queryBuilderController', function ($scope,$http,$location) {
	$scope.title = "Query Builder";
	$scope.go = function (path) {
		$location.path(path);
	};
});
DMTApp.controller('administrationController', function ($scope,$http,$location) {
	$scope.title = "Administration";
	$scope.go = function (path) {
		$location.path(path);
	};
});

DMTApp.controller('serviceTrackerController', function ($scope,$http,$location) {
	$scope.title = "Service Tracker";
	$scope.go = function (path) {
		$location.path(path);
	};
	$('#inprogressProjectsTable').dataTable({
		"bFilter": false,
		"bPaginate": false,
		"bInfo":false
	});
	$('#completedProjectsTable').dataTable({
		"bFilter": false,
		"bPaginate": false,
		"bInfo":false
	});
	$('#page61Table').dataTable({
		"bFilter": false,
		"bPaginate": false,
		"bInfo":false
	});
	$('#projectTrackInprogressTable').dataTable({
		"bFilter": false,
		"bPaginate": false,
		"bInfo":false
	});
	$('#projectTrackCompletedTable').dataTable({
		"bFilter": false,
		"bPaginate": false,
		"bInfo":false
	});
	$('#projectTrackUnassignedTable').dataTable({
		"bFilter": false,
		"bPaginate": false,
		"bInfo":false
	});
	$('#requirementAllServicesTable').dataTable({
		"bFilter": false,
		"bPaginate": false,
		"bInfo":false
	});
	$('#requirementServicesTable').dataTable({
		"bFilter": false,
		"bPaginate": false,
		"bInfo":false
	});	
});
DMTApp.controller('dependencyRelationshipBuilderController', function ($scope,$http,$location) {
	$scope.title = "dependency Relationship Builder";
	$scope.go = function (path) {
		$location.path(path);
	};
});
DMTApp.controller('dependencyConflictReportingController', function ($scope,$http,$location) {
	$('#budgetReportTable').dataTable({
		"bFilter": false,
		"bPaginate": false,
		"bInfo":false
	});
	$scope.go = function (path) {
		$location.path(path);
	};
});
DMTApp.controller('capabilityDepMgtController', function ($scope,$http,$location) {
	$scope.title = "Capability Dependency Management";
	$('#queryresultstable').dataTable({
		"bFilter": false,
		"bPaginate": false,
		"bInfo":false
	});
	$scope.go = function (path) {
		$location.path(path);
	};
});
DMTApp.controller('relDepMgtController', function ($scope,$http,$location) {
	$scope.title = "Welcome to the application.";
	$http.get('http://localhost:8080/dependency-mgmt-services/releaseDependencyMgmt/releases').then(function(response) {
		$scope.releases=null;
		try{
			$scope.releases = response.data.releases;
		}catch(err)
		{
			$scope.error=response.data;
		}
	});
	$http.get('http://localhost:8080/dependency-mgmt-services/releaseDependencyMgmt/summary/report').then(function(response) {
		$scope.report=null;
		try{
			$scope.report = response.data;
		}catch(err){}
	});
	$scope.go = function (path) {
		$location.path(path);
	};
});
DMTApp.controller('dependencyReportingController', function ($scope,$http,$location) {
	$scope.title = "Dependency Reporting";
	$http.get('http://localhost:8080/dependency-mgmt-services/releaseDependencyMgmt/releases').then(function(response) {
		$scope.releases=null;
		try{
			$scope.releases = response.data.releases;
		}catch(err)
		{
			$scope.error=response.data;
		}
	});
	$scope.go = function (path) {
		$location.path(path);
	};
});
DMTApp.controller('budgetReportingController', function ($scope,$http,$location) {
	$('#projecttable').dataTable({
		"bFilter": false,
		"bPaginate": false,
		"bInfo":false
	});

	var lineConfig = {
		type: 'line',
		pointDotRadius: 10,
		bezierCurve: false,
		data: {
		fill:false,
		datasets: [
        {
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
			labels: ["Scope","Assesment","Funding","Design","Bus Req","Code","Test"]
		},
		options: {
			responsive: true,
			pointDotRadius: 1,
			bezierCurve: false,
			scaleShowVerticalLines: false,
			scaleShowHorizontalLines: false,
			scaleGridLineColor: "black",
			legend: {
				display:false,
				position: 'right',
			},
			title: {
				display: false
			},
			scales: {
				xAxes: [{
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
						display: false
					}
				}],
				yAxes: [{
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
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
			data: [31,42,53,45,65,26,37,45,57,34,44,43]
		}]
	};
	var barConfig= {
		type: 'bar',
		data: barChartData,
		options: {
			responsive:true,
			animation: false,
			showScale: true,
			scaleShowGridLines : false,
			barShowStroke: false,
			tooltipXPadding: 10,
			tooltipYPadding: 6,
			tooltipFontSize: 18,
			tooltipFontStyle: 'bold',
			scaleShowLabels: false,
			showScale: false,
			legend: {
				position: 'top',
				display:false
			},
			title: {
				display: false,
				text: 'Chart.js Bar Chart'
			},
			scales: {
				xAxes: [{
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
						display: false
					}
				}],
				yAxes: [{
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
						display: false
					}
				}]
			}
		}
	};
	var pieData = {
		labels: ["Cost","Release"],
		datasets: [{
			label: '',
			backgroundColor: [
			window.chartColors.orange,
			window.chartColors.green
			],
			data: [22,42]
		}]
	};
	var pieConfig= {
		type: 'pie',
		data: pieData,
		options: {
			responsive:true,
			animation: false,
			showScale: false,
			scaleShowGridLines : false,
			barShowStroke: false,
			tooltipXPadding: 10,
			tooltipYPadding: 6,
			tooltipFontSize: 18,
			tooltipFontStyle: 'bold',
			scaleShowLabels: false,
			showScale: false,
			legend: {
				position: 'top',
				display:false
			},
			title: {
				display: false,
				text: 'Pie Chart'
			},
			scales: {
				xAxes: [{
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
						display: false
					}
				}],
				yAxes: [{
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
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

	$scope.go = function (path) {
		$location.path(path);
	};
});

DMTApp.controller('relRoadmapController', function ($scope,$http,$location) {
	$scope.title = "As a software developer, I've always loved to build things...";
	Chart.defaults.global.defaultFontFamily = "'Roboto', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif";
	Chart.defaults.global.legend.position = 'bottom';
	Chart.defaults.global.legend.labels.usePointStyle = true;
	Chart.defaults.global.legend.labels.boxWidth = 5;
	Chart.defaults.global.legend.labels.fontSize = 5;
	Chart.defaults.global.tooltips.backgroundColor = '#000';
	$scope.renderTable=function()
	{
		$('#projecttable').dataTable({
			"bFilter": false,
			"bPaginate": false,
			"bInfo":false
		});
	};
	$scope.go = function (path) {
		$location.path(path);
	};
	$scope.renderTable();
	var config1 = {
		type: 'doughnut',
		defaultFontSize:"10px",
		data: {
			datasets: [{
				data: [4,5,8,9,5,7,8],
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
			labels: ["Scope","Assesment","Funding","Design","Bus Req","Code","Test"]
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
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
						display: false
					}
				}],
				yAxes: [{
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
						display: false
					}
				}]
			}
		}
	};
	var config3 = {
		type: 'doughnut',
		defaultFontSize:"10px",
		data: {
			datasets: [{
				data: [4,5,8,9,5,7,8],
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
			labels: ["Scope","Assesment","Funding","Design","Bus Req","Code","Test"]
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
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
						display: false
					}
				}],
				yAxes: [{
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
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
			data: [31,42,53,45,65,26,37,45,57,34,44,43]
		}]
	};
	var barChartData2 = {
		labels: MONTHS,
		datasets: [{
			label: '',
			data: [22,42,32,42,42,26,39,35,57,65,44,21]
		}]
	};
	var config2= {
		type: 'bar',
		data: barChartData,
		options: {
			responsive:true,
			animation: false,
			showScale: true,
			scaleShowGridLines : false,
			barShowStroke: false,
			tooltipXPadding: 10,
			tooltipYPadding: 6,
			tooltipFontSize: 18,
			tooltipFontStyle: 'bold',
			scaleShowLabels: false,
			showScale: false,
			legend: {
				position: 'top',
				display:false
			},
			title: {
				display: false,
				text: 'Chart.js Bar Chart'
			},
			scales: {
				xAxes: [{
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
						display: false
					}
				}],
				yAxes: [{
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
						display: false
					}
				}]
			}
		}
	};
	var config4= {
		type: 'bar',
		data: barChartData2,
		options: {
			responsive:true,
			animation: false,
			showScale: true,
			scaleShowGridLines : false,
			barShowStroke: false,
			tooltipXPadding: 10,
			tooltipYPadding: 6,
			tooltipFontSize: 18,
			tooltipFontStyle: 'bold',
			scaleShowLabels: false,
			showScale: false,
			legend: {
				position: 'top',
				display:false
			},
			title: {
				display: false,
				text: 'Chart.js Bar Chart'
			},
			scales: {
				xAxes: [{
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
						display: false
					}
				}],
				yAxes: [{
					display:false,
					gridLines: {
						display:false
					},
					ticks:{
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
	$("#leftpanel").height( $("#rightpanel").height()-50 + "px");
});
DMTApp.config(function ($routeProvider) {
	$routeProvider.
	when('/relDepMgt', {
		templateUrl: 'relDepMgt.html',
		controller: 'relDepMgtController'
	}).
	when('/relRoadmap', {
		templateUrl: 'relRoadmap.html',
		controller: 'relRoadmapController'
	}).
	when('/queryBuilder', {
		templateUrl: 'queryBuilder.html',
		controller: 'queryBuilderController'
	}).
	when('/capabilityDepMgt', {
		templateUrl: 'capabilityDepMgt.html',
		controller: 'capabilityDepMgtController'
	}).
	when('/dependencyReporting', {
		templateUrl: 'dependencyReporting.html',
		controller: 'dependencyReportingController'
	}).
	when('/dependencyRelationshipBuilder', {
		templateUrl: 'dependencyRelationshipBuilder.html',
		controller: 'dependencyRelationshipBuilderController'
	}).
	when('/budgetReporting', {
		templateUrl: 'budgetReporting.html',
		controller: 'budgetReportingController'
	}).
	when('/dependencyConflictReporting', {
		templateUrl: 'dependencyConflictReporting.html',
		controller: 'dependencyConflictReportingController'
	}).
	when('/serviceTracker', {
		templateUrl: 'serviceTracker.html',
		controller: 'serviceTrackerController'
	}).
	when('/administration', {
		templateUrl: 'administration.html',
		controller: 'administrationController'
	}).
	otherwise({
		redirectTo: '/relDepMgt'
	});
});