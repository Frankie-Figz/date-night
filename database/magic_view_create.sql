USE datenight_db;
DROP VIEW IF EXISTS magic;

CREATE VIEW magic AS (
SELECT u.id as source_user,
u.gender as source_gender,
u.gender_preference as source_gender_preference,
CONCAT(u.first_name," ",u.last_name) as source_name, 
y.UserId as target_user, 
CONCAT(w.first_name," ",w.last_name) as target_name, 
abs(x.answers - y.answers) as question_difference,
w.img_url as img_url,
w.bio as bio,
w.gender as target_gender,
w.gender_preference as target_gender_preference

FROM users u
INNER JOIN survey_answers x ON u.id = x.UserId
INNER JOIN survey_answers y ON x.SurveyQuestionId = y.SurveyQuestionId
INNER JOIN users w ON y.UserId = w.id AND u.gender_preference = w.gender AND w.gender_preference = u.gender);