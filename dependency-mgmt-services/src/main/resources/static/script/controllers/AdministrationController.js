DMTApp.controller('administrationController', function($scope, $http, $location) {
    $scope.title = "Administration";
    $scope.go = function(path) {
        $location.path(path);
    };
});