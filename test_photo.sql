CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `description` longtext,
  `path` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,'Tunnel View overlook','Tianyuan Xiao','scenery','I was travelling from Sacramento to Yosemite on Christmas day, but was trapped in traffic. When I got there, sunset was already gone, which is what I planned to shoot. I was very sad at that moment because that was my only chance in this trip to shoot sunset at Tunnel View. But a few minutes later, I noticed the light path formed by the cars was a great leading line to the valley during the blue hour, and a little bit fog was just formed above the road which made it better.','http://yourshot.nationalgeographic.com/u/fQYSUbVfts-T7odkrFJckdiFeHvab0GWOfzhj7tYdC0uglagsDttMfJiWP5G4i4cWrKZJbkcjOxmC_M1Li-vS14KBGeUqfeVrCW4AI6gGlWVETBi5qo8CFQ5oFAODa52aiCJdkIRH8TGsSAHF5DsdTUajJFLkej4Bzw6PUkf9hZf-TxWvlWFqQ40wqXnUoysYTXfJFoEGiDm4VC4suFxL2nHZN33f_M/'),(2,'A Quiet Drink ','Alison Langevad\n','animal','A wonderful night in Zimanga Private Game Reserves Umgodi hide. Taking advantage of when the buffalo drink for a long exposure to capture the stars.','http://yourshot.nationalgeographic.com/u/fQYSUbVfts-T7odkrFJckdiFeHvab0GWOfzhj7tYdC0uglagsDq4wEo69Fz3vN1waC0BBbvWyc2OipJP-PtfgC_X-3ydCTqWDF8-l8M7jxKzO4e8xsRfOQH8X64DkNqRcVsxjVFuvC1N8maqeiStCquC7DU6Sg7LoRM_pY6zMciQY_QhJu_Tih2QdCi_jfEYBACLKpOX9igRHfiKmXt5BExNGkCM/'),(3,'Drench','David Rankin ','scenery','A powerful storm rolls across the Vermilion Cliffs in southern UT and northern AZ. July 1st, 2016.','http://yourshot.nationalgeographic.com/u/fQYSUbVfts-T7odkrFJckdiFeHvab0GWOfzhj7tYdC0uglagsDq56jsq0--Fq7vvM6-g8G_dlrnbmTr8e-IAGh-M_iRMtiwhyVXBHcRmoHILq7TLNKI2wKxayLRDSGQsU55EU7D8WawrreWT1xJQoW2Be-If_g5NZF78_jiRqpL7G_LTwBXKEYazDwWU9mSQVX3SV40_q_Mmo6YzLyzRzib_4Q/'),(4,'Life & Death','Abhishek Murmu\n','life','Life & Death','http://yourshot.nationalgeographic.com/u/fQYSUbVfts-T7odkrFJckdiFeHvab0GWOfzhj7tYdC0uglagsDts61LIq2UVTtWTQJH8UNXuCd4fmOnnXPtJayuaMFQbA5tq7Smj3TX4mVGSc4Jx3AE7z0CNmd6Yj2pgN-WGm3NaMbdbqZFUaRh8OzoA1NJyTpJr7GDU9huBbxMLMXKLObuHpZnp7Ny5jcW47nsn866onKx7v_G21EulW0cvnhnX/'),(5,'Icescape  ','Kelly King','scenery','As the majority of the glaciers in the world continue to melt, large chunks of ice float out into the surrounding channels. The ice under water melts faster than on the surface, as it\'s density changes the ice flips over and reveals beautiful patterns of glass-like sculptures. The gulls, Kittiwakes and other seabirds use these floaters to rest and spot food. Although it looks like night this photo was taken in the late morning hours as cloud cover shadows the dark pine ridge in the background.','http://yourshot.nationalgeographic.com/u/fQYSUbVfts-T7odkrFJckdiFeHvab0GWOfzhj7tYdC0uglagsDtoRr3cFIfyvdWI3XDdNnQ_PTIkNMEd5e3TShJkrev-TrVLYGwMlnJDqUMIYLPpimV8YtR5-RNQWOdkSGSio3LY2z9RfD9OypbqiCVTHxnxGOV4qNcKP6I_f05qXRl21stQ94jyDQdrl7PxAZGS2P7GGFKZt2tKTK3ZPFzMtVDPgz0/'),(6,'Swords','Mario Suarez Porras','animal','Two gannets fight during the courship at Bass Rock,Scotland.The island plays host to more than 150,000 gannets and is the world\'s largest colony of Northern gannets. Described famously by naturalists as \"one of the wildlife wonders of the world\" (often credited to Sir David Attenborough).','http://yourshot.nationalgeographic.com/u/fQYSUbVfts-T7odkrFJckdiFeHvab0GWOfzhj7tYdC0uglagsDtrCI3Tk4_sLkbgdPr-86KAhAQUHorPTjE2iC8BESQpYDDzWr_ct-7X0j8gcvLRJzVfLCtY8otNdZD6JXsJedgz-GvztipCsa-KrWt5v5ywAjhbHqAxm9duABXOdTnpWjlcjZojVE-DUnyyU_oLa878oMz6LPt6aNpo0x88_AF9mzM/'),(10,'Three deer','Bastian Hertel','animal','We were out for a walk in a nature preserve somewhere in the Austrian Alps. Suddenly a whole group of deers showed up. I slowly approached them on my knees and tried to get them doing what I want. They didn\'t care at all. So I had to wait until I liked the way they looked and stood. This shot was a lot of fun taking it.','http://yourshot.nationalgeographic.com/u/fQYSUbVfts-T7odkrFJckdiFeHvab0GWOfzhj7tYdC0uglagsDttMiMcVNQP_NO7DLYWNoAjBOEmLpgFxvGAkGd6VpWBAH5KBXlp0jqGa2CIiR1qjGkkwmXFah2DoxRAX_zNcGxjKSxXUHmhQdxExT5MjnLfqApv2avHp47pK8qv5dAKgnFpAjoiobmQsmKe-zmbWNFSLpa8qwX0pAf7bUM_-kaiu-s/'),(12,'Happy three friends ','Max Malloy','life','The Irelands Ring of Kerry is noted for its photo opportunities and this happy little group of friends at a roadside market make the perfect one. It looks like yer man is making a St. Brigid\'s Cross with reeds while the dog barks instructions and the donkey checks his work ... amazing what you can teach humans to do. I don\'t know what the goat\'s job is. Lookout maybe? Contrived? Perhaps, but tell me you\'d pass by without taking a picture.','http://yourshot.nationalgeographic.com/u/fQYSUbVfts-T7odkrFJckdiFeHvab0GWOfzhj7tYdC0uglagsDtoTKo4XjCc15PUro2TfgY4Us0MwwkcSxoqtc_JrIQGXBIst54-TljP73qfKR40_8_5LFvWuK_Hg1Z2tpLDoYscvVp7c2MymhDupD9YvuaipcpgNg7aXnuko-cknrB3TID1g_CoA-hBe7tSrRoQkSB2B3Ym8X_wRKjMLGSXjUastuc/'),(13,'Life in brick field','Sutapa Roy','life','Brick making work has dominated constructions in India since antiquity. Most of the workers are woman who live in poverty, exploited and deprived in their work place. Unhealthy periphery and malnutrition causing cancer. Working environment need to be improved for their motivation and development of kilns.','http://yourshot.nationalgeographic.com/u/fQYSUbVfts-T7odkrFJckdiFeHvab0GWOfzhj7tYdC0uglagsDts61OoPdUyERBnxOQ93lBTmlYFgrXDZ5sj_lcbEJa-CK0KP6Y-_AXtjbAaGnmJrhozt57AwXdz1mUhpK88kkJdQtn2gSB2vG7720esEAbkOAlZ6UAtKEUCyry0gXWZGPXxBY-xl30aOzmMak0EAlJPv5hSePOrw7DQHaUYSPLcU34/');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-22 14:30:14
