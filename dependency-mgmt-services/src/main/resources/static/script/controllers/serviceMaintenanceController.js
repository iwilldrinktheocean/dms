DMTApp.controller('serviceMaintenanceController', function($scope, $http, $location,config) {
    $scope.title = "Service Maintenance";
    $scope.go = function(path) {
        $location.path(path);
    };
    $('#serviceMgtTable').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });
});