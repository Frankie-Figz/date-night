// GLOBAL VARIABLES
var sourceUserId = sessionStorage.getItem("user_id");

$.get("/api/matches/" + sourceUserId)
.then(function(result){
    console.log(result);
    for(var i in result){
        console.log(result);
        var matchDisplay = $("<div>");
        matchDisplay.text("Match Name : " + result[i].target_name);
        var matchBio = $("<div>");
        matchBio.text("Match Bio : " + result[i].bio);
        var matchImage = $("<img>");
        matchImage.attr("src",result[i].img_url);
        matchImage.attr("height",400);
        matchImage.attr("width",400);
        $("#match-section").append(matchDisplay);
        $("#match-section").append(matchBio);
        $("#match-section").append(matchImage);
    };
});