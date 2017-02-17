DMTApp.controller('capabilityDepMgtController', function($scope, $http, $location) {
    $scope.title = "Capability Dependency Management";
    $('#queryresultstable').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });
    $scope.go = function(path) {
        $location.path(path);
    };
});