var app = angular.module('productApp');


app.factory('ProductService', function($http){
    const BASE_URL = 'http://api.lvh.me:3000/';
    var service = {}
    service.page = function(page){
      return $http.get(BASE_URL+'products/' + page);
    };
    service.all = function(){
      return [{title: 'best product ever', price: 20.00, image: {url: 'http://ekit.co.uk/GalleryEntries/eCommerce_solutions_and_services/MedRes_Product-presentation-2.jpg?q=27012012153123'}}];
    };

    return service;
});