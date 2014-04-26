define(function(require){
	var angurlar = require("angular");
	require("angular-route");
	var angularAMD = require("angularAMD");
	var $ = require('jquery');
	var app = angular.module("vipStore",['ngRoute']);

	app.factory("vipService",function($http, $q){
		return {
			templateInit : function (cb){
				var req = $http({
					method:"get",
					url:"/init"
				}).success(function(data){
					cb && cb(data);
				})
			}
		}
	})

	app.controller("vipInfo",function($scope,vipService){
		$scope.adImg = {
			src : "image/tmp/ad_top.jpg",
			title : "广告图"
		}

		vipService.templateInit(function(data){
			for(var key in data){
				$scope[key] = data[key]
			}

			$(".f-vn").removeClass("f-vn");
		})

		$scope.buyNumberPlus = function(item){
			++item.buyNumber;
		}

		$scope.buyNumberMinus= function(item){
			--item.buyNumber;
		}
	})

	
	angularAMD.bootstrap(app);

	
})