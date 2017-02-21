// Create the service that share the Fact
DMTApp.controller('queryBuilderController', function($scope, $http, $location,config) {
    $scope.title = "Query Builder";
    $scope.go = function(path) {
        $location.path(path);
    };
});