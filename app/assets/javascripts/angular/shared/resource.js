clinic.factory('booking', ["railsResourceFactory", "railsSerializer", function(railsResourceFactory, railsSerializer) {
  var book = railsResourceFactory({
    url: '/search',
    name: 'search',
  });
  return book;
}]);
clinic.factory('Home', ["railsResourceFactory", "railsSerializer", function(railsResourceFactory, railsSerializer) {
  var book = railsResourceFactory({
    url: '/home',
    name: 'home',
  });
  return book;
}]);