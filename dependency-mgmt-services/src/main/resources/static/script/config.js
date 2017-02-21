DMTApp.constant('config', {
    templatePath: "./script/views/",
    apiURL:"http://localhost:8080/dependency-mgmt-services/"
})

DMTApp.config(function($routeProvider, config) {

    $routeProvider.
    when('/relDepMgt', {
        templateUrl: config.templatePath + 'relDepMgt.html',
        controller: 'relDepMgtController'
    }).
    when('/relRoadmap', {
        templateUrl: config.templatePath + 'relRoadmap.html',
        controller: 'relRoadmapController'
    }).
    when('/queryBuilder', {
        templateUrl: config.templatePath + 'queryBuilder.html',
        controller: 'queryBuilderController'
    }).
    when('/capabilityDepMgt', {
        templateUrl: config.templatePath + 'capabilityDepMgt.html',
        controller: 'capabilityDepMgtController'
    }).
    when('/dependencyReporting', {
        templateUrl: config.templatePath + 'dependencyReporting.html',
        controller: 'dependencyReportingController'
    }).
    when('/dependencyRelationshipBuilder', {
        templateUrl: config.templatePath + 'dependencyRelationshipBuilder.html',
        controller: 'dependencyRelationshipBuilderController'
    }).
    when('/budgetReporting', {
        templateUrl: config.templatePath + 'budgetReporting.html',
        controller: 'budgetReportingController'
    }).
    when('/dependencyConflictReporting', {
        templateUrl: config.templatePath + 'dependencyConflictReporting.html',
        controller: 'dependencyConflictReportingController'
    }).
    when('/serviceTracker', {
        templateUrl: config.templatePath + 'serviceTracker.html',
        controller: 'serviceTrackerController'
    }).
    when('/administration', {
        templateUrl: config.templatePath + 'administration.html',
        controller: 'administrationController'
    }).
    when('/capMgt', {
        templateUrl: config.templatePath + 'capmgt.html',
        controller: 'capMgtController'
    }).
    when('/serviceMaintenance', {
        templateUrl: config.templatePath + 'serviceMaintenance.html',
        controller: 'serviceMaintenanceController'
    }).
    when('/referenceTableMgt', {
        templateUrl: config.templatePath + 'referenceTableMgt.html',
        controller: 'referenceTableMgtController'
    }).
    otherwise({
        redirectTo: '/relDepMgt'
    });
});