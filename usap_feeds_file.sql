-- MySQL dump 10.15  Distrib 10.0.26-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: usap_feeds_file
-- ------------------------------------------------------
-- Server version	10.0.26-MariaDB

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
-- Table structure for table `account_info`
--

DROP TABLE IF EXISTS `account_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_info` (
  `server_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(50) DEFAULT NULL,
  `account_description` varchar(250) DEFAULT NULL,
  `folder_location_backup` varchar(250) DEFAULT NULL,
  `folder_location_latest` varchar(250) DEFAULT NULL,
  `folder_location_rollback` varchar(250) DEFAULT NULL,
  `file_size_reference` varchar(50) DEFAULT NULL,
  `record_count_reference` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_info`
--

LOCK TABLES `account_info` WRITE;
/*!40000 ALTER TABLE `account_info` DISABLE KEYS */;
INSERT INTO `account_info` VALUES (3,2,1,'dam_ci_details','discount auto mirror channel inteligence details','data/aopi/feeds_longbow/output/dam_ci_details/backup','data/aopi/feeds_longbow/output/dam_ci_details/latest','data/aopi/feeds_longbow/output/dam_ci_details/rollback','1.GB','1000000'),(3,1,2,'stt_ci_details','stylin tracks channel inteligence details','data/aopi/feeds_longbow/output/stt_ci_details/backup','data/aopi/feeds_longbow/output/stt_ci_details/latest','data/aopi/feeds_longbow/output/stt_ci_details/rollback','34854451','1000000'),(1,1,5,'JCW_DETAILS','stylin tracks channel inteligence details','data/aopi/feeds_longbow/WhitneyGroup/jcwhitney/channel_intelligence/production/data/output/backup','data/aopi/feeds_longbow/WhitneyGroup/jcwhitney/channel_intelligence/production/data/output/latest','data/aopi/feeds_longbow/WhitneyGroup/jcwhitney/channel_intelligence/production/data/output/rollback','3650722201','0'),(1,1,6,'JCW_SKU','stylin tracks channel inteligence details','var/www/html/feeds_zf2feeds_production/data/output/jcw_ci_sku/backup','var/www/html/feeds_zf2feeds_production/data/output/jcw_ci_sku/latest','var/www/html/feeds_zf2feeds_production/data/output/jcw_ci_skurollback','1401534183','0'),(1,2,7,'JCW_LC','jc whitney commision junction','data/aopi/feeds_longbow/jcw_affiliates/jcw.link_connector.production/data/output/backup','data/aopi/feeds_longbow/jcw_affiliates/jcw.link_connector.production/data/output/latest','data/aopi/feeds_longbow/jcw_affiliates/jcw.link_connector.production/data/output/rollback','559939584','0'),(1,2,8,'JCW_PJ','jc whitney pepper jam','data/aopi/feeds_longbow/jcw_affiliates/jcw.pepperjam.production/data/output/backup','data/aopi/feeds_longbow/jcw_affiliates/jcw.pepperjam.production/data/output/latest','data/aopi/feeds_longbow/jcw_affiliates/jcw.pepperjam.production/data/output/rollback','782237696','0'),(1,2,9,'JCW_CJ','jc whitney commision junction','data/aopi/feeds_longbow/jcw_affiliates/jcw.commission_junction.production/data/output/backup','data/aopi/feeds_longbow/jcw_affiliates/jcw.commission_junction.production/data/output/latest','data/aopi/feeds_longbow/jcw_affiliates/jcw.commission_junction.production/data/output/rollback','772800512','0'),(1,2,10,'JCW_CRITEO','jc whitney criteo','var/www/html/feeds_zf2feeds_production/data/output/jcw_criteo/backup','var/www/html/feeds_zf2feeds_production/data/output/jcw_criteo/latest','var/www/html/feeds_zf2feeds_production/data/output/jcw_criteo/rollback','383778816','0'),(1,2,11,'JCW_IR','jc whitney impact radius','data/aopi/feeds_longbow/output/jcw_ir_sku/backup','data/aopi/feeds_longbow/output/jcw_ir_sku/latest','data/aopi/feeds_longbow/output/jcw_ir_sku/rollback','1320702443','0'),(4,1,12,'CP_SKU','carparts sku','data/aopi/feeds_longbow/carparts/froogle_sku_ci/production/data/backup','data/aopi/feeds_longbow/carparts/froogle_sku_ci/production/data/latest','data/aopi/feeds_longbow/carparts/froogle_sku_ci/production/data/rollback','0','0'),(4,1,14,'CP_DETAILS','carparts details','data/aopi/feeds_longbow/carparts/froogle_pla/channel_intelegence/scripts/data/backup','data/aopi/feeds_longbow/carparts/froogle_pla/channel_intelegence/scripts/data/latest','data/aopi/feeds_longbow/carparts/froogle_pla/channel_intelegence/scripts/data/rollback','0','0'),(4,1,15,'APW_DETAILS','auto parts warehouse details','data/aopi/feeds_longbow/autopartswarehouse/froogle_Detailed.pla/production/data/output/backup','data/aopi/feeds_longbow/autopartswarehouse/froogle_Detailed.pla/production/data/output/latest','data/aopi/feeds_longbow/autopartswarehouse/froogle_Detailed.pla/production/data/output/rollback','0','0'),(4,1,16,'DBP_SKU','discount body parts sku','data/aopi/feeds_longbow/output/dbp_ci/backup','data/aopi/feeds_longbow/output/dbp_ci/latest','data/aopi/feeds_longbow/output/dbp_ci/rollback','0','0'),(4,1,17,'DES_SKU','discount exhaust system sku','data/aopi/feeds_longbow/output/des_sku/backup','data/aopi/feeds_longbow/output/des_sku/latest','data/aopi/feeds_longbow/output/des_sku/rollback','0','0'),(4,1,18,'DAR_SKU','discount auto radiator sku','data/aopi/feeds_longbow/output/dar_sku/backup','data/aopi/feeds_longbow/output/dar_sku/latest','data/aopi/feeds_longbow/output/dar_sku/rollback','0','0'),(4,1,19,'DBK_SKU','discount breaks sku','data/aopi/feeds_longbow/output/dbk_sku/backup','data/aopi/feeds_longbow/output/dbk_sku/latest','data/aopi/feeds_longbow/output/dbk_sku/rollback','0','0'),(4,1,20,'DCC_SKU','discount catalytic converter sku','data/aopi/feeds_longbow/output/dcc_ci_sku/backup','data/aopi/feeds_longbow/output/dcc_ci_sku/latest','data/aopi/feeds_longbow/output/dcc_ci_sku/rollback','0','0'),(4,1,21,'DES_DETAILS','discount exhaust system details','data/aopi/feeds_longbow/output/des_details/backup','data/aopi/feeds_longbow/output/des_details/latest','data/aopi/feeds_longbow/output/des_details/rollback','0','0'),(4,1,22,'DAR_DETAILS','discount auto radiator details','data/aopi/feeds_longbow/output/dar_details/backup','data/aopi/feeds_longbow/output/dar_details/latest','data/aopi/feeds_longbow/output/dar_details/rollback','0','0'),(4,1,23,'DBK_DETAILS','discount breaks details','data/aopi/feeds_longbow/output/dbk_details/backup','data/aopi/feeds_longbow/output/dbk_details/latest','data/aopi/feeds_longbow/output/dbk_details/rollback','0','0'),(4,1,24,'CPO_SKU','cpo sku','data/aopi/feeds_longbow/output/cpo_sku/backup','data/aopi/feeds_longbow/output/cpo_sku/latest','data/aopi/feeds_longbow/output/cpo_sku/rollback','0','0'),(4,2,25,'APW_LC','auto parts warehouse link connector','data/aopi/feeds_longbow/apw_affiliates/apw.link_connector.staging/data/output/backup','data/aopi/feeds_longbow/apw_affiliates/apw.link_connector.staging/data/output/latest','data/aopi/feeds_longbow/apw_affiliates/apw.link_connector.staging/data/output/rollback','0','0'),(4,2,26,'APW_LS','auto parts warehouse ls','data/aopi/feeds_longbow/apw_affiliates/apw.linkshare.staging/data/output/backup','data/aopi/feeds_longbow/apw_affiliates/apw.linkshare.staging/data/output/latest','data/aopi/feeds_longbow/apw_affiliates/apw.linkshare.staging/data/output/rollback','0','0'),(4,2,27,'APW_PJ','auto parts warehouse pepper jam','data/aopi/feeds_longbow/apw_affiliates/apw.pepperjam.staging/data/output/backup','data/aopi/feeds_longbow/apw_affiliates/apw.linkshare.staging/data/output/latest','data/aopi/feeds_longbow/apw_affiliates/apw.linkshare.staging/data/output/rollback','0','0'),(4,2,28,'APW_CRITEO','auto parts warehouse criteo','data/aopi/feeds_longbow/autopartswarehouse/criteo/criteo.staging/data/backup','data/aopi/feeds_longbow/autopartswarehouse/criteo/criteo.staging/data/latest','data/aopi/feeds_longbow/autopartswarehouse/criteo/criteo.staging/data/rollback','0','0'),(4,2,29,'APW_ECN','auto parts warehouse ecn','data/aopi/feeds_longbow/autopartswarehouse/ebay_commerce_network/production/application/data/output/backup','data/aopi/feeds_longbow/autopartswarehouse/ebay_commerce_network/production/application/data/output/latest','data/aopi/feeds_longbow/autopartswarehouse/ebay_commerce_network/production/application/data/output/rollback','0','0'),(4,2,30,'APW_FACEBOOK','auto parts warehouse facebook','var/www/html/feeds_zf2feeds_production/data/output/apw_sku_facebook/backup','var/www/html/feeds_zf2feeds_production/data/output/apw_sku_facebook/latest','var/www/html/feeds_zf2feeds_production/data/output/apw_sku_facebook/rollback','0','0'),(4,2,31,'CP_FACEBOOK','car parts facebook','var/www/html/feeds_zf2feeds_production/data/output/cp_facebook/backup','var/www/html/feeds_zf2feeds_production/data/output/cp_facebook/latest','var/www/html/feeds_zf2feeds_production/data/output/cp_facebook/rollback','0','0'),(4,2,32,'DBP_IR','discount body parts impact radius','var/www/html/feeds_zf2feeds_production/data/output/dbp_ir_sku/backup','var/www/html/feeds_zf2feeds_production/data/output/dbp_ir_sku/latest','var/www/html/feeds_zf2feeds_production/data/output/dbp_ir_sku/rollback','0','0');
/*!40000 ALTER TABLE `account_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_type`
--

DROP TABLE IF EXISTS `account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_type`
--

LOCK TABLES `account_type` WRITE;
/*!40000 ALTER TABLE `account_type` DISABLE KEYS */;
INSERT INTO `account_type` VALUES (1,'google'),(2,'non google');
/*!40000 ALTER TABLE `account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_credentials`
--

DROP TABLE IF EXISTS `server_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_credentials` (
  `server_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_credentials`
--

LOCK TABLES `server_credentials` WRITE;
/*!40000 ALTER TABLE `server_credentials` DISABLE KEYS */;
INSERT INTO `server_credentials` VALUES (1,'masturiano','masturianousap1q2w'),(2,'masturiano','masturianousap1q2w'),(3,'masturiano','masturianousap1q2w'),(4,'masturiano','masturianousap1q2w'),(5,'masturiano','masturianousap1q2w'),(6,'masturiano','mausap1q2w'),(7,'masturiano','masturianousap1q2w'),(8,'masturiano','masturianousap1q2w');
/*!40000 ALTER TABLE `server_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_info`
--

DROP TABLE IF EXISTS `server_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_info` (
  `server_id` int(11) NOT NULL,
  `server_name` varchar(50) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_info`
--

LOCK TABLES `server_info` WRITE;
/*!40000 ALTER TABLE `server_info` DISABLE KEYS */;
INSERT INTO `server_info` VALUES (1,'EC2FEEDGEN01','174.129.233.71'),(2,'EC2FEEDGEN02','174.129.233.90'),(3,'EC2FEEDGEN03','174.129.233.96'),(4,'EC2FEEDGEN04','184.73.160.117'),(5,'EC2FEEDGEN05','50.19.81.57'),(6,'EC2FEEDGEN06','75.101.151.176'),(7,'EC2FEEDGEN07','75.101.154.23'),(8,'EC2FEEDGEN08','75.101.154.25');
/*!40000 ALTER TABLE `server_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-04  4:16:42
