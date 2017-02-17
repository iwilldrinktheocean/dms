DMTApp.controller('dependencyRelationshipBuilderController', function($scope, $http, $location) {
    $scope.title = "dependency Relationship Builder";
    $scope.go = function(path) {
        $location.path(path);
    };
});