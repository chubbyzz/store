const BASE_URL = 'http://api.lvh.me:30000/';

var productApp = angular.module('productApp', []);

productApp.controller('listCtrl', ['$scope', 'ProductService',function($scope, ProductService){
    var products = ProductService.page(1)
    $scope.list = products;
}]);

//productApp.controller('uploadCtrl', function($scope, FileUploader){
//    $scope.uploader = new FileUploader({url: BASE_URL + 'upload'});
//});