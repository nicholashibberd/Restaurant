var geocoder;
var map;
function initialize() {
	geocoder = new google.maps.Geocoder();
	var latlng = new google.maps.LatLng(/*<%= @site.lat %>, <%= @site.long %>*/51.1990956, 1.3896089);
	var myOptions = {
		zoom: 8,
		center: latlng,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	}
	map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	var marker = new google.maps.Marker({
	      position: latlng,
	      title:"Hello World!"
	  });

	  // To add the marker to the map, call setMap();
	  marker.setMap(map);
}

function codeAddress() {
	var address = document.getElementById("geocode_address").value;
	geocoder.geocode( { 'address': address}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			map.setCenter(results[0].geometry.location);
			var marker = new google.maps.Marker({
				map: map, 
				position: results[0].geometry.location
			});
			alert( results[0].geometry.location );
		} else {
			alert("Geocode was not successful for the following reason: " + status);
		}
	});
}

window.onload= function(){initialize();}
