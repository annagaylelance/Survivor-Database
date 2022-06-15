-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: survivordb
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fanfavorites`
--

DROP TABLE IF EXISTS `fanfavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fanfavorites` (
  `Season` tinytext,
  `FirstName` tinytext,
  `LastName` tinytext,
  `KnownName` tinytext,
  `PlayerID` int DEFAULT NULL,
  KEY `FK_PlayersFanFavorites` (`PlayerID`),
  CONSTRAINT `FK_PlayersFanFavorites` FOREIGN KEY (`PlayerID`) REFERENCES `players` (`PlayerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fanfavorites`
--

LOCK TABLES `fanfavorites` WRITE;
/*!40000 ALTER TABLE `fanfavorites` DISABLE KEYS */;
INSERT INTO `fanfavorites` VALUES ('All-Stars','Rupert','Boneham','Rupert',72),('Panama','Cirie','Fields','Cirie',74),('Cook Islands','Ozcar','Lusth','Ozzy',73),('China','James','Clement','James',75),('Micronesia: Fans vs. Favorites','James','Clement','James',70),('Gabon','Bob','Crowley','Bob',76),('Tocantins','JT','Thomas','JT',18),('Samoa','Russell','Hantz','Russell',78),('Nicaragua','Jane','Bright','Jane',79),('Redemption Island','Rob','Mariano','Boston Rob',22),('South Pacific','Ozcar','Lusth','Ozzy',73),('One World','Kim','Spradlin','Kim',24),('Philippines','Lisa','Whelchel','Lisa',80),('Caramoan','Malcolm','Freburg','Malcolm',81);
/*!40000 ALTER TABLE `fanfavorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medevacs`
--

DROP TABLE IF EXISTS `medevacs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medevacs` (
  `Season` int DEFAULT NULL,
  `FirstName` tinytext,
  `LastName` tinytext,
  `KnownName` tinytext,
  `Reason` tinytext,
  `PlayerID` int DEFAULT NULL,
  KEY `FK_PlayersMedEvacs` (`PlayerID`),
  CONSTRAINT `FK_PlayersMedEvacs` FOREIGN KEY (`PlayerID`) REFERENCES `players` (`PlayerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medevacs`
--

LOCK TABLES `medevacs` WRITE;
/*!40000 ALTER TABLE `medevacs` DISABLE KEYS */;
INSERT INTO `medevacs` VALUES (19,'Mike','Borassi','Mike','Exhaustion/Low Blood Pressure',57),(19,'Russell','Swan','Russell Swan','Dehydration/Low Blood Pressure',59),(24,'Kourtney','Moon','Kourtney','Bone Injury',60),(24,'Colton','Cumbie','Colton','Bacterial Infection',53),(26,'Shamar','Thomas','Shamar','Eye Injury',61),(26,'Erik','Reichenbach','Erik','Penicillin Reaction',62),(32,'Caleb','Reynolds','Caleb','Heat Stroke',63),(32,'Neal','Gottlieb','Neal','Staph Infection',64),(32,'Joe','Del Campo','Joe Del Campo','Constipation/Urinary Retention',65),(37,'Pat','Cusack','Pat','Back Injury',66),(2,'Micheal','Skupin','Skupin','Fell in Fire',67),(12,'Bruce','Kanegai','Bruce','Constipation',68),(16,'Jonathan','Penner','Penner','Staph Infection',69),(16,'James','Clement','James','Staph Infection',70),(18,'Joe','Dowdle','Joe','Staph Infection',71);
/*!40000 ALTER TABLE `medevacs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `PlayerID` int NOT NULL,
  `Season` int DEFAULT NULL,
  `SeasonName` tinytext,
  `FirstName` tinytext,
  `LastName` tinytext,
  `KnownName` tinytext,
  PRIMARY KEY (`PlayerID`),
  UNIQUE KEY `UC_Players` (`PlayerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,1,'Borneo','Richard','Hatch','Hatch'),(2,2,'The Australian Outback','Tina','Wesson','Tina'),(3,3,'Africa','Ethan','Zohn','Ethan'),(4,4,'Marquesas','Vecepia','Towery','Vecepia'),(5,5,'Thailand','Brian','Heidik','Brian'),(6,6,'The Amazon','Jenna','Morasca','Jenna'),(7,7,'Peal Islands','Sandra','Diaz','Sandra'),(8,8,'All-Stars','Amber','Mariano','Amber'),(9,9,'Vanuatu: Islands of Fire','Chris','Daugherty','Chris'),(10,10,'Palau','Tom','Westman','Tom'),(11,11,'Guatemala','Danni','Boatwright','Danni'),(12,12,'Panama','Aras','Baskauskas','Aras'),(13,13,'Cook Islands','Yul','Kwon','Yul'),(14,14,'Fiji','Earl','Cole','Earl'),(15,15,'China','Todd','Herzog','Todd'),(16,16,'Micronesia: Fans vs. Favorites','Parvati','Shallow','Parvati'),(17,17,'Gabon','Bob','Crowley','Bob'),(18,18,'Tocantins','JT','Thomas','JT'),(19,19,'Samoa','Natalie','White','Natalie White'),(20,20,'Heroes vs. Villians','Sandra','Diaz','Sandra'),(21,21,'Nicaragua','Judson','Birza','Fabio'),(22,22,'Redemption Island','Rob','Mariano','Boston Rob'),(23,23,'South Pacific','Sophie','Clarke','Sophie'),(24,24,'One World','Kim','Spradlin','Kim'),(25,25,'Philippines','Denise','Stapley','Denise'),(26,26,'Caramoan','John','Cochran','Cochran'),(27,27,'Blood vs. Water','Tyson','Apostol','Tyson'),(28,28,'Cagayan','Tony','Vlachos','Tony'),(29,29,'San Juan Del Sur','Natalie','Anderson','Natalie Anderson'),(30,30,'Worlds Apart','Mike','Holloway','Mike'),(31,31,'Cambodia: Second Chance','Jeremy','Collins','Jeremy'),(32,32,'Kaoh Rong','Michele','Fitzgerald','Michele'),(33,33,'Millennials vs. Gen X','Adam','Klein','Adam'),(34,34,'Game Changers','Sarah','Lacina','Sarah'),(35,35,'Heroes vs. Healers vs. Hustlers','Ben','Driebergen','Ben'),(36,36,'Ghost Island','Wendell','Holland','Wendell'),(37,37,'David vs. Goliath','Nick','Wilson','Nick'),(38,38,'Edge of Extinction','Chris','Underwood','Chris'),(39,39,'Island of the Idols','Tommy','Sheehan','Tommy'),(40,40,'Winners at War','Tony','Vlachos','Tony'),(41,7,NULL,'Osten','Taylor','Osten'),(42,8,NULL,'Jenna','Morasca','Jenna'),(44,8,NULL,'Susan','Hawk','Susan'),(45,10,NULL,'Janu','Tornell','Janu'),(46,14,NULL,'Gary','Stritesky','Gary'),(47,15,NULL,'Jon','Dalton','Jonny Fairplay'),(48,15,NULL,'Kathy','Sleckman','Kathy'),(49,21,NULL,'NaOnka','Mixon','NaOnka'),(50,21,NULL,'Kelly','Shinn','Purple Kelly'),(52,25,NULL,'Dana','Lambert','Dana'),(53,24,NULL,'Colton','Cumbie','Colton'),(54,28,NULL,'Lindsey','Ogle','Lindsey'),(55,29,NULL,'Julie','McGhee','Julie'),(56,37,NULL,'Bi','Nguyen','Bi'),(57,19,NULL,'Mike','Borassi','Mike'),(59,19,NULL,'Russell','Swan','Russell Swan'),(60,24,NULL,'Kourtney','Moon','Kourtney'),(61,26,NULL,'Shamar','Thomas','Shamar'),(62,26,NULL,'Erik','Reichenbach','Erik'),(63,32,NULL,'Caleb','Reynolds','Caleb'),(64,32,NULL,'Neal','Gottlieb','Neal'),(65,32,NULL,'Joe','Del Campo','Joe Del Campo'),(66,37,NULL,'Pat','Cusack','Pat'),(67,2,NULL,'Micheal','Skupin','Skupin'),(68,12,NULL,'Bruce','Kanegai','Bruce'),(69,16,NULL,'Jonathan','Penner','Penner'),(70,NULL,'Micronesia: Fans vs. Favorites','James','Clement','James'),(71,18,NULL,'Joe','Dowdle','Joe'),(72,NULL,'All-Stars','Rupert','Boneham','Rupert'),(73,NULL,'Cook Islands','Ozcar','Lusth','Ozzy'),(74,NULL,'Panama','Cirie','Fields','Cirie'),(75,NULL,'China','James','Clement','James'),(76,NULL,'Gabon','Bob','Crowley','Bob'),(78,NULL,'Samoa','Russell','Hantz','Russell'),(79,NULL,'Nicaragua','Jane','Bright','Jane'),(80,NULL,'Philippines','Lisa','Whelchel','Lisa'),(81,NULL,'Caramoan','Malcolm','Freburg','Malcolm');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quitters`
--

DROP TABLE IF EXISTS `quitters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quitters` (
  `Season` int DEFAULT NULL,
  `FirstName` tinytext,
  `LastName` tinytext,
  `KnownName` tinytext,
  `Reason` tinytext,
  `PlayerID` int DEFAULT NULL,
  KEY `FK_PlayersQuitters` (`PlayerID`),
  CONSTRAINT `FK_PlayersQuitters` FOREIGN KEY (`PlayerID`) REFERENCES `players` (`PlayerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quitters`
--

LOCK TABLES `quitters` WRITE;
/*!40000 ALTER TABLE `quitters` DISABLE KEYS */;
INSERT INTO `quitters` VALUES (7,'Osten','Taylor','Osten','Medical Condition',41),(8,'Jenna','Morasca','Jenna','Family Illness',42),(8,'Susan','Hawk','Susan','Sexual Harassment',44),(10,'Janu','Tornell','Janu','Personal Decision',45),(14,'Gary','Stritesky','Gary','Medical Condition',46),(15,'Jon','Dalton','Jonny Fairplay','Medical Condition',47),(15,'Kathy','Sleckman','Kathy','Medical Condition',48),(21,'NaOnka','Mixon','NaOnka','Personal Decision',49),(21,'Kelly','Shinn','Purple Kelly','Personal Decision',50),(25,'Dana','Lambert','Dana','Medical Condition',52),(27,'Colton','Cumbie','Colton','Personal Decision',53),(28,'Lindsey','Ogle','Lindsey','Personal Decision',54),(29,'Julie','McGhee','Julie','Personal Decision',55),(37,'Bi','Nguyen','Bi','Medical Condition',56);
/*!40000 ALTER TABLE `quitters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winnerdemos`
--

DROP TABLE IF EXISTS `winnerdemos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `winnerdemos` (
  `WinnerName` tinytext,
  `Gender` tinytext,
  `Age` int DEFAULT NULL,
  `Season` int DEFAULT NULL,
  `PlayerID` int DEFAULT NULL,
  KEY `FK_WinnersWinnerDemographics` (`Season`),
  CONSTRAINT `FK_WinnersWinnerDemographics` FOREIGN KEY (`Season`) REFERENCES `winners` (`Season`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winnerdemos`
--

LOCK TABLES `winnerdemos` WRITE;
/*!40000 ALTER TABLE `winnerdemos` DISABLE KEYS */;
INSERT INTO `winnerdemos` VALUES ('Hatch','Male',39,1,1),('Tina','Female',39,2,2),('Bob','Male',57,17,17),('Tom','Male',41,10,10),('Vecepia','Female',36,4,4),('Sandra','Female',35,20,7),('Earl','Male',35,14,14),('Boston Rob','Male',34,22,22),('Brian','Male',34,5,5),('Chris','Male',33,38,9),('Adam','Male',25,33,33),('Amber','Female',25,8,8),('Parvati','Female',25,16,16),('Michele','Female',25,32,32),('JT','Male',24,18,18),('Aras','Male',24,12,12),('Todd','Male',22,15,15),('Sophie','Female',22,23,23),('Jenna','Female',22,6,6),('Fabio','Male',21,21,21),('Ethan','Male',27,3,3),('Sandra','Female',29,7,7),('Danni','Female',30,11,11),('Yul','Male',31,13,13),('Natalie White','Female',26,19,19),('Kim','Female',29,24,24),('Denise','Female',41,25,25),('Cochran','Male',24,26,26),('Tyson','Male',29,27,27),('Tony','Male',39,28,28),('Natalie Anderson','Female',28,29,29),('Mike','Male',38,30,30),('Jeremy','Male',36,31,31),('Sarah','Female',32,34,34),('Ben','Male',34,35,35),('Wendell','Male',33,36,36),('Nick','Male',27,37,37),('Chris','Male',25,38,9),('Tommy','Male',26,39,39),('Tony','Male',45,40,28);
/*!40000 ALTER TABLE `winnerdemos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winners`
--

DROP TABLE IF EXISTS `winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `winners` (
  `Season` int NOT NULL,
  `SeasonName` tinytext,
  `FirstName` tinytext,
  `LastName` tinytext,
  `KnownName` tinytext,
  `PlayerID` int NOT NULL,
  PRIMARY KEY (`Season`),
  KEY `FK_PlayersWinners` (`PlayerID`),
  CONSTRAINT `FK_PlayersWinners` FOREIGN KEY (`PlayerID`) REFERENCES `players` (`PlayerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winners`
--

LOCK TABLES `winners` WRITE;
/*!40000 ALTER TABLE `winners` DISABLE KEYS */;
INSERT INTO `winners` VALUES (1,'Borneo','Richard','Hatch','Hatch',1),(2,'The Australian Outback','Tina','Wesson','Tina',2),(3,'Africa','Ethan','Zohn','Ethan',3),(4,'Marquesas','Vecepia','Towery','Vecepia',4),(5,'Thailand','Brian','Heidik','Brian',5),(6,'The Amazon','Jenna','Morasca','Jenna',6),(7,'Peal Islands','Sandra','Diaz','Sandra',7),(8,'All-Stars','Amber','Mariano','Amber',8),(9,'Vanuatu: Islands of Fire','Chris','Daugherty','Chris',9),(10,'Palau','Tom','Westman','Tom',10),(11,'Guatemala','Danni','Boatwright','Danni',11),(12,'Panama','Aras','Baskauskas','Aras',12),(13,'Cook Islands','Yul','Kwon','Yul',13),(14,'Fiji','Earl','Cole','Earl',14),(15,'China','Todd','Herzog','Todd',15),(16,'Micronesia: Fans vs. Favorites','Parvati','Shallow','Parvati',16),(17,'Gabon','Bob','Crowley','Bob',17),(18,'Tocantins','JT','Thomas','JT',18),(19,'Samoa','Natalie','White','Natalie White',19),(20,'Heroes vs. Villians','Sandra','Diaz','Sandra',20),(21,'Nicaragua','Judson','Birza','Fabio',21),(22,'Redemption Island','Rob','Mariano','Boston Rob',22),(23,'South Pacific','Sophie','Clarke','Sophie',23),(24,'One World','Kim','Spradlin','Kim',24),(25,'Philippines','Denise','Stapley','Denise',25),(26,'Caramoan','John','Cochran','Cochran',26),(27,'Blood vs. Water','Tyson','Apostol','Tyson',27),(28,'Cagayan','Tony','Vlachos','Tony',28),(29,'San Juan Del Sur','Natalie','Anderson','Natalie Anderson',29),(30,'Worlds Apart','Mike','Holloway','Mike',30),(31,'Cambodia: Second Chance','Jeremy','Collins','Jeremy',31),(32,'Kaoh Rong','Michele','Fitzgerald','Michele',32),(33,'Millennials vs. Gen X','Adam','Klein','Adam',33),(34,'Game Changers','Sarah','Lacina','Sarah',34),(35,'Heroes vs. Healers vs. Hustlers','Ben','Driebergen','Ben',35),(36,'Ghost Island','Wendell','Holland','Wendell',36),(37,'David vs. Goliath','Nick','Wilson','Nick',37),(38,'Edge of Extinction','Chris','Underwood','Chris',38),(39,'Island of the Idols','Tommy','Sheehan','Tommy',39),(40,'Winners at War','Tony','Vlachos','Tony',40);
/*!40000 ALTER TABLE `winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winnerstats`
--

DROP TABLE IF EXISTS `winnerstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `winnerstats` (
  `WinnerName` tinytext,
  `VotesToWin` int DEFAULT NULL,
  `PossibleVotesToWin` int DEFAULT NULL,
  `IndividualWins` int DEFAULT NULL,
  `HiddenIdolsFound` int DEFAULT NULL,
  `TimesPlayed` int DEFAULT NULL,
  `TimesWon` int DEFAULT NULL,
  `DaysLasted` int DEFAULT NULL,
  `TotalVotesAgainst` int DEFAULT NULL,
  `PlayerID` int DEFAULT NULL,
  `Season` int DEFAULT NULL,
  KEY `FK_WinnersWinnerStats` (`Season`),
  CONSTRAINT `FK_WinnersWinnerStats` FOREIGN KEY (`Season`) REFERENCES `winners` (`Season`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winnerstats`
--

LOCK TABLES `winnerstats` WRITE;
/*!40000 ALTER TABLE `winnerstats` DISABLE KEYS */;
INSERT INTO `winnerstats` VALUES ('Hatch',4,7,1,0,2,1,54,12,1,1),('Tina',4,7,6,0,3,1,83,14,2,2),('Ethan',5,7,2,0,3,1,95,10,3,3),('Vecepia',4,7,2,0,1,1,39,2,4,4),('Brian',4,7,5,0,1,1,39,0,5,5),('Jenna',6,7,4,0,2,1,48,3,6,6),('Sandra',12,16,0,1,5,2,126,22,7,7),('Amber',4,7,2,0,3,1,107,18,8,8),('Chris',5,7,3,0,1,1,39,3,9,9),('Tom',6,7,6,1,2,1,53,8,10,10),('Danni',6,7,3,0,2,1,74,9,11,11),('Aras',5,7,3,0,2,1,64,16,12,12),('Yul',5,9,1,1,2,1,74,8,13,13),('Earl',9,9,0,2,1,1,39,1,14,14),('Todd',4,7,0,3,1,1,39,5,15,15),('Parvati',8,17,6,2,4,1,149,21,16,16),('Bob',4,7,5,0,1,1,39,2,17,17),('JT',7,7,6,2,3,1,79,8,18,18),('Natalie White',7,9,0,0,1,1,39,8,19,19),('Fabio',5,9,4,0,1,1,39,2,21,21),('Boston Rob',11,16,11,1,5,1,152,25,22,22),('Sophie',6,9,5,1,2,1,74,11,23,23),('Kim',7,9,9,2,2,1,74,12,24,24),('Denise',6,8,5,2,2,1,75,20,25,25),('Cochran',8,8,4,0,2,1,70,13,26,26),('Tyson',7,8,5,2,2,1,116,22,27,27),('Tony',20,25,6,4,3,2,84,12,28,28),('Natalie Anderson',9,24,6,3,2,1,78,11,29,29),('Mike',6,8,6,1,1,1,39,4,30,30),('Jeremy',10,10,5,2,3,1,98,23,31,31),('Michele',5,23,9,1,2,1,78,8,32,32),('Adam',10,10,2,2,2,1,74,21,33,33),('Sarah',7,10,2,0,3,1,96,11,34,34),('Ben',5,8,3,4,2,1,76,18,35,35),('Wendell',6,11,4,0,2,1,74,17,36,36),('Nick',7,10,7,1,2,1,74,8,37,37),('Chris',9,13,0,3,1,1,39,9,9,9);
/*!40000 ALTER TABLE `winnerstats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15 16:43:49
