function initializeAutocomplete(id) {
  var element = document.getElementById(id);
  if (element) {
    var autocomplete = new google.maps.places.Autocomplete(element, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
  }
}

function onPlaceChanged() {
  var place = this.getPlace();
  console.log(place)
  document.getElementById('latitude').value = place.geometry.location.lat();
  document.getElementById('longitude').value = place.geometry.location.lng();
 
  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) { 
      var type_element = document.getElementById(component.types[j]);
      if (type_element) {
        type_element.value = component.long_name;
      }
    }
  }
}

//initializeAutocomplete('user_input_autocomplete_address');
initializeAutocomplete('query');
