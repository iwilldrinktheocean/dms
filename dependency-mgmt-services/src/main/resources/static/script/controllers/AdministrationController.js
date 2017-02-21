DMTApp.controller('administrationController', function($scope, $http, $location,config) {
    $scope.title = "Administration";
    $scope.go = function(path) {
        $location.path(path);
    };
});