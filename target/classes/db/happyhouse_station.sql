-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: happyhouse
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `stationId` int NOT NULL AUTO_INCREMENT,
  `lineNumber` varchar(10) NOT NULL,
  `stationName` varchar(20) NOT NULL,
  `jibunAddress` varchar(30) DEFAULT NULL,
  `doroAddress` varchar(30) DEFAULT NULL,
  `dong` varchar(10) DEFAULT NULL,
  `stationLat` decimal(9,6) NOT NULL,
  `stationLng` decimal(9,6) NOT NULL,
  PRIMARY KEY (`stationId`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'우이신설','북한산우이','서울특별시 강북구 우이동 16-20',NULL,'우이동',37.663146,127.012789),(2,'우이신설','솔밭공원','서울특별시 강북구 우이동 57-28',NULL,'우이동',37.656088,127.013252),(3,'우이신설','4.19민주묘지','서울특별시 강북구 우이동 72-186',NULL,'우이동',37.649593,127.013746),(4,'우이신설','가오리','서울특별시 강북구 수유동 338-46',NULL,'수유동',37.641701,127.016792),(5,'우이신설','화계','서울특별시 강북구 수유동 472-677',NULL,'수유동',37.634802,127.017519),(6,'우이신설','삼양','서울특별시 강북구 미아동 791-4703','서울특별시 강북구 미아동 삼양로','미아동',37.627165,127.018152),(7,'우이신설','삼양사거리','서울특별시 강북구 미아동 745-142',NULL,'미아동',37.627165,127.018152),(8,'우이신설','솔샘','서울특별시 강북구 미아동 1353-20',NULL,'미아동',37.621240,127.013528),(9,'우이신설','북한산보국문','서울특별시 성북구 정릉동 286-19',NULL,'정릉동',37.612343,127.008009),(10,'우이신설','정릉','서울특별시 성북구 정릉동 139-80',NULL,'정릉동',37.602798,127.013490),(11,'우이신설','성신여대입구','서울특별시 성북구 동선동4가 1번지','서울특별시 성북구 동소문로 102','동선동4가',37.592624,127.016403),(12,'우이신설','보문','서울특별시 성북구 보문동1가 127-1번지','서울 성북구 보문로 지하 116','보문동1가',37.585286,127.019381),(13,'우이신설','신설동','서울특별시 동대문구 신설동 76-5','서울특별시 동대문구 왕산로 1','신설동',37.575297,127.025087),(14,'1호선','소요산','경기도 동두천시 상봉암동 126-3','경기도 동두천시 평화로 2925','상봉암동',37.948100,127.061034),(15,'1호선','동두천','경기도 동두천시 동두천동 245-210','경기도 동두천시 평화로 2687','동두천동',37.927878,127.054790),(16,'1호선','보산','경기도 동두천시 보산동 422','경기도 동두천시 평화로 2539','보산동',37.913702,127.057277),(17,'1호선','동두천중앙','경기도 동두천시 생연동 726-3','경기도 동두천시 동두천로 228','생연동',37.927878,127.054790),(18,'1호선','지행','경기도 동두천시 지행동 424-1','경기도 동두천시 평화로 2285','지행동',37.892334,127.055716),(19,'1호선','덕정','경기도 양주시 덕정동 350-14','경기도 양주시 화합로 1356','덕정동',37.843188,127.061277),(20,'1호선','덕계','경기도 양주시 덕계동 209-5','경기도 양주시 고덕로 139번길 317','덕계동',37.818486,127.056486),(21,'1호선','양주','경기도 양주시 남방동 94-1','경기도 양주시 평화로 919','남방동',37.774381,127.044708),(22,'1호선','녹양','경기도 의정부시 녹양동 96-1','경기도 의정부시 평화로 757','녹양동',37.759380,127.042292),(23,'1호선','가능','경기도 의정부시 가능동 197-1','경기도 의정부시 평화로 633','가능동',37.748577,127.044213),(24,'1호선','의정부','경기도 의정부시 의정부동 168-54','경기도 의정부시 평화로 525','의정부동',37.738415,127.045958),(25,'1호선','회룡','경기도 의정부시 호원동 50-5','경기도 의정부시 평화로 363','호원동',37.724846,127.046895),(26,'1호선','망월사','경기도 의정부시 호원동 50-5','경기도 의정부시 평화로 221','호원동',37.709914,127.047455),(27,'1호선','도봉산','서울특별시 도봉구 도봉동 18-1','서울특별시 도봉구 도봉로 964-33','도봉동',37.679563,127.045595),(28,'1호선','도봉','서울특별시 도봉구 도봉동 639','서울특별시 도봉구 도봉로 170길 2','도봉동',37.679563,127.045595),(29,'1호선','방학','서울특별시 도봉구 방학동 728','서울특별시 도봉구 도봉로 150다길 3','방학동',37.667503,127.044273),(30,'1호선','창동','서울특별시 도봉구 창동 135-1','서울특별시 도봉구 마들로11길 77','창동',37.653166,127.047731),(31,'1호선','녹천','서울특별시 도봉구 창동 57-11','서울특별시 도붕구 덕릉로 376','창동',37.644799,127.051269),(32,'1호선','월계','서울특별시 노원구 월계동 263-1','서울특별시 노원구 월계로53길 40','월계동',37.633212,127.058831),(33,'1호선','광운대','서울특별시 노원구 월계동 85','서울특별시 노원구 석계로 98-2','월계동',37.623632,127.061835),(34,'1호선','석계','서울특별시 노원구 월계동 36-4','서울특별시 노원구 화랑로 341','월계동',37.614805,127.065851),(35,'1호선','신이문','서울특별시 동대문구 이문동 7','서울특별시 동대문구 한천로 472','이문동',37.601854,127.067325),(36,'1호선','외대앞','서울특별시 동대문구 이문동 360-5','서울특별시 동대문구 휘경로 27','이문동',37.596073,127.063549),(37,'1호선','회기','서울특별시 동대문구 휘경동 317-101','서울특별시 동대문구 회기로 196','휘경동',37.589460,127.057583),(38,'1호선','남영','서울특별시 용산구 갈월동 96-1','서울특별시 용산구 한강대로77길 25','갈월동',37.541021,126.971300),(39,'1호선','용산','서울특별시 용산구 한강로3가 40-999','서울특별시 용산구 한강대로23길 55',NULL,37.529849,126.964561),(40,'1호선','노량진','서울특별시 동작구 노량진동 67-2','서울특별시 동작구 노량진로 151','노량진동',37.514219,126.942454),(41,'1호선','대방','서울특별시 영등포구 신길동 1368-3','서울특별시 영등포구 여의대방로 300','신길동',37.513342,126.926382),(42,'1호선','신길','서울특별시 영등포구 신길동 41-1','서울특별시 영등포구 영등포로 327','신길동',37.517122,126.917169),(43,'1호선','영등포','서울특별시 영등포구 영등포동 618-496','서울특별시 영등포구 경인로 846','영등포동',37.515504,126.907628),(44,'1호선','신도림','서울특별시 구로구 신도림동 460-26','서울특별시 구로구 새마로 지하117-21','신도림동',37.508725,126.891295),(45,'1호선','구로','서울특별시 구로구 구로동 585-3','서울특별시 구로구 구로중앙로 174','구로동',37.503039,126.881966),(46,'1호선','구일','서울특별시 구로구 구로동 636-45','서울특별시 구로구 구일로 133','구로동',37.496756,126.870793),(47,'1호선','개봉','서울특별시 구로구 개보동 415','서울특별시 구로구 경인로40길 47','개보동',37.494594,126.858680),(48,'1호선','오류동','서울특별시 구로구 오류동 66','서울특별시 구로구 경인로 20길 13','오류동',37.494526,126.845365),(49,'1호선','온수','서울특셜시 구로구 온수동 51-7','서울특별시 구로구 부일로 872','온수동',37.492258,126.823388),(50,'1호선','역곡','경기도 부천시 원미곡 역곡동 382','경기도 부천시 원미구 역곡로 1','역곡동',37.485178,126.811502),(51,'1호선','소사','경기도 부천시 소사구 소사본동 395','경기도 부천시 소사구 소사로 272','소사본동',37.482753,126.795440),(52,'1호선','부천','경기도 부천시 소사구 심곡본동 316-2','경기도 부천시 소사구 부천로 1','심곡본동',37.484050,126.782686),(53,'1호선','중동','경기도 부천시 소사구 송내동 632','경기도 부천시 소사구 중동로 73','송내동',37.486562,126.764843),(54,'1호선','송내','경기도 부천시 소사구 송내동 632-4','경기도 부천시 소사구 송내대로 43','송내동',37.487600,126.753664),(55,'1호선','부개','인천광역시 부평구 부개동 468','인천광역시 부평구 수변로 22','부개동',37.488418,126.741090),(56,'1호선','부평','인천광역시 부평구 부평동 738-21','인천광역시 부평구 광장로 16','부평동',37.489493,126.724805),(57,'1호선','백운','인천광역시 부평구 십정동 541-1','인천광역시 부평구 마장로 55번길 14','십정동',37.483664,126.707704),(58,'1호선','동암','인천광역시 부평구 십정동 541-1','인천광역시 부평구 동암광장로 10','십정동',37.471408,126.702896),(59,'1호선','간석','인천광역시 남동구 간석동 757','인천광역시 남동구 석정로 522-14','간석동',37.464737,126.694181),(60,'1호선','주안','인천광역시 남구 주안동 125','인천광역시 남구 주안로 95-19','주안동',37.464941,126.679923),(61,'1호선','도화','인천광역시 남구 도화동 668','인천광역시 남구 숙골로 24번길 9','도화동',37.466070,126.668672),(62,'1호선','제물포','인천광역시 남구 숭의동 450-39','인천광역시 남구 경인로 129','숭의동',37.466769,126.656666),(63,'1호선','도원','인천광역시 동구 창영동 179-1','인천광역시 동구 참외전로 245','창영동',37.468446,126.642706),(64,'1호선','동인천','인천광역시 중구 인현동 1-613','인천광역시 중구 참외전로 121','인현동',37.475276,126.632802),(65,'1호선','인천','인천광역시 중구 북성동1가 3-1','인천광역시 중구 제물량로 269','북성동1가',37.476691,126.616936),(66,'1호선','가산디지털단지','서울특별시 금천구 가산동 468-4','서울특별시 금천구 벚꽃로 309','가산동',37.481072,126.882343),(67,'1호선','독산','서울특별시 금천구 가산동 717','서울특별시 금천구 벚꽃로 115','가산동',37.466613,126.889249),(68,'1호선','금천구청','서울특별시 금천구 시흥동 113-55','서울특별시 금천구 시흥대로 63길 91','시흥동',37.455626,126.893980),(69,'1호선','광명',NULL,'경기도 광명시 광명역로 21 광명역',NULL,37.416182,126.884466),(70,'1호선','석수','경기도 안양시 만악구 석수동 737','경기도 안양시 만안구 경수대로 1431','석수동',37.435047,126.902295),(71,'1호선','관악','경기도 안양시 만악구 석수동 101-16','경기도 안양시 만안구 경수대로 1273번길 46','석수동',37.419232,126.908706),(72,'1호선','안양','경기도 안양시 만안구 안양동 88-1','경기도 안양시 만안구 만안로 232','안양동',37.401592,126.922874),(73,'1호선','명학','경기도 안양시 만안구 안양동 1163-1','경기도 안양시 만안구 만안로 20','안양동',37.384653,126.935433),(74,'1호선','금정','경기도 군포시 금정동 613','경기도 군포시 군포로 750','금정동',37.372221,126.943429),(75,'1호선','군포','경기도 군포시 당동 134-1','경기도 군포시 군포역1길 27','당동',37.353560,126.948462),(76,'1호선','당정','경기도 군포시 당정동 938','경기도 구노시 당정역로 91','당정동',37.344285,126.948345),(77,'1호선','의왕','경기도 의왕시 삼동 191','경기도 의왕시 철도박물관로 66','삼동',37.320852,126.948217),(78,'1호선','성균관대','경기도 수원시 장안구 율전동 495-2','경기도 수원시 장안구 서부로 2149','율전동',37.300349,126.970750),(79,'1호선','화서','경기도 수원시 팔달구 화서동 464','경기도 수원시 팔달구 덕영대로 692','화서동',37.283862,126.989627),(80,'1호선','수원','경기도 수원시 팔달구 매산로1가 18','경기도 수원시 팔달구 덕영대로 924',NULL,37.265974,126.999874),(81,'1호선','세류','경기도 수원시 권선구 장지동 25-4','경기도 수원시 권선구 정조로 393-1','장지동',37.245025,127.013222),(82,'1호선','병점','경기도 화성시 진암동 824-1','경기도 화성시 떡전골로 97','진암동',37.207503,127.032731),(83,'1호선','서동탄','경기도 오산시 외삼미동 242','경기도 오산시 외삼미로 15번길 75-60','외삼미동',37.195504,127.051672),(84,'1호선','세마','경기도 오산시 세교동 244-5','경기도 오산시 세마역로 88','세교동',37.187533,127.043180),(85,'1호선','오산대','경기도 오산시 수청동 435-1','경기도 오산시 청학로 236','수청동',37.145885,127.066720),(86,'1호선','오산','경기도 오산시 오산동 603-116','경기도 오산시 역광장로 59','오산동',37.145885,127.066720),(87,'1호선','진위','경기도 평택시 진위면 하북리 139-3','경기도 평택시 진위면 경기대로 1855',NULL,37.109447,127.062278),(88,'1호선','송탄','경기도 평택시 신장동 257-5','경기도 평택시 송탄공원로 43','신장동',37.075696,127.054301),(89,'1호선','서정리','경기도 평택시 서정동 427-53','경기도 평택시 탄현로 51','서정동',37.056496,127.052819),(90,'1호선','지제','경기도 평택시 지제동 559-4','경기도 평택시 경기대로 777','지제동',37.018800,127.070444),(91,'1호선','평택','경기도 평택시 평택동 185-579','경기도 평택시 평택로 51','평택동',36.990726,127.085159),(92,'1호선','성환','충청남도 천안시 서북구 성환읍 성환리 449-128','충청남도 천안시 서북구 성환읍 성환1로 237-5',NULL,36.916076,127.126964),(93,'1호선','직산','충청남도 천안시 서북구 직산읍 모시리 58-11','충청남도 천안시 서북구 직산읍 천안대로 1471-33',NULL,36.870593,127.143904),(94,'1호선','두정','충청남도 천안시 서북구 두정동 84-1','충청남도 천안시 서북구 두정로 289','두정동',36.833705,127.148960),(95,'1호선','천안','충청남도 천안시 동남구 대흥동 57-1','충청남도 천안시 동남구 대흥로 239','대흥동',36.810005,127.146826),(96,'1호선','봉명','충청남도 천안시 동남구 봉명동 20-2','충청남도 천안시 동남구 차돌로 51','봉명동',36.801215,127.135763),(97,'1호선','쌍용(나사렛대)','충청남도 천안시 서북구 쌍용동 426-3','충청남도 천안시 서북구 쌍용19로 20','쌍용동',36.793759,127.121400),(98,'1호선','아산','충청남도 아산시 배방읍 장재리 268','충청남도 아산시 배방읍 희망로 90',NULL,36.792053,127.104361),(99,'1호선','배방','충청남도 아산시 배방읍 구령리 148-2','충청남도 아산시 배방읍 온천대로 1967',NULL,36.777629,127.052991),(100,'1호선','온양온천','충청남도 아산시 온천동 56-9','충청남도 아산시 온천대로 1496','온천동',36.780483,127.003249),(101,'1호선','신창(순천향대)','충청남도 아산시 신창면 행목리 346-49','충청남도 아산시 신창면 행목로 50',NULL,36.769502,126.951108),(102,'1호선','청량리(서울시립대입구)','서울특별시 동대문구 왕산로 328-1','서울특별시 동대문구 왕산로 지하 205',NULL,37.580178,127.046835),(103,'1호선','제기동','서울특별시 동대문구 제기동 65','서울특별시 동대문구 왕산로 지하 93','제기동',37.578103,127.034893),(104,'1호선','신설동','서울특별시 동대문구 신설동 76-5','서울특별시 동대문구 왕산로 지하 1','신설동',37.575297,127.025087),(105,'1호선','동묘앞','서울특별시 종로구 숭인동 117','서울특별시 종로구 종로 359','숭인동',37.572627,127.016429),(106,'1호선','동대문','서울특별시 종로구 창신동 492-1','서울특별시 종로구 종로 지하 302','창신동',37.571420,127.009745),(107,'1호선','종로5가','서울특별시 종로구 종로5가 82-1','서울특별시 종로구 종로 지하 216',NULL,37.570926,127.001849),(108,'1호선','종로3가','서울특별시 종로구 종로3가 10-5','서울특별시 종로구 종로 지하 129',NULL,37.571607,126.991806),(109,'1호선','종각','서울특별시 종로구 종로1가 54','서울특별시 종로구 종로 지하 55',NULL,37.570161,126.982923),(110,'1호선','시청','서울특별시 중구 정동 5-5','서울특별시 세종대로 지하 101','정동',37.564718,126.977108),(111,'1호선','서울역','서울특별시 중구 남대문로5가 73-6','서울특별시 세종대로 지하 2',NULL,37.554648,126.972559),(112,'2호선','시청','서울특별시 중구 서소문동 90-1','서울특별시 중구 서소문로 지하 127','서소문동',37.564718,126.977108),(113,'2호선','을지로입구','서울특별시 중구 을지로3가 347-3','서울특별시 중구 을지로 지하 42',NULL,37.566014,126.982618),(114,'2호선','을지로3가','서울 중구 을지로3가 70-1','서울특별시 중구 을지로 지하 106',NULL,37.566295,126.991910),(115,'2호선','을지로4가','서울특별시 중구 을지로4가 267-1','서울특별시 중구 을지로 지하 178',NULL,37.566941,126.998079),(116,'2호선','동대문역사문화공원','서울특별시 중구 을지로7가 112-3','서울특별시 중구 을지로 지하 279',NULL,37.571420,127.009745),(117,'2호선','신당','서울특별시 중구 신당동 99','서울특별시 중구 퇴계로 지하 431-1','신당동',37.565972,127.017820),(118,'2호선','상왕십리','서울특별시 성동구 하왕십리동 946-14','서울특별시 성동구 왕십리로 지하 374','하왕십리동',37.564354,127.029354),(119,'2호선','왕십리','서울특별시 성동구 행당동 192','서울특별시 성동구 왕십리로 지하 300','행당동',37.561533,127.037732),(120,'2호선','한양대','서울특별시 성동구 행당동 산17','서울특별시 성동구 왕십리로 206','행당동',37.555273,127.043655),(121,'2호선','뚝섬','서울특별시 성동구 성수동1가 656-745','서울특별시 성동구 아차산로 18','성수동1가',37.547184,127.047367),(122,'2호선','성수','서울특별시 성동구 성수동2가 300-1','서울특별시 성동구 아차산로 100','성수동2가',37.544581,127.055961),(123,'2호선','건대입구','서울특별시 광진구 화양동 7-3','서울특별시 광진구 아차산로 243','화양동',37.540693,127.070230),(124,'2호선','구의(광진구청)','서울특별시 광진구 구의동 245-24','서울특별시 광진구 아차산로 384-1','구의동',37.537077,127.085916),(125,'2호선','강변(동서울터미널)','서울특별시 광진구 구의동 546-6','서울특별시 광진구 강변역로 53','구의동',37.535095,127.094681),(126,'2호선','잠실나루','서울특별시 송파구 신천동 15','서울특별시 송파구 오금로 20','신천동',37.513950,127.102234),(127,'2호선','잠실(송파구청)','서울특별시 송파구 잠실동 8','서울특별시 송파구 올림픽로 지하 265','잠실동',37.513950,127.102234),(128,'2호선','잠실새내','서울특별시 송파구 잠실동 33','서울특별시 송파구 올림픽로 지하 140','잠실동',37.513950,127.102234),(129,'2호선','종합운동장','서울특별시 송파구 잠실동 122','서울특별시 송파구 올림픽로 지하 23','잠실동',37.510997,127.073642),(130,'2호선','삼성(무역센터)','서울특별시 강남구 삼성동 172-66','서울특별시 강남구 테헤란로 지하 538','삼성동',37.508844,127.063160),(131,'2호선','선릉','서울특별시 강남구 삼성동 172-66','서울특별시 강남구 테헤란로 지하 340','삼성동',37.504503,127.049008),(132,'2호선','역삼','서울특별시 강남구 역삼동 804','서울특별시 강남구 테헤란로 지하 156','역삼동',37.500622,127.036456),(133,'2호선','강남','서울특별시 강남구 역삼동 858','서울특별시 강남구 강남대로 지하 396','역삼동',37.497175,127.027926),(134,'2호선','교대(법원·검찰청)','서울특별시 서초구 서초동 1748-4','서울특별시 서초구 서초대로 지하 294','서초동',37.493415,127.014080),(135,'2호선','서초','서울특별시 서초구 서초동 1748-5','서울특별시 서초구 서초대로 지하 233','서초동',37.491897,127.007917),(136,'2호선','방배','서울특별시 서초구 방배동 912-14','서울특별시 서초구 방배로 지하 80','방배동',37.481426,126.997596),(137,'2호선','사당','서울특별시 동작구 사당동 1129','서울특별시 동작구 남부순환로 지하 2089','사당동',37.476530,126.981685),(138,'2호선','낙성대','서울특별시 관악구 봉천동 1693-39','서울특별시 관악구 남부순환로 지하 1928','봉천동',37.476930,126.963693),(139,'2호선','서울대입구(관악구청)','서울특별시 관악구 봉천동 979-2','서울특별시 관악구 남부순환로 지하 1822','봉천동',37.554648,126.972559),(140,'2호선','봉천','서울특별시 관악구 봉천동 979-7','서울특별시 관악구 남부순환로 지하 1721','봉천동',37.482362,126.941892),(141,'2호선','신림','서울특별시 관악구 신림동 1467-10','서울특별시 관악구 남부순환로 지하 1614','신림동',37.484201,126.929715),(142,'2호선','신대방','서울특별시 동작구 신대방동 643-1','서울특별시 동작구 대림로 2','신대방동',37.487462,126.913149),(143,'2호선','구로디지털단지','서울특별시 구로구 구로동 810-3','서울특별시 구로구 도림천로 477','구로동',37.503039,126.881966),(144,'2호선','대림(구로구청)','서울특별시 구로구 구로동 1204','서울특별시 구로구 도림천로 351','구로동',37.492970,126.895801),(145,'2호선','신도림','서울특별시 구로구 신도림동 460-26','서울특별시 구로구 새말로 지하117-21','신도림동',37.508725,126.891295),(146,'2호선','문래','서울특별시 영등포구 문래동3가 68-1','서울특별시 영등포구 당산로 지하 28','문래동3가',37.517933,126.894760),(147,'2호선','영등포구청','서울특별시 영등포구 당산동3가 270-1','서울특별시 영등포구 당산로 121','당산동3가',37.515504,126.907628),(148,'2호선','당산','서울특별시 영등포구 당산동6가 323-1','서울특별시 영등포구 당산로 229','당산동6가',37.534380,126.902281),(149,'2호선','합정','서울특별시 마포구 서교동 393','서울특별시 마포구 양화로 지하 55','서교동',37.549463,126.913739),(150,'2호선','홍대입구','서울특별시 마포구 동교동 165','서울특별시 마포구 양화로 지하160','동교동',37.557192,126.925381),(151,'2호선','신촌','서울특별시 마포구 노고산동 31-11','서울특별시 마포구 신촌로 지하 90','노고산동',37.555134,126.936893),(152,'2호선','이대','서울특별시 마포구 염리동 8-85','서울특별시 마포구 신촌로 지하180','염리동',37.556733,126.946013),(153,'2호선','아현','서울특별시 마포구 아현동 354-23','서울특별시 마포구 신촌로 지하 270','아현동',37.557345,126.956141),(154,'2호선','충정로(경기대입구)','서울특별시 서대문구 충정로3가 319-1','서울특별시 서대문구 서소문로 지하 17',NULL,37.559973,126.963672);
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-27 10:13:04