var db = require("../models");
var mysql = require("mysql");
module.exports = function(app){
// LOGIN RUTES
app.get("/api/login/:username",function(req,res){
    db.User.findAll({
        where : {username : req.params.username}
    }).then(function(data){
        res.json(data);
    });
});
// SURVEY ROUTES
// all surveys
app.get("/api/survey", function(req, res){
    db.Survey.findAll({}).then(function(data){
        res.json(data);
    });
});
// specific survey by id
app.get("/api/survey/:id", function(req, res){
    db.Survey.findAll({
        where:{
            id: req.params.id
        }
    }).then(function(data){
        res.json(data)
    });
});
// USER ROUTES
// get all users
app.get("/api/user/:key", function(req, res){
    db.User.findOne({
        where : {username : req.params.key}
    }).then(function(data){
        res.json(data);
    });
});
// Create a user
app.post("/api/user", function(req, res){
    console.log("This is the req console log : ");
    console.log(req.body);
    db.User.create({ 
            username: req.body.userName,
            first_name: req.body.firstName,
            last_name: req.body.lastName,
            password: req.body.password,
            birthday: req.body.dateOfBirth,
            gender: req.body.gender,
            gender_preference: req.body.genderPreference,
            bio: req.body.bio,
            img_url: req.body.imgLink
    }).then(function(data){
        res.json(data);
    }).catch(function(err){
        console.log("Here is the error section at routes!");
        throw err;
    });
});
// Route for saving the answers of a user to the DB
app.post("/api/surveyanswers", function(req,res){
    // Create a new row in the survey answers table
    db.Survey_Answers.create({
        UserId: req.body.userKey,
        answers: req.body.answerKey,
        SurveyQuestionId: req.body.questionKey
    }).then(function(data){
        res.json(data)
    });
});
// Route for querying survey questions
app.get("/api/surveyquestions/:surveyId", function(req,res){
    // Query all survey questions
    db.Survey_Questions.findAll({
        where: {SurveyId: req.params.surveyId}
    }).then(function(data){
        res.json(data);
    });
});
// Route for getting survey answers
app.get("/api/surveyanswers/:userId", function(req,res){
    db.Survey_Answers.findAll({
        where : {UserId: req.params.userId}
    })
    .then(function(data){
        res.json(data);
    });
});

// Route for getting matching algorithm
app.get("/api/matches/:userId", function(req,res){    
    var connection = mysql.createConnection({
        host: "localhost",
        // Your port; if not 3306
        port: 3306,
        // Your username
        user: "root",
        // Your password
        password: "root1234",
        database: "datenight_db"
    });
            
    connection.connect(function(err) {
        // if (err) throw err;
        // img_link, description; 
        var query = "SELECT target_name, img_url, bio, SUM(question_difference) as metric " +
        "FROM magic " +
        "WHERE source_user = ? AND target_user <> ? " +
        "GROUP BY target_name, img_url, bio " +
        "ORDER BY metric " +
        "LIMIT 3";
        connection.query(query, [req.params.userId, req.params.userId], function(err, result) {
            console.log(result);
            res.json(result);        
        });
        connection.end();
        });
});

};