USE `tagqru3ldgwm4rti`;

ALTER TABLE ``tagqru3ldgwm4rti``.`survey_answers` 
CHANGE COLUMN `createdAt` `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
CHANGE COLUMN `updatedAt` `updatedAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ;

ALTER TABLE ``tagqru3ldgwm4rti``.`survey_questions` 
CHANGE COLUMN `createdAt` `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
CHANGE COLUMN `updatedAt` `updatedAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ;

ALTER TABLE ``tagqru3ldgwm4rti``.`users` 
CHANGE COLUMN `createdAt` `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
CHANGE COLUMN `updatedAt` `updatedAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ;

ALTER TABLE ``tagqru3ldgwm4rti``.`surveys` 
CHANGE COLUMN `createdAt` `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
CHANGE COLUMN `updatedAt` `updatedAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'galmes','Gary','Almes','123','1918-01-01 00:00:00','Male','Female','https://i.imgur.com/HMsCSCG.jpg','Hello I\'m Gary and I like to party','2019-11-12 19:20:08','2019-11-12 19:20:08'),(2,'rnulanz','Richard','Nulanz','123','1990-01-01 00:00:00','Male','Female','https://i.imgur.com/u2oXUXg.png','Hello I\'m Richard and I like to party','2019-11-12 19:21:58','2019-11-12 19:21:58'),(3,'elee','Eugene','Lee','123','1996-01-01 00:00:00','Male','Female','https://i.imgur.com/R8q81Jj.jpg','Hello I\'m Eugene and I like to party','2019-11-12 19:22:55','2019-11-12 19:22:55'),(4,'afomia','Afomia','Kassaye','123','1991-01-01 00:00:00','Female','Male','https://i.imgur.com/AoIrWgR.png','Hello I\'m Afomia and I like to party','2019-11-12 19:24:07','2019-11-12 19:24:07'),(5,'estotz','Emma','Stotz','123','1996-01-01 00:00:00','Female','Male','https://i.imgur.com/8fGG6AJ.jpg','Hello I\'m Emma and I like to study','2019-11-12 19:25:06','2019-11-12 19:25:06'),(6,'nhenry','Nolan','Henry','123','1996-01-01 00:00:00','Male','Female','https://i.imgur.com/G6q5ji9.png','Hello I\'m Nolan and I like to party','2019-11-12 19:25:51','2019-11-12 19:25:51'),(7,'ehoversten','Erik','Hoversten','123','1996-01-01 00:00:00','Male','Female','https://i.imgur.com/2oOGq5N.png','Hello I\'m Erik and I like to party','2019-11-12 19:26:43','2019-11-12 19:26:43'),(8,'fvannini','Frank','Vannini','123','1996-01-01 00:00:00','Male','Female','https://i.imgur.com/EzJYKAL.png','Hello I\'m Frank and I like to party','2019-11-12 19:27:34','2019-11-12 19:27:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` VALUES (1,'personality','2019-11-08 14:09:11','2019-11-08 14:09:11');
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `survey_questions` WRITE;
/*!40000 ALTER TABLE `survey_questions` DISABLE KEYS */;
INSERT INTO `survey_questions` VALUES (1,'Are you looking for something casual or serious?','Casual','Serious','2019-11-08 14:27:00','2019-11-08 14:27:00',1),
(2,'Are you an introvert or extrovert','Introvert','Extrovert','2019-11-08 14:27:00','2019-11-08 14:27:00',1),
(3,'How close are you to your family?','Extremely Close','Dad?','2019-11-08 14:27:00','2019-11-08 14:27:00',1),
(4,'Your career is the most imporant thing in your life','I work to live','I live to work','2019-11-08 14:27:00','2019-11-08 14:27:00',1),
(5,'What is the ideal way to spend a night with someone?','Romantic dinner then a night in','I like us better when we are wasted','2019-11-08 14:27:00','2019-11-08 14:27:00',1),
(6,'Risk is thrilling','Safety first','Make me feel alive','2019-11-08 14:27:00','2019-11-08 14:27:00',1),
(7,'Following trends is important','I do my own thing','I stay up to speed','2019-11-08 14:27:00','2019-11-08 14:27:00',1),
(8,'It is funny to roast someone','I dont want to hurt anyones feelings','Im gonnna make you cry','2019-11-08 14:27:00','2019-11-08 14:27:00',1),
(9,'Do you think humanity will ever go extinct?','We can overcame any obstacle as a species','We are already dead in the water from our past transgressions','2019-11-08 14:27:00','2019-11-08 14:27:00',1),(10,'Pineapple belongs on pizza','Yuck','Yum','2019-11-08 14:27:00','2019-11-08 14:27:00',1),(11,'Gary is #1','I hate Gary','Gary is a god king','2019-11-08 14:27:00','2019-11-08 14:27:00',1);
/*!40000 ALTER TABLE `survey_questions` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Dumping data for table `survey_answers`
--
LOCK TABLES `survey_answers` WRITE;
/*!40000 ALTER TABLE `survey_answers` DISABLE KEYS */;
INSERT INTO `survey_answers` VALUES (1,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',1,1),
(2,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',1,2),
(3,2,'2019-11-08 14:31:07','2019-11-08 14:31:07',1,3),
(4,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',1,4),
(5,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',1,5),
(6,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',1,6),
(7,4,'2019-11-08 14:31:07','2019-11-08 14:31:07',1,7),
(8,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',1,8),
(9,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',1,9),
(10,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',1,10),
(11,2,'2019-11-08 14:31:07','2019-11-08 14:31:07',1,11),
(12,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',2,1),
(13,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',2,2),
(14,2,'2019-11-08 14:31:07','2019-11-08 14:31:07',2,3),
(15,2,'2019-11-08 14:31:07','2019-11-08 14:31:07',2,4),
(16,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',2,5),
(17,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',2,6),
(18,4,'2019-11-08 14:31:07','2019-11-08 14:31:07',2,7),
(19,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',2,8),
(20,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',2,9),
(21,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',2,10),
(22,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',2,11),
(23,2,'2019-11-08 14:31:07','2019-11-08 14:31:07',3,1),
(24,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',3,2),
(25,2,'2019-11-08 14:31:07','2019-11-08 14:31:07',3,3),
(26,2,'2019-11-08 14:31:07','2019-11-08 14:31:07',3,4),
(27,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',3,5),
(28,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',3,6),
(29,4,'2019-11-08 14:31:07','2019-11-08 14:31:07',3,7),
(30,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',3,8),
(31,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',3,9),
(32,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',3,10),
(33,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',3,11),
(34,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',4,1),
(35,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',4,2),
(36,2,'2019-11-08 14:31:07','2019-11-08 14:31:07',4,3),
(37,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',4,4),(38,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',4,5),
(39,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',4,6),(40,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',4,7),
(41,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',4,8),(42,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',4,9),
(43,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',4,10),(44,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',4,11),
(45,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',5,1),(46,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',5,2),
(47,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',5,3),(48,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',5,4),
(49,2,'2019-11-08 14:31:07','2019-11-08 14:31:07',5,5),(50,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',5,6),
(51,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',5,7),(52,4,'2019-11-08 14:31:07','2019-11-08 14:31:07',5,8),
(53,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',5,9),(54,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',5,10),
(55,2,'2019-11-08 14:31:07','2019-11-08 14:31:07',5,11),(56,2,'2019-11-08 14:31:07','2019-11-08 14:31:07',6,1),
(57,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',6,2),(58,4,'2019-11-08 14:31:07','2019-11-08 14:31:07',6,3),
(59,5,'2019-11-08 14:31:07','2019-11-08 14:31:07',6,4),(60,4,'2019-11-08 14:31:07','2019-11-08 14:31:07',6,5),
(61,3,'2019-11-08 14:31:07','2019-11-08 14:31:07',6,6),(62,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',6,7),
(63,1,'2019-11-08 14:31:07','2019-11-08 14:31:07',6,8),(64,5,'2019-11-08 14:31:08','2019-11-08 14:31:08',6,9),
(65,2,'2019-11-08 14:31:08','2019-11-08 14:31:08',6,10),(66,1,'2019-11-08 14:31:08','2019-11-08 14:31:08',6,11),
(67,1,'2019-11-08 14:31:08','2019-11-08 14:31:08',7,1),(68,1,'2019-11-08 14:31:08','2019-11-08 14:31:08',7,2),
(69,2,'2019-11-08 14:31:08','2019-11-08 14:31:08',7,3),(70,5,'2019-11-08 14:31:08','2019-11-08 14:31:08',7,4),
(71,5,'2019-11-08 14:31:08','2019-11-08 14:31:08',7,5),(72,3,'2019-11-08 14:31:08','2019-11-08 14:31:08',7,6),
(73,4,'2019-11-08 14:31:08','2019-11-08 14:31:08',7,7),(74,4,'2019-11-08 14:31:08','2019-11-08 14:31:08',7,8),
(75,1,'2019-11-08 14:31:08','2019-11-08 14:31:08',7,9),(76,5,'2019-11-08 14:31:08','2019-11-08 14:31:08',7,10),
(77,1,'2019-11-08 14:31:08','2019-11-08 14:31:08',7,11);

/*!40000 ALTER TABLE `survey_answers` ENABLE KEYS */;
UNLOCK TABLES;