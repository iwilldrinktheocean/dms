DMTApp.controller('dependencyReportingController', function($scope, $http, $location,config) {
    $scope.title = "Dependency Reporting";
    $scope.metrics={dynamicReporting:null,budgetReporting:null,FTEAllocationReporting:null,conflictReporting:null,projectReporting:null,requirementsReporting:null};
    $http.get(config.apiURL + 'releaseDependencyMgmt/releases').then(function(response) {
        $scope.releases = null;
        try {
            $scope.releases = response.data.releaseDetails;
			$("select").trigger("change");
        } catch (err) {
            $scope.error = response.data;
        }
    });

	$scope.getDynamicReporting=function()
	{
		$http.get(config.apiURL +'dependencyMetricMgmt/summary/report/dynamicreporting/release/' + $scope.selectedDynamicReportingReleaseId).then(function(response) {
		    try {
		        console.log($scope.metrics.dynamicReporting);
		        $scope.metrics.dynamicReporting = response.data;
		        console.log($scope.metrics.dynamicReporting);
		    } catch (err) {}
		});
	};

	$scope.getBudgetReporting=function()
	{
		$http.get(config.apiURL +'dependencyMetricMgmt/summary/report/budgetreporting/release/' + $scope.selectedBudgetReportingReleaseId).then(function(response) {
		    try {
		        console.log($scope.metrics.budgetReporting);
		        $scope.metrics.budgetReporting = response.data;
		        console.log($scope.metrics.budgetReporting);
		    } catch (err) {}
		});		
	}

	$scope.getFTEAllocationReporting=function()
	{
		$http.get(config.apiURL +'dependencyMetricMgmt/summary/report/fteallocation/release/' + $scope.selectedFTEAllocationReportingReleaseId).then(function(response) {
		    try {
		        console.log($scope.metrics.FTEAllocationReporting);
		        $scope.metrics.FTEAllocationReporting = response.data;
		        console.log($scope.metrics.FTEAllocationReporting);
		    } catch (err) {}
		});		
	}

	$scope.getDependencyConflictReporting=function()
	{
		$http.get(config.apiURL +'dependencyMetricMgmt/summary/report/dependencyConflict/release/' + $scope.selectedDependencyConflictReportingReleaseId).then(function(response) {
		    try {
		        console.log($scope.metrics.conflictReporting);
		        $scope.metrics.conflictReporting = response.data;
		        console.log($scope.metrics.conflictReporting);
		    } catch (err) {}
		});		
	}

	$scope.getProjectReporting=function()
	{
		$http.get(config.apiURL +'dependencyMetricMgmt/summary/report/programorprojectreporting/release/' + $scope.selectedProjectReportingReleaseId).then(function(response) {
		    try {
		        console.log($scope.metrics.projectReporting);
		        $scope.metrics.projectReporting = response.data;
		        console.log($scope.metrics.projectReporting);
		    } catch (err) {}
		});		
	}

	$scope.getRequirementsReporting=function()
	{
		$http.get(config.apiURL +'dependencyMetricMgmt/summary/report/capabilityORRequirements/release/' + $scope.selectedRequirementsReportingReleaseId).then(function(response) {
		    try {
		        console.log($scope.metrics.requirementsReporting);
		        $scope.metrics.requirementsReporting = response.data;
		        console.log($scope.metrics.requirementsReporting);
		    } catch (err) {}
		});		
	}

    $scope.go = function(path) {
        $location.path(path);
    };
	
});