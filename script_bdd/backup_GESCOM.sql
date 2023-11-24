-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: GESCOM
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(200) DEFAULT NULL,
  `cat_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customers` (
  `cus_id` int(11) NOT NULL,
  `cus_lastname` varchar(50) DEFAULT NULL,
  `cus_firstname` varchar(50) DEFAULT NULL,
  `cus_adress` varchar(150) DEFAULT NULL,
  `cus_zipcode` varchar(50) DEFAULT NULL,
  `cus_city` varchar(50) DEFAULT NULL,
  `cus_mail` varchar(75) DEFAULT NULL,
  `cus_phone` int(10) DEFAULT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'Riviere','Romain','2301 boulevard Alsace-Lorraine','80000','Amiens','risus.morbi@laposte.net',201583083),(2,'Bailly','Lilou','Ap #125-483 Fusce Street','80300','Birmingham','sagittis.placerat@Aliquam.co.uk',700966695),(3,'Muller','Alexandre','P.O. Box 149, 6931 Nulla. Rd.','80100','Abbeville','mauris.Morbi@Lorem.co.uk',167413271),(4,'Lefebvre','Élisa','Ap #850-6013 Suscipit, Av.','62000','Arras','laplusbelledu62g@gmail.com',710601863),(5,'Andre','Maëlle','Ap #449-9035 Ac Street','59133','Vieux-Genappe','aliquam.adipiscing@fringilla.net',296292567),(6,'Lemaire','Enzo','P.O. Box 771, 895 Libero Avenue','31779','Sevastopol','interdum.feugiat@a.edu',395027964),(7,'Perez','Bienvenue','Ap #382-9259 Tincidunt, Rd.','49960','Maastricht','tempus.mauris@nonloremvitae.net',735753221),(8,'Dumont','Emma','299-2527 Blandit Road','13011','Paternopoli','tristique.ac@Sedmalesuadaaugue.com',373682901),(9,'Riviere','Alice','P.O. Box 743, 4502 Dictum St.','64066','Campbelltown','fringilla.ornare.placerat@odioEtiam.edu',962347562),(10,'Boucher','Noë','865-7652 Nibh. Ave','75197','Fermont','facilisi.Sed.neque@eteuismodet.ca',527427380),(11,'Masson','Aaron','680-7022 Sollicitudin Avenue','68058','Renfrew','felis.Nulla@ligulaAeneangravida.net',325055764),(12,'Nazdorovie','Sergueï','592 Moskow road','51769','Vladivostok','serguei@nazdorovie.ru',925855798),(13,'Lemoine','Yasmine','9317 Sodales Ave','06190','Huntsville','dolor.sit.amet@Seddiam.net',857714507),(14,'Lopez','Marion','292 Ligula. Road','47589','Kota','molestie.in@accumsannequeet.edu',698455911),(15,'Blanchard','Émilie','Ap #923-6845 Commodo Street','90846','Rodgau','consectetuer.adipiscing@risusDuisa.co.uk',471496791),(16,'Philippe','Léonard','7315 Proin Street','70095','Matamata','sodales.elit.erat@Vivamusnibhdolor.org',107172928),(17,'Girard','Kimberley','P.O. Box 184, 8937 Pretium Street','30481','Kamalia','Suspendisse.sed.dolor@enimNunc.org',404189030),(18,'Morin','Élise','Ap #846-6229 Eu, St.','27844','West Valley City','Integer.vitae@lorem.edu',254854268),(19,'Lefebvre','Zoé','677-3832 Dis St.','94571','Caruaru','Sed@odioAliquamvulputate.net',639577658),(20,'Renault','Lilian','163 Sed Avenue','36652','La Unión','erat.semper@est.co.uk',255166898),(21,'Remy','Dimitri','Ap #801-6517 Eros Avenue','78009','Frigento','amet.dapibus.id@placerat.ca',396036245),(22,'Guillaume','Lena','1064 Donec St.','78387','Anchorage','varius.orci@fermentum.com',953782036),(23,'Maillard','Charlotte','738 Euismod Avenue','17914','Losino-Petrovsky','Maecenas.libero@nunc.com',817015812),(24,'Albert','Diego','Ap #332-8162 Proin Road','83410','Trois-Rivières','aliquam@vestibulum.edu',255430951),(25,'Leclerc','Lauriane','Ap #661-6175 Turpis St.','88100','Pékin','non@auctorveliteget.org',498920916),(26,'Poirier','Paul','Ap #784-932 Quis Rd.','42399','Flushing','lectus.sit@ligulaAliquamerat.net',763446742),(27,'Hubert','Marianne','8 cours javascript','80090','Amiens','vitae.purus@curae.org',206792150),(28,'Caron','Cédric','P.O. Box 643, 5476 Mi Rd.','23735','Vanderhoof','egestas.Duis.ac@eleifend.edu',266232419),(29,'Fournier','Célia','P.O. Box 301, 1701 Neque. Street','14711','Harrisburg','ante.Nunc@porta.edu',692615826),(30,'Hubert','Corentin','Ap #150-5696 Et, St.','08762','Veldwezelt','fringilla.euismod.enim@Namligula.ca',539979021),(31,'Dupont','Macéo','P.O. Box 580, 927 Amet Ave','32275','Karachi','Sed.auctor.odio@velitPellentesque.net',758036455),(32,'Fabre','Maelys','P.O. Box 347, 5390 Sit St.','04549','Francavilla Fontana','Duis.cursus@Pellentesquehabitantmorbi.ca',253671958),(33,'Henry','Florentin','4750 Molestie Rd.','91323','Heusden-Zolder','a.sollicitudin@adipiscingfringilla.ca',726936785),(34,'Pons','Léonard','6857 Scelerisque Ave','52811','Antofagasta','lectus@aliquet.edu',941616307),(35,'Fleury','Solene','Ap #518-8977 Duis Street','55043','Olmué','mollis@laciniavitae.net',808630903),(36,'Richard','Rémi','P.O. Box 480, 2248 Ac Road','09509','Bilbo','bibendum.sed@semvitaealiquam.ca',943962068),(37,'Blanc','Sarah','P.O. Box 535, 8956 Ut, Avenue','61210','Joliet','rutrum@nibh.com',805575004),(38,'Evrard','Paul','P.O. Box 909, 6072 Nullam St.','79346','Raiganj','arcu.Vestibulum@elitpellentesquea.org',401905237),(39,'Legrand','Romane','P.O. Box 567, 3645 Eu Rd.','41510','Vilvoorde','nunc@faucibus.org',963165937),(40,'Huet','Julien','285-395 Est, Rd.','22174','Eschwege','amet@eudolor.edu',240881253),(41,'Dubois','Lamia','145-1564 Vestibulum Rd.','86306','Valleyview','Pellentesque.habitant.morbi@musAenean.ca',682183873),(42,'Carpentier','Maïwenn','P.O. Box 181, 3727 Sem Road','77351','Farrukhabad-cum-Fatehgarh','sem.magna@sedorci.org',715511479),(43,'Perez','Florentin','2114 Nisi. St.','75209','Trivandrum','velit.justo.nec@MaurisnullaInteger.com',870041920),(44,'Dupont','Chaïma','P.O. Box 576, 4207 Sociis Av.','78616','Romeral','lorem.ipsum@Praesenteunulla.edu',399708266),(45,'Schneider','Alice','548-7461 Nunc Av.','18591','Marburg','Aliquam.erat@eget.org',297079661),(46,'Gautier','Rose','P.O. Box 705, 741 Integer Avenue','73604','Kartaly','ante@aliquet.com',932461360),(47,'Guillot','Loevan','Ap #601-2284 Commodo Road','54873','Gonnosfanadiga','cursus.in@ultriciessem.ca',314644035),(48,'Lefevre','Clémence','476-8880 Suscipit, Rd.','61563','Vöcklabruck','ut@sollicitudinadipiscing.co.uk',457752971),(49,'Bouvier','Clara','P.O. Box 282, 9786 Tellus Street','07517','Wilskerke','Fusce.fermentum.fermentum@adipiscingfringillaporttitor.co.uk',432914963),(50,'Blanchard','Adam','P.O. Box 259, 7958 Sem, St.','82728','Roosbeek','elementum@atfringillapurus.edu',139672737),(51,'Pikatchien','Jessica','92 rue de la plage','22190','Plérin','jessica.pikatchien@plerin.fr',278564042),(52,'Bailly','Léo','800-2734 Morbi Av.','50231','Widooie','ornare.lectus@hendreritDonec.edu',734831721),(53,'Schneider','Florentin','P.O. Box 468, 4940 Cursus Rd.','36508','Vaux-sur-Sure','erat.vitae@aliquet.com',821421997),(54,'Caron','Martin','242-9793 Ipsum Road','51877','Tain','pharetra.sed@Etiambibendumfermentum.edu',788393239),(55,'David','Lutécia','665-963 Donec Road','44664','Westkapelle','lorem@felispurusac.net',792783693),(56,'Robert','Agathe','6737 Ut, Road','05249','Sandy','nunc.sed.pede@consectetueradipiscing.com',634450159),(57,'Rodriguez','Macéo','P.O. Box 355, 2303 Vitae Street','57821','Suncheon','orci@ametornarelectus.org',472684476),(58,'Humbert','Élouan','P.O. Box 452, 8712 Purus, Av.','05252','Alix','quam.dignissim.pharetra@ornare.org',682265107),(59,'Charpentier','Lucie','9957 Morbi Rd.','24752','Aschersleben','ac.nulla@ante.net',441099805),(60,'Colin','Yanis','804-4641 Nunc. Avenue','16829','Alness','sit.amet.orci@turpisnec.co.uk',812254447),(61,'Robert','Élise','Ap #872-7281 Amet Street','09693','Rocky Mountain House','erat.nonummy.ultricies@sapienAenean.ca',407007247),(62,'Lucas','Laura','976-2480 Turpis Ave','58690','Alanya','vel.mauris@massarutrummagna.ca',405524344),(63,'Laurent','Quentin','489-9653 Fermentum Rd.','65691','Fort Resolution','porttitor.interdum@dictum.co.uk',707373852),(64,'Giraud','Kimberley','7411 Ut Rd.','51814','Stroud','nec@nectempus.com',103884425),(65,'Bailly','Julien','Ap #182-3848 Nunc St.','82181','Laramie','Morbi@feugiatLorem.org',274508650),(66,'Chevalier','Gaspard','8464 Blandit Rd.','03869','Glain','elit.sed.consequat@ultricies.co.uk',466809005),(67,'Francois','Tatiana','Ap #961-9752 Vestibulum Rd.','77822','Cap-de-la-Madeleine','dictum.mi.ac@ametconsectetueradipiscing.org',200147301),(68,'Mercier','Constant','Ap #706-6920 Amet Rd.','49458','Haut-Ittre','tellus.imperdiet@variusorciin.org',296096563),(69,'Gomez','Jérémy','70 avenue des travailleurs','80000','Amiens','lacus.Etiam@nibhco.net',967938363),(70,'Leroy','Benjamin','P.O. Box 202, 4157 Et, Avenue','41799','Eckernförde','non.magna.Nam@ultriciesdignissim.com',199309302),(71,'Rolland','Ethan','907-4675 Pede Rd.','32055','Enterprise','dolor.Fusce.mi@dignissim.co.uk',584704040),(72,'Meunier','Margaux','P.O. Box 461, 5531 In Rd.','39165','Glimes','morbi.tristique.senectus@Phasellusdolor.co.uk',422001131),(73,'Roger','Thomas','P.O. Box 505, 6494 Vel Avenue','06743','Fino Mornasco','porttitor.vulputate@egetipsumSuspendisse.edu',894398702),(74,'Renaud','Anaël','Ap #309-9136 Suspendisse St.','45464','Westmount','eget@ipsumcursusvestibulum.edu',299244593),(75,'Morin','Yüna','8089 Erat St.','07900','Shenkursk','Integer@lectuspedeultrices.org',230162777),(76,'Joly','Eva','479-8537 Ipsum Ave','42231','Bhimavaram','et.nunc.Quisque@odiotristique.com',917398026),(77,'Garnier','Anaël','4703 Fringilla, Street','66625','Kobbegem','at.arcu@vitaeodio.org',173395243),(78,'Martinez','Lina','Ap #466-9700 Pede. Avenue','46174','My','nisi.nibh.lacinia@nunc.com',497067354),(79,'Le gall','Nathan','P.O. Box 792, 625 Libero Rd.','40854','Ancaster Town','Sed.nunc@sitamet.ca',676975310),(80,'Martinez','Fanny','Ap #677-8255 Et Avenue','14981','Rodgau','tortor@maurissitamet.co.uk',893683553),(81,'Clement','Lucas','694-5524 Sit St.','92268','Branchon','luctus@vitaeorci.org',786695746),(82,'Marchal','Thomas','200-3480 A Road','11669','Saint-Honor�','magna.Praesent.interdum@velit.edu',225003361),(83,'Rey','Alicia','P.O. Box 606, 9603 Lorem Av.','75377','l\'Escaillre','Mauris.magna@est.co.uk',413194483),(84,'Rey','Jeanne','P.O. Box 550, 3352 Vitae Avenue','81795','Olmué','auctor@sem.com',585086153),(85,'Bouvier','Léonie','116-5083 Tortor. Ave','67639','Chieti','Duis.risus.odio@a.com',164663188),(86,'Paul','Marwane','249-1253 Odio Street','70886','Wimmertingen','sociis.natoque.penatibus@suscipit.org',702449373),(87,'Collin','Macéo','Ap #349-3573 Nibh St.','04443','Terrance','per@pellentesqueSed.ca',197051563),(88,'Maillard','Maelys','6013 Metus Avenue','88526','Huancayo','magnis@tristiquealiquet.net',362978211),(89,'Maillard','Constant','Ap #403-2940 Egestas St.','61695','Heidenheim','parturient.montes.nascetur@luctussitamet.com',301933055),(90,'Daniel','Félix','Ap #325-2095 Risus, Rd.','12706','Chimay','Donec.sollicitudin.adipiscing@Morbinon.net',297199570),(91,'Bon','Jean','30 rue de poulainville','80080','Amiens','adipiscing@gmail.com',354213413),(92,'Boulanger','Mathis','P.O. Box 595, 7563 Id Avenue','92588','Bhatinda','laoreet.ipsum@id.co.uk',292792782),(93,'Boucher','Dorian','P.O. Box 795, 7040 Venenatis Ave','82751','Jelenia Góra','Curabitur@nonummy.com',199164804),(94,'Bouvier','Marion','1071 Molestie Ave','38203','Limburg','Suspendisse.aliquet@nibh.co.uk',555750153),(95,'Maillard','Pauline','4721 Nonummy Av.','61225','Seilles','magna.Praesent@pedeCum.edu',743297591),(96,'Renaud','Rose','7837 Hendrerit Rd.','67206','Fremantle','orci.in@ultriciesornareelit.edu',817838763),(97,'Robert','Maelys','P.O. Box 393, 5911 Felis, St.','06642','Casper','malesuada.id.erat@velitCras.com',643869652),(98,'Dupuis','Carla','Ap #874-1931 Iaculis Road','69142','Virginia Plage','nisi@neceuismod.ca',913028975),(99,'Meunier','Angelina','Ap #784-906 Amet, Ave','46591','Melle','gravida.mauris@rutrumeu.edu',797466269),(100,'Philippe','Maïwenn','2585 In Street','53983','Lumaco','elit@Crassed.co.uk',460749886);
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Details`
--

DROP TABLE IF EXISTS `Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Details` (
  `ord_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `det_id` int(11) DEFAULT NULL,
  `det_price` decimal(6,2) DEFAULT NULL,
  `det_quantity` int(5) DEFAULT NULL,
  PRIMARY KEY (`ord_id`,`pro_id`),
  KEY `pro_id` (`pro_id`),
  CONSTRAINT `Details_ibfk_1` FOREIGN KEY (`ord_id`) REFERENCES `Orders` (`ord_id`),
  CONSTRAINT `Details_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `Products` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Details`
--

LOCK TABLES `Details` WRITE;
/*!40000 ALTER TABLE `Details` DISABLE KEYS */;
/*!40000 ALTER TABLE `Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `ord_id` int(11) NOT NULL AUTO_INCREMENT,
  `ord_order_date` date DEFAULT NULL,
  `ord_ship_date` date DEFAULT NULL,
  `ord_bill_date` date DEFAULT NULL,
  `ord_reception_date` date DEFAULT NULL,
  `ord_status` varchar(25) DEFAULT NULL,
  `cus_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ord_id`),
  KEY `cus_id` (`cus_id`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`cus_id`) REFERENCES `Customers` (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Products` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_ref` varchar(10) DEFAULT NULL,
  `pro_name` varchar(200) DEFAULT NULL,
  `pro_desc` text DEFAULT NULL,
  `pro_price` decimal(6,2) DEFAULT NULL,
  `pro_stock` smallint(4) DEFAULT NULL,
  `pro_color` varchar(30) DEFAULT NULL,
  `pro_picture` varchar(40) DEFAULT NULL,
  `pro_add_date` date DEFAULT NULL,
  `pro_update_date` datetime DEFAULT NULL,
  `pro_publish` tinyint(1) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `sup_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `cat_id` (`cat_id`),
  KEY `sup_id` (`sup_id`),
  KEY `test` (`pro_ref`),
  CONSTRAINT `Products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `Categories` (`cat_id`),
  CONSTRAINT `Products_ibfk_2` FOREIGN KEY (`sup_id`) REFERENCES `Suppliers` (`sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Suppliers`
--

DROP TABLE IF EXISTS `Suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Suppliers` (
  `sup_id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_name` varchar(50) DEFAULT NULL,
  `sup_city` varchar(50) DEFAULT NULL,
  `sup_adress` varchar(150) DEFAULT NULL,
  `sup_mail` varchar(75) DEFAULT NULL,
  `sup_phone` int(11) DEFAULT NULL,
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suppliers`
--

LOCK TABLES `Suppliers` WRITE;
/*!40000 ALTER TABLE `Suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03 10:50:00
