var restaurantAvailability = {};
function poll() {

    // make Ajax call 
    $.get("/restaurants/availability", function(data){
      restaurantAvailability = data.restaurants;
      updateRestaurants()
    })

    // set new timeout
    setTimeout(poll, 1000);

}

function updateRestaurants(){
  $.each(restaurantAvailability, function(index, value) {
    $("#res" + index + "-available").text("Available: " + value.tablesAvailable);
  }); 
}

// initial call
setTimeout(poll, 1000);