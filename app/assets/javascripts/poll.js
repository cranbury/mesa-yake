var restaurantAvailability = {};
function poll() {

    // make Ajax call 
    $.get("/restaurants/availability", function(data){
      restaurantAvailability = JSON.parse(data.restaurants);
    })

    // set new timeout
    setTimeout(poll, 1000);

}

// initial call
setTimeout(poll, 1000);