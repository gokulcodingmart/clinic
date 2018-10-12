// var clinic = angular.module('clinic', []);

var clinic = angular.module('clinic',['rails']);

clinic.config(["railsSerializerProvider", function(railsSerializerProvider) {
    railsSerializerProvider.underscore(angular.identity).camelize(angular.identity);
}]);

clinic.config(["$httpProvider", function($httpProvider) {
  $httpProvider.defaults.headers.common['X-CSRF-Token'] =
    $('meta[name=csrf-token]').attr('content');
  $httpProvider.defaults.headers.common['X-Requested-With'] = 'AngularXMLHttpRequest'
}]);

clinic.run(function($rootScope) {
    $rootScope.keys = Object.keys;
});




