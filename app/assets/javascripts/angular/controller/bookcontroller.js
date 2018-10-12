clinic.controller('bookcontroller', function($scope) {





		// 	if(typeof json != 'undefined'){
		// 		angular.forEach(json, function(obj_value, obj_key){
		// 			$scope[obj_key] = obj_value;
		// 			});
		// 	}
		// }
		// $scope.init_json();

		
	
		$scope.book = function(booking){
			console.log(booking)
			window.location.href = 'home/search/?patientid='+booking.patient+'&doctorid='+booking.doctor+'&date='+booking.date;
			        		
	}
	
});