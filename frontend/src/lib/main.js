
require.config({
	baseUrl: '',
	paths: {
		jquery: 'lib/jquery/jquery-1.9.1.min',
		angular:'lib/angular/angular.min',
		angularAMD:'lib/angularAMD/src/angularAMD',
		'angular-route': 'lib/angular/angular-route.min',
		ngload: 'lib/angularAMD/src/ngload'
	},
	shim:{
		'angularAMD' : ['angular'],
		'ngload': ['angularAMD']
	},
    urlArgs: "v=" 
});

