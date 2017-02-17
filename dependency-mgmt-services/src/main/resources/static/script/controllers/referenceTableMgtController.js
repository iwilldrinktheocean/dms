// Create the service that share the Fact
DMTApp.controller('referenceTableMgtController', function($scope, $http, $location) {
    $scope.title = "Reference Table Mgt";
    $scope.go = function(path) {
        $location.path(path);
    };
});