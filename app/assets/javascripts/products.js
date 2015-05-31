const BASE_URL = 'http://api.lvh.me:30000/';

var productApp = angular.module('productApp', []);
//
//productApp.controller('productCtrl', function($scope, $http){
//    $request = $http({method: 'GET', url: BASE_URL + 'products'});
//    $request.success(function(products){
//        $scope.products = products;
//    });
//});

productApp.controller('uploadCtrl', function($scope, FileUploader){
    $scope.uploader = new FileUploader({url: BASE_URL + 'upload'});
});