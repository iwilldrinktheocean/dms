DMTApp.controller('serviceTrackerController', function($scope, $http, $location,config) {
    $scope.title = "Service Tracker";
    $scope.go = function(path) {
        $location.path(path);
    };
    $('#inprogressProjectsTable').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });
    $('#completedProjectsTable').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });
    $('#page61Table').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });
    $('#projectTrackInprogressTable').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });
    $('#projectTrackCompletedTable').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });
    $('#projectTrackUnassignedTable').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });
    $('#requirementAllServicesTable').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });
    $('#requirementServicesTable').dataTable({
        "bFilter": false,
        "bPaginate": false,
        "bInfo": false
    });
});