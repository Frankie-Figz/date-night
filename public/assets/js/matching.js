// GLOBAL VARIABLES
var sourceUserId = sessionStorage.getItem("user_id");

$.get("/api/matches/" + sourceUserId)
.then(function(result){
    console.log(result);
    var matchDisplay = $("<div>");
    matchDisplay.text("Match Name : " + result[0].target_name);
    $("#match-section").append(matchDisplay);
});