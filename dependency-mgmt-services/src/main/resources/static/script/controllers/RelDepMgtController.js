DMTApp.controller('relDepMgtController', function($scope, $http, $location) {
    $scope.title = "Welcome to the application.";
    $http.get('http://localhost:8080/dependency-mgmt-services/releaseDependencyMgmt/releases').then(function(response) {
        $scope.releases = null;
        try {
            $scope.releases = response.data.releaseDetails;
        } catch (err) {
            $scope.error = response.data;
        }
    });
    $http.get('http://localhost:8080/dependency-mgmt-services/releaseDependencyMgmt/summary/report').then(function(response) {
        $scope.report = null;
        try {
            $scope.report = response.data;
        } catch (err) {}
    });

	$scope.getAdminDetails = function() {
		$http.get('http://localhost:8080/dependency-mgmt-services/releaseDependencyMgmt/summary/report/administration/release/' + $scope.selectedAdministrationReleaseId).then(function(response) {
		    try {
		        console.log($scope.report.administration);
		        $scope.report.administration = response.data;
		        console.log($scope.report.administration);
		    } catch (err) {}
		});
	};

	$scope.getDeliveryRoadmap = function() {
		$http.get('http://localhost:8080/dependency-mgmt-services/releaseDependencyMgmt/summary/report/deliveryroadmap/release/' + $scope.selectedDeliveryRoadmapReleaseId).then(function(response) {
		    try {
		        console.log($scope.report.deliveryRoadmap);
		        $scope.report.deliveryRoadmap = response.data;
		        console.log($scope.report.deliveryRoadmap);
		    } catch (err) {}
		});
	};

	$scope.getResourceAllocation = function() {
		$http.get('http://localhost:8080/dependency-mgmt-services/releaseDependencyMgmt/summary/report/resourceallocation/release/' + $scope.selectedResourceAllocationReleaseId).then(function(response) {
		    try {
		        console.log($scope.report.resourceAllocation);
		        $scope.report.resourceAllocation = response.data;
		        console.log($scope.report.resourceAllocation);
		    } catch (err) {}
		});
	};

	$scope.getDependencyRelationship = function() {
		$http.get('http://localhost:8080/dependency-mgmt-services/releaseDependencyMgmt/summary/report/dependencyrelationship/release/' + $scope.selectedDependencyRelationshipReleaseId).then(function(response) {
		    try {
		        console.log($scope.report.dependencyRelationshipManagement);
		        $scope.report.dependencyRelationshipManagement = response.data;
		        console.log($scope.report.dependencyRelationshipManagement);
		    } catch (err) {}
		});
	};

	$scope.getDependencyByService = function() {
		$http.get('http://localhost:8080/dependency-mgmt-services/releaseDependencyMgmt/summary/report/dependencybyservice/release/' + $scope.selectedDependencyByServiceReleaseId).then(function(response) {
		    try {
		        console.log($scope.report.dependencyByService);
		        $scope.report.dependencyByService = response.data;
		        console.log($scope.report.dependencyByService);
		    } catch (err) {}
		});
	};


	$scope.getReleaseDependencyManagement = function() {
		$http.get('http://localhost:8080/dependency-mgmt-services/releaseDependencyMgmt/summary/report/dependencymetric/release/' + $scope.selectedReleaseDependencyManagementReleaseId).then(function(response) {
		    try {
		        console.log($scope.report.dependencyMetric);
		        $scope.report.dependencyMetric = response.data;
		        console.log($scope.report.dependencyMetric);
		    } catch (err) {}
		});
	};

    $scope.go = function(path) {
        $location.path(path);
    };
});