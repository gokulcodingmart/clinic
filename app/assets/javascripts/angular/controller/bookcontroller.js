clinic.controller('bookcontroller', function($scope) {




			$scope.init_json = function(){
				if(typeof json != 'undefined'){
					angular.forEach(json, function(obj_value, obj_key){
						$scope[obj_key] = obj_value;
						});
				}
			}
			$scope.init_json();

		
	
		$scope.book = function(booking,id){
			console.log(booking,id)
			window.location.href = 'home/search/?patientid='+booking.patient+'&doctorid='+id+'&date='+booking.date;
			        		
	}
	
});