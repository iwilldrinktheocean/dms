DMTApp.controller('dependencyConflictReportingController', function($scope, $http, $location,config) {
    $http.get(config.apiURL +'releaseDependencyMgmt/releases').then(function(response) {
        $scope.releases = null;
        try {
            $scope.releases = response.data.releaseDetails;
        } catch (err) {
            $scope.error = response.data;
        }
    });
    $('#budgetReportTable').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });
    $scope.go = function(path) {
        $location.path(path);
    };
});