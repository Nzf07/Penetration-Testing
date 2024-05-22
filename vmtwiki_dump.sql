-- MySQL dump 10.11
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	5.0.51a-3ubuntu5

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
-- Current Database: `dvwa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dvwa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dvwa`;

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `guestbook` (
  `comment_id` smallint(5) unsigned NOT NULL auto_increment,
  `comment` varchar(300) default NULL,
  `name` varchar(100) default NULL,
  PRIMARY KEY  (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
INSERT INTO `guestbook` VALUES (1,'This is a test comment.','test');
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `user_id` int(6) NOT NULL default '0',
  `first_name` varchar(15) default NULL,
  `last_name` varchar(15) default NULL,
  `user` varchar(15) default NULL,
  `password` varchar(32) default NULL,
  `avatar` varchar(70) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','admin','5f4dcc3b5aa765d61d8327deb882cf99','http://172.16.123.129/dvwa/hackable/users/admin.jpg'),(2,'Gordon','Brown','gordonb','e99a18c428cb38d5f260853678922e03','http://172.16.123.129/dvwa/hackable/users/gordonb.jpg'),(3,'Hack','Me','1337','8d3533d75ae2c3966d7e0d4fcc69216b','http://172.16.123.129/dvwa/hackable/users/1337.jpg'),(4,'Pablo','Picasso','pablo','0d107d09f5bbe40cade3de5c71e9e9b7','http://172.16.123.129/dvwa/hackable/users/pablo.jpg'),(5,'Bob','Smith','smithy','5f4dcc3b5aa765d61d8327deb882cf99','http://172.16.123.129/dvwa/hackable/users/smithy.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `metasploit`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `metasploit` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `metasploit`;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `columns_priv` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Table_name` char(64) collate utf8_bin NOT NULL default '',
  `Column_name` char(64) collate utf8_bin NOT NULL default '',
  `Timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') character set utf8 NOT NULL default '',
  PRIMARY KEY  (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `db` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Select_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Insert_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Update_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Delete_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Drop_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Grant_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `References_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Index_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_tmp_table_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Lock_tables_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Execute_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  PRIMARY KEY  (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('%','test','','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','N','N'),('%','test\\_%','','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','N','N');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `func` (
  `name` char(64) collate utf8_bin NOT NULL default '',
  `ret` tinyint(1) NOT NULL default '0',
  `dl` char(128) collate utf8_bin NOT NULL default '',
  `type` enum('function','aggregate') character set utf8 NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned default NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY  (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help categories';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (1,'Geographic',0,''),(2,'Polygon properties',30,''),(3,'WKT',30,''),(4,'Numeric Functions',34,''),(5,'MBR',30,''),(6,'Control flow functions',34,''),(7,'Transactions',31,''),(8,'Account Management',31,''),(9,'Point properties',30,''),(10,'Encryption Functions',34,''),(11,'LineString properties',30,''),(12,'Logical operators',34,''),(13,'Miscellaneous Functions',34,''),(14,'Functions and Modifiers for Use with GROUP BY',31,''),(15,'Information Functions',34,''),(16,'Storage Engines',31,''),(17,'Comparison operators',34,''),(18,'Bit Functions',34,''),(19,'Table Maintenance',31,''),(20,'Data Types',31,''),(21,'Triggers',31,''),(22,'Geometry constructors',30,''),(23,'GeometryCollection properties',1,''),(24,'Administration',31,''),(25,'Data Manipulation',31,''),(26,'Geometry relations',30,''),(27,'Language Structure',31,''),(28,'Date and Time Functions',34,''),(29,'WKB',30,''),(30,'Geographic Features',31,''),(31,'Contents',0,''),(32,'Geometry properties',30,''),(33,'String Functions',34,''),(34,'Functions',31,''),(35,'Stored Routines',31,''),(36,'Data Definition',31,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY  (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help keywords';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (0,'JOIN'),(1,'REPEAT'),(2,'SERIALIZABLE'),(3,'REPLACE'),(4,'RETURNS'),(5,'MASTER_SSL_CA'),(6,'NCHAR'),(7,'COLUMNS'),(8,'WORK'),(9,'DATETIME'),(10,'MODE'),(11,'OPEN'),(12,'INTEGER'),(13,'ESCAPE'),(14,'VALUE'),(15,'GEOMETRYCOLLECTIONFROMWKB'),(16,'SQL_BIG_RESULT'),(17,'DROP'),(18,'EVENTS'),(19,'MONTH'),(20,'INFO'),(21,'PROFILES'),(22,'DUPLICATE'),(23,'REPLICATION'),(24,'INNODB'),(25,'YEAR_MONTH'),(26,'SUBJECT'),(27,'PREPARE'),(28,'LOCK'),(29,'NDB'),(30,'CHECK'),(31,'FULL'),(32,'INT4'),(33,'BY'),(34,'NO'),(35,'MINUTE'),(36,'DATA'),(37,'DAY'),(38,'SHARE'),(39,'REAL'),(40,'SEPARATOR'),(41,'DELETE'),(42,'ON'),(43,'CONNECTION'),(44,'CLOSE'),(45,'X509'),(46,'USE'),(47,'WHERE'),(48,'PRIVILEGES'),(49,'SPATIAL'),(50,'SUPER'),(51,'SQL_BUFFER_RESULT'),(52,'IGNORE'),(53,'QUICK'),(54,'SIGNED'),(55,'SECURITY'),(56,'POLYGONFROMWKB'),(57,'NDBCLUSTER'),(58,'FALSE'),(59,'LEVEL'),(60,'FORCE'),(61,'BINARY'),(62,'TO'),(63,'CHANGE'),(64,'HOUR_MINUTE'),(65,'UPDATE'),(66,'INTO'),(67,'FEDERATED'),(68,'VARYING'),(69,'HOUR_SECOND'),(70,'VARIABLE'),(71,'ROLLBACK'),(72,'PROCEDURE'),(73,'RTREE'),(74,'TIMESTAMP'),(75,'IMPORT'),(76,'AGAINST'),(77,'CHECKSUM'),(78,'COUNT'),(79,'LONGBINARY'),(80,'THEN'),(81,'INSERT'),(82,'ENGINES'),(83,'HANDLER'),(84,'DAY_SECOND'),(85,'EXISTS'),(86,'MUTEX'),(87,'RELEASE'),(88,'BOOLEAN'),(89,'MOD'),(90,'DEFAULT'),(91,'TYPE'),(92,'NO_WRITE_TO_BINLOG'),(93,'OPTIMIZE'),(94,'RESET'),(95,'ITERATE'),(96,'DO'),(97,'BIGINT'),(98,'SET'),(99,'ISSUER'),(100,'DATE'),(101,'STATUS'),(102,'FULLTEXT'),(103,'COMMENT'),(104,'MASTER_CONNECT_RETRY'),(105,'INNER'),(106,'STOP'),(107,'MASTER_LOG_FILE'),(108,'MRG_MYISAM'),(109,'PRECISION'),(110,'REQUIRE'),(111,'TRAILING'),(112,'LONG'),(113,'OPTION'),(114,'ELSE'),(115,'DEALLOCATE'),(116,'IO_THREAD'),(117,'CASE'),(118,'CIPHER'),(119,'CONTINUE'),(120,'FROM'),(121,'READ'),(122,'LEFT'),(123,'ELSEIF'),(124,'MINUTE_SECOND'),(125,'COMPACT'),(126,'RESTORE'),(127,'DEC'),(128,'FOR'),(129,'WARNINGS'),(130,'MIN_ROWS'),(131,'STRING'),(132,'CONDITION'),(133,'FUNCTION'),(134,'ENCLOSED'),(135,'AGGREGATE'),(136,'FIELDS'),(137,'INT3'),(138,'ARCHIVE'),(139,'ADD'),(140,'AVG_ROW_LENGTH'),(141,'KILL'),(142,'FLOAT4'),(143,'VIEW'),(144,'REPEATABLE'),(145,'INFILE'),(146,'ORDER'),(147,'USING'),(148,'MIDDLEINT'),(149,'GRANT'),(150,'UNSIGNED'),(151,'DECIMAL'),(152,'GEOMETRYFROMTEXT'),(153,'INDEXES'),(154,'FOREIGN'),(155,'CACHE'),(156,'HOSTS'),(157,'COMMIT'),(158,'SCHEMAS'),(159,'LEADING'),(160,'SNAPSHOT'),(161,'DECLARE'),(162,'LOAD'),(163,'SQL_CACHE'),(164,'CONVERT'),(165,'DYNAMIC'),(166,'POLYGONFROMTEXT'),(167,'COLLATE'),(168,'BYTE'),(169,'LINESTRINGFROMWKB'),(170,'GLOBAL'),(171,'BERKELEYDB'),(172,'WHEN'),(173,'HAVING'),(174,'AS'),(175,'STARTING'),(176,'RELOAD'),(177,'AUTOCOMMIT'),(178,'REVOKE'),(179,'GRANTS'),(180,'OUTER'),(181,'FLOOR'),(182,'WITH'),(183,'STD'),(184,'AFTER'),(185,'CSV'),(186,'DISABLE'),(187,'OUTFILE'),(188,'LOW_PRIORITY'),(189,'FILE'),(190,'BDB'),(191,'SCHEMA'),(192,'SONAME'),(193,'POW'),(194,'MULTIPOINTFROMWKB'),(195,'INDEX'),(196,'DUAL'),(197,'MULTIPOINTFROMTEXT'),(198,'BACKUP'),(199,'MULTILINESTRINGFROMWKB'),(200,'EXTENDED'),(201,'CROSS'),(202,'NATIONAL'),(203,'GROUP'),(204,'SHA'),(205,'UNDO'),(206,'ZEROFILL'),(207,'CLIENT'),(208,'MASTER_PASSWORD'),(209,'RELAY_LOG_FILE'),(210,'TRUE'),(211,'CHARACTER'),(212,'MASTER_USER'),(213,'TABLE'),(214,'ENGINE'),(215,'INSERT_METHOD'),(216,'CASCADE'),(217,'RELAY_LOG_POS'),(218,'SQL_CALC_FOUND_ROWS'),(219,'UNION'),(220,'MYISAM'),(221,'LEAVE'),(222,'MODIFY'),(223,'MATCH'),(224,'MASTER_LOG_POS'),(225,'DESC'),(226,'DISTINCTROW'),(227,'TIME'),(228,'NUMERIC'),(229,'EXPANSION'),(230,'CURSOR'),(231,'CODE'),(232,'GEOMETRYCOLLECTIONFROMTEXT'),(233,'CHAIN'),(234,'FLUSH'),(235,'CREATE'),(236,'DESCRIBE'),(237,'MAX_UPDATES_PER_HOUR'),(238,'INT2'),(239,'PROCESSLIST'),(240,'LOGS'),(241,'HEAP'),(242,'SOUNDS'),(243,'BETWEEN'),(244,'MULTILINESTRINGFROMTEXT'),(245,'REPAIR'),(246,'PACK_KEYS'),(247,'CALL'),(248,'FAST'),(249,'VALUES'),(250,'LOOP'),(251,'VARCHARACTER'),(252,'BEFORE'),(253,'TRUNCATE'),(254,'SHOW'),(255,'REDUNDANT'),(256,'ALL'),(257,'USER_RESOURCES'),(258,'PARTIAL'),(259,'BINLOG'),(260,'END'),(261,'SECOND'),(262,'AND'),(263,'FLOAT8'),(264,'PREV'),(265,'HOUR'),(266,'SELECT'),(267,'DATABASES'),(268,'OR'),(269,'IDENTIFIED'),(270,'MASTER_SSL_CIPHER'),(271,'SQL_SLAVE_SKIP_COUNTER'),(272,'BOTH'),(273,'BOOL'),(274,'YEAR'),(275,'MASTER_PORT'),(276,'CONCURRENT'),(277,'HELP'),(278,'UNIQUE'),(279,'TRIGGERS'),(280,'PROCESS'),(281,'CONSISTENT'),(282,'MASTER_SSL'),(283,'DATE_ADD'),(284,'MAX_CONNECTIONS_PER_HOUR'),(285,'LIKE'),(286,'FETCH'),(287,'IN'),(288,'COLUMN'),(289,'DUMPFILE'),(290,'USAGE'),(291,'EXECUTE'),(292,'MEMORY'),(293,'CEIL'),(294,'QUERY'),(295,'MASTER_HOST'),(296,'LINES'),(297,'SQL_THREAD'),(298,'MAX_QUERIES_PER_HOUR'),(299,'MULTIPOLYGONFROMWKB'),(300,'MASTER_SSL_CERT'),(301,'DAY_MINUTE'),(302,'TRANSACTION'),(303,'STDDEV'),(304,'DATE_SUB'),(305,'GEOMETRYFROMWKB'),(306,'INT1'),(307,'RENAME'),(308,'ALTER'),(309,'MAX_ROWS'),(310,'RIGHT'),(311,'STRAIGHT_JOIN'),(312,'NATURAL'),(313,'VARIABLES'),(314,'ESCAPED'),(315,'SHA1'),(316,'PASSWORD'),(317,'CHAR'),(318,'OFFSET'),(319,'NEXT'),(320,'SQL_LOG_BIN'),(321,'ERRORS'),(322,'TEMPORARY'),(323,'COMMITTED'),(324,'SQL_SMALL_RESULT'),(325,'UPGRADE'),(326,'DELAY_KEY_WRITE'),(327,'BEGIN'),(328,'PROFILE'),(329,'MEDIUM'),(330,'INTERVAL'),(331,'SSL'),(332,'DAY_HOUR'),(333,'REFERENCES'),(334,'AES_ENCRYPT'),(335,'STORAGE'),(336,'ISOLATION'),(337,'CEILING'),(338,'INT8'),(339,'RESTRICT'),(340,'LINESTRINGFROMTEXT'),(341,'UNCOMMITTED'),(342,'IS'),(343,'NOT'),(344,'ANALYSE'),(345,'DES_KEY_FILE'),(346,'COMPRESSED'),(347,'START'),(348,'SAVEPOINT'),(349,'IF'),(350,'PRIMARY'),(351,'PURGE'),(352,'USER'),(353,'INNOBASE'),(354,'LAST'),(355,'EXIT'),(356,'KEYS'),(357,'LIMIT'),(358,'KEY'),(359,'MERGE'),(360,'UNTIL'),(361,'SQL_NO_CACHE'),(362,'DELAYED'),(363,'ANALYZE'),(364,'CONSTRAINT'),(365,'SERIAL'),(366,'ACTION'),(367,'WRITE'),(368,'SESSION'),(369,'DATABASE'),(370,'NULL'),(371,'POWER'),(372,'USE_FRM'),(373,'SLAVE'),(374,'TERMINATED'),(375,'NVARCHAR'),(376,'ASC'),(377,'ENABLE'),(378,'OPTIONALLY'),(379,'DIRECTORY'),(380,'WHILE'),(381,'MAX_USER_CONNECTIONS'),(382,'DISTINCT'),(383,'AES_DECRYPT'),(384,'LOCAL'),(385,'MASTER_SSL_KEY'),(386,'NONE'),(387,'TABLES'),(388,'<>'),(389,'RLIKE'),(390,'TRIGGER'),(391,'COLLATION'),(392,'SHUTDOWN'),(393,'HIGH_PRIORITY'),(394,'BTREE'),(395,'FIRST'),(396,'TYPES'),(397,'MASTER'),(398,'FIXED'),(399,'MULTIPOLYGONFROMTEXT'),(400,'ROW_FORMAT');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`help_keyword_id`,`help_topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='keyword-topic relation';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (1,0),(334,0),(214,1),(419,2),(37,3),(395,3),(194,4),(173,5),(402,6),(18,7),(326,7),(131,8),(212,9),(77,10),(334,10),(13,11),(93,11),(119,11),(326,11),(194,12),(467,12),(357,13),(224,14),(95,15),(334,16),(26,17),(76,17),(174,17),(219,17),(245,17),(257,17),(311,17),(382,17),(390,17),(434,17),(109,18),(353,19),(241,20),(71,21),(91,22),(185,23),(326,24),(377,24),(439,24),(353,25),(185,26),(29,27),(219,27),(30,28),(334,28),(439,29),(391,30),(439,30),(18,31),(275,31),(326,31),(424,31),(439,31),(467,32),(42,33),(66,33),(72,33),(185,33),(334,33),(340,33),(395,33),(434,33),(439,33),(439,34),(443,34),(353,35),(104,36),(395,36),(439,36),(353,37),(334,38),(194,39),(294,39),(340,40),(42,41),(439,41),(443,41),(1,42),(443,42),(162,43),(439,43),(45,44),(93,44),(185,45),(1,46),(42,47),(72,47),(93,47),(178,48),(185,48),(230,48),(196,49),(434,49),(185,50),(334,51),(1,52),(72,52),(91,52),(334,52),(395,52),(434,52),(42,53),(391,53),(437,53),(212,54),(185,55),(79,56),(451,56),(439,57),(362,58),(419,59),(1,60),(32,61),(212,61),(173,62),(431,62),(435,62),(173,63),(434,63),(353,64),(72,65),(91,65),(334,65),(443,65),(37,66),(91,66),(284,66),(334,66),(439,67),(238,68),(353,69),(116,70),(131,71),(431,71),(14,72),(171,72),(281,72),(308,72),(326,72),(334,72),(390,72),(411,72),(456,72),(196,73),(86,74),(175,74),(395,75),(77,76),(378,77),(439,77),(58,78),(309,78),(405,78),(267,79),(24,80),(49,80),(74,80),(91,81),(179,81),(282,81),(455,81),(263,82),(326,82),(93,83),(293,83),(353,84),(26,85),(140,85),(174,85),(257,85),(264,86),(326,86),(131,87),(431,87),(20,88),(77,88),(99,89),(160,89),(37,90),(91,90),(140,90),(183,90),(197,90),(224,90),(434,90),(439,90),(434,91),(439,91),(101,92),(307,92),(437,92),(441,92),(101,93),(31,94),(105,94),(136,94),(246,94),(111,95),(112,96),(463,96),(205,97),(37,98),(72,98),(116,98),(124,98),(131,98),(140,98),(169,98),(197,98),(313,98),(395,98),(434,98),(439,98),(443,98),(447,98),(461,98),(185,99),(118,100),(212,100),(244,100),(353,100),(50,101),(122,101),(199,101),(207,101),(264,101),(308,101),(326,101),(344,101),(377,101),(196,102),(434,102),(439,102),(439,103),(173,104),(1,105),(46,106),(173,107),(439,108),(294,109),(185,110),(427,111),(267,112),(185,113),(230,113),(49,114),(74,114),(219,115),(46,116),(305,116),(49,117),(74,117),(185,118),(293,119),(42,120),(104,120),(109,120),(326,120),(334,120),(339,120),(427,120),(30,121),(93,121),(419,121),(1,122),(24,123),(353,124),(439,125),(165,126),(193,127),(166,128),(293,128),(326,128),(334,128),(393,128),(309,129),(326,129),(439,130),(194,131),(166,132),(14,133),(194,133),(281,133),(308,133),(326,133),(382,133),(390,133),(411,133),(456,133),(395,134),(194,135),(326,136),(395,136),(233,137),(439,138),(52,139),(434,139),(434,140),(439,140),(162,141),(154,142),(26,143),(144,143),(426,143),(419,144),(395,145),(42,146),(72,146),(334,146),(340,146),(434,146),(1,147),(42,147),(75,147),(233,148),(185,149),(230,149),(20,150),(115,150),(154,150),(193,150),(212,150),(294,150),(467,150),(141,151),(194,151),(387,152),(326,153),(434,154),(439,154),(443,154),(89,155),(136,155),(284,155),(130,156),(326,156),(131,157),(145,158),(326,158),(427,159),(131,160),(166,161),(183,161),(293,161),(393,161),(104,162),(284,162),(339,162),(395,162),(334,163),(212,164),(354,164),(439,165),(371,166),(140,167),(197,167),(439,167),(436,168),(423,169),(116,170),(122,170),(169,170),(328,170),(419,170),(439,171),(49,172),(74,172),(334,173),(1,174),(30,174),(334,174),(395,175),(185,176),(131,177),(230,178),(177,179),(326,179),(1,180),(205,181),(77,182),(185,182),(242,183),(434,184),(395,185),(439,185),(434,186),(334,187),(30,188),(37,188),(42,188),(72,188),(91,188),(395,188),(185,189),(151,190),(439,190),(140,191),(174,191),(197,191),(289,191),(326,191),(194,192),(258,193),(433,194),(1,195),(52,195),(76,195),(89,195),(196,195),(284,195),(288,195),(326,195),(434,195),(439,195),(260,196),(397,197),(336,198),(253,199),(437,200),(1,201),(238,202),(402,202),(334,203),(399,204),(293,205),(20,206),(115,206),(154,206),(193,206),(294,206),(467,206),(185,207),(173,208),(173,209),(362,210),(140,211),(197,211),(238,211),(313,211),(395,211),(402,211),(439,211),(173,212),(52,213),(96,213),(101,213),(165,213),(199,213),(257,213),(259,213),(301,213),(326,213),(336,213),(339,213),(378,213),(391,213),(434,213),(437,213),(439,213),(441,213),(326,214),(344,214),(434,214),(439,214),(439,215),(26,216),(257,216),(439,216),(443,216),(173,217),(334,218),(285,219),(439,220),(290,221),(434,222),(77,223),(173,224),(310,225),(334,225),(340,225),(334,226),(212,227),(295,227),(352,227),(193,228),(77,229),(393,230),(456,231),(227,232),(131,233),(136,234),(307,234),(14,235),(17,235),(52,235),(66,235),(140,235),(194,235),(196,235),(259,235),(281,235),(289,235),(326,235),(426,235),(439,235),(310,236),(185,237),(215,238),(326,239),(424,239),(32,240),(151,240),(326,240),(344,240),(435,240),(439,241),(355,242),(132,243),(94,244),(437,245),(439,246),(318,247),(391,248),(37,249),(323,250),(238,251),(435,252),(301,253),(14,254),(18,254),(21,254),(32,254),(50,254),(58,254),(71,254),(109,254),(119,254),(122,254),(130,254),(145,254),(151,254),(177,254),(178,254),(199,254),(207,254),(259,254),(263,254),(264,254),(275,254),(288,254),(289,254),(308,254),(309,254),(313,254),(326,254),(328,254),(344,254),(377,254),(424,254),(456,254),(459,254),(439,255),(185,256),(230,256),(285,256),(334,256),(307,257),(439,258),(109,259),(24,260),(49,260),(74,260),(214,260),(306,260),(323,260),(463,260),(353,261),(132,262),(296,262),(294,263),(93,264),(353,265),(37,266),(237,266),(241,266),(282,266),(334,266),(145,267),(326,267),(126,268),(66,269),(185,269),(173,270),(169,271),(427,272),(20,273),(97,273),(353,274),(173,275),(395,276),(106,277),(367,277),(434,278),(21,279),(185,280),(131,281),(173,282),(353,283),(185,284),(326,285),(355,285),(360,286),(77,287),(109,287),(334,287),(434,288),(334,289),(185,290),(75,291),(185,291),(334,292),(373,293),(77,294),(136,294),(162,294),(173,295),(395,296),(46,297),(305,297),(185,298),(110,299),(173,300),(353,301),(131,302),(419,302),(383,303),(353,304),(129,305),(20,306),(96,307),(206,307),(434,307),(52,308),(144,308),(185,308),(197,308),(411,308),(434,308),(439,309),(1,310),(1,311),(334,311),(1,312),(326,313),(328,313),(395,314),(399,315),(66,316),(185,316),(447,316),(212,317),(436,317),(334,318),(93,319),(461,320),(58,321),(326,321),(257,322),(419,323),(334,324),(391,325),(439,326),(131,327),(306,327),(71,328),(391,329),(353,330),(185,331),(353,332),(185,333),(439,333),(443,333),(415,334),(263,335),(419,336),(420,337),(115,338),(26,339),(257,339),(443,339),(48,340),(419,341),(73,342),(190,342),(347,342),(428,342),(73,343),(140,343),(190,343),(292,343),(171,344),(307,345),(439,346),(131,347),(305,347),(431,348),(24,349),(26,349),(140,349),(174,349),(257,349),(448,349),(434,350),(435,351),(66,352),(206,352),(311,352),(439,353),(93,354),(293,355),(288,356),(326,356),(434,356),(42,357),(72,357),(93,357),(109,357),(334,357),(52,358),(91,358),(434,358),(439,358),(443,358),(439,359),(214,360),(334,361),(37,362),(91,362),(455,362),(441,363),(434,364),(439,364),(224,365),(439,365),(439,366),(443,366),(30,367),(116,368),(122,368),(328,368),(419,368),(140,369),(174,369),(197,369),(289,369),(326,369),(73,370),(347,370),(443,370),(452,371),(437,372),(31,373),(46,373),(130,373),(207,373),(305,373),(395,374),(238,375),(334,376),(340,376),(434,377),(395,378),(439,379),(463,380),(185,381),(0,382),(84,382),(270,382),(285,382),(334,382),(340,382),(361,382),(405,382),(464,383),(30,384),(101,384),(307,384),(395,384),(437,384),(441,384),(173,385),(185,386),(30,387),(119,387),(275,387),(326,387),(462,388),(23,389),(17,390),(245,390),(459,391),(185,392),(91,393),(334,393),(196,394),(93,395),(434,395),(439,395),(326,396),(32,397),(50,397),(104,397),(173,397),(246,397),(339,397),(435,397),(193,398),(439,398),(184,399),(439,400);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY  (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help topics';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (0,'MIN',14,'Syntax:\nMIN([DISTINCT] expr)\n\nReturns the minimum value of expr. MIN() may take a string argument; in\nsuch cases, it returns the minimum string value. See\nhttp://dev.mysql.com/doc/refman/5.0/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the minimum of the distinct values of expr,\nhowever, this produces the same result as omitting DISTINCT.\n\nMIN() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(1,'JOIN',25,'MySQL supports the following JOIN syntaxes for the table_references\npart of SELECT statements and multiple-table DELETE and UPDATE\nstatements:\n\ntable_references:\n    table_reference [, table_reference] ...\n\ntable_reference:\n    table_factor\n  | join_table\n\ntable_factor:\n    tbl_name [[AS] alias] [index_hint)]\n  | ( table_references )\n  | { OJ table_reference LEFT OUTER JOIN table_reference\n        ON conditional_expr }\n\njoin_table:\n    table_reference [INNER | CROSS] JOIN table_factor [join_condition]\n  | table_reference STRAIGHT_JOIN table_factor\n  | table_reference STRAIGHT_JOIN table_factor ON condition\n  | table_reference LEFT [OUTER] JOIN table_reference join_condition\n  | table_reference NATURAL [LEFT [OUTER]] JOIN table_factor\n  | table_reference RIGHT [OUTER] JOIN table_reference join_condition\n  | table_reference NATURAL [RIGHT [OUTER]] JOIN table_factor\n\njoin_condition:\n    ON conditional_expr\n  | USING (column_list)\n\nindex_hint:\n    USE {INDEX|KEY} [FOR JOIN] (index_list)\n  | IGNORE {INDEX|KEY} [FOR JOIN] (index_list)\n  | FORCE {INDEX|KEY} [FOR JOIN] (index_list)\n\nindex_list:\n    index_name [, index_name] ...\n\nA table reference is also known as a join expression.\n\nThe syntax of table_factor is extended in comparison with the SQL\nStandard. The latter accepts only table_reference, not a list of them\ninside a pair of parentheses.\n\nThis is a conservative extension if we consider each comma in a list of\ntable_reference items as equivalent to an inner join. For example:\n\nSELECT * FROM t1 LEFT JOIN (t2, t3, t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nis equivalent to:\n\nSELECT * FROM t1 LEFT JOIN (t2 CROSS JOIN t3 CROSS JOIN t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nIn MySQL, CROSS JOIN is a syntactic equivalent to INNER JOIN (they can\nreplace each other). In standard SQL, they are not equivalent. INNER\nJOIN is used with an ON clause, CROSS JOIN is used otherwise.\n\nIn versions of MySQL prior to 5.0.1, parentheses in table_references\nwere just omitted and all join operations were grouped to the left. In\ngeneral, parentheses can be ignored in join expressions containing only\ninner join operations. As of 5.0.1, nested joins are allowed (see\nhttp://dev.mysql.com/doc/refman/5.0/en/nested-joins.html).\n\nFurther changes in join processing were made in 5.0.12 to make MySQL\nmore compliant with standard SQL. These charges are described later in\nthis section.\n\nIndex hints can be specified to affect how the MySQL optimizer makes\nuse of indexes. For more information, see\nhttp://dev.mysql.com/doc/refman/5.0/en/index-hints.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/join.html\n\n','SELECT left_tbl.*\n  FROM left_tbl LEFT JOIN right_tbl ON left_tbl.id = right_tbl.id\n  WHERE right_tbl.id IS NULL;\n','http://dev.mysql.com/doc/refman/5.0/en/join.html'),(2,'HEX',33,'Syntax:\nHEX(N_or_S)\n\nIf N_or_S is a number, returns a string representation of the\nhexadecimal value of N, where N is a longlong (BIGINT) number. This is\nequivalent to CONV(N,10,16).\n\nIf N_or_S is a string, returns a hexadecimal string representation of\nN_or_S where each character in N_or_S is converted to two hexadecimal\ndigits. The inverse of this operation is performed by the UNHEX()\nfunction.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT HEX(255);\n        -> \'FF\'\nmysql> SELECT 0x616263;\n        -> \'abc\'\nmysql> SELECT HEX(\'abc\');\n        -> 616263\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(3,'REPLACE',33,'Syntax:\nREPLACE(str,from_str,to_str)\n\nReturns the string str with all occurrences of the string from_str\nreplaced by the string to_str. REPLACE() performs a case-sensitive\nmatch when searching for from_str.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT REPLACE(\'www.mysql.com\', \'w\', \'Ww\');\n        -> \'WwWwWw.mysql.com\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(4,'CONTAINS',26,'Contains(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 completely contains g2. This\ntests the opposite relationship as Within().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),(5,'SRID',32,'SRID(g)\n\nReturns an integer indicating the Spatial Reference System ID for the\ngeometry value g.\n\nIn MySQL, the SRID value is just an integer associated with the\ngeometry value. All calculations are done assuming Euclidean (planar)\ngeometry.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n','mysql> SELECT SRID(GeomFromText(\'LineString(1 1,2 2)\',101));\n+-----------------------------------------------+\n| SRID(GeomFromText(\'LineString(1 1,2 2)\',101)) |\n+-----------------------------------------------+\n|                                           101 |\n+-----------------------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),(6,'CURRENT_TIMESTAMP',28,'Syntax:\nCURRENT_TIMESTAMP, CURRENT_TIMESTAMP()\n\nCURRENT_TIMESTAMP and CURRENT_TIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(7,'VARIANCE',14,'Syntax:\nVARIANCE(expr)\n\nReturns the population standard variance of expr. This is an extension\nto standard SQL. As of MySQL 5.0.3, the standard SQL function VAR_POP()\ncan be used instead.\n\nVARIANCE() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(8,'VAR_SAMP',14,'Syntax:\nVAR_SAMP(expr)\n\nReturns the sample variance of expr. That is, the denominator is the\nnumber of rows minus one. This function was added in MySQL 5.0.3.\n\nVAR_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(9,'CONCAT',33,'Syntax:\nCONCAT(str1,str2,...)\n\nReturns the string that results from concatenating the arguments. May\nhave one or more arguments. If all arguments are non-binary strings,\nthe result is a non-binary string. If the arguments include any binary\nstrings, the result is a binary string. A numeric argument is converted\nto its equivalent binary string form; if you want to avoid that, you\ncan use an explicit type cast, as in this example:\n\nSELECT CONCAT(CAST(int_col AS CHAR), char_col);\n\nCONCAT() returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT CONCAT(\'My\', \'S\', \'QL\');\n        -> \'MySQL\'\nmysql> SELECT CONCAT(\'My\', NULL, \'QL\');\n        -> NULL\nmysql> SELECT CONCAT(14.3);\n        -> \'14.3\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(10,'GEOMETRY HIERARCHY',30,'Geometry is the base class. It is an abstract class. The instantiable\nsubclasses of Geometry are restricted to zero-, one-, and\ntwo-dimensional geometric objects that exist in two-dimensional\ncoordinate space. All instantiable geometry classes are defined so that\nvalid instances of a geometry class are topologically closed (that is,\nall defined geometries include their boundary).\n\nThe base Geometry class has subclasses for Point, Curve, Surface, and\nGeometryCollection:\n\no Point represents zero-dimensional objects.\n\no Curve represents one-dimensional objects, and has subclass\n  LineString, with sub-subclasses Line and LinearRing.\n\no Surface is designed for two-dimensional objects and has subclass\n  Polygon.\n\no GeometryCollection has specialized zero-, one-, and two-dimensional\n  collection classes named MultiPoint, MultiLineString, and\n  MultiPolygon for modeling geometries corresponding to collections of\n  Points, LineStrings, and Polygons, respectively. MultiCurve and\n  MultiSurface are introduced as abstract superclasses that generalize\n  the collection interfaces to handle Curves and Surfaces.\n\nGeometry, Curve, Surface, MultiCurve, and MultiSurface are defined as\nnon-instantiable classes. They define a common set of methods for their\nsubclasses and are included for extensibility.\n\nPoint, LineString, Polygon, GeometryCollection, MultiPoint,\nMultiLineString, and MultiPolygon are instantiable classes.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-geometry-class-hierarchy.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-geometry-class-hierarchy.html'),(11,'CHAR FUNCTION',33,'Syntax:\nCHAR(N,... [USING charset_name])\n\nCHAR() interprets each argument N as an integer and returns a string\nconsisting of the characters given by the code values of those\nintegers. NULL values are skipped.\nAs of MySQL 5.0.15, CHAR() arguments larger than 255 are converted into\nmultiple result bytes. For example, CHAR(256) is equivalent to\nCHAR(1,0), and CHAR(256*256) is equivalent to CHAR(1,0,0):\n\nmysql> SELECT HEX(CHAR(1,0)), HEX(CHAR(256));\n+----------------+----------------+\n| HEX(CHAR(1,0)) | HEX(CHAR(256)) |\n+----------------+----------------+\n| 0100           | 0100           |\n+----------------+----------------+\nmysql> SELECT HEX(CHAR(1,0,0)), HEX(CHAR(256*256));\n+------------------+--------------------+\n| HEX(CHAR(1,0,0)) | HEX(CHAR(256*256)) |\n+------------------+--------------------+\n| 010000           | 010000             |\n+------------------+--------------------+\n\nBy default, CHAR() returns a binary string. To produce a string in a\ngiven character set, use the optional USING clause:\n\nmysql> SELECT CHARSET(CHAR(0x65)), CHARSET(CHAR(0x65 USING utf8));\n+---------------------+--------------------------------+\n| CHARSET(CHAR(0x65)) | CHARSET(CHAR(0x65 USING utf8)) |\n+---------------------+--------------------------------+\n| binary              | utf8                           |\n+---------------------+--------------------------------+\n\nIf USING is given and the result string is illegal for the given\ncharacter set, a warning is issued. Also, if strict SQL mode is\nenabled, the result from CHAR() becomes NULL.\n\nBefore MySQL 5.0.15, CHAR() returns a string in the connection\ncharacter set and the USING clause is unavailable. In addition, each\nargument is interpreted modulo 256, so CHAR(256) and CHAR(256*256) both\nare equivalent to CHAR(0).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT CHAR(77,121,83,81,\'76\');\n        -> \'MySQL\'\nmysql> SELECT CHAR(77,77.3,\'77.3\');\n        -> \'MMM\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(12,'DATETIME',20,'DATETIME\n\nA date and time combination. The supported range is \'1000-01-01\n00:00:00\' to \'9999-12-31 23:59:59\'. MySQL displays DATETIME values in\n\'YYYY-MM-DD HH:MM:SS\' format, but allows assignment of values to\nDATETIME columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html'),(13,'OPEN',35,'Syntax:\nOPEN cursor_name\n\nThis statement opens a previously declared cursor.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/open.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/open.html'),(14,'SHOW CREATE PROCEDURE',25,'Syntax:\nSHOW CREATE {PROCEDURE | FUNCTION} sp_name\n\nThese statements are MySQL extensions. Similar to SHOW CREATE TABLE,\nthey return the exact string that can be used to re-create the named\nroutine. The statements require that you be the owner of the routine or\nhave SELECT access to the mysql.proc table. If you do not have\nprivileges for the routine itself, the value displayed for the Create\nProcedure or Create Function field will be NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-create-procedure.html\n\n','mysql> SHOW CREATE FUNCTION test.hello\\G\n*************************** 1. row ***************************\n       Function: hello\n       sql_mode:\nCreate Function: CREATE FUNCTION `test`.`hello`(s CHAR(20)) RETURNS CHAR(50)\n                 RETURN CONCAT(\'Hello, \',s,\'!\')\n','http://dev.mysql.com/doc/refman/5.0/en/show-create-procedure.html'),(15,'INTEGER',20,'INTEGER[(M)] [UNSIGNED] [ZEROFILL]\n\nThis type is a synonym for INT.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(16,'LOWER',33,'Syntax:\nLOWER(str)\n\nReturns the string str with all characters changed to lowercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT LOWER(\'QUADRATICALLY\');\n        -> \'quadratically\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(17,'CREATE TRIGGER',21,'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    TRIGGER trigger_name trigger_time trigger_event\n    ON tbl_name FOR EACH ROW trigger_stmt\n\nThis statement creates a new trigger. A trigger is a named database\nobject that is associated with a table, and that activates when a\nparticular event occurs for the table. CREATE TRIGGER was added in\nMySQL 5.0.2. Currently, its use requires the SUPER privilege.\n\nThe trigger becomes associated with the table named tbl_name, which\nmust refer to a permanent table. You cannot associate a trigger with a\nTEMPORARY table or a view.\n\nWhen the trigger is activated, the DEFINER clause determines the\nprivileges that apply, as described later in this section.\n\ntrigger_time is the trigger action time. It can be BEFORE or AFTER to\nindicate that the trigger activates before or after the statement that\nactivated it.\n\ntrigger_event indicates the kind of statement that activates the\ntrigger. The trigger_event can be one of the following:\n\no INSERT: The trigger is activated whenever a new row is inserted into\n  the table; for example, through INSERT, LOAD DATA, and REPLACE\n  statements.\n\no UPDATE: The trigger is activated whenever a row is modified; for\n  example, through UPDATE statements.\n\no DELETE: The trigger is activated whenever a row is deleted from the\n  table; for example, through DELETE and REPLACE statements. However,\n  DROP TABLE and TRUNCATE statements on the table do not activate this\n  trigger, because they do not use DELETE. See [HELP TRUNCATE TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-trigger.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/create-trigger.html'),(18,'SHOW COLUMNS',25,'Syntax:\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views as of MySQL 5.0.1. The LIKE clause, if present,\nindicates which column names to match. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nIf the data types differ from what you expect them to be based on your\nCREATE TABLE statement, note that MySQL sometimes changes data types\nwhen you create or alter a table. The conditions for which this occurs\nare described in\nhttp://dev.mysql.com/doc/refman/5.0/en/silent-column-changes.html.\n\nThe FULL keyword causes the output to include the privileges you have\nas well as any per-column comments for each column.\n\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. In other words, these two statements are equivalent:\n\nmysql> SHOW COLUMNS FROM mytable FROM mydb;\nmysql> SHOW COLUMNS FROM mydb.mytable;\n\nSHOW FIELDS is a synonym for SHOW COLUMNS. You can also list a table\'s\ncolumns with the mysqlshow db_name tbl_name command.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee [HELP DESCRIBE].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-columns.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-columns.html'),(19,'MONTH',28,'Syntax:\nMONTH(date)\n\nReturns the month for date, in the range 1 to 12 for January to\nDecember, or 0 for dates such as \'0000-00-00\' or \'2008-00-00\' that have\na zero month part.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT MONTH(\'1998-02-03\');\n        -> 2\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(20,'TINYINT',20,'TINYINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA very small integer. The signed range is -128 to 127. The unsigned\nrange is 0 to 255.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(21,'SHOW TRIGGERS',25,'Syntax:\nSHOW TRIGGERS [FROM db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined on the MySQL server.\nThis statement requires the SUPER privilege. It was implemented in\nMySQL 5.0.10. The LIKE clause, if present, indicates which trigger\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nFor the trigger ins_sum as defined in\nhttp://dev.mysql.com/doc/refman/5.0/en/using-triggers.html, the output\nof this statement is as shown here:\n\nmysql> SHOW TRIGGERS LIKE \'acc%\'\\G\n*************************** 1. row ***************************\n  Trigger: ins_sum\n    Event: INSERT\n    Table: account\nStatement: SET @sum = @sum + NEW.amount\n   Timing: BEFORE\n  Created: NULL\n sql_mode:\n  Definer: myname@localhost\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-triggers.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-triggers.html'),(22,'MASTER_POS_WAIT',13,'Syntax:\nMASTER_POS_WAIT(log_name,log_pos[,timeout])\n\nThis function is useful for control of master/slave synchronization. It\nblocks until the slave has read and applied all updates up to the\nspecified position in the master log. The return value is the number of\nlog events the slave had to wait for to advance to the specified\nposition. The function returns NULL if the slave SQL thread is not\nstarted, the slave\'s master information is not initialized, the\narguments are incorrect, or an error occurs. It returns -1 if the\ntimeout has been exceeded. If the slave SQL thread stops while\nMASTER_POS_WAIT() is waiting, the function returns NULL. If the slave\nis past the specified position, the function returns immediately.\n\nIf a timeout value is specified, MASTER_POS_WAIT() stops waiting when\ntimeout seconds have elapsed. timeout must be greater than 0; a zero or\nnegative timeout means no timeout.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),(23,'REGEXP',33,'Syntax:\nexpr REGEXP pat, expr RLIKE pat\n\nPerforms a pattern match of a string expression expr against a pattern\npat. The pattern can be an extended regular expression. The syntax for\nregular expressions is discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/regexp.html. Returns 1 if expr\nmatches pat; otherwise it returns 0. If either expr or pat is NULL, the\nresult is NULL. RLIKE is a synonym for REGEXP, provided for mSQL\ncompatibility.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\n*Note*: Because MySQL uses the C escape syntax in strings (for example,\n\"\\n\" to represent the newline character), you must double any \"\\\" that\nyou use in your REGEXP strings.\n\nREGEXP is not case sensitive, except when used with binary strings.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html\n\n','mysql> SELECT \'Monty!\' REGEXP \'m%y%%\';\n        -> 0\nmysql> SELECT \'Monty!\' REGEXP \'.*\';\n        -> 1\nmysql> SELECT \'new*\\n*line\' REGEXP \'new\\\\*.\\\\*line\';\n        -> 1\nmysql> SELECT \'a\' REGEXP \'A\', \'a\' REGEXP BINARY \'A\';\n        -> 1  0\nmysql> SELECT \'a\' REGEXP \'^[a-d]\';\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html'),(24,'IF STATEMENT',35,'Syntax:\nIF search_condition THEN statement_list\n    [ELSEIF search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND IF\n\nIF implements a basic conditional construct. If the search_condition\nevaluates to true, the corresponding SQL statement list is executed. If\nno search_condition matches, the statement list in the ELSE clause is\nexecuted. Each statement_list consists of one or more statements.\n\n*Note*: There is also an IF() function, which differs from the IF\nstatement described here. See [HELP CASE operator].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/if-statement.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/if-statement.html'),(25,'^',18,'Syntax:\n^\n\nBitwise XOR:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n','mysql> SELECT 1 ^ 1;\n        -> 0\nmysql> SELECT 1 ^ 0;\n        -> 1\nmysql> SELECT 11 ^ 3;\n        -> 8\n','http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),(26,'DROP VIEW',36,'Syntax:\nDROP VIEW [IF EXISTS]\n    view_name [, view_name] ...\n    [RESTRICT | CASCADE]\n\nDROP VIEW removes one or more views. You must have the DROP privilege\nfor each view. If any of the views named in the argument list do not\nexist, MySQL returns an error indicating by name which non-existing\nviews it was unable to drop, but it also drops all of the views in the\nlist that do exist.\n\nThe IF EXISTS clause prevents an error from occurring for views that\ndon\'t exist. When this clause is given, a NOTE is generated for each\nnon-existent view. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE, if given, are parsed and ignored.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-view.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/drop-view.html'),(27,'WITHIN',26,'Within(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially within g2. This\ntests the opposite relationship as Contains().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),(28,'WEEK',28,'Syntax:\nWEEK(date[,mode])\n\nThis function returns the week number for date. The two-argument form\nof WEEK() allows you to specify whether the week starts on Sunday or\nMonday and whether the return value should be in the range from 0 to 53\nor from 1 to 53. If the mode argument is omitted, the value of the\ndefault_week_format system variable is used. See\nhttp://dev.mysql.com/doc/refman/5.0/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT WEEK(\'1998-02-20\');\n        -> 7\nmysql> SELECT WEEK(\'1998-02-20\',0);\n        -> 7\nmysql> SELECT WEEK(\'1998-02-20\',1);\n        -> 8\nmysql> SELECT WEEK(\'1998-12-31\',1);\n        -> 53\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(29,'PREPARE',25,'Syntax:\nPREPARE stmt_name FROM preparable_stmt\n\nThe PREPARE statement prepares a statement and assigns it a name,\nstmt_name, by which to refer to the statement later. Statement names\nare not case sensitive. preparable_stmt is either a string literal or a\nuser variable that contains the text of the statement. The text must\nrepresent a single SQL statement, not multiple statements. Within the\nstatement, \"?\" characters can be used as parameter markers to indicate\nwhere data values are to be bound to the query later when you execute\nit. The \"?\" characters should not be enclosed within quotes, even if\nyou intend to bind them to string values. Parameter markers can be used\nonly where data values should appear, not for SQL keywords,\nidentifiers, and so forth.\n\nIf a prepared statement with the given name already exists, it is\ndeallocated implicitly before the new statement is prepared. This means\nthat if the new statement contains an error and cannot be prepared, an\nerror is returned and no statement with the given name exists.\n\nThe scope of a prepared statement is the client session within which it\nis created. Other clients cannot see it.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/sqlps.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/sqlps.html'),(30,'LOCK',7,'Syntax:\nLOCK TABLES\n    tbl_name [[AS] alias] lock_type\n    [, tbl_name [[AS] alias] lock_type] ...\n\nlock_type:\n    READ [LOCAL]\n  | [LOW_PRIORITY] WRITE\n\nUNLOCK TABLES\n\nLOCK TABLES acquires table locks for the current thread. It locks base\ntables but not views. To use LOCK TABLES, you must have the LOCK TABLES\nprivilege, and the SELECT privilege for each table to be locked.\n\nUNLOCK TABLES explicitly releases any table locks held by the current\nthread. Another use for UNLOCK TABLES is to release the global read\nlock acquired with FLUSH TABLES WITH READ LOCK. (You can lock all\ntables in all databases with read locks with the FLUSH TABLES WITH READ\nLOCK statement. See [HELP FLUSH]. This is a very convenient way to get\nbackups if you have a filesystem such as Veritas that can take\nsnapshots in time.)\n\nThe following general rules apply to acquisition and release of locks\nby a given thread:\n\no Table locks are acquired with LOCK TABLES.\n\no If the LOCK TABLES statement must wait due to locks held by other\n  threads on any of the tables, it blocks until all locks can be\n  acquired.\n\no Table locks are released explicitly with UNLOCK TABLES.\n\no Table locks are released implicitly under these conditions:\n\n  o LOCK TABLES releases any table locks currently held by the thread\n    before acquiring new locks.\n\n  o Beginning a transaction (for example, with START TRANSACTION)\n    implicitly performs an UNLOCK TABLES. (Additional information about\n    the interaction between table locking and transactions is given\n    later in the section.)\n\n  o If a client connection drops, the server releases table locks held\n    by the client. If the client reconnects, the locks will no longer\n    be in effect. For this reason, clients may wish to disable\n    auto-reconnect. With auto-reconnect in effect, the client is not\n    notified if reconnect occurs but any table locks will have been\n    lost. With auto-reconnect disabled, if the connection drops, an\n    error occurs for the next statement issued. The client can detect\n    the error and take appropriate action such as reacquiring the\n    locks. See\n    http://dev.mysql.com/doc/refman/5.0/en/auto-reconnect.html.\n\no One thread cannot release locks held by another thread.\n\n*Note*: If you use ALTER TABLE on a locked table, it may become\nunlocked. See\nhttp://dev.mysql.com/doc/refman/5.0/en/alter-table-problems.html.\n\nThe main reasons to use LOCK TABLES are to emulate transactions or to\nget more speed when updating tables. This is explained in more detail\nlater in this section.\n\nA table lock protects only against inappropriate reads or writes by\nother clients. The client holding the lock, even a read lock, can\nperform table-level operations such as DROP TABLE. Truncate operations\nare not transaction-safe, so an error occurs if the client attempts one\nduring an active transaction or while holding a table lock.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/lock-tables.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/lock-tables.html'),(31,'RESET SLAVE',25,'Syntax:\nRESET SLAVE\n\nRESET SLAVE makes the slave forget its replication position in the\nmaster\'s binary logs. This statement is meant to be used for a clean\nstart: It deletes the master.info and relay-log.info files, all the\nrelay logs, and starts a new relay log.\n\n*Note*: All relay logs are deleted, even if they have not been\ncompletely executed by the slave SQL thread. (This is a condition\nlikely to exist on a replication slave if you have issued a STOP SLAVE\nstatement or if the slave is highly loaded.)\n\nConnection information stored in the master.info file is immediately\nreset using any values specified in the corresponding startup options.\nThis information includes values such as master host, master port,\nmaster user, and master password. If the slave SQL thread was in the\nmiddle of replicating temporary tables when it was stopped, and RESET\nSLAVE is issued, these replicated temporary tables are deleted on the\nslave.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/reset-slave.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/reset-slave.html'),(32,'SHOW BINARY LOGS',25,'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE MASTER LOGS], that shows\nhow to determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-binary-logs.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-binary-logs.html'),(33,'POLYGON',22,'Polygon(ls1,ls2,...)\n\nConstructs a WKB Polygon value from a number of WKB LineString\narguments. If any argument does not represent the WKB of a LinearRing\n(that is, not a closed and simple LineString) the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),(34,'MINUTE',28,'Syntax:\nMINUTE(time)\n\nReturns the minute for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT MINUTE(\'98-02-03 10:05:03\');\n        -> 5\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(35,'DAY',28,'Syntax:\nDAY(date)\n\nDAY() is a synonym for DAYOFMONTH().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(36,'MID',33,'Syntax:\nMID(str,pos,len)\n\nMID(str,pos,len) is a synonym for SUBSTRING(str,pos,len).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(37,'REPLACE INTO',25,'Syntax:\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name [(col_name,...)]\n    VALUES ({expr | DEFAULT},...),(...),...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name\n    SET col_name={expr | DEFAULT}, ...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n\nREPLACE works exactly like INSERT, except that if an old row in the\ntable has the same value as a new row for a PRIMARY KEY or a UNIQUE\nindex, the old row is deleted before the new row is inserted. See [HELP\nINSERT].\n\nREPLACE is a MySQL extension to the SQL standard. It either inserts, or\ndeletes and inserts. For another MySQL extension to standard SQL ---\nthat either inserts or updates --- see\nhttp://dev.mysql.com/doc/refman/5.0/en/insert-on-duplicate.html.\n\nNote that unless the table has a PRIMARY KEY or UNIQUE index, using a\nREPLACE statement makes no sense. It becomes equivalent to INSERT,\nbecause there is no index to be used to determine whether a new row\nduplicates another.\n\nValues for all columns are taken from the values specified in the\nREPLACE statement. Any missing columns are set to their default values,\njust as happens for INSERT. You cannot refer to values from the current\nrow and use them in the new row. If you use an assignment such as SET\ncol_name = col_name + 1, the reference to the column name on the right\nhand side is treated as DEFAULT(col_name), so the assignment is\nequivalent to SET col_name = DEFAULT(col_name) + 1.\n\nTo use REPLACE, you must have both the INSERT and DELETE privileges for\nthe table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/replace.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/replace.html'),(38,'UUID',13,'Syntax:\nUUID()\n\nReturns a Universal Unique Identifier (UUID) generated according to\n\"DCE 1.1: Remote Procedure Call\" (Appendix A) CAE (Common Applications\nEnvironment) Specifications published by The Open Group in October 1997\n(Document Number C706,\nhttp://www.opengroup.org/public/pubs/catalog/c706.htm).\n\nA UUID is designed as a number that is globally unique in space and\ntime. Two calls to UUID() are expected to generate two different\nvalues, even if these calls are performed on two separate computers\nthat are not connected to each other.\n\nA UUID is a 128-bit number represented by a string of five hexadecimal\nnumbers in aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee format:\n\no The first three numbers are generated from a timestamp.\n\no The fourth number preserves temporal uniqueness in case the timestamp\n  value loses monotonicity (for example, due to daylight saving time).\n\no The fifth number is an IEEE 802 node number that provides spatial\n  uniqueness. A random number is substituted if the latter is not\n  available (for example, because the host computer has no Ethernet\n  card, or we do not know how to find the hardware address of an\n  interface on your operating system). In this case, spatial uniqueness\n  cannot be guaranteed. Nevertheless, a collision should have very low\n  probability.\n\n  Currently, the MAC address of an interface is taken into account only\n  on FreeBSD and Linux. On other operating systems, MySQL uses a\n  randomly generated 48-bit number.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n','mysql> SELECT UUID();\n        -> \'6ccd780c-baba-1026-9564-0040f4311e29\'\n','http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),(39,'LINESTRING',22,'LineString(pt1,pt2,...)\n\nConstructs a WKB LineString value from a number of WKB Point arguments.\nIf any argument is not a WKB Point, the return value is NULL. If the\nnumber of Point arguments is less than two, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),(40,'SLEEP',13,'Syntax:\nSLEEP(duration)\n\nSleeps (pauses) for the number of seconds given by the duration\nargument, then returns 0. If SLEEP() is interrupted, it returns 1. The\nduration may have a fractional part given in microseconds. This\nfunction was added in MySQL 5.0.12.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),(41,'CONNECTION_ID',15,'Syntax:\nCONNECTION_ID()\n\nReturns the connection ID (thread ID) for the connection. Every\nconnection has an ID that is unique among the set of currently\nconnected clients.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','mysql> SELECT CONNECTION_ID();\n        -> 23786\n','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(42,'DELETE',25,'Syntax:\nSingle-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE] FROM tbl_name\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    tbl_name[.*] [, tbl_name[.*]] ...\n    FROM table_references\n    [WHERE where_condition]\n\nOr:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    FROM tbl_name[.*] [, tbl_name[.*]] ...\n    USING table_references\n    [WHERE where_condition]\n\nFor the single-table syntax, the DELETE statement deletes rows from\ntbl_name. The number of rows deleted is returned by the ROW_COUNT()\nfunction (see [HELP BENCHMARK]). The WHERE clause, if given, specifies\nthe conditions that identify which rows to delete. With no WHERE\nclause, all rows are deleted. If the ORDER BY clause is specified, the\nrows are deleted in the order that is specified. The LIMIT clause\nplaces a limit on the number of rows that can be deleted.\n\nFor the multiple-table syntax, DELETE deletes from each tbl_name the\nrows that satisfy the conditions. In this case, ORDER BY and LIMIT\ncannot be used.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe deleted. It is specified as described in [HELP SELECT].\n\nAs stated, a DELETE statement with no WHERE clause deletes all rows. A\nfaster way to do this, when you do not want to know the number of\ndeleted rows, is to use TRUNCATE TABLE. See [HELP TRUNCATE TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/delete.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/delete.html'),(43,'ROUND',4,'Syntax:\nROUND(X), ROUND(X,D)\n\nRounds the argument X to D decimal places. The rounding algorithm\ndepends on the data type of X. D defaults to 0 if not specified. D can\nbe negative to cause D digits left of the decimal point of the value X\nto become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT ROUND(-1.23);\n        -> -1\nmysql> SELECT ROUND(-1.58);\n        -> -2\nmysql> SELECT ROUND(1.58);\n        -> 2\nmysql> SELECT ROUND(1.298, 1);\n        -> 1.3\nmysql> SELECT ROUND(1.298, 0);\n        -> 1\nmysql> SELECT ROUND(23.298, -1);\n        -> 20\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(44,'NULLIF',6,'Syntax:\nNULLIF(expr1,expr2)\n\nReturns NULL if expr1 = expr2 is true, otherwise returns expr1. This is\nthe same as CASE WHEN expr1 = expr2 THEN NULL ELSE expr1 END.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html\n\n','mysql> SELECT NULLIF(1,1);\n        -> NULL\nmysql> SELECT NULLIF(1,2);\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html'),(45,'CLOSE',35,'Syntax:\nCLOSE cursor_name\n\nThis statement closes a previously opened cursor.\n\nIf not closed explicitly, a cursor is closed at the end of the compound\nstatement in which it was declared.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/close.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/close.html'),(46,'STOP SLAVE',25,'Syntax:\nSTOP SLAVE [thread_type [, thread_type] ... ]\n\nthread_type: IO_THREAD | SQL_THREAD\n\nStops the slave threads. STOP SLAVE requires the SUPER privilege.\n\nLike START SLAVE, this statement may be used with the IO_THREAD and\nSQL_THREAD options to name the thread or threads to be stopped.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/stop-slave.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/stop-slave.html'),(47,'TIMEDIFF',28,'Syntax:\nTIMEDIFF(expr1,expr2)\n\nTIMEDIFF() returns expr1 - expr2 expressed as a time value. expr1 and\nexpr2 are time or date-and-time expressions, but both must be of the\nsame type.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT TIMEDIFF(\'2000:01:01 00:00:00\',\n    ->                 \'2000:01:01 00:00:00.000001\');\n        -> \'-00:00:00.000001\'\nmysql> SELECT TIMEDIFF(\'1997-12-31 23:59:59.000001\',\n    ->                 \'1997-12-30 01:01:01.000002\');\n        -> \'46:58:57.999999\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(48,'LINEFROMTEXT',3,'LineFromText(wkt[,srid]), LineStringFromText(wkt[,srid])\n\nConstructs a LINESTRING value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),(49,'CASE OPERATOR',6,'Syntax:\nCASE value WHEN [compare_value] THEN result [WHEN [compare_value] THEN\nresult ...] [ELSE result] END\n\nCASE WHEN [condition] THEN result [WHEN [condition] THEN result ...]\n[ELSE result] END\n\nThe first version returns the result where value=compare_value. The\nsecond version returns the result for the first condition that is true.\nIf there was no matching result value, the result after ELSE is\nreturned, or NULL if there is no ELSE part.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html\n\n','mysql> SELECT CASE 1 WHEN 1 THEN \'one\'\n    ->     WHEN 2 THEN \'two\' ELSE \'more\' END;\n        -> \'one\'\nmysql> SELECT CASE WHEN 1>0 THEN \'true\' ELSE \'false\' END;\n        -> \'true\'\nmysql> SELECT CASE BINARY \'B\'\n    ->     WHEN \'a\' THEN 1 WHEN \'b\' THEN 2 END;\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html'),(50,'SHOW MASTER STATUS',25,'Syntax:\nSHOW MASTER STATUS\n\nProvides status information about the binary log files of the master.\nExample:\n\nmysql > SHOW MASTER STATUS;\n+---------------+----------+--------------+------------------+\n| File          | Position | Binlog_Do_DB | Binlog_Ignore_DB |\n+---------------+----------+--------------+------------------+\n| mysql-bin.003 | 73       | test         | manual,mysql     |\n+---------------+----------+--------------+------------------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-master-status.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-master-status.html'),(51,'ADDTIME',28,'Syntax:\nADDTIME(expr1,expr2)\n\nADDTIME() adds expr2 to expr1 and returns the result. expr1 is a time\nor datetime expression, and expr2 is a time expression.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT ADDTIME(\'1997-12-31 23:59:59.999999\',\n    ->                \'1 1:1:1.000002\');\n        -> \'1998-01-02 01:01:01.000001\'\nmysql> SELECT ADDTIME(\'01:00:00.999999\', \'02:00:00.999998\');\n        -> \'03:00:01.999997\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(52,'SPATIAL',30,'MySQL can create spatial indexes using syntax similar to that for\ncreating regular indexes, but extended with the SPATIAL keyword.\nCurrently, columns in spatial indexes must be declared NOT NULL. The\nfollowing examples demonstrate how to create spatial indexes:\n\no With CREATE TABLE:\n\nCREATE TABLE geom (g GEOMETRY NOT NULL, SPATIAL INDEX(g));\n\no With ALTER TABLE:\n\nALTER TABLE geom ADD SPATIAL INDEX(g);\n\no With CREATE INDEX:\n\nCREATE SPATIAL INDEX sp_index ON geom (g);\n\nFor MyISAM tables, SPATIAL INDEX creates an R-tree index. For storage\nengines that support non-spatial indexing of spatial columns, the\nengine creates a B-tree index. A B-tree index on spatial values will be\nuseful for exact-value lookups, but not for range scans.\n\nFor more information on indexing spatial columns, see [HELP CREATE\nINDEX].\n\nTo drop spatial indexes, use ALTER TABLE or DROP INDEX:\n\no With ALTER TABLE:\n\nALTER TABLE geom DROP INDEX g;\n\no With DROP INDEX:\n\nDROP INDEX sp_index ON geom;\n\nExample: Suppose that a table geom contains more than 32,000\ngeometries, which are stored in the column g of type GEOMETRY. The\ntable also has an AUTO_INCREMENT column fid for storing object ID\nvalues.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/creating-spatial-indexes.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/creating-spatial-indexes.html'),(53,'TIMESTAMPDIFF',28,'Syntax:\nTIMESTAMPDIFF(unit,datetime_expr1,datetime_expr2)\n\nReturns the integer difference between the date or datetime expressions\ndatetime_expr1 and datetime_expr2. The unit for the result is given by\nthe unit argument. The legal values for unit are the same as those\nlisted in the description of the TIMESTAMPADD() function.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT TIMESTAMPDIFF(MONTH,\'2003-02-01\',\'2003-05-01\');\n        -> 3\nmysql> SELECT TIMESTAMPDIFF(YEAR,\'2002-05-01\',\'2001-01-01\');\n        -> -1\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(54,'UPPER',33,'Syntax:\nUPPER(str)\n\nReturns the string str with all characters changed to uppercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT UPPER(\'Hej\');\n        -> \'HEJ\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(55,'FROM_UNIXTIME',28,'Syntax:\nFROM_UNIXTIME(unix_timestamp), FROM_UNIXTIME(unix_timestamp,format)\n\nReturns a representation of the unix_timestamp argument as a value in\n\'YYYY-MM-DD HH:MM:SS\' or YYYYMMDDHHMMSS.uuuuuu format, depending on\nwhether the function is used in a string or numeric context. The value\nis expressed in the current time zone. unix_timestamp is an internal\ntimestamp value such as is produced by the UNIX_TIMESTAMP() function.\n\nIf format is given, the result is formatted according to the format\nstring, which is used the same way as listed in the entry for the\nDATE_FORMAT() function.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT FROM_UNIXTIME(1196440219);\n        -> \'2007-11-30 10:30:19\'\nmysql> SELECT FROM_UNIXTIME(1196440219) + 0;\n        -> 20071130103019.000000\nmysql> SELECT FROM_UNIXTIME(UNIX_TIMESTAMP(),\n    ->                      \'%Y %D %M %h:%i:%s %x\');\n        -> \'2007 30th November 10:30:59 2007\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(56,'MEDIUMBLOB',20,'MEDIUMBLOB\n\nA BLOB column with a maximum length of 16,777,215 (224 - 1) bytes. Each\nMEDIUMBLOB value is stored using a three-byte length prefix that\nindicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(57,'IFNULL',6,'Syntax:\nIFNULL(expr1,expr2)\n\nIf expr1 is not NULL, IFNULL() returns expr1; otherwise it returns\nexpr2. IFNULL() returns a numeric or string value, depending on the\ncontext in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html\n\n','mysql> SELECT IFNULL(1,0);\n        -> 1\nmysql> SELECT IFNULL(NULL,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,\'yes\');\n        -> \'yes\'\n','http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html'),(58,'SHOW ERRORS',25,'Syntax:\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW COUNT(*) ERRORS\n\nThis statement is similar to SHOW WARNINGS, except that instead of\ndisplaying errors, warnings, and notes, it displays only errors.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\n[HELP SELECT].\n\nThe SHOW COUNT(*) ERRORS statement displays the number of errors. You\ncan also retrieve this number from the error_count variable:\n\nSHOW COUNT(*) ERRORS;\nSELECT @@error_count;\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-errors.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-errors.html'),(59,'LEAST',17,'Syntax:\nLEAST(value1,value2,...)\n\nWith two or more arguments, returns the smallest (minimum-valued)\nargument. The arguments are compared using the following rules:\n\no If the return value is used in an INTEGER context or all arguments\n  are integer-valued, they are compared as integers.\n\no If the return value is used in a REAL context or all arguments are\n  real-valued, they are compared as reals.\n\no If any argument is a case-sensitive string, the arguments are\n  compared as case-sensitive strings.\n\no In all other cases, the arguments are compared as case-insensitive\n  strings.\n\nBefore MySQL 5.0.13, LEAST() returns NULL only if all arguments are\nNULL. As of 5.0.13, it returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT LEAST(2,0);\n        -> 0\nmysql> SELECT LEAST(34.0,3.0,5.0,767.0);\n        -> 3.0\nmysql> SELECT LEAST(\'B\',\'A\',\'C\');\n        -> \'A\'\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(60,'=',17,'=\n\nEqual:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT 1 = 0;\n        -> 0\nmysql> SELECT \'0\' = 0;\n        -> 1\nmysql> SELECT \'0.0\' = 0;\n        -> 1\nmysql> SELECT \'0.01\' = 0;\n        -> 0\nmysql> SELECT \'.01\' = 0.01;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(61,'REVERSE',33,'Syntax:\nREVERSE(str)\n\nReturns the string str with the order of the characters reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT REVERSE(\'abc\');\n        -> \'cba\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(62,'ISNULL',17,'Syntax:\nISNULL(expr)\n\nIf expr is NULL, ISNULL() returns 1, otherwise it returns 0.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT ISNULL(1+1);\n        -> 0\nmysql> SELECT ISNULL(1/0);\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(63,'BINARY',20,'BINARY(M)\n\nThe BINARY type is similar to the CHAR type, but stores binary byte\nstrings rather than non-binary character strings. M represents the\ncolumn length in bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(64,'BLOB DATA TYPE',20,'A BLOB is a binary large object that can hold a variable amount of\ndata. The four BLOB types are TINYBLOB, BLOB, MEDIUMBLOB, and LONGBLOB.\nThese differ only in the maximum length of the values they can hold.\nThe four TEXT types are TINYTEXT, TEXT, MEDIUMTEXT, and LONGTEXT. These\ncorrespond to the four BLOB types and have the same maximum lengths and\nstorage requirements. See\nhttp://dev.mysql.com/doc/refman/5.0/en/storage-requirements.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/blob.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/blob.html'),(65,'BOUNDARY',32,'Boundary(g)\n\nReturns a geometry that is the closure of the combinatorial boundary of\nthe geometry value g.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),(66,'CREATE USER',8,'Syntax:\nCREATE USER user [IDENTIFIED BY [PASSWORD] \'password\']\n    [, user [IDENTIFIED BY [PASSWORD] \'password\']] ...\n\nThe CREATE USER statement was added in MySQL 5.0.2. This statement\ncreates new MySQL accounts. To use it, you must have the global CREATE\nUSER privilege or the INSERT privilege for the mysql database. For each\naccount, CREATE USER creates a new record in the mysql.user table that\nhas no privileges. An error occurs if the account already exists. Each\naccount is named using the same format as for the GRANT statement; for\nexample, \'jeffrey\'@\'localhost\'. If you specify only the username part\nof the account name, a hostname part of \'%\' is used. For additional\ninformation about specifying account names, see [HELP GRANT].\n\nThe account can be given a password with the optional IDENTIFIED BY\nclause. The user value and the password are given the same way as for\nthe GRANT statement. In particular, to specify the password in plain\ntext, omit the PASSWORD keyword. To specify the password as the hashed\nvalue as returned by the PASSWORD() function, include the PASSWORD\nkeyword. See [HELP GRANT].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-user.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/create-user.html'),(67,'POINT',22,'Point(x,y)\n\nConstructs a WKB Point using its coordinates.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),(68,'CURRENT_USER',15,'Syntax:\nCURRENT_USER, CURRENT_USER()\n\nReturns the username and hostname combination for the MySQL account\nthat the server used to authenticate the current client. This account\ndetermines your access privileges. As of MySQL 5.0.10, within a stored\nroutine that is defined with the SQL SECURITY DEFINER characteristic,\nCURRENT_USER() returns the creator of the routine. The return value is\na string in the utf8 character set.\n\nThe value of CURRENT_USER() can differ from the value of USER().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','mysql> SELECT USER();\n        -> \'davida@localhost\'\nmysql> SELECT * FROM mysql.user;\nERROR 1044: Access denied for user \'\'@\'localhost\' to\ndatabase \'mysql\'\nmysql> SELECT CURRENT_USER();\n        -> \'@localhost\'\n','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(69,'LCASE',33,'Syntax:\nLCASE(str)\n\nLCASE() is a synonym for LOWER().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(70,'<=',17,'Syntax:\n<=\n\nLess than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT 0.1 <= 2;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(71,'SHOW PROFILES',25,'Syntax:\nSHOW PROFILES\n\nSHOW PROFILE [type [, type] ... ]\n    [FOR QUERY n]\n    [LIMIT n [OFFSET n]]\n\ntype:\n    ALL\n  | BLOCK IO\n  | CONTEXT SWITCHES\n  | CPU\n  | IPC\n  | MEMORY\n  | PAGE FAULTS\n  | SOURCE\n  | SWAPS\n\nThe SHOW PROFILES and SHOW PROFILE statements display profiling\ninformation that indicates resource usage for statements executed\nduring the course of the current session.\n\nProfiling is controlled by the profiling session variable, which has a\ndefault value of 0 (OFF). Profiling is enabled by setting profiling to\n1 or ON:\n\nmysql> SET profiling = 1;\n\nSHOW PROFILES displays a list of the most recent statements sent to the\nmaster. The size of the list is controlled by the\nprofiling_history_size session variable, which has a default value of\n15. The maximum value is 100. Setting the value to 0 has the practical\neffect of disabling profiling.\n\nAll statements are profiled except SHOW PROFILES and SHOW PROFILE, so\nyou will find neither of those statements in the profile list.\nMalformed statements are profiled. For example, SHOW PROFILING is an\nillegal statement, and a syntax error occurs if you try to execute it,\nbut it will show up in the profiling list.\n\nSHOW PROFILE displays detailed information about a single statement.\nWithout the FOR QUERY n clause, the output pertains to the most\nrecently executed statement. If FOR QUERY n is included, SHOW PROFILE\ndisplays information for statement n. The values of n correspond to the\nQuery_ID values displayed by SHOW PROFILES.\n\nThe LIMIT n clause may be given to limit the output to n rows. If LIMIT\nis given, OFFSET n may be added to begin the output n rows into the\nfull set of rows.\n\nBy default, SHOW PROFILE displays Status and Duration columns. The\nStatus values are like the State values displayed by SHOW PROCESSLIST,\nalthought there might be some minor differences in interpretion for the\ntwo statements for some status values (see\nhttp://dev.mysql.com/doc/refman/5.0/en/thread-information.html).\n\nOptional type values may be specified to display specific additional\ntypes of information:\n\no ALL displays all information\n\no BLOCK IO displays counts for block input and output operations\n\no CONTEXT SWITCHES displays counts for voluntary and involuntary\n  context switches\n\no CPU displays user and system CPU usage times\n\no IPC displays counts for messages sent and received\n\no MEMORY is not currently implemented\n\no PAGE FAULTS displays counts for major and minor page faults\n\no SOURCE displays the names of functions from the source code, together\n  with the name and line number of the file in which the function\n  occurs\n\no SWAPS displays swap counts\n\nProfiling is enabled per session. When a session ends, its profiling\ninformation is lost.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-profiles.html\n\n','mysql> SELECT @@profiling;\n+-------------+\n| @@profiling |\n+-------------+\n|           0 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> SET profiling = 1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DROP TABLE IF EXISTS t1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nmysql> CREATE TABLE T1 (id INT);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROFILES;\n+----------+----------+--------------------------+\n| Query_ID | Duration | Query                    |\n+----------+----------+--------------------------+\n|        0 | 0.000088 | SET PROFILING = 1        |\n|        1 | 0.000136 | DROP TABLE IF EXISTS t1  |\n|        2 | 0.011947 | CREATE TABLE t1 (id INT) |\n+----------+----------+--------------------------+\n3 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE;\n+----------------------+----------+\n| Status               | Duration |\n+----------------------+----------+\n| checking permissions | 0.000040 |\n| creating table       | 0.000056 |\n| After create         | 0.011363 |\n| query end            | 0.000375 |\n| freeing items        | 0.000089 |\n| logging slow query   | 0.000019 |\n| cleaning up          | 0.000005 |\n+----------------------+----------+\n7 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE FOR QUERY 1;\n+--------------------+----------+\n| Status             | Duration |\n+--------------------+----------+\n| query end          | 0.000107 |\n| freeing items      | 0.000008 |\n| logging slow query | 0.000015 |\n| cleaning up        | 0.000006 |\n+--------------------+----------+\n4 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE CPU FOR QUERY 2;\n+----------------------+----------+----------+------------+\n| Status               | Duration | CPU_user | CPU_system |\n+----------------------+----------+----------+------------+\n| checking permissions | 0.000040 | 0.000038 |   0.000002 |\n| creating table       | 0.000056 | 0.000028 |   0.000028 |\n| After create         | 0.011363 | 0.000217 |   0.001571 |\n| query end            | 0.000375 | 0.000013 |   0.000028 |\n| freeing items        | 0.000089 | 0.000010 |   0.000014 |\n| logging slow query   | 0.000019 | 0.000009 |   0.000010 |\n| cleaning up          | 0.000005 | 0.000003 |   0.000002 |\n+----------------------+----------+----------+------------+\n7 rows in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.0/en/show-profiles.html'),(72,'UPDATE',25,'Syntax:\nSingle-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] tbl_name\n    SET col_name1=expr1 [, col_name2=expr2 ...]\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] table_references\n    SET col_name1=expr1 [, col_name2=expr2 ...]\n    [WHERE where_condition]\n\nFor the single-table syntax, the UPDATE statement updates columns of\nexisting rows in tbl_name with new values. The SET clause indicates\nwhich columns to modify and the values they should be given. The WHERE\nclause, if given, specifies the conditions that identify which rows to\nupdate. With no WHERE clause, all rows are updated. If the ORDER BY\nclause is specified, the rows are updated in the order that is\nspecified. The LIMIT clause places a limit on the number of rows that\ncan be updated.\n\nFor the multiple-table syntax, UPDATE updates rows in each table named\nin table_references that satisfy the conditions. In this case, ORDER BY\nand LIMIT cannot be used.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe updated. It is specified as described in [HELP SELECT].\n\nThe UPDATE statement supports the following modifiers:\n\no If you use the LOW_PRIORITY keyword, execution of the UPDATE is\n  delayed until no other clients are reading from the table. This\n  affects only storage engines that use only table-level locking\n  (MyISAM, MEMORY, MERGE).\n\no If you use the IGNORE keyword, the update statement does not abort\n  even if errors occur during the update. Rows for which duplicate-key\n  conflicts occur are not updated. Rows for which columns are updated\n  to values that would cause data conversion errors are updated to the\n  closest valid values instead.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/update.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/update.html'),(73,'IS NOT NULL',17,'Syntax:\nIS NOT NULL\n\nTests whether a value is not NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT 1 IS NOT NULL, 0 IS NOT NULL, NULL IS NOT NULL;\n        -> 1, 1, 0\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(74,'CASE STATEMENT',35,'Syntax:\nCASE case_value\n    WHEN when_value THEN statement_list\n    [WHEN when_value THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nOr:\n\nCASE\n    WHEN search_condition THEN statement_list\n    [WHEN search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nThe CASE statement for stored routines implements a complex conditional\nconstruct. If a search_condition evaluates to true, the corresponding\nSQL statement list is executed. If no search condition matches, the\nstatement list in the ELSE clause is executed. Each statement_list\nconsists of one or more statements.\n\n*Note*: The syntax of the CASE statement shown here for use inside\nstored routines differs slightly from that of the SQL CASE expression\ndescribed in [HELP CASE operator]. The CASE statement cannot have an\nELSE NULL clause, and it is terminated with END CASE instead of END.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/case-statement.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/case-statement.html'),(75,'EXECUTE STATEMENT',25,'Syntax:\nEXECUTE stmt_name [USING @var_name [, @var_name] ...]\n\nAfter preparing a statement, you execute it with an EXECUTE statement\nthat refers to the prepared statement name. If the prepared statement\ncontains any parameter markers, you must supply a USING clause that\nlists user variables containing the values to be bound to the\nparameters. Parameter values can be supplied only by user variables,\nand the USING clause must name exactly as many variables as the number\nof parameter markers in the statement.\n\nYou can execute a given prepared statement multiple times, passing\ndifferent variables to it or setting the variables to different values\nbefore each execution.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/sqlps.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/sqlps.html'),(76,'DROP INDEX',36,'Syntax:\nDROP INDEX index_name ON tbl_name\n\nDROP INDEX drops the index named index_name from the table tbl_name.\nThis statement is mapped to an ALTER TABLE statement to drop the index.\nSee [HELP ALTER TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-index.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/drop-index.html'),(77,'MATCH AGAINST',33,'Syntax:\nMATCH (col1,col2,...) AGAINST (expr [search_modifier])\n\nMySQL has support for full-text indexing and searching:\n\no A full-text index in MySQL is an index of type FULLTEXT.\n\no Full-text indexes can be used only with MyISAM tables, and can be\n  created only for CHAR, VARCHAR, or TEXT columns.\n\no A FULLTEXT index definition can be given in the CREATE TABLE\n  statement when a table is created, or added later using ALTER TABLE\n  or CREATE INDEX.\n\no For large data sets, it is much faster to load your data into a table\n  that has no FULLTEXT index and then create the index after that, than\n  to load data into a table that has an existing FULLTEXT index.\n\nFull-text searching is performed using MATCH() ... AGAINST syntax.\nMATCH() takes a comma-separated list that names the columns to be\nsearched. AGAINST takes a string to search for, and an optional\nmodifier that indicates what type of search to perform. The search\nstring must be a literal string, not a variable or a column name. There\nare three types of full-text searches:\n\no A boolean search interprets the search string using the rules of a\n  special query language. The string contains the words to search for.\n  It can also contain operators that specify requirements such that a\n  word must be present or absent in matching rows, or that it should be\n  weighted higher or lower than usual. Common words such as \"some\" or\n  \"then\" are stopwords and do not match if present in the search\n  string. The IN BOOLEAN MODE modifier specifies a boolean search. For\n  more information, see\n  http://dev.mysql.com/doc/refman/5.0/en/fulltext-boolean.html.\n\no A natural language search interprets the search string as a phrase in\n  natural human language (a phrase in free text). There are no special\n  operators. The stopword list applies. In addition, words that are\n  present in 50% or more of the rows are considered common and do not\n  match. Full-text searches are natural language searches if no\n  modifier is given.\n\no A query expansion search is a modification of a natural language\n  search. The search string is used to perform a natural language\n  search. Then words from the most relevant rows returned by the search\n  are added to the search string and the search is done again. The\n  query returns the rows from the second search. The WITH QUERY\n  EXPANSION modifier specifies a query expansion search. For more\n  information, see\n  http://dev.mysql.com/doc/refman/5.0/en/fulltext-query-expansion.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/fulltext-search.html\n\n','mysql> SELECT id, body, MATCH (title,body) AGAINST\n    -> (\'Security implications of running MySQL as root\') AS score\n    -> FROM articles WHERE MATCH (title,body) AGAINST\n    -> (\'Security implications of running MySQL as root\');\n+----+-------------------------------------+-----------------+\n| id | body                                | score           |\n+----+-------------------------------------+-----------------+\n|  4 | 1. Never run mysqld as root. 2. ... | 1.5219271183014 |\n|  6 | When configured properly, MySQL ... | 1.3114095926285 |\n+----+-------------------------------------+-----------------+\n2 rows in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.0/en/fulltext-search.html'),(78,'ABS',4,'Syntax:\nABS(X)\n\nReturns the absolute value of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT ABS(2);\n        -> 2\nmysql> SELECT ABS(-32);\n        -> 32\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(79,'POLYFROMWKB',29,'PolyFromWKB(wkb[,srid]), PolygonFromWKB(wkb[,srid])\n\nConstructs a POLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),(80,'NOT LIKE',33,'Syntax:\nexpr NOT LIKE pat [ESCAPE \'escape_char\']\n\nThis is the same as NOT (expr LIKE pat [ESCAPE \'escape_char\']).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html'),(81,'SPACE',33,'Syntax:\nSPACE(N)\n\nReturns a string consisting of N space characters.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT SPACE(6);\n        -> \'      \'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(82,'MBR DEFINITION',5,'Its MBR (Minimum Bounding Rectangle), or Envelope. This is the bounding\ngeometry, formed by the minimum and maximum (X,Y) coordinates:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-class-geometry.html\n\n','((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n','http://dev.mysql.com/doc/refman/5.0/en/gis-class-geometry.html'),(83,'GEOMETRYCOLLECTION',22,'GeometryCollection(g1,g2,...)\n\nConstructs a WKB GeometryCollection. If any argument is not a\nwell-formed WKB representation of a geometry, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),(84,'MAX',14,'Syntax:\nMAX([DISTINCT] expr)\n\nReturns the maximum value of expr. MAX() may take a string argument; in\nsuch cases, it returns the maximum string value. See\nhttp://dev.mysql.com/doc/refman/5.0/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the maximum of the distinct values of expr,\nhowever, this produces the same result as omitting DISTINCT.\n\nMAX() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(85,'*',4,'Syntax:\n*\n\nMultiplication:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n','mysql> SELECT 3*5;\n        -> 15\nmysql> SELECT 18014398509481984*18014398509481984.0;\n        -> 324518553658426726783156020576256.0\nmysql> SELECT 18014398509481984*18014398509481984;\n        -> 0\n','http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),(86,'TIMESTAMP',20,'TIMESTAMP\n\nA timestamp. The range is \'1970-01-01 00:00:01\' UTC to partway through\nthe year 2038. TIMESTAMP values are stored as the number of seconds\nsince the epoch (\'1970-01-01 00:00:00\' UTC). A TIMESTAMP cannot\nrepresent the value \'1970-01-01 00:00:00\' because that is equivalent to\n0 seconds from the epoch and the value 0 is reserved for representing\n\'0000-00-00 00:00:00\', the \"zero\" TIMESTAMP value.\n\nA TIMESTAMP column is useful for recording the date and time of an\nINSERT or UPDATE operation. By default, the first TIMESTAMP column in a\ntable is automatically set to the date and time of the most recent\noperation if you do not assign it a value yourself. You can also set\nany TIMESTAMP column to the current date and time by assigning it a\nNULL value. Variations on automatic initialization and update\nproperties are described in\nhttp://dev.mysql.com/doc/refman/5.0/en/timestamp.html.\n\nA TIMESTAMP value is returned as a string in the format \'YYYY-MM-DD\nHH:MM:SS\' with a display width fixed at 19 characters. To obtain the\nvalue as a number, you should add +0 to the timestamp column.\n\n*Note*: The TIMESTAMP format that was used prior to MySQL 4.1 is not\nsupported in MySQL 5.0; see MySQL 3.23, 4.0, 4.1 Reference Manual for\ninformation regarding the old format.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html'),(87,'DES_DECRYPT',10,'Syntax:\nDES_DECRYPT(crypt_str[,key_str])\n\nDecrypts a string encrypted with DES_ENCRYPT(). If an error occurs,\nthis function returns NULL.\n\nThis function works only if MySQL has been configured with SSL support.\nSee http://dev.mysql.com/doc/refman/5.0/en/secure-connections.html.\n\nIf no key_str argument is given, DES_DECRYPT() examines the first byte\nof the encrypted string to determine the DES key number that was used\nto encrypt the original string, and then reads the key from the DES key\nfile to decrypt the message. For this to work, the user must have the\nSUPER privilege. The key file can be specified with the --des-key-file\nserver option.\n\nIf you pass this function a key_str argument, that string is used as\nthe key for decrypting the message.\n\nIf the crypt_str argument does not appear to be an encrypted string,\nMySQL returns the given crypt_str.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(88,'ENDPOINT',11,'EndPoint(ls)\n\nReturns the Point that is the endpoint of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html\n\n','mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT AsText(EndPoint(GeomFromText(@ls)));\n+-------------------------------------+\n| AsText(EndPoint(GeomFromText(@ls))) |\n+-------------------------------------+\n| POINT(3 3)                          |\n+-------------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html'),(89,'CACHE INDEX',25,'Syntax:\nCACHE INDEX\n  tbl_index_list [, tbl_index_list] ...\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [[INDEX|KEY] (index_name[, index_name] ...)]\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It is used only for MyISAM tables.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/cache-index.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/cache-index.html'),(90,'COMPRESS',10,'Syntax:\nCOMPRESS(string_to_compress)\n\nCompresses a string and returns the result as a binary string. This\nfunction requires MySQL to have been compiled with a compression\nlibrary such as zlib. Otherwise, the return value is always NULL. The\ncompressed string can be uncompressed with UNCOMPRESS().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','mysql> SELECT LENGTH(COMPRESS(REPEAT(\'a\',1000)));\n        -> 21\nmysql> SELECT LENGTH(COMPRESS(\'\'));\n        -> 0\nmysql> SELECT LENGTH(COMPRESS(\'a\'));\n        -> 13\nmysql> SELECT LENGTH(COMPRESS(REPEAT(\'a\',16)));\n        -> 15\n','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(91,'INSERT',25,'Syntax:\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    VALUES ({expr | DEFAULT},...),(...),...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name\n    SET col_name={expr | DEFAULT}, ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nINSERT inserts new rows into an existing table. The INSERT ... VALUES\nand INSERT ... SET forms of the statement insert rows based on\nexplicitly specified values. The INSERT ... SELECT form inserts rows\nselected from another table or tables. INSERT ... SELECT is discussed\nfurther in [HELP INSERT SELECT].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/insert.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/insert.html'),(92,'COUNT',14,'Syntax:\nCOUNT(expr)\n\nReturns a count of the number of non-NULL values of expr in the rows\nretrieved by a SELECT statement. The result is a BIGINT value.\n\nCOUNT() returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','mysql> SELECT student.student_name,COUNT(*)\n    ->        FROM student,course\n    ->        WHERE student.student_id=course.student_id\n    ->        GROUP BY student_name;\n','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(93,'HANDLER',25,'Syntax:\nHANDLER tbl_name OPEN [ [AS] alias]\nHANDLER tbl_name READ index_name { = | >= | <= | < } (value1,value2,...)\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ index_name { FIRST | NEXT | PREV | LAST }\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ { FIRST | NEXT }\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name CLOSE\n\nThe HANDLER statement provides direct access to table storage engine\ninterfaces. It is available for MyISAM and InnoDB tables.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/handler.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/handler.html'),(94,'MLINEFROMTEXT',3,'MLineFromText(wkt[,srid]), MultiLineStringFromText(wkt[,srid])\n\nConstructs a MULTILINESTRING value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),(95,'GEOMCOLLFROMWKB',29,'GeomCollFromWKB(wkb[,srid]), GeometryCollectionFromWKB(wkb[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),(96,'RENAME TABLE',36,'Syntax:\nRENAME TABLE tbl_name TO new_tbl_name\n    [, tbl_name2 TO new_tbl_name2] ...\n\nThis statement renames one or more tables.\n\nThe rename operation is done atomically, which means that no other\nthread can access any of the tables while the rename is running. For\nexample, if you have an existing table old_table, you can create\nanother table new_table that has the same structure but is empty, and\nthen replace the existing table with the empty one as follows (assuming\nthat backup_table does not already exist):\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/rename-table.html\n\n','CREATE TABLE new_table (...);\nRENAME TABLE old_table TO backup_table, new_table TO old_table;\n','http://dev.mysql.com/doc/refman/5.0/en/rename-table.html'),(97,'BOOLEAN',20,'BOOL, BOOLEAN\n\nThese types are synonyms for TINYINT(1). A value of zero is considered\nfalse. Non-zero values are considered true:\n\nmysql> SELECT IF(0, \'true\', \'false\');\n+------------------------+\n| IF(0, \'true\', \'false\') |\n+------------------------+\n| false                  |\n+------------------------+\n\nmysql> SELECT IF(1, \'true\', \'false\');\n+------------------------+\n| IF(1, \'true\', \'false\') |\n+------------------------+\n| true                   |\n+------------------------+\n\nmysql> SELECT IF(2, \'true\', \'false\');\n+------------------------+\n| IF(2, \'true\', \'false\') |\n+------------------------+\n| true                   |\n+------------------------+\n\nHowever, the values TRUE and FALSE are merely aliases for 1 and 0,\nrespectively, as shown here:\n\nmysql> SELECT IF(0 = FALSE, \'true\', \'false\');\n+--------------------------------+\n| IF(0 = FALSE, \'true\', \'false\') |\n+--------------------------------+\n| true                           |\n+--------------------------------+\n\nmysql> SELECT IF(1 = TRUE, \'true\', \'false\');\n+-------------------------------+\n| IF(1 = TRUE, \'true\', \'false\') |\n+-------------------------------+\n| true                          |\n+-------------------------------+\n\nmysql> SELECT IF(2 = TRUE, \'true\', \'false\');\n+-------------------------------+\n| IF(2 = TRUE, \'true\', \'false\') |\n+-------------------------------+\n| false                         |\n+-------------------------------+\n\nmysql> SELECT IF(2 = FALSE, \'true\', \'false\');\n+--------------------------------+\n| IF(2 = FALSE, \'true\', \'false\') |\n+--------------------------------+\n| false                          |\n+--------------------------------+\n\nThe last two statements display the results shown because 2 is equal to\nneither 1 nor 0.\n\nWe intend to implement full boolean type handling, in accordance with\nstandard SQL, in a future MySQL release.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(98,'DEFAULT',13,'Syntax:\nDEFAULT(col_name)\n\nReturns the default value for a table column. Starting with MySQL\n5.0.2, an error results if the column has no default value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n','mysql> UPDATE t SET i = DEFAULT(i)+1 WHERE id < 100;\n','http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),(99,'MOD',4,'Syntax:\nMOD(N,M), N % M, N MOD M\n\nModulo operation. Returns the remainder of N divided by M.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT MOD(234, 10);\n        -> 4\nmysql> SELECT 253 % 7;\n        -> 1\nmysql> SELECT MOD(29,9);\n        -> 2\nmysql> SELECT 29 MOD 9;\n        -> 2\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(100,'TINYTEXT',20,'TINYTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 255 (28 - 1) characters. The\neffective maximum length is less if the value contains multi-byte\ncharacters. Each TINYTEXT value is stored using a one-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(101,'OPTIMIZE TABLE',19,'Syntax:\nOPTIMIZE [LOCAL | NO_WRITE_TO_BINLOG] TABLE tbl_name [, tbl_name] ...\n\nOPTIMIZE TABLE should be used if you have deleted a large part of a\ntable or if you have made many changes to a table with variable-length\nrows (tables that have VARCHAR, VARBINARY, BLOB, or TEXT columns).\nDeleted rows are maintained in a linked list and subsequent INSERT\noperations reuse old row positions. You can use OPTIMIZE TABLE to\nreclaim the unused space and to defragment the data file.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/optimize-table.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/optimize-table.html'),(102,'DECODE',10,'Syntax:\nDECODE(crypt_str,pass_str)\n\nDecrypts the encrypted string crypt_str using pass_str as the password.\ncrypt_str should be a string returned from ENCODE().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(103,'<=>',17,'Syntax:\n<=>\n\nNULL-safe equal. This operator performs an equality comparison like the\n= operator, but returns 1 rather than NULL if both operands are NULL,\nand 0 rather than NULL if one operand is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT 1 <=> 1, NULL <=> NULL, 1 <=> NULL;\n        -> 1, 1, 0\nmysql> SELECT 1 = 1, NULL = NULL, 1 = NULL;\n        -> 1, NULL, NULL\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(104,'LOAD DATA FROM MASTER',25,'Syntax:\nLOAD DATA FROM MASTER\n\nThis feature is deprecated. We recommend not using it anymore. It is\nsubject to removal in a future version of MySQL.\n\nSince the current implementation of LOAD DATA FROM MASTER and LOAD\nTABLE FROM MASTER is very limited, these statements are deprecated in\nversions 4.1 of MySQL and above. We will introduce a more advanced\ntechnique (called \"online backup\") in a future version. That technique\nwill have the additional advantage of working with more storage\nengines.\n\nFor MySQL 5.1 and earlier, the recommended alternative solution to\nusing LOAD DATA FROM MASTER or LOAD TABLE FROM MASTER is using\nmysqldump or mysqlhotcopy. The latter requires Perl and two Perl\nmodules (DBI and DBD:mysql) and works for MyISAM and ARCHIVE tables\nonly. With mysqldump, you can create SQL dumps on the master and pipe\n(or copy) these to a mysql client on the slave. This has the advantage\nof working for all storage engines, but can be quite slow, since it\nworks using SELECT.\n\nThis statement takes a snapshot of the master and copies it to the\nslave. It updates the values of MASTER_LOG_FILE and MASTER_LOG_POS so\nthat the slave starts replicating from the correct position. Any table\nand database exclusion rules specified with the --replicate-*-do-* and\n--replicate-*-ignore-* options are honored. --replicate-rewrite-db is\nnot taken into account because a user could use this option to set up a\nnon-unique mapping such as --replicate-rewrite-db=\"db1->db3\" and\n--replicate-rewrite-db=\"db2->db3\", which would confuse the slave when\nloading tables from the master.\n\nUse of this statement is subject to the following conditions:\n\no It works only for MyISAM tables. Attempting to load a non-MyISAM\n  table results in the following error:\n\nERROR 1189 (08S01): Net error reading from master\n\no It acquires a global read lock on the master while taking the\n  snapshot, which prevents updates on the master during the load\n  operation.\n\nIf you are loading large tables, you might have to increase the values\nof net_read_timeout and net_write_timeout on both the master and slave\nservers. See\nhttp://dev.mysql.com/doc/refman/5.0/en/server-system-variables.html.\n\nNote that LOAD DATA FROM MASTER does not copy any tables from the mysql\ndatabase. This makes it easy to have different users and privileges on\nthe master and the slave.\n\nTo use LOAD DATA FROM MASTER, the replication account that is used to\nconnect to the master must have the RELOAD and SUPER privileges on the\nmaster and the SELECT privilege for all master tables you want to load.\nAll master tables for which the user does not have the SELECT privilege\nare ignored by LOAD DATA FROM MASTER. This is because the master hides\nthem from the user: LOAD DATA FROM MASTER calls SHOW DATABASES to know\nthe master databases to load, but SHOW DATABASES returns only databases\nfor which the user has some privilege. See [HELP SHOW DATABASES]. On\nthe slave side, the user that issues LOAD DATA FROM MASTER must have\nprivileges for dropping and creating the databases and tables that are\ncopied.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/load-data-from-master.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/load-data-from-master.html'),(105,'RESET',25,'Syntax:\nRESET reset_option [, reset_option] ...\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/reset.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/reset.html'),(106,'HELP STATEMENT',24,'Syntax:\nHELP \'search_string\'\n\nThe HELP statement returns online information from the MySQL Reference\nmanual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttp://dev.mysql.com/doc/refman/5.0/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not case\nsensitive.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/help.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/help.html'),(107,'GET_LOCK',13,'Syntax:\nGET_LOCK(str,timeout)\n\nTries to obtain a lock with a name given by the string str, using a\ntimeout of timeout seconds. Returns 1 if the lock was obtained\nsuccessfully, 0 if the attempt timed out (for example, because another\nclient has previously locked the name), or NULL if an error occurred\n(such as running out of memory or the thread was killed with mysqladmin\nkill). If you have a lock obtained with GET_LOCK(), it is released when\nyou execute RELEASE_LOCK(), execute a new GET_LOCK(), or your\nconnection terminates (either normally or abnormally). Locks obtained\nwith GET_LOCK() do not interact with transactions. That is, committing\na transaction does not release any such locks obtained during the\ntransaction.\n\nThis function can be used to implement application locks or to simulate\nrecord locks. Names are locked on a server-wide basis. If a name has\nbeen locked by one client, GET_LOCK() blocks any request by another\nclient for a lock with the same name. This allows clients that agree on\na given lock name to use the name to perform cooperative advisory\nlocking. But be aware that it also allows a client that is not among\nthe set of cooperating clients to lock a name, either inadvertently or\ndeliberately, and thus prevent any of the cooperating clients from\nlocking that name. One way to reduce the likelihood of this is to use\nlock names that are database-specific or application-specific. For\nexample, use lock names of the form db_name.str or app_name.str.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n','mysql> SELECT GET_LOCK(\'lock1\',10);\n        -> 1\nmysql> SELECT IS_FREE_LOCK(\'lock2\');\n        -> 1\nmysql> SELECT GET_LOCK(\'lock2\',10);\n        -> 1\nmysql> SELECT RELEASE_LOCK(\'lock2\');\n        -> 1\nmysql> SELECT RELEASE_LOCK(\'lock1\');\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),(108,'UCASE',33,'Syntax:\nUCASE(str)\n\nUCASE() is a synonym for UPPER().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(109,'SHOW BINLOG EVENTS',25,'Syntax:\nSHOW BINLOG EVENTS\n   [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\n\nShows the events in the binary log. If you do not specify \'log_name\',\nthe first binary log is displayed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-binlog-events.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-binlog-events.html'),(110,'MPOLYFROMWKB',29,'MPolyFromWKB(wkb[,srid]), MultiPolygonFromWKB(wkb[,srid])\n\nConstructs a MULTIPOLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),(111,'ITERATE',35,'Syntax:\nITERATE label\n\nITERATE can appear only within LOOP, REPEAT, and WHILE statements.\nITERATE means \"do the loop again.\"\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/iterate-statement.html\n\n','CREATE PROCEDURE doiterate(p1 INT)\nBEGIN\n  label1: LOOP\n    SET p1 = p1 + 1;\n    IF p1 < 10 THEN ITERATE label1; END IF;\n    LEAVE label1;\n  END LOOP label1;\n  SET @x = p1;\nEND\n','http://dev.mysql.com/doc/refman/5.0/en/iterate-statement.html'),(112,'DO',25,'Syntax:\nDO expr [, expr] ...\n\nDO executes the expressions but does not return any results. In most\nrespects, DO is shorthand for SELECT expr, ..., but has the advantage\nthat it is slightly faster when you do not care about the result.\n\nDO is useful primarily with functions that have side effects, such as\nRELEASE_LOCK().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/do.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/do.html'),(113,'CURTIME',28,'Syntax:\nCURTIME()\n\nReturns the current time as a value in \'HH:MM:SS\' or HHMMSS.uuuuuu\nformat, depending on whether the function is used in a string or\nnumeric context. The value is expressed in the current time zone.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT CURTIME();\n        -> \'23:50:26\'\nmysql> SELECT CURTIME() + 0;\n        -> 235026.000000\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(114,'CHAR_LENGTH',33,'Syntax:\nCHAR_LENGTH(str)\n\nReturns the length of the string str, measured in characters. A\nmulti-byte character counts as a single character. This means that for\na string containing five two-byte characters, LENGTH() returns 10,\nwhereas CHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(115,'BIGINT',20,'BIGINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA large integer. The signed range is -9223372036854775808 to\n9223372036854775807. The unsigned range is 0 to 18446744073709551615.\n\nSERIAL is an alias for BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(116,'SET',25,'Syntax:\nSET variable_assignment [, variable_assignment] ...\n\nvariable_assignment:\n      user_var_name = expr\n    | [GLOBAL | SESSION] system_var_name = expr\n    | [@@global. | @@session. | @@]system_var_name = expr\n\nThe SET statement assigns values to different types of variables that\naffect the operation of the server or your client. Older versions of\nMySQL employed SET OPTION, but this syntax is deprecated in favor of\nSET without OPTION.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/set-option.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/set-option.html'),(117,'CONV',4,'Syntax:\nCONV(N,from_base,to_base)\n\nConverts numbers between different number bases. Returns a string\nrepresentation of the number N, converted from base from_base to base\nto_base. Returns NULL if any argument is NULL. The argument N is\ninterpreted as an integer, but may be specified as an integer or a\nstring. The minimum base is 2 and the maximum base is 36. If to_base is\na negative number, N is regarded as a signed number. Otherwise, N is\ntreated as unsigned. CONV() works with 64-bit precision.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT CONV(\'a\',16,2);\n        -> \'1010\'\nmysql> SELECT CONV(\'6E\',18,8);\n        -> \'172\'\nmysql> SELECT CONV(-17,10,-18);\n        -> \'-H\'\nmysql> SELECT CONV(10+\'10\'+\'10\'+0xa,10,10);\n        -> \'40\'\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(118,'DATE',20,'DATE\n\nA date. The supported range is \'1000-01-01\' to \'9999-12-31\'. MySQL\ndisplays DATE values in \'YYYY-MM-DD\' format, but allows assignment of\nvalues to DATE columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html'),(119,'SHOW OPEN TABLES',25,'Syntax:\nSHOW OPEN TABLES [FROM db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttp://dev.mysql.com/doc/refman/5.0/en/table-cache.html. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-open-tables.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-open-tables.html'),(120,'EXTRACT',28,'Syntax:\nEXTRACT(unit FROM date)\n\nThe EXTRACT() function uses the same kinds of unit specifiers as\nDATE_ADD() or DATE_SUB(), but extracts parts from the date rather than\nperforming date arithmetic.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT EXTRACT(YEAR FROM \'1999-07-02\');\n       -> 1999\nmysql> SELECT EXTRACT(YEAR_MONTH FROM \'1999-07-02 01:02:03\');\n       -> 199907\nmysql> SELECT EXTRACT(DAY_MINUTE FROM \'1999-07-02 01:02:03\');\n       -> 20102\nmysql> SELECT EXTRACT(MICROSECOND\n    ->                FROM \'2003-01-02 10:30:00.000123\');\n        -> 123\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(121,'ENCRYPT',10,'Syntax:\nENCRYPT(str[,salt])\n\nEncrypts str using the Unix crypt() system call and returns a binary\nstring. The salt argument should be a string with at least two\ncharacters. If no salt argument is given, a random value is used.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','mysql> SELECT ENCRYPT(\'hello\');\n        -> \'VxuFAJXVARROc\'\n','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(122,'SHOW STATUS',25,'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW STATUS provides server status information. This information also\ncan be obtained using the mysqladmin extended-status command. The LIKE\nclause, if present, indicates which variable names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE \'Key%\';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nThe GLOBAL and SESSION options are new in MySQL 5.0.2. With the GLOBAL\nmodifier, SHOW STATUS displays the status values for all connections to\nMySQL. With SESSION, it displays the status values for the current\nconnection. If no modifier is present, the default is SESSION. LOCAL is\na synonym for SESSION.\n\nSome status variables have only a global value. For these, you get the\nsame value for both GLOBAL and SESSION. The scope for each status\nvariable is listed at\nhttp://dev.mysql.com/doc/refman/5.0/en/server-status-variables.html.\n\n*Note*: Before MySQL 5.0.2, SHOW STATUS returned global status values.\nBecause the default as of 5.0.2 is to return session values, this is\nincompatible with previous versions. To issue a SHOW STATUS statement\nthat will retrieve global status values for all versions of MySQL,\nwrite it like this:\n\nSHOW /*!50002 GLOBAL */ STATUS;\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-status.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-status.html'),(123,'OLD_PASSWORD',10,'Syntax:\nOLD_PASSWORD(str)\n\nOLD_PASSWORD() was added to MySQL when the implementation of PASSWORD()\nwas changed to improve security. OLD_PASSWORD() returns the value of\nthe old (pre-4.1) implementation of PASSWORD() as a binary string, and\nis intended to permit you to reset passwords for any pre-4.1 clients\nthat need to connect to your version 5.0 MySQL server without locking\nthem out. See\nhttp://dev.mysql.com/doc/refman/5.0/en/password-hashing.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(124,'SET VARIABLE',35,'Syntax:\nSET var_name = expr [, var_name = expr] ...\n\nThe SET statement in stored routines is an extended version of the\ngeneral SET statement. Referenced variables may be ones declared inside\na routine, or global system variables.\n\nThe SET statement in stored routines is implemented as part of the\npre-existing SET syntax. This allows an extended syntax of SET a=x,\nb=y, ... where different variable types (locally declared variables and\nglobal and session server variables) can be mixed. This also allows\ncombinations of local variables and some options that make sense only\nfor system variables; in that case, the options are recognized but\nignored.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/set-statement.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/set-statement.html'),(125,'FORMAT',33,'Syntax:\nFORMAT(X,D)\n\nFormats the number X to a format like \'#,###,###.##\', rounded to D\ndecimal places, and returns the result as a string. If D is 0, the\nresult has no decimal point or fractional part.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT FORMAT(12332.123456, 4);\n        -> \'12,332.1235\'\nmysql> SELECT FORMAT(12332.1,4);\n        -> \'12,332.1000\'\nmysql> SELECT FORMAT(12332.2,0);\n        -> \'12,332\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(126,'||',12,'Syntax:\nOR, ||\n\nLogical OR. When both operands are non-NULL, the result is 1 if any\noperand is non-zero, and 0 otherwise. With a NULL operand, the result\nis 1 if the other operand is non-zero, and NULL otherwise. If both\noperands are NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html\n\n','mysql> SELECT 1 || 1;\n        -> 1\nmysql> SELECT 1 || 0;\n        -> 1\nmysql> SELECT 0 || 0;\n        -> 0\nmysql> SELECT 0 || NULL;\n        -> NULL\nmysql> SELECT 1 || NULL;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html'),(127,'BIT_LENGTH',33,'Syntax:\nBIT_LENGTH(str)\n\nReturns the length of the string str in bits.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT BIT_LENGTH(\'text\');\n        -> 32\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(128,'EXTERIORRING',2,'ExteriorRing(poly)\n\nReturns the exterior ring of the Polygon value poly as a LineString.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html\n\n','mysql> SET @poly =\n    -> \'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))\';\nmysql> SELECT AsText(ExteriorRing(GeomFromText(@poly)));\n+-------------------------------------------+\n| AsText(ExteriorRing(GeomFromText(@poly))) |\n+-------------------------------------------+\n| LINESTRING(0 0,0 3,3 3,3 0,0 0)           |\n+-------------------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html'),(129,'GEOMFROMWKB',29,'GeomFromWKB(wkb[,srid]), GeometryFromWKB(wkb[,srid])\n\nConstructs a geometry value of any type using its WKB representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),(130,'SHOW SLAVE HOSTS',25,'Syntax:\n          SHOW SLAVE HOSTS\n\nDisplays a list of replication slaves currently registered with the\nmaster. Only slaves started with the --report-host=slave_name option\nare visible in this list.\n\nThe list is displayed on any server (not just the master server). The\noutput looks like this: mysql> SHOW SLAVE HOSTS;\n+------------+-----------+------+-----------+ | Server_id | Host | Port\n| Master_id | +------------+-----------+------+-----------+ | 192168010\n| iconnect2 | 3306 | 192168011 | | 1921680101 | athena | 3306 |\n192168011 | +------------+-----------+------+-----------+ Server_id:\nThe unique server ID of the slave server, as configured in the server\'s\noption file, or on the command line with --server-id=value . Host: The\nhost name of the slave server, as configured in the server\'s option\nfile, or on the command line with --report-host=value. Note that this\ncan differ from the machine name as configured in the operating system.\nPort: The port the slave server is listening on. Master_id: The unique\nserver ID of the master server that the slave server is replicating\nfrom. Some MySQL versions report another variable, Rpl_recovery_rank.\nThis variable was never used, and was eventually removed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-slave-hosts.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-slave-hosts.html'),(131,'START TRANSACTION',7,'Syntax:\nSTART TRANSACTION [WITH CONSISTENT SNAPSHOT] | BEGIN [WORK]\nCOMMIT [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nROLLBACK [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nSET AUTOCOMMIT = {0 | 1}\n\nThe START TRANSACTION and BEGIN statement begin a new transaction.\nCOMMIT commits the current transaction, making its changes permanent.\nROLLBACK rolls back the current transaction, canceling its changes. The\nSET AUTOCOMMIT statement disables or enables the default autocommit\nmode for the current connection.\n\nBeginning with MySQL 5.0.3, the optional WORK keyword is supported for\nCOMMIT and ROLLBACK, as are the CHAIN and RELEASE clauses. CHAIN and\nRELEASE can be used for additional control over transaction completion.\nThe value of the completion_type system variable determines the default\ncompletion behavior. See\nhttp://dev.mysql.com/doc/refman/5.0/en/server-system-variables.html.\n\nThe AND CHAIN clause causes a new transaction to begin as soon as the\ncurrent one ends, and the new transaction has the same isolation level\nas the just-terminated transaction. The RELEASE clause causes the\nserver to disconnect the current client connection after terminating\nthe current transaction. Including the NO keyword suppresses CHAIN or\nRELEASE completion, which can be useful if the completion_type system\nvariable is set to cause chaining or release completion by default.\n\nBy default, MySQL runs with autocommit mode enabled. This means that as\nsoon as you execute a statement that updates (modifies) a table, MySQL\nstores the update on disk.\n\nIf you are using a transaction-safe storage engine (such as InnoDB,\nBDB, or NDB Cluster), you can disable autocommit mode with the\nfollowing statement:\n\nSET AUTOCOMMIT=0;\n\nAfter disabling autocommit mode by setting the AUTOCOMMIT variable to\nzero, you must use COMMIT to store your changes to disk or ROLLBACK if\nyou want to ignore the changes you have made since the beginning of\nyour transaction.\n\nTo disable autocommit mode for a single series of statements, use the\nSTART TRANSACTION statement:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/commit.html\n\n','START TRANSACTION;\nSELECT @A:=SUM(salary) FROM table1 WHERE type=1;\nUPDATE table2 SET summary=@A WHERE type=1;\nCOMMIT;\n','http://dev.mysql.com/doc/refman/5.0/en/commit.html'),(132,'BETWEEN AND',17,'Syntax:\nexpr BETWEEN min AND max\n\nIf expr is greater than or equal to min and expr is less than or equal\nto max, BETWEEN returns 1, otherwise it returns 0. This is equivalent\nto the expression (min <= expr AND expr <= max) if all the arguments\nare of the same type. Otherwise type conversion takes place according\nto the rules described in\nhttp://dev.mysql.com/doc/refman/5.0/en/type-conversion.html, but\napplied to all the three arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT 1 BETWEEN 2 AND 3;\n        -> 0\nmysql> SELECT \'b\' BETWEEN \'a\' AND \'c\';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND \'3\';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND \'x-3\';\n        -> 0\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(133,'MULTIPOLYGON',22,'MultiPolygon(poly1,poly2,...)\n\nConstructs a WKB MultiPolygon value from a set of WKB Polygon\narguments. If any argument is not a WKB Polygon, the return value is\nNULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),(134,'TIME_FORMAT',28,'Syntax:\nTIME_FORMAT(time,format)\n\nThis is used like the DATE_FORMAT() function, but the format string may\ncontain format specifiers only for hours, minutes, and seconds. Other\nspecifiers produce a NULL value or 0.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT TIME_FORMAT(\'100:00:00\', \'%H %k %h %I %l\');\n        -> \'100 100 04 04 4\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(135,'LEFT',33,'Syntax:\nLEFT(str,len)\n\nReturns the leftmost len characters from the string str, or NULL if any\nargument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT LEFT(\'foobarbar\', 5);\n        -> \'fooba\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(136,'FLUSH QUERY CACHE',24,'You can defragment the query cache to better utilize its memory with\nthe FLUSH QUERY CACHE statement. The statement does not remove any\nqueries from the cache.\n\nThe RESET QUERY CACHE statement removes all query results from the\nquery cache. The FLUSH TABLES statement also does this.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/query-cache-status-and-maintenance.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/query-cache-status-and-maintenance.html'),(137,'SET DATA TYPE',20,'SET(\'value1\',\'value2\',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA set. A string object that can have zero or more values, each of which\nmust be chosen from the list of values \'value1\', \'value2\', ... A SET\ncolumn can have a maximum of 64 members. SET values are represented\ninternally as integers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(138,'RAND',4,'Syntax:\nRAND(), RAND(N)\n\nReturns a random floating-point value v in the range 0 <= v < 1.0. If a\nconstant integer argument N is specified, it is used as the seed value,\nwhich produces a repeatable sequence of column values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT RAND();\n        -> 0.9233482386203\nmysql> SELECT RAND(20);\n        -> 0.15888261251047\nmysql> SELECT RAND(20);\n        -> 0.15888261251047\nmysql> SELECT RAND();\n        -> 0.63553050033332\nmysql> SELECT RAND();\n        -> 0.70100469486881\nmysql> SELECT RAND(20);\n        -> 0.15888261251047\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(139,'RPAD',33,'Syntax:\nRPAD(str,len,padstr)\n\nReturns the string str, right-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT RPAD(\'hi\',5,\'?\');\n        -> \'hi???\'\nmysql> SELECT RPAD(\'hi\',1,\'?\');\n        -> \'h\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(140,'CREATE DATABASE',36,'Syntax:\nCREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n    [create_specification ...]\n\ncreate_specification:\n    [DEFAULT] CHARACTER SET charset_name\n  | [DEFAULT] COLLATE collation_name\n\nCREATE DATABASE creates a database with the given name. To use this\nstatement, you need the CREATE privilege for the database. CREATE\nSCHEMA is a synonym for CREATE DATABASE as of MySQL 5.0.2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-database.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/create-database.html'),(141,'DEC',20,'DEC[(M[,D])] [UNSIGNED] [ZEROFILL], NUMERIC[(M[,D])] [UNSIGNED]\n[ZEROFILL], FIXED[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nThese types are synonyms for DECIMAL. The FIXED synonym is available\nfor compatibility with other database systems.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(142,'VAR_POP',14,'Syntax:\nVAR_POP(expr)\n\nReturns the population standard variance of expr. It considers rows as\nthe whole population, not as a sample, so it has the number of rows as\nthe denominator. This function was added in MySQL 5.0.3. Before 5.0.3,\nyou can use VARIANCE(), which is equivalent but is not standard SQL.\n\nVAR_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(143,'ELT',33,'Syntax:\nELT(N,str1,str2,str3,...)\n\nReturns str1 if N = 1, str2 if N = 2, and so on. Returns NULL if N is\nless than 1 or greater than the number of arguments. ELT() is the\ncomplement of FIELD().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT ELT(1, \'ej\', \'Heja\', \'hej\', \'foo\');\n        -> \'ej\'\nmysql> SELECT ELT(4, \'ej\', \'Heja\', \'hej\', \'foo\');\n        -> \'foo\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(144,'ALTER VIEW',36,'Syntax:\nALTER\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThis statement changes the definition of a view, which must exist. The\nsyntax is similar to that for CREATE VIEW and the effect is the same as\nfor CREATE OR REPLACE VIEW. See [HELP CREATE VIEW]. This statement\nrequires the CREATE VIEW and DROP privileges for the view, and some\nprivilege for each column referred to in the SELECT statement. As of\nMySQL 5.0.52, ALTER VIEW is allowed only to the original definer or\nusers with the SUPER privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/alter-view.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/alter-view.html'),(145,'SHOW DATABASES',25,'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES as of MySQL 5.0.2. The LIKE\nclause, if present, indicates which database names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-databases.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-databases.html'),(146,'~',18,'Syntax:\n~\n\nInvert all bits.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n','mysql> SELECT 5 & ~1;\n        -> 4\n','http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),(147,'TEXT',20,'TEXT[(M)] [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 65,535 (216 - 1) characters. The\neffective maximum length is less if the value contains multi-byte\ncharacters. Each TEXT value is stored using a two-byte length prefix\nthat indicates the number of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest TEXT type large enough to hold\nvalues M characters long.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(148,'CONCAT_WS',33,'Syntax:\nCONCAT_WS(separator,str1,str2,...)\n\nCONCAT_WS() stands for Concatenate With Separator and is a special form\nof CONCAT(). The first argument is the separator for the rest of the\narguments. The separator is added between the strings to be\nconcatenated. The separator can be a string, as can the rest of the\narguments. If the separator is NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT CONCAT_WS(\',\',\'First name\',\'Second name\',\'Last Name\');\n        -> \'First name,Second name,Last Name\'\nmysql> SELECT CONCAT_WS(\',\',\'First name\',NULL,\'Last Name\');\n        -> \'First name,Last Name\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(149,'ROW_COUNT',15,'Syntax:\nROW_COUNT()\n\nROW_COUNT() returns the number of rows updated, inserted, or deleted by\nthe preceding statement. This is the same as the row count that the\nmysql client displays and the value from the mysql_affected_rows() C\nAPI function.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','mysql> INSERT INTO t VALUES(1),(2),(3);\nQuery OK, 3 rows affected (0.00 sec)\nRecords: 3  Duplicates: 0  Warnings: 0\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           3 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> DELETE FROM t WHERE i IN(1,2);\nQuery OK, 2 rows affected (0.00 sec)\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           2 |\n+-------------+\n1 row in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(150,'ASIN',4,'Syntax:\nASIN(X)\n\nReturns the arc sine of X, that is, the value whose sine is X. Returns\nNULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT ASIN(0.2);\n        -> 0.20135792079033\nmysql> SELECT ASIN(\'foo\');\n\n+-------------+\n| ASIN(\'foo\') |\n+-------------+\n|           0 |\n+-------------+\n1 row in set, 1 warning (0.00 sec)\n\nmysql> SHOW WARNINGS;\n+---------+------+-----------------------------------------+\n| Level   | Code | Message                                 |\n+---------+------+-----------------------------------------+\n| Warning | 1292 | Truncated incorrect DOUBLE value: \'foo\' |\n+---------+------+-----------------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(151,'SHOW LOGS',25,'Syntax:\nSHOW [BDB] LOGS\n\nIn MySQL 5.0, this is a deprecated synonym for SHOW ENGINE BDB LOGS.\nSee [HELP SHOW ENGINE].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-logs.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-logs.html'),(152,'SIGN',4,'Syntax:\nSIGN(X)\n\nReturns the sign of the argument as -1, 0, or 1, depending on whether X\nis negative, zero, or positive.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT SIGN(-32);\n        -> -1\nmysql> SELECT SIGN(0);\n        -> 0\nmysql> SELECT SIGN(234);\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(153,'SEC_TO_TIME',28,'Syntax:\nSEC_TO_TIME(seconds)\n\nReturns the seconds argument, converted to hours, minutes, and seconds,\nas a TIME value. The range of the result is constrained to that of the\nTIME data type. A warning occurs if the argument corresponds to a value\noutside that range.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT SEC_TO_TIME(2378);\n        -> \'00:39:38\'\nmysql> SELECT SEC_TO_TIME(2378) + 0;\n        -> 3938\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(154,'FLOAT',20,'FLOAT[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA small (single-precision) floating-point number. Allowable values are\n-3.402823466E+38 to -1.175494351E-38, 0, and 1.175494351E-38 to\n3.402823466E+38. These are the theoretical limits, based on the IEEE\nstandard. The actual range might be slightly smaller depending on your\nhardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits allowed by the hardware. A single-precision floating-point\nnumber is accurate to approximately 7 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nUsing FLOAT might give you some unexpected problems because all\ncalculations in MySQL are done with double precision. See\nhttp://dev.mysql.com/doc/refman/5.0/en/no-matching-rows.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(155,'LOCATE',33,'Syntax:\nLOCATE(substr,str), LOCATE(substr,str,pos)\n\nThe first syntax returns the position of the first occurrence of\nsubstring substr in string str. The second syntax returns the position\nof the first occurrence of substring substr in string str, starting at\nposition pos. Returns 0 if substr is not in str.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT LOCATE(\'bar\', \'foobarbar\');\n        -> 4\nmysql> SELECT LOCATE(\'xbar\', \'foobar\');\n        -> 0\nmysql> SELECT LOCATE(\'bar\', \'foobarbar\', 5);\n        -> 7\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(156,'CHARSET',15,'Syntax:\nCHARSET(str)\n\nReturns the character set of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','mysql> SELECT CHARSET(\'abc\');\n        -> \'latin1\'\nmysql> SELECT CHARSET(CONVERT(\'abc\' USING utf8));\n        -> \'utf8\'\nmysql> SELECT CHARSET(USER());\n        -> \'utf8\'\n','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(157,'SUBDATE',28,'Syntax:\nSUBDATE(date,INTERVAL expr unit), SUBDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, SUBDATE()\nis a synonym for DATE_SUB(). For information on the INTERVAL unit\nargument, see the discussion for DATE_ADD().\n\nmysql> SELECT DATE_SUB(\'1998-01-02\', INTERVAL 31 DAY);\n        -> \'1997-12-02\'\nmysql> SELECT SUBDATE(\'1998-01-02\', INTERVAL 31 DAY);\n        -> \'1997-12-02\'\n\nThe second form allows the use of an integer value for days. In such\ncases, it is interpreted as the number of days to be subtracted from\nthe date or datetime expression expr.\n\nmysql> SELECT SUBDATE(\'1998-01-02 12:00:00\', 31);\n        -> \'1997-12-02 12:00:00\'\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(158,'DAYOFYEAR',28,'Syntax:\nDAYOFYEAR(date)\n\nReturns the day of the year for date, in the range 1 to 366.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT DAYOFYEAR(\'1998-02-03\');\n        -> 34\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(159,'LONGTEXT',20,'LONGTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\ncharacters. The effective maximum length is less if the value contains\nmulti-byte characters. The effective maximum length of LONGTEXT columns\nalso depends on the configured maximum packet size in the client/server\nprotocol and available memory. Each LONGTEXT value is stored using a\nfour-byte length prefix that indicates the number of bytes in the\nvalue.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(160,'%',4,'Syntax:\nN % M\n\nModulo operation. Returns the remainder of N divided by M. For more\ninformation, see the description for the MOD() function in [HELP ABS].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),(161,'DISJOINT',26,'Disjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially disjoint from (does\nnot intersect) g2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),(162,'KILL',25,'Syntax:\nKILL [CONNECTION | QUERY] thread_id\n\nEach connection to mysqld runs in a separate thread. You can see which\nthreads are running with the SHOW PROCESSLIST statement and kill a\nthread with the KILL thread_id statement.\n\nIn MySQL 5.0.0, KILL allows the optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given thread_id.\n\no KILL QUERY terminates the statement that the connection is currently\n  executing, but leaves the connection itself intact.\n\nIf you have the PROCESS privilege, you can see all threads. If you have\nthe SUPER privilege, you can kill all threads and statements.\nOtherwise, you can see and kill only your own threads and statements.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\n*Note*: You cannot use KILL with the Embedded MySQL Server library,\nbecause the embedded server merely runs inside the threads of the host\napplication. It does not create any connection threads of its own.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/kill.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/kill.html'),(163,'ASTEXT',3,'AsText(g)\n\nConverts a value in internal geometry format to its WKT representation\nand returns the string result.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-to-convert-geometries-between-formats.html\n\n','mysql> SET @g = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT AsText(GeomFromText(@g));\n+--------------------------+\n| AsText(GeomFromText(@g)) |\n+--------------------------+\n| LINESTRING(1 1,2 2,3 3)  |\n+--------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/functions-to-convert-geometries-between-formats.html'),(164,'LPAD',33,'Syntax:\nLPAD(str,len,padstr)\n\nReturns the string str, left-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT LPAD(\'hi\',4,\'??\');\n        -> \'??hi\'\nmysql> SELECT LPAD(\'hi\',1,\'??\');\n        -> \'h\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(165,'RESTORE TABLE',19,'Syntax:\nRESTORE TABLE tbl_name [, tbl_name] ... FROM \'/path/to/backup/directory\'\n\nRESTORE TABLE restores the table or tables from a backup that was made\nwith BACKUP TABLE. The directory should be specified as a full\npathname.\n\nExisting tables are not overwritten; if you try to restore over an\nexisting table, an error occurs. Just as for BACKUP TABLE, RESTORE\nTABLE currently works only for MyISAM tables. Restored tables are not\nreplicated from master to slave.\n\nThe backup for each table consists of its .frm format file and .MYD\ndata file. The restore operation restores those files, and then uses\nthem to rebuild the .MYI index file. Restoring takes longer than\nbacking up due to the need to rebuild the indexes. The more indexes the\ntable has, the longer it takes.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/restore-table.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/restore-table.html'),(166,'DECLARE CONDITION',35,'Syntax:\nDECLARE condition_name CONDITION FOR condition_value\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | mysql_error_code\n\nThis statement specifies conditions that need specific handling. It\nassociates a name with a specified error condition. The name can\nsubsequently be used in a DECLARE HANDLER statement. See [HELP DECLARE\nHANDLER].\n\nA condition_value can be an SQLSTATE value or a MySQL error code.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/declare-conditions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/declare-conditions.html'),(167,'OVERLAPS',26,'Overlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially overlaps g2. The term\nspatially overlaps is used if two geometries intersect and their\nintersection results in a geometry of the same dimension but not equal\nto either of the given geometries.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),(168,'NUMGEOMETRIES',23,'NumGeometries(gc)\n\nReturns the number of geometries in the GeometryCollection value gc.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/geometrycollection-property-functions.html\n\n','mysql> SET @gc = \'GeometryCollection(Point(1 1),LineString(2 2, 3 3))\';\nmysql> SELECT NumGeometries(GeomFromText(@gc));\n+----------------------------------+\n| NumGeometries(GeomFromText(@gc)) |\n+----------------------------------+\n|                                2 |\n+----------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/geometrycollection-property-functions.html'),(169,'SET GLOBAL SQL_SLAVE_SKIP_COUNTER',25,'Syntax:\nSET GLOBAL SQL_SLAVE_SKIP_COUNTER = N\n\nThis statement skips the next N events from the master. This is useful\nfor recovering from replication stops caused by a statement.\n\nThis statement is valid only when the slave thread is not running.\nOtherwise, it produces an error.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/set-global-sql-slave-skip-counter.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/set-global-sql-slave-skip-counter.html'),(170,'MONTHNAME',28,'Syntax:\nMONTHNAME(date)\n\nReturns the full name of the month for date. As of MySQL 5.0.25, the\nlanguage used for the name is controlled by the value of the\nlc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.0/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT MONTHNAME(\'1998-02-05\');\n        -> \'February\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(171,'PROCEDURE ANALYSE',34,'Syntax:\nanalyse([max_elements[,max_memory]])\n\nThis procedure is defined in the sql/sql_analyse.cc file. It examines\nthe result from a query and returns an analysis of the results that\nsuggests optimal data types for each column. To obtain this analysis,\nappend PROCEDURE ANALYSE to the end of a SELECT statement:\n\nSELECT ... FROM ... WHERE ... PROCEDURE ANALYSE([max_elements,[max_memory]])\n\nFor example:\n\nSELECT col1, col2 FROM table1 PROCEDURE ANALYSE(10, 2000);\n\nThe results show some statistics for the values returned by the query,\nand propose an optimal data type for the columns. This can be helpful\nfor checking your existing tables, or after importing new data. You may\nneed to try different settings for the arguments so that PROCEDURE\nANALYSE() does not suggest the ENUM data type when it is not\nappropriate.\n\nThe arguments are optional and are used as follows:\n\no max_elements (default 256) is the maximum number of distinct values\n  that analyse notices per column. This is used by analyse to check\n  whether the optimal data type should be of type ENUM.\n\no max_memory (default 8192) is the maximum amount of memory that\n  analyse should allocate per column while trying to find all distinct\n  values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/procedure-analyse.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/procedure-analyse.html'),(172,'MBREQUAL',5,'MBREqual(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are the same.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),(173,'CHANGE MASTER TO',25,'Syntax:\nCHANGE MASTER TO master_def [, master_def] ...\n\nmaster_def:\n    MASTER_HOST = \'host_name\'\n  | MASTER_USER = \'user_name\'\n  | MASTER_PASSWORD = \'password\'\n  | MASTER_PORT = port_num\n  | MASTER_CONNECT_RETRY = count\n  | MASTER_LOG_FILE = \'master_log_name\'\n  | MASTER_LOG_POS = master_log_pos\n  | RELAY_LOG_FILE = \'relay_log_name\'\n  | RELAY_LOG_POS = relay_log_pos\n  | MASTER_SSL = {0|1}\n  | MASTER_SSL_CA = \'ca_file_name\'\n  | MASTER_SSL_CAPATH = \'ca_directory_name\'\n  | MASTER_SSL_CERT = \'cert_file_name\'\n  | MASTER_SSL_KEY = \'key_file_name\'\n  | MASTER_SSL_CIPHER = \'cipher_list\'\n\nCHANGE MASTER TO changes the parameters that the slave server uses for\nconnecting to and communicating with the master server. It also updates\nthe contents of the master.info and relay-log.info files.\n\nMASTER_USER, MASTER_PASSWORD, MASTER_SSL, MASTER_SSL_CA,\nMASTER_SSL_CAPATH, MASTER_SSL_CERT, MASTER_SSL_KEY, and\nMASTER_SSL_CIPHER provide information to the slave about how to connect\nto its master.\n\nThe SSL options (MASTER_SSL, MASTER_SSL_CA, MASTER_SSL_CAPATH,\nMASTER_SSL_CERT, MASTER_SSL_KEY, and MASTER_SSL_CIPHER) can be changed\neven on slaves that are compiled without SSL support. They are saved to\nthe master.info file, but are ignored unless you use a server that has\nSSL support enabled.\n\nIf you don\'t specify a given parameter, it keeps its old value, except\nas indicated in the following discussion. For example, if the password\nto connect to your MySQL master has changed, you just need to issue\nthese statements to tell the slave about the new password:\n\nSTOP SLAVE; -- if replication was running\nCHANGE MASTER TO MASTER_PASSWORD=\'new3cret\';\nSTART SLAVE; -- if you want to restart replication\n\nThere is no need to specify the parameters that do not change (host,\nport, user, and so forth).\n\nMASTER_HOST and MASTER_PORT are the hostname (or IP address) of the\nmaster host and its TCP/IP port. Note that if MASTER_HOST is equal to\nlocalhost, then, like in other parts of MySQL, the port number might be\nignored.\n\n*Note*: Replication cannot use Unix socket files. You must be able to\nconnect to the master MySQL server using TCP/IP.\n\nIf you specify MASTER_HOST or MASTER_PORT, the slave assumes that the\nmaster server is different from before (even if you specify a host or\nport value that is the same as the current value.) In this case, the\nold values for the master binary log name and position are considered\nno longer applicable, so if you do not specify MASTER_LOG_FILE and\nMASTER_LOG_POS in the statement, MASTER_LOG_FILE=\'\' and\nMASTER_LOG_POS=4 are silently appended to it.\n\nMASTER_LOG_FILE and MASTER_LOG_POS are the coordinates at which the\nslave I/O thread should begin reading from the master the next time the\nthread starts. If you specify either of them, you cannot specify\nRELAY_LOG_FILE or RELAY_LOG_POS. If neither of MASTER_LOG_FILE or\nMASTER_LOG_POS are specified, the slave uses the last coordinates of\nthe slave SQL thread before CHANGE MASTER was issued. This ensures that\nthere is no discontinuity in replication, even if the slave SQL thread\nwas late compared to the slave I/O thread, when you merely want to\nchange, say, the password to use.\n\nCHANGE MASTER deletes all relay log files and starts a new one, unless\nyou specify RELAY_LOG_FILE or RELAY_LOG_POS. In that case, relay logs\nare kept; the relay_log_purge global variable is set silently to 0.\n\nCHANGE MASTER is useful for setting up a slave when you have the\nsnapshot of the master and have recorded the log and the offset\ncorresponding to it. After loading the snapshot into the slave, you can\nrun CHANGE MASTER TO MASTER_LOG_FILE=\'log_name_on_master\',\nMASTER_LOG_POS=log_offset_on_master on the slave.\n\nThe following example changes the master and master\'s binary log\ncoordinates. This is used when you want to set up the slave to\nreplicate the master:\n\nCHANGE MASTER TO\n  MASTER_HOST=\'master2.mycompany.com\',\n  MASTER_USER=\'replication\',\n  MASTER_PASSWORD=\'bigs3cret\',\n  MASTER_PORT=3306,\n  MASTER_LOG_FILE=\'master2-bin.001\',\n  MASTER_LOG_POS=4,\n  MASTER_CONNECT_RETRY=10;\n\nThe next example shows an operation that is less frequently employed.\nIt is used when the slave has relay logs that you want it to execute\nagain for some reason. To do this, the master need not be reachable.\nYou need only use CHANGE MASTER TO and start the SQL thread (START\nSLAVE SQL_THREAD):\n\nCHANGE MASTER TO\n  RELAY_LOG_FILE=\'slave-relay-bin.006\',\n  RELAY_LOG_POS=4025;\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/change-master-to.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/change-master-to.html'),(174,'DROP DATABASE',36,'Syntax:\nDROP {DATABASE | SCHEMA} [IF EXISTS] db_name\n\nDROP DATABASE drops all tables in the database and deletes the\ndatabase. Be very careful with this statement! To use DROP DATABASE,\nyou need the DROP privilege on the database. DROP SCHEMA is a synonym\nfor DROP DATABASE as of MySQL 5.0.2.\n\n*Important*: When a database is dropped, user privileges on the\ndatabase are not automatically dropped. See [HELP GRANT].\n\nIF EXISTS is used to prevent an error from occurring if the database\ndoes not exist.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-database.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/drop-database.html'),(175,'TIMESTAMP FUNCTION',28,'Syntax:\nTIMESTAMP(expr), TIMESTAMP(expr1,expr2)\n\nWith a single argument, this function returns the date or datetime\nexpression expr as a datetime value. With two arguments, it adds the\ntime expression expr2 to the date or datetime expression expr1 and\nreturns the result as a datetime value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT TIMESTAMP(\'2003-12-31\');\n        -> \'2003-12-31 00:00:00\'\nmysql> SELECT TIMESTAMP(\'2003-12-31 12:00:00\',\'12:00:00\');\n        -> \'2004-01-01 00:00:00\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(176,'CHARACTER_LENGTH',33,'Syntax:\nCHARACTER_LENGTH(str)\n\nCHARACTER_LENGTH() is a synonym for CHAR_LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(177,'SHOW GRANTS',25,'Syntax:\nSHOW GRANTS [FOR user]\n\nThis statement lists the GRANT statement or statements that must be\nissued to duplicate the privileges that are granted to a MySQL user\naccount. The account is named using the same format as for the GRANT\nstatement; for example, \'jeffrey\'@\'localhost\'. If you specify only the\nusername part of the account name, a hostname part of \'%\' is used. For\nadditional information about specifying account names, see [HELP\nGRANT].\n\nmysql> SHOW GRANTS FOR \'root\'@\'localhost\';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT ALL PRIVILEGES ON *.* TO \'root\'@\'localhost\' WITH GRANT OPTION |\n+---------------------------------------------------------------------+\n\nTo list the privileges granted to the account that you are using to\nconnect to the server, you can use any of the following statements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nAs of MySQL 5.0.24, if SHOW GRANTS FOR CURRENT_USER (or any of the\nequivalent syntaxes) is used in DEFINER context, such as within a\nstored procedure that is defined with SQL SECURITY DEFINER), the grants\ndisplayed are those of the definer and not the invoker.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-grants.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-grants.html'),(178,'SHOW PRIVILEGES',25,'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The exact list of privileges depends on the version of\nyour server.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-privileges.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-privileges.html'),(179,'INSERT FUNCTION',33,'Syntax:\nINSERT(str,pos,len,newstr)\n\nReturns the string str, with the substring beginning at position pos\nand len characters long replaced by the string newstr. Returns the\noriginal string if pos is not within the length of the string. Replaces\nthe rest of the string from position pos if len is not within the\nlength of the rest of the string. Returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT INSERT(\'Quadratic\', 3, 4, \'What\');\n        -> \'QuWhattic\'\nmysql> SELECT INSERT(\'Quadratic\', -1, 4, \'What\');\n        -> \'Quadratic\'\nmysql> SELECT INSERT(\'Quadratic\', 3, 100, \'What\');\n        -> \'QuWhat\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(180,'CRC32',4,'Syntax:\nCRC32(expr)\n\nComputes a cyclic redundancy check value and returns a 32-bit unsigned\nvalue. The result is NULL if the argument is NULL. The argument is\nexpected to be a string and (if possible) is treated as one if it is\nnot.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT CRC32(\'MySQL\');\n        -> 3259397556\nmysql> SELECT CRC32(\'mysql\');\n        -> 2501908538\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(181,'XOR',12,'Syntax:\nXOR\n\nLogical XOR. Returns NULL if either operand is NULL. For non-NULL\noperands, evaluates to 1 if an odd number of operands is non-zero,\notherwise 0 is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html\n\n','mysql> SELECT 1 XOR 1;\n        -> 0\nmysql> SELECT 1 XOR 0;\n        -> 1\nmysql> SELECT 1 XOR NULL;\n        -> NULL\nmysql> SELECT 1 XOR 1 XOR 1;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html'),(182,'STARTPOINT',11,'StartPoint(ls)\n\nReturns the Point that is the start point of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html\n\n','mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT AsText(StartPoint(GeomFromText(@ls)));\n+---------------------------------------+\n| AsText(StartPoint(GeomFromText(@ls))) |\n+---------------------------------------+\n| POINT(1 1)                            |\n+---------------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html'),(183,'DECLARE VARIABLE',35,'Syntax:\nDECLARE var_name[,...] type [DEFAULT value]\n\nThis statement is used to declare local variables. To provide a default\nvalue for the variable, include a DEFAULT clause. The value can be\nspecified as an expression; it need not be a constant. If the DEFAULT\nclause is missing, the initial value is NULL.\n\nLocal variables are treated like routine parameters with respect to\ndata type and overflow checking. See [HELP CREATE PROCEDURE].\n\nThe scope of a local variable is within the BEGIN ... END block where\nit is declared. The variable can be referred to in blocks nested within\nthe declaring block, except those blocks that declare a variable with\nthe same name.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/declare-local-variables.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/declare-local-variables.html'),(184,'MPOLYFROMTEXT',3,'MPolyFromText(wkt[,srid]), MultiPolygonFromText(wkt[,srid])\n\nConstructs a MULTIPOLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),(185,'GRANT',8,'Syntax:\nGRANT priv_type [(column_list)] [, priv_type [(column_list)]] ...\n    ON [object_type] {tbl_name | * | *.* | db_name.*}\n    TO user [IDENTIFIED BY [PASSWORD] \'password\']\n        [, user [IDENTIFIED BY [PASSWORD] \'password\']] ...\n    [REQUIRE\n        NONE |\n        [{SSL| X509}]\n        [CIPHER \'cipher\' [AND]]\n        [ISSUER \'issuer\' [AND]]\n        [SUBJECT \'subject\']]\n    [WITH with_option [with_option] ...]\n\nobject_type =\n    TABLE\n  | FUNCTION\n  | PROCEDURE\n\nwith_option =\n    GRANT OPTION\n  | MAX_QUERIES_PER_HOUR count\n  | MAX_UPDATES_PER_HOUR count\n  | MAX_CONNECTIONS_PER_HOUR count\n  | MAX_USER_CONNECTIONS count\n\nThe GRANT statement enables system administrators to create MySQL user\naccounts and to grant rights to from accounts. To use GRANT, you must\nhave the GRANT OPTION privilege, and you must have the privileges that\nyou are granting. The REVOKE statement is related and enables\nadministrators to remove account privileges. See [HELP REVOKE].\n\nMySQL account information is stored in the tables of the mysql\ndatabase. This database and the access control system are discussed\nextensively in\nhttp://dev.mysql.com/doc/refman/5.0/en/server-administration.html,\nwhich you should consult for additional details.\n\n*Important*: Some releases of MySQL introduce changes to the structure\nof the grant tables to add new privileges or features. Whenever you\nupdate to a new version of MySQL, you should update your grant tables\nto make sure that they have the current structure so that you can take\nadvantage of any new capabilities. See\nhttp://dev.mysql.com/doc/refman/5.0/en/mysql-upgrade.html.\n\nIf the grant tables hold privilege rows that contain mixed-case\ndatabase or table names and the lower_case_table_names system variable\nis set to a non-zero value, REVOKE cannot be used to revoke these\nprivileges. It will be necessary to manipulate the grant tables\ndirectly. (GRANT will not create such rows when lower_case_table_names\nis set, but such rows might have been created prior to setting the\nvariable.)\n\nPrivileges can be granted at several levels. The examples shown here\ninclude no IDENTIFIED BY \'password\' clause for brevity, but you should\ninclude one if the account does not already exist to avoid creating an\naccount with no password.\n\no Global level\n\n  Global privileges apply to all databases on a given server. These\n  privileges are stored in the mysql.user table. GRANT ALL ON *.* and\n  REVOKE ALL ON *.* grant and revoke only global privileges.\n\nGRANT ALL ON *.* TO \'someuser\'@\'somehost\';\nGRANT SELECT, INSERT ON *.* TO \'someuser\'@\'somehost\';\n\no Database level\n\n  Database privileges apply to all objects in a given database. These\n  privileges are stored in the mysql.db and mysql.host tables. GRANT\n  ALL ON db_name.* and REVOKE ALL ON db_name.* grant and revoke only\n  database privileges.\n\nGRANT ALL ON mydb.* TO \'someuser\'@\'somehost\';\nGRANT SELECT, INSERT ON mydb.* TO \'someuser\'@\'somehost\';\n\no Table level\n\n  Table privileges apply to all columns in a given table. These\n  privileges are stored in the mysql.tables_priv table. GRANT ALL ON\n  db_name.tbl_name and REVOKE ALL ON db_name.tbl_name grant and revoke\n  only table privileges.\n\nGRANT ALL ON mydb.mytbl TO \'someuser\'@\'somehost\';\nGRANT SELECT, INSERT ON mydb.mytbl TO \'someuser\'@\'somehost\';\n\no Column level\n\n  Column privileges apply to single columns in a given table. These\n  privileges are stored in the mysql.columns_priv table. When using\n  REVOKE, you must specify the same columns that were granted. The\n  column or columns for which the privileges are to be granted must be\n  enclosed within parentheses.\n\nGRANT SELECT (col1), INSERT (col1,col2) ON mydb.mytbl TO \'someuser\'@\'somehost\';\n\no Routine level\n\n  The CREATE ROUTINE, ALTER ROUTINE, EXECUTE, and GRANT privileges\n  apply to stored routines (functions and procedures). They can be\n  granted at the global and database levels. Also, except for CREATE\n  ROUTINE, these privileges can be granted at the routine level for\n  individual routines and are stored in the mysql.procs_priv table.\n\nGRANT CREATE ROUTINE ON mydb.* TO \'someuser\'@\'somehost\';\nGRANT EXECUTE ON PROCEDURE mydb.myproc TO \'someuser\'@\'somehost\';\n\nThe object_type clause was added in MySQL 5.0.6. It should be specified\nas TABLE, FUNCTION, or PROCEDURE when the following object is a table,\na stored function, or a stored procedure.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/grant.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/grant.html'),(186,'MBRINTERSECTS',5,'MBRIntersects(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 intersect.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),(187,'BIT_OR',14,'Syntax:\nBIT_OR(expr)\n\nReturns the bitwise OR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(188,'YEARWEEK',28,'Syntax:\nYEARWEEK(date), YEARWEEK(date,mode)\n\nReturns year and week for a date. The mode argument works exactly like\nthe mode argument to WEEK(). The year in the result may be different\nfrom the year in the date argument for the first and the last week of\nthe year.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT YEARWEEK(\'1987-01-01\');\n        -> 198653\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(189,'NOT BETWEEN',17,'Syntax:\nexpr NOT BETWEEN min AND max\n\nThis is the same as NOT (expr BETWEEN min AND max).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(190,'IS NOT',17,'Syntax:\nIS NOT boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT 1 IS NOT UNKNOWN, 0 IS NOT UNKNOWN, NULL IS NOT UNKNOWN;\n        -> 1, 1, 0\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(191,'LOG10',4,'Syntax:\nLOG10(X)\n\nReturns the base-10 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT LOG10(2);\n        -> 0.30102999566398\nmysql> SELECT LOG10(100);\n        -> 2\nmysql> SELECT LOG10(-100);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(192,'SQRT',4,'Syntax:\nSQRT(X)\n\nReturns the square root of a non-negative number X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT SQRT(4);\n        -> 2\nmysql> SELECT SQRT(20);\n        -> 4.4721359549996\nmysql> SELECT SQRT(-16);\n        -> NULL        \n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(193,'DECIMAL',20,'DECIMAL[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nFor MySQL 5.0.3 and above:\n\nA packed \"exact\" fixed-point number. M is the total number of digits\n(the precision) and D is the number of digits after the decimal point\n(the scale). The decimal point and (for negative numbers) the \"-\" sign\nare not counted in M. If D is 0, values have no decimal point or\nfractional part. The maximum number of digits (M) for DECIMAL is 65 (64\nfrom 5.0.3 to 5.0.5). The maximum number of supported decimals (D) is\n30. If D is omitted, the default is 0. If M is omitted, the default is\n10.\n\nUNSIGNED, if specified, disallows negative values.\n\nAll basic calculations (+, -, *, /) with DECIMAL columns are done with\na precision of 65 digits.\n\nBefore MySQL 5.0.3:\n\nAn unpacked fixed-point number. Behaves like a CHAR column; \"unpacked\"\nmeans the number is stored as a string, using one character for each\ndigit of the value. M is the total number of digits and D is the number\nof digits after the decimal point. The decimal point and (for negative\nnumbers) the \"-\" sign are not counted in M, although space for them is\nreserved. If D is 0, values have no decimal point or fractional part.\nThe maximum range of DECIMAL values is the same as for DOUBLE, but the\nactual range for a given DECIMAL column may be constrained by the\nchoice of M and D. If D is omitted, the default is 0. If M is omitted,\nthe default is 10.\n\nUNSIGNED, if specified, disallows negative values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(194,'CREATE FUNCTION',34,'Syntax:\nCREATE [AGGREGATE] FUNCTION function_name RETURNS {STRING|INTEGER|REAL|DECIMAL}\n    SONAME shared_library_name\n\nA user-defined function (UDF) is a way to extend MySQL with a new\nfunction that works like a native (built-in) MySQL function such as\nABS() or CONCAT().\n\nfunction_name is the name that should be used in SQL statements to\ninvoke the function. The RETURNS clause indicates the type of the\nfunction\'s return value. As of MySQL 5.0.3, DECIMAL is a legal value\nafter RETURNS, but currently DECIMAL functions return string values and\nshould be written like STRING functions.\n\nshared_library_name is the basename of the shared object file that\ncontains the code that implements the function. The file must be\nlocated in a directory that is searched by your system\'s dynamic\nlinker.\n\nTo create a function, you must have the INSERT and privilege for the\nmysql database. This is necessary because CREATE FUNCTION adds a row to\nthe mysql.func system table that records the function\'s name, type, and\nshared library name. If you do not have this table, you should run the\nmysql_upgrade command to create it. See\nhttp://dev.mysql.com/doc/refman/5.0/en/mysql-upgrade.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-function.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/create-function.html'),(195,'GEOMETRYN',23,'GeometryN(gc,N)\n\nReturns the N-th geometry in the GeometryCollection value gc.\nGeometries are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/geometrycollection-property-functions.html\n\n','mysql> SET @gc = \'GeometryCollection(Point(1 1),LineString(2 2, 3 3))\';\nmysql> SELECT AsText(GeometryN(GeomFromText(@gc),1));\n+----------------------------------------+\n| AsText(GeometryN(GeomFromText(@gc),1)) |\n+----------------------------------------+\n| POINT(1 1)                             |\n+----------------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/geometrycollection-property-functions.html'),(196,'CREATE INDEX',36,'Syntax:\nCREATE [UNIQUE|FULLTEXT|SPATIAL] INDEX index_name\n    [index_type]\n    ON tbl_name (index_col_name,...)\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH}\n\nCREATE INDEX is mapped to an ALTER TABLE statement to create indexes.\nSee [HELP ALTER TABLE]. CREATE INDEX cannot be used to create a PRIMARY\nKEY; use ALTER TABLE instead. For more information about indexes, see\nhttp://dev.mysql.com/doc/refman/5.0/en/mysql-indexes.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-index.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/create-index.html'),(197,'ALTER DATABASE',36,'Syntax:\nALTER {DATABASE | SCHEMA} [db_name]\n    alter_specification ...\n\nalter_specification:\n    [DEFAULT] CHARACTER SET charset_name\n  | [DEFAULT] COLLATE collation_name\n\nALTER DATABASE enables you to change the overall characteristics of a\ndatabase. These characteristics are stored in the db.opt file in the\ndatabase directory. To use ALTER DATABASE, you need the ALTER privilege\non the database. ALTER SCHEMA is a synonym for ALTER DATABASE as of\nMySQL 5.0.2.\n\nThe CHARACTER SET clause changes the default database character set.\nThe COLLATE clause changes the default database collation.\nhttp://dev.mysql.com/doc/refman/5.0/en/charset.html, discusses\ncharacter set and collation names.\n\nThe database name can be omitted, in which case the statement applies\nto the default database.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/alter-database.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/alter-database.html'),(198,'<<',18,'Syntax:\n<<\n\nShifts a longlong (BIGINT) number to the left.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n','mysql> SELECT 1 << 2;\n        -> 4\n','http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),(199,'SHOW TABLE STATUS',25,'Syntax:\nSHOW TABLE STATUS [FROM db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of\ninformation about each table. You can also get this list using the\nmysqlshow --status db_name command. The LIKE clause, if present,\nindicates which table names to match. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-table-status.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-table-status.html'),(200,'MD5',10,'Syntax:\nMD5(str)\n\nCalculates an MD5 128-bit checksum for the string. The value is\nreturned as a binary string of 32 hex digits, or NULL if the argument\nwas NULL. The return value can, for example, be used as a hash key.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','mysql> SELECT MD5(\'testing\');\n        -> \'ae2b1fca515949e5d54fb22b8ed95575\'\n','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(201,'<',17,'Syntax:\n<\n\nLess than:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT 2 < 2;\n        -> 0\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(202,'UNIX_TIMESTAMP',28,'Syntax:\nUNIX_TIMESTAMP(), UNIX_TIMESTAMP(date)\n\nIf called with no argument, returns a Unix timestamp (seconds since\n\'1970-01-01 00:00:00\' UTC) as an unsigned integer. If UNIX_TIMESTAMP()\nis called with a date argument, it returns the value of the argument as\nseconds since \'1970-01-01 00:00:00\' UTC. date may be a DATE string, a\nDATETIME string, a TIMESTAMP, or a number in the format YYMMDD or\nYYYYMMDD. The server interprets date as a value in the current time\nzone and converts it to an internal value in UTC. Clients can set their\ntime zone as described in\nhttp://dev.mysql.com/doc/refman/5.0/en/time-zone-support.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT UNIX_TIMESTAMP();\n        -> 1196440210\nmysql> SELECT UNIX_TIMESTAMP(\'2007-11-30 10:30:19\');\n        -> 1196440219\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(203,'DAYOFMONTH',28,'Syntax:\nDAYOFMONTH(date)\n\nReturns the day of the month for date, in the range 1 to 31, or 0 for\ndates such as \'0000-00-00\' or \'2008-00-00\' that have a zero day part.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT DAYOFMONTH(\'1998-02-03\');\n        -> 3\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(204,'ASCII',33,'Syntax:\nASCII(str)\n\nReturns the numeric value of the leftmost character of the string str.\nReturns 0 if str is the empty string. Returns NULL if str is NULL.\nASCII() works for 8-bit characters.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT ASCII(\'2\');\n        -> 50\nmysql> SELECT ASCII(2);\n        -> 50\nmysql> SELECT ASCII(\'dx\');\n        -> 100\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(205,'DIV',4,'Syntax:\nDIV\n\nInteger division. Similar to FLOOR(), but is safe with BIGINT values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n','mysql> SELECT 5 DIV 2;\n        -> 2\n','http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),(206,'RENAME USER',8,'Syntax:\nRENAME USER old_user TO new_user\n    [, old_user TO new_user] ...\n\nThe RENAME USER statement renames existing MySQL accounts. To use it,\nyou must have the global CREATE USER privilege or the UPDATE privilege\nfor the mysql database. An error occurs if any old account does not\nexist or any new account exists. Each account is named using the same\nformat as for the GRANT statement; for example, \'jeffrey\'@\'localhost\'.\nIf you specify only the username part of the account name, a hostname\npart of \'%\' is used. For additional information about specifying\naccount names, see [HELP GRANT].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/rename-user.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/rename-user.html'),(207,'SHOW SLAVE STATUS',25,'Syntax:\nSHOW SLAVE STATUS\n\nThis statement provides status information on essential parameters of\nthe slave threads. If you issue this statement using the mysql client,\nyou can use a \\G statement terminator rather than a semicolon to obtain\na more readable vertical layout:\n\nmysql> SHOW SLAVE STATUS\\G\n*************************** 1. row ***************************\n       Slave_IO_State: Waiting for master to send event\n          Master_Host: localhost\n          Master_User: root\n          Master_Port: 3306\n        Connect_Retry: 3\n      Master_Log_File: gbichot-bin.005\n  Read_Master_Log_Pos: 79\n       Relay_Log_File: gbichot-relay-bin.005\n        Relay_Log_Pos: 548\nRelay_Master_Log_File: gbichot-bin.005\n     Slave_IO_Running: Yes\n    Slave_SQL_Running: Yes\n      Replicate_Do_DB:\n  Replicate_Ignore_DB:\n           Last_Errno: 0\n           Last_Error:\n         Skip_Counter: 0\n  Exec_Master_Log_Pos: 79\n      Relay_Log_Space: 552\n      Until_Condition: None\n       Until_Log_File:\n        Until_Log_Pos: 0\n   Master_SSL_Allowed: No\n   Master_SSL_CA_File:\n   Master_SSL_CA_Path:\n      Master_SSL_Cert:\n    Master_SSL_Cipher:\n       Master_SSL_Key:\nSeconds_Behind_Master: 8\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-slave-status.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-slave-status.html'),(208,'GEOMETRY',30,'MySQL provides a standard way of creating spatial columns for geometry\ntypes, for example, with CREATE TABLE or ALTER TABLE. Currently,\nspatial columns are supported for MyISAM, InnoDB, NDB, BDB, and ARCHIVE\ntables. (Support for storage engines other than MyISAM was added in\nMySQL 5.0.16.) See also the annotations about spatial indexes under\n[HELP SPATIAL].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/creating-spatial-columns.html\n\n','CREATE TABLE geom (g GEOMETRY);\n','http://dev.mysql.com/doc/refman/5.0/en/creating-spatial-columns.html'),(209,'NUMPOINTS',11,'NumPoints(ls)\n\nReturns the number of Point objects in the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html\n\n','mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT NumPoints(GeomFromText(@ls));\n+------------------------------+\n| NumPoints(GeomFromText(@ls)) |\n+------------------------------+\n|                            3 |\n+------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html'),(210,'&',18,'Syntax:\n&\n\nBitwise AND:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n','mysql> SELECT 29 & 15;\n        -> 13\n','http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),(211,'LOCALTIMESTAMP',28,'Syntax:\nLOCALTIMESTAMP, LOCALTIMESTAMP()\n\nLOCALTIMESTAMP and LOCALTIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(212,'CONVERT',33,'Syntax:\nCONVERT(expr,type), CONVERT(expr USING transcoding_name)\n\nThe CONVERT() and CAST() functions take a value of one type and produce\na value of another type.\n\nThe type can be one of the following values:\n\no BINARY[(N)]\n\no CHAR[(N)]\n\no DATE\n\no DATETIME\n\no DECIMAL\n\no SIGNED [INTEGER]\n\no TIME\n\no UNSIGNED [INTEGER]\n\nBINARY produces a string with the BINARY data type. See\nhttp://dev.mysql.com/doc/refman/5.0/en/binary-varbinary.html for a\ndescription of how this affects comparisons. If the optional length N\nis given, BINARY(N) causes the cast to use no more than N bytes of the\nargument. As of MySQL 5.0.17, values shorter than N bytes are padded\nwith 0x00 bytes to a length of N.\n\nCHAR(N) causes the cast to use no more than N characters of the\nargument.\n\nThe DECIMAL type is available as of MySQL 5.0.8.\n\nCAST() and CONVERT(... USING ...) are standard SQL syntax. The\nnon-USING form of CONVERT() is ODBC syntax.\n\nCONVERT() with USING is used to convert data between different\ncharacter sets. In MySQL, transcoding names are the same as the\ncorresponding character set names. For example, this statement converts\nthe string \'abc\' in the default character set to the corresponding\nstring in the utf8 character set:\n\nSELECT CONVERT(\'abc\' USING utf8);\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/cast-functions.html\n\n','SELECT enum_col FROM tbl_name ORDER BY CAST(enum_col AS CHAR);\n','http://dev.mysql.com/doc/refman/5.0/en/cast-functions.html'),(213,'ADDDATE',28,'Syntax:\nADDDATE(date,INTERVAL expr unit), ADDDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, ADDDATE()\nis a synonym for DATE_ADD(). The related function SUBDATE() is a\nsynonym for DATE_SUB(). For information on the INTERVAL unit argument,\nsee the discussion for DATE_ADD().\n\nmysql> SELECT DATE_ADD(\'1998-01-02\', INTERVAL 31 DAY);\n        -> \'1998-02-02\'\nmysql> SELECT ADDDATE(\'1998-01-02\', INTERVAL 31 DAY);\n        -> \'1998-02-02\'\n\nWhen invoked with the days form of the second argument, MySQL treats it\nas an integer number of days to be added to expr.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT ADDDATE(\'1998-01-02\', 31);\n        -> \'1998-02-02\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(214,'REPEAT LOOP',35,'Syntax:\n[begin_label:] REPEAT\n    statement_list\nUNTIL search_condition\nEND REPEAT [end_label]\n\nThe statement list within a REPEAT statement is repeated until the\nsearch_condition is true. Thus, a REPEAT always enters the loop at\nleast once. statement_list consists of one or more statements.\n\nA REPEAT statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/repeat-statement.html\n\n','mysql> delimiter //\n\nmysql> CREATE PROCEDURE dorepeat(p1 INT)\n    -> BEGIN\n    ->   SET @x = 0;\n    ->   REPEAT SET @x = @x + 1; UNTIL @x > p1 END REPEAT;\n    -> END\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL dorepeat(1000)//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n+------+\n| @x   |\n+------+\n| 1001 |\n+------+\n1 row in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.0/en/repeat-statement.html'),(215,'SMALLINT',20,'SMALLINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA small integer. The signed range is -32768 to 32767. The unsigned\nrange is 0 to 65535.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(216,'DOUBLE PRECISION',20,'DOUBLE PRECISION[(M,D)] [UNSIGNED] [ZEROFILL], REAL[(M,D)] [UNSIGNED]\n[ZEROFILL]\n\nThese types are synonyms for DOUBLE. Exception: If the REAL_AS_FLOAT\nSQL mode is enabled, REAL is a synonym for FLOAT rather than DOUBLE.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(217,'ORD',33,'Syntax:\nORD(str)\n\nIf the leftmost character of the string str is a multi-byte character,\nreturns the code for that character, calculated from the numeric values\nof its constituent bytes using this formula:\n\n  (1st byte code)\n+ (2nd byte code x 256)\n+ (3rd byte code x 2562) ...\n\nIf the leftmost character is not a multi-byte character, ORD() returns\nthe same value as the ASCII() function.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT ORD(\'2\');\n        -> 50\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(218,'ENVELOPE',32,'Envelope(g)\n\nReturns the Minimum Bounding Rectangle (MBR) for the geometry value g.\nThe result is returned as a Polygon value.\n\nThe polygon is defined by the corner points of the bounding box:\n\nPOLYGON((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n','mysql> SELECT AsText(Envelope(GeomFromText(\'LineString(1 1,2 2)\')));\n+-------------------------------------------------------+\n| AsText(Envelope(GeomFromText(\'LineString(1 1,2 2)\'))) |\n+-------------------------------------------------------+\n| POLYGON((1 1,2 1,2 2,1 2,1 1))                        |\n+-------------------------------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),(219,'DEALLOCATE PREPARE',25,'Syntax:\n{DEALLOCATE | DROP} PREPARE stmt_name\n\nTo deallocate a prepared statement, use the DEALLOCATE PREPARE\nstatement. Attempting to execute a prepared statement after\ndeallocating it results in an error.\n\nIf you terminate a client session without deallocating a previously\nprepared statement, the server deallocates it automatically.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/sqlps.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/sqlps.html'),(220,'IS_FREE_LOCK',13,'Syntax:\nIS_FREE_LOCK(str)\n\nChecks whether the lock named str is free to use (that is, not locked).\nReturns 1 if the lock is free (no one is using the lock), 0 if the lock\nis in use, and NULL if an error occurs (such as an incorrect argument).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),(221,'TOUCHES',26,'Touches(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially touches g2. Two\ngeometries spatially touch if the interiors of the geometries do not\nintersect, but the boundary of one of the geometries intersects either\nthe boundary or the interior of the other.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),(222,'INET_ATON',13,'Syntax:\nINET_ATON(expr)\n\nGiven the dotted-quad representation of a network address as a string,\nreturns an integer that represents the numeric value of the address.\nAddresses may be 4- or 8-byte addresses.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n','mysql> SELECT INET_ATON(\'209.207.224.40\');\n        -> 3520061480\n','http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),(223,'UNCOMPRESS',10,'Syntax:\nUNCOMPRESS(string_to_uncompress)\n\nUncompresses a string compressed by the COMPRESS() function. If the\nargument is not a compressed value, the result is NULL. This function\nrequires MySQL to have been compiled with a compression library such as\nzlib. Otherwise, the return value is always NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','mysql> SELECT UNCOMPRESS(COMPRESS(\'any string\'));\n        -> \'any string\'\nmysql> SELECT UNCOMPRESS(\'any string\');\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(224,'AUTO_INCREMENT',20,'The AUTO_INCREMENT attribute can be used to generate a unique identity\nfor new rows:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/example-auto-increment.html\n\n','CREATE TABLE animals (\n     id MEDIUMINT NOT NULL AUTO_INCREMENT,\n     name CHAR(30) NOT NULL,\n     PRIMARY KEY (id)\n );\n\nINSERT INTO animals (name) VALUES \n    (\'dog\'),(\'cat\'),(\'penguin\'),\n    (\'lax\'),(\'whale\'),(\'ostrich\');\n\nSELECT * FROM animals;\n','http://dev.mysql.com/doc/refman/5.0/en/example-auto-increment.html'),(225,'ISSIMPLE',32,'IsSimple(g)\n\nCurrently, this function is a placeholder and should not be used. If\nimplemented, its behavior will be as described in the next paragraph.\n\nReturns 1 if the geometry value g has no anomalous geometric points,\nsuch as self-intersection or self-tangency. IsSimple() returns 0 if the\nargument is not simple, and -1 if it is NULL.\n\nThe description of each instantiable geometric class given earlier in\nthe chapter includes the specific conditions that cause an instance of\nthat class to be classified as not simple. (See [HELP Geometry\nhierarchy].)\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),(226,'- BINARY',4,'Syntax:\n-\n\nSubtraction:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n','mysql> SELECT 3-5;\n        -> -2\n','http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),(227,'GEOMCOLLFROMTEXT',3,'GeomCollFromText(wkt[,srid]), GeometryCollectionFromText(wkt[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),(228,'WKT DEFINITION',3,'The Well-Known Text (WKT) representation of Geometry is designed to\nexchange geometry data in ASCII form.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-format.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-format.html'),(229,'CURRENT_TIME',28,'Syntax:\nCURRENT_TIME, CURRENT_TIME()\n\nCURRENT_TIME and CURRENT_TIME() are synonyms for CURTIME().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(230,'REVOKE',8,'Syntax:\nREVOKE priv_type [(column_list)] [, priv_type [(column_list)]] ...\n    ON [object_type] {tbl_name | * | *.* | db_name.*}\n    FROM user [, user] ...\n\nREVOKE ALL PRIVILEGES, GRANT OPTION FROM user [, user] ...\n\nThe REVOKE statement enables system administrators to revoke privileges\nfrom MySQL accounts. To use REVOKE, you must have the GRANT OPTION\nprivilege, and you must have the privileges that you are revoking.\n\nEach account is named using the same format as for the GRANT statement;\nfor example, \'jeffrey\'@\'localhost\'. If you specify only the username\npart of the account name, a hostname part of \'%\' is used. For\nadditional information about specifying account names, see [HELP\nGRANT].\n\nFor details on the levels at which privileges exist, the allowable\npriv_type values, and the syntax for specifying users and passwords,\nsee [HELP GRANT]\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/revoke.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/revoke.html'),(231,'LAST_INSERT_ID',15,'Syntax:\nLAST_INSERT_ID(), LAST_INSERT_ID(expr)\n\nLAST_INSERT_ID() (with no argument) returns the first automatically\ngenerated value that was set for an AUTO_INCREMENT column by the most\nrecently executed INSERT statement to affect such a column. For\nexample, after inserting a row that generates an AUTO_INCREMENT value,\nyou can get the value like this:\n\nmysql> SELECT LAST_INSERT_ID();\n        -> 195\n\nThe currently executing statement does not affect the value of\nLAST_INSERT_ID(). Suppose that you generate an AUTO_INCREMENT value\nwith one statement, and then refer to LAST_INSERT_ID() in a\nmultiple-row INSERT statement that inserts rows into a table with its\nown AUTO_INCREMENT column. The value of LAST_INSERT_ID() will remain\nstable in the second statement; its value for the second and later rows\nis not affected by the earlier row insertions. (However, if you mix\nreferences to LAST_INSERT_ID() and LAST_INSERT_ID(expr), the effect is\nundefined.)\n\nIf the previous statement returned an error, the value of\nLAST_INSERT_ID() is undefined. For transactional tables, if the\nstatement is rolled back due to an error, the value of LAST_INSERT_ID()\nis left undefined. For manual ROLLBACK, the value of LAST_INSERT_ID()\nis not restored to that before the transaction; it remains as it was at\nthe point of the ROLLBACK.\n\nWithin the body of a stored routine (procedure or function) or a\ntrigger, the value of LAST_INSERT_ID() changes the same way as for\nstatements executed outside the body of these kinds of objects. The\neffect of a stored routine or trigger upon the value of\nLAST_INSERT_ID() that is seen by following statements depends on the\nkind of routine:\n\no If a stored procedure executes statements that change the value of\n  LAST_INSERT_ID(), the changed value will be seen by statements that\n  follow the procedure call.\n\no For stored functions and triggers that change the value, the value is\n  restored when the function or trigger ends, so following statements\n  will not see a changed value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(232,'LAST_DAY',28,'Syntax:\nLAST_DAY(date)\n\nTakes a date or datetime value and returns the corresponding value for\nthe last day of the month. Returns NULL if the argument is invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT LAST_DAY(\'2003-02-05\');\n        -> \'2003-02-28\'\nmysql> SELECT LAST_DAY(\'2004-02-05\');\n        -> \'2004-02-29\'\nmysql> SELECT LAST_DAY(\'2004-01-01 01:01:01\');\n        -> \'2004-01-31\'\nmysql> SELECT LAST_DAY(\'2003-03-32\');\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(233,'MEDIUMINT',20,'MEDIUMINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA medium-sized integer. The signed range is -8388608 to 8388607. The\nunsigned range is 0 to 16777215.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(234,'FLOOR',4,'Syntax:\nFLOOR(X)\n\nReturns the largest integer value not greater than X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT FLOOR(1.23);\n        -> 1\nmysql> SELECT FLOOR(-1.23);\n        -> -2\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(235,'RTRIM',33,'Syntax:\nRTRIM(str)\n\nReturns the string str with trailing space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT RTRIM(\'barbar   \');\n        -> \'barbar\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(236,'DEGREES',4,'Syntax:\nDEGREES(X)\n\nReturns the argument X, converted from radians to degrees.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT DEGREES(PI());\n        -> 180\nmysql> SELECT DEGREES(PI() / 2);\n        -> 90\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(237,'EXPLAIN',25,'Syntax:\nEXPLAIN tbl_name\n\nOr:\n\nEXPLAIN [EXTENDED] SELECT select_options\n\nThe EXPLAIN statement can be used either as a synonym for DESCRIBE or\nas a way to obtain information about how MySQL executes a SELECT\nstatement:\n\no EXPLAIN tbl_name is synonymous with DESCRIBE tbl_name or SHOW COLUMNS\n  FROM tbl_name.\n\no When you precede a SELECT statement with the keyword EXPLAIN, MySQL\n  displays information from the optimizer about the query execution\n  plan. That is, MySQL explains how it would process the SELECT,\n  including information about how tables are joined and in which order.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/explain.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/explain.html'),(238,'VARCHAR',20,'[NATIONAL] VARCHAR(M) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA variable-length string. M represents the maximum column length in\ncharacters. In MySQL 5.0, the range of M is 0 to 255 before MySQL\n5.0.3, and 0 to 65,535 in MySQL 5.0.3 and later. The effective maximum\nlength of a VARCHAR in MySQL 5.0.3 and later is subject to the maximum\nrow size (65,535 bytes, which is shared among all columns) and the\ncharacter set used. For example, utf8 characters can require up to\nthree bytes per character, so a VARCHAR column that uses the utf8\ncharacter set can be declared to be a maximum of 21,844 characters.\n\nMySQL stores VARCHAR values as a one-byte or two-byte length prefix\nplus data. The length prefix indicates the number of bytes in the\nvalue. A VARCHAR column uses one length byte if values require no more\nthan 255 bytes, two length bytes if values may require more than 255\nbytes.\n\n*Note*: Before 5.0.3, trailing spaces were removed when VARCHAR values\nwere stored, which differs from the standard SQL specification.\n\nPrior to MySQL 5.0.3, a VARCHAR column with a length specification\ngreater than 255 is converted to the smallest TEXT type that can hold\nvalues of the given length. For example, VARCHAR(500) is converted to\nTEXT, and VARCHAR(200000) is converted to MEDIUMTEXT. However, this\nconversion affects trailing-space removal.\n\nVARCHAR is shorthand for CHARACTER VARYING. NATIONAL VARCHAR is the\nstandard SQL way to define that a VARCHAR column should use some\npredefined character set. MySQL 4.1 and up uses utf8 as this predefined\ncharacter set.\nhttp://dev.mysql.com/doc/refman/5.0/en/charset-national.html. NVARCHAR\nis shorthand for NATIONAL VARCHAR.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(239,'UNHEX',33,'Syntax:\n\nUNHEX(str)\n\nPerforms the inverse operation of HEX(str). That is, it interprets each\npair of hexadecimal digits in the argument as a number and converts it\nto the character represented by the number. The resulting characters\nare returned as a binary string.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT UNHEX(\'4D7953514C\');\n        -> \'MySQL\'\nmysql> SELECT 0x4D7953514C;\n        -> \'MySQL\'\nmysql> SELECT UNHEX(HEX(\'string\'));\n        -> \'string\'\nmysql> SELECT HEX(UNHEX(\'1267\'));\n        -> \'1267\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(240,'- UNARY',4,'Syntax:\n-\n\nUnary minus. This operator changes the sign of the argument.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n','mysql> SELECT - 2;\n        -> -2\n','http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),(241,'SELECT INTO',35,'Syntax:\nSELECT col_name[,...] INTO var_name[,...] table_expr\n\nThis SELECT syntax stores selected columns directly into variables.\nTherefore, only a single row may be retrieved.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/select-into-statement.html\n\n','SELECT id,data INTO x,y FROM test.t1 LIMIT 1;\n','http://dev.mysql.com/doc/refman/5.0/en/select-into-statement.html'),(242,'STD',14,'Syntax:\nSTD(expr)\n\nReturns the population standard deviation of expr. This is an extension\nto standard SQL. As of MySQL 5.0.3, the standard SQL function\nSTDDEV_POP() can be used instead.\n\nThis function returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(243,'COS',4,'Syntax:\nCOS(X)\n\nReturns the cosine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT COS(PI());\n        -> -1\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(244,'DATE FUNCTION',28,'Syntax:\nDATE(expr)\n\nExtracts the date part of the date or datetime expression expr.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT DATE(\'2003-12-31 01:02:03\');\n        -> \'2003-12-31\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(245,'DROP TRIGGER',21,'Syntax:\nDROP TRIGGER [IF EXISTS] [schema_name.]trigger_name\n\nThis statement drops a trigger. The schema (database) name is optional.\nIf the schema is omitted, the trigger is dropped from the default\nschema. DROP TRIGGER was added in MySQL 5.0.2. Its use requires the\nSUPER privilege.\n\nUse IF EXISTS to prevent an error from occurring for a trigger that\ndoes not exist. A NOTE is generated for a non-existent trigger when\nusing IF EXISTS. See [HELP SHOW WARNINGS]. The IF EXISTS clause was\nadded in MySQL 5.0.32.\n\nTriggers for a table are also dropped if you drop the table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-trigger.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/drop-trigger.html'),(246,'RESET MASTER',25,'Syntax:\nRESET MASTER\n\nDeletes all binary logs listed in the index file, resets the binary log\nindex file to be empty, and creates a new binary log file.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/reset-master.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/reset-master.html'),(247,'TAN',4,'Syntax:\nTAN(X)\n\nReturns the tangent of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT TAN(PI());\n        -> -1.2246063538224e-16\nmysql> SELECT TAN(PI()+1);\n        -> 1.5574077246549\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(248,'PI',4,'Syntax:\nPI()\n\nReturns the value of π (pi). The default number of decimal places\ndisplayed is seven, but MySQL uses the full double-precision value\ninternally.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT PI();\n        -> 3.141593\nmysql> SELECT PI()+0.000000000000000000;\n        -> 3.141592653589793116\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(249,'WEEKOFYEAR',28,'Syntax:\nWEEKOFYEAR(date)\n\nReturns the calendar week of the date as a number in the range from 1\nto 53. WEEKOFYEAR() is a compatibility function that is equivalent to\nWEEK(date,3).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT WEEKOFYEAR(\'1998-02-20\');\n        -> 8\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(250,'/',4,'Syntax:\n/\n\nDivision:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n','mysql> SELECT 3/5;\n        -> 0.60\n','http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),(251,'STDDEV_SAMP',14,'Syntax:\nSTDDEV_SAMP(expr)\n\nReturns the sample standard deviation of expr (the square root of\nVAR_SAMP(). This function was added in MySQL 5.0.3.\n\nSTDDEV_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(252,'SCHEMA',15,'Syntax:\nSCHEMA()\n\nThis function is a synonym for DATABASE(). It was added in MySQL 5.0.2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(253,'MLINEFROMWKB',29,'MLineFromWKB(wkb[,srid]), MultiLineStringFromWKB(wkb[,srid])\n\nConstructs a MULTILINESTRING value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),(254,'LOG2',4,'Syntax:\nLOG2(X)\n\nReturns the base-2 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT LOG2(65536);\n        -> 16\nmysql> SELECT LOG2(-100);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(255,'SUBTIME',28,'Syntax:\nSUBTIME(expr1,expr2)\n\nSUBTIME() returns expr1 - expr2 expressed as a value in the same format\nas expr1. expr1 is a time or datetime expression, and expr2 is a time\nexpression.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT SUBTIME(\'1997-12-31 23:59:59.999999\',\'1 1:1:1.000002\');\n        -> \'1997-12-30 22:58:58.999997\'\nmysql> SELECT SUBTIME(\'01:00:00.999999\', \'02:00:00.999998\');\n        -> \'-00:59:59.999999\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(256,'UNCOMPRESSED_LENGTH',10,'Syntax:\nUNCOMPRESSED_LENGTH(compressed_string)\n\nReturns the length that the compressed string had before being\ncompressed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','mysql> SELECT UNCOMPRESSED_LENGTH(COMPRESS(REPEAT(\'a\',30)));\n        -> 30\n','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(257,'DROP TABLE',36,'Syntax:\nDROP [TEMPORARY] TABLE [IF EXISTS]\n    tbl_name [, tbl_name] ...\n    [RESTRICT | CASCADE]\n\nDROP TABLE removes one or more tables. You must have the DROP privilege\nfor each table. All table data and the table definition are removed, so\nbe careful with this statement! If any of the tables named in the\nargument list do not exist, MySQL returns an error indicating by name\nwhich non-existing tables it was unable to drop, but it also drops all\nof the tables in the list that do exist.\n\n*Important*: When a table is dropped, user privileges on the table are\nnot automatically dropped. See [HELP GRANT].\n\nUse IF EXISTS to prevent an error from occurring for tables that do not\nexist. A NOTE is generated for each non-existent table when using IF\nEXISTS. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE are allowed to make porting easier. In MySQL 5.0,\nthey do nothing.\n\n*Note*: DROP TABLE automatically commits the current active\ntransaction, unless you use the TEMPORARY keyword.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-table.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/drop-table.html'),(258,'POW',4,'Syntax:\nPOW(X,Y)\n\nReturns the value of X raised to the power of Y.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT POW(2,2);\n        -> 4\nmysql> SELECT POW(2,-2);\n        -> 0.25\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(259,'SHOW CREATE TABLE',25,'Syntax:\nSHOW CREATE TABLE tbl_name\n\nShows the CREATE TABLE statement that creates the given table. As of\nMySQL 5.0.1, this statement also works with views.\nSHOW CREATE TABLE quotes table and column names according to the value\nof the SQL_QUOTE_SHOW_CREATE option. See [HELP SET].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-create-table.html\n\n','mysql> SHOW CREATE TABLE t\\G\n*************************** 1. row ***************************\n       Table: t\nCreate Table: CREATE TABLE t (\n  id INT(11) default NULL auto_increment,\n  s char(60) default NULL,\n  PRIMARY KEY (id)\n) ENGINE=MyISAM\n','http://dev.mysql.com/doc/refman/5.0/en/show-create-table.html'),(260,'DUAL',25,'You are allowed to specify DUAL as a dummy table name in situations\nwhere no tables are referenced:\n\nmysql> SELECT 1 + 1 FROM DUAL;\n        -> 2\n\nDUAL is purely for the convenience of people who require that all\nSELECT statements should have FROM and possibly other clauses. MySQL\nmay ignore the clauses. MySQL does not require FROM DUAL if no tables\nare referenced.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/select.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/select.html'),(261,'INSTR',33,'Syntax:\nINSTR(str,substr)\n\nReturns the position of the first occurrence of substring substr in\nstring str. This is the same as the two-argument form of LOCATE(),\nexcept that the order of the arguments is reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT INSTR(\'foobarbar\', \'bar\');\n        -> 4\nmysql> SELECT INSTR(\'xbar\', \'foobar\');\n        -> 0\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(262,'NOW',28,'Syntax:\nNOW()\n\nReturns the current date and time as a value in \'YYYY-MM-DD HH:MM:SS\'\nor YYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is\nused in a string or numeric context. The value is expressed in the\ncurrent time zone.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT NOW();\n        -> \'2007-12-15 23:50:26\'\nmysql> SELECT NOW() + 0;\n        -> 20071215235026.000000\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(263,'SHOW ENGINES',25,'Syntax:\nSHOW [STORAGE] ENGINES\n\nSHOW ENGINES displays status information about the server\'s storage\nengines. This is particularly useful for checking whether a storage\nengine is supported, or to see what the default engine is. SHOW TABLE\nTYPES is a deprecated synonym.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-engines.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-engines.html'),(264,'SHOW MUTEX STATUS',25,'Syntax:\nSHOW MUTEX STATUS\n\nSHOW MUTEX STATUS displays InnoDB mutex statistics. From MySQL 5.0.3 to\n5.0.32, the statement displays the following output fields:\n\no Mutex\n\n  The mutex name. The name indicates the mutex purpose. For example,\n  the log_sys mutex is used by the InnoDB logging subsystem and\n  indicates how intensive logging activity is. The buf_pool mutex\n  protects the InnoDB buffer pool.\n\no Module\n\n  The source file where the mutex is implemented.\n\no Count indicates how many times the mutex was requested.\n\no Spin_waits indicates how many times the spinlock had to run.\n\no Spin_rounds indicates the number of spinlock rounds. (spin_rounds\n  divided by spin_waits provides the average round count.)\n\no OS_waits indicates the number of operating system waits. This occurs\n  when the spinlock did not work (the mutex was not locked during the\n  spinlock and it was necessary to yield to the operating system and\n  wait).\n\no OS_yields indicates the number of times that a thread trying to lock\n  a mutex gave up its timeslice and yielded to the operating system (on\n  the presumption that allowing other threads to run will free the\n  mutex so that it can be locked).\n\no OS_waits_time indicates the amount of time (in ms) spent in operating\n  system waits, if the timed_mutexes system variable is 1 (ON). If\n  timed_mutexes is 0 (OFF), timing is disabled, so OS_waits_time is 0.\n  timed_mutexes is off by default.\n\nFrom MySQL 5.0.33 on, the statement uses the same output format as that\njust described, but only if UNIV_DEBUG was defined at MySQL compilation\ntime (for example, in include/univ.h in the InnoDB part of the MySQL\nsource tree). If UNIV_DEBUG was not defined, the statement displays the\nfollowing fields. In the latter case (without UNIV_DEBUG), the\ninformation on which the statement output is based is insufficient to\ndistinguish regular mutexes and mutexes that protect rw-locks (which\nallow multiple readers or a single writer). Consequently, the output\nmay appear to contain multiple rows for the same mutex.\n\no File\n\n  The source file where the mutex is implemented.\n\no Line\n\n  The line number in the source file where the mutex is created. This\n  may change depending on your version of MySQL.\n\no OS_waits\n\n  Same as OS_waits_time.\n\nInformation from this statement can be used to diagnose system\nproblems. For example, large values of spin_waits and spin_rounds may\nindicate scalability problems.\n\nSHOW MUTEX STATUS was added in MySQL 5.0.3. In MySQL 5.1, SHOW MUTEX\nSTATUS is renamed to SHOW ENGINE INNODB MUTEX. The latter statement\ndisplays similar information but in a somewhat different output format.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-mutex-status.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-mutex-status.html'),(265,'>=',17,'Syntax:\n>=\n\nGreater than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT 2 >= 2;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(266,'EXP',4,'Syntax:\nEXP(X)\n\nReturns the value of e (the base of natural logarithms) raised to the\npower of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT EXP(2);\n        -> 7.3890560989307\nmysql> SELECT EXP(-2);\n        -> 0.13533528323661\nmysql> SELECT EXP(0);\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(267,'LONGBLOB',20,'LONGBLOB\n\nA BLOB column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\nbytes. The effective maximum length of LONGBLOB columns depends on the\nconfigured maximum packet size in the client/server protocol and\navailable memory. Each LONGBLOB value is stored using a four-byte\nlength prefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(268,'POINTN',11,'PointN(ls,N)\n\nReturns the N-th Point in the Linestring value ls. Points are numbered\nbeginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html\n\n','mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT AsText(PointN(GeomFromText(@ls),2));\n+-------------------------------------+\n| AsText(PointN(GeomFromText(@ls),2)) |\n+-------------------------------------+\n| POINT(2 2)                          |\n+-------------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html'),(269,'YEAR DATA TYPE',20,'YEAR[(2|4)]\n\nA year in two-digit or four-digit format. The default is four-digit\nformat. In four-digit format, the allowable values are 1901 to 2155,\nand 0000. In two-digit format, the allowable values are 70 to 69,\nrepresenting years from 1970 to 2069. MySQL displays YEAR values in\nYYYY format, but allows you to assign values to YEAR columns using\neither strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html'),(270,'SUM',14,'Syntax:\nSUM([DISTINCT] expr)\n\nReturns the sum of expr. If the return set has no rows, SUM() returns\nNULL. The DISTINCT keyword can be used in MySQL 5.0 to sum only the\ndistinct values of expr.\n\nSUM() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(271,'OCT',33,'Syntax:\nOCT(N)\n\nReturns a string representation of the octal value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,8). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT OCT(12);\n        -> \'14\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(272,'SYSDATE',28,'Syntax:\nSYSDATE()\n\nReturns the current date and time as a value in \'YYYY-MM-DD HH:MM:SS\'\nor YYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is\nused in a string or numeric context.\n\nAs of MySQL 5.0.13, SYSDATE() returns the time at which it executes.\nThis differs from the behavior for NOW(), which returns a constant time\nthat indicates the time at which the statement began to execute.\n(Within a stored routine or trigger, NOW() returns the time at which\nthe routine or triggering statement began to execute.)\n\nmysql> SELECT NOW(), SLEEP(2), NOW();\n+---------------------+----------+---------------------+\n| NOW()               | SLEEP(2) | NOW()               |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:36 |        0 | 2006-04-12 13:47:36 |\n+---------------------+----------+---------------------+\n\nmysql> SELECT SYSDATE(), SLEEP(2), SYSDATE();\n+---------------------+----------+---------------------+\n| SYSDATE()           | SLEEP(2) | SYSDATE()           |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:44 |        0 | 2006-04-12 13:47:46 |\n+---------------------+----------+---------------------+\n\nIn addition, the SET TIMESTAMP statement affects the value returned by\nNOW() but not by SYSDATE(). This means that timestamp settings in the\nbinary log have no effect on invocations of SYSDATE().\n\nBecause SYSDATE() can return different values even within the same\nstatement, and is not affected by SET TIMESTAMP, it is\nnon-deterministic and therefore unsafe for replication. If that is a\nproblem, you can start the server with the --sysdate-is-now option to\ncause SYSDATE() to be an alias for NOW(). The non-deterministic nature\nof SYSDATE() also means that indexes cannot be used for evaluating\nexpressions that refer to it.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(273,'ASBINARY',29,'AsBinary(g)\n\nConverts a value in internal geometry format to its WKB representation\nand returns the binary result.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-to-convert-geometries-between-formats.html\n\n','SELECT AsBinary(g) FROM geom;\n','http://dev.mysql.com/doc/refman/5.0/en/functions-to-convert-geometries-between-formats.html'),(274,'REPEAT FUNCTION',33,'Syntax:\nREPEAT(str,count)\n\nReturns a string consisting of the string str repeated count times. If\ncount is less than 1, returns an empty string. Returns NULL if str or\ncount are NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT REPEAT(\'MySQL\', 3);\n        -> \'MySQLMySQLMySQL\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(275,'SHOW TABLES',25,'Syntax:\nSHOW [FULL] TABLES [FROM db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nBefore MySQL 5.0.1, the output from SHOW TABLES contains a single\ncolumn of table names. Beginning with MySQL 5.0.1, this statement also\nlists any views in the database. As of MySQL 5.0.2, the FULL modifier\nis supported such that SHOW FULL TABLES displays a second output\ncolumn. Values for the second column are BASE TABLE for a table and\nVIEW for a view.\n\n*Note*: If you have no privileges for a table, the table does not show\nup in the output from SHOW TABLES or mysqlshow db_name.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-tables.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-tables.html'),(276,'MAKEDATE',28,'Syntax:\nMAKEDATE(year,dayofyear)\n\nReturns a date, given year and day-of-year values. dayofyear must be\ngreater than 0 or the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT MAKEDATE(2001,31), MAKEDATE(2001,32);\n        -> \'2001-01-31\', \'2001-02-01\'\nmysql> SELECT MAKEDATE(2001,365), MAKEDATE(2004,365);\n        -> \'2001-12-31\', \'2004-12-30\'\nmysql> SELECT MAKEDATE(2001,0);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(277,'BINARY OPERATOR',33,'Syntax:\nBINARY\n\nThe BINARY operator casts the string following it to a binary string.\nThis is an easy way to force a column comparison to be done byte by\nbyte rather than character by character. This causes the comparison to\nbe case sensitive even if the column isn\'t defined as BINARY or BLOB.\nBINARY also causes trailing spaces to be significant.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/cast-functions.html\n\n','mysql> SELECT \'a\' = \'A\';\n        -> 1\nmysql> SELECT BINARY \'a\' = \'A\';\n        -> 0\nmysql> SELECT \'a\' = \'a \';\n        -> 1\nmysql> SELECT BINARY \'a\' = \'a \';\n        -> 0\n','http://dev.mysql.com/doc/refman/5.0/en/cast-functions.html'),(278,'MBROVERLAPS',5,'MBROverlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 overlap. The term spatially overlaps is\nused if two geometries intersect and their intersection results in a\ngeometry of the same dimension but not equal to either of the given\ngeometries.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),(279,'SOUNDEX',33,'Syntax:\nSOUNDEX(str)\n\nReturns a soundex string from str. Two strings that sound almost the\nsame should have identical soundex strings. A standard soundex string\nis four characters long, but the SOUNDEX() function returns an\narbitrarily long string. You can use SUBSTRING() on the result to get a\nstandard soundex string. All non-alphabetic characters in str are\nignored. All international alphabetic characters outside the A-Z range\nare treated as vowels.\n\n*Important*: When using SOUNDEX(), you should be aware of the following\nlimitations:\n\no This function, as currently implemented, is intended to work well\n  with strings that are in the English language only. Strings in other\n  languages may not produce reliable results.\n\no This function is not guaranteed to provide consistent results with\n  strings that use multi-byte character sets, including utf-8.\n\n  We hope to remove these limitations in a future release. See\n  Bug#22638 (http://bugs.mysql.com/22638) for more information.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT SOUNDEX(\'Hello\');\n        -> \'H400\'\nmysql> SELECT SOUNDEX(\'Quadratically\');\n        -> \'Q36324\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(280,'MBRTOUCHES',5,'MBRTouches(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 touch. Two geometries spatially touch if\nthe interiors of the geometries do not intersect, but the boundary of\none of the geometries intersects either the boundary or the interior of\nthe other.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),(281,'CREATE PROCEDURE',35,'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    PROCEDURE sp_name ([proc_parameter[,...]])\n    [characteristic ...] routine_body\n\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    FUNCTION sp_name ([func_parameter[,...]])\n    RETURNS type\n    [characteristic ...] routine_body\n    \nproc_parameter:\n    [ IN | OUT | INOUT ] param_name type\n    \nfunc_parameter:\n    param_name type\n\ntype:\n    Any valid MySQL data type\n\ncharacteristic:\n    LANGUAGE SQL\n  | [NOT] DETERMINISTIC\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n  | COMMENT \'string\'\n\nroutine_body:\n    Valid SQL procedure statement\n\nThese statements create stored routines. As of MySQL 5.0.3, to execute\nthese statements, it is necessary to have the CREATE ROUTINE privilege.\nIf binary logging is enabled, these statements might also require the\nSUPER privilege, as described in\nhttp://dev.mysql.com/doc/refman/5.0/en/stored-procedure-logging.html.\nMySQL automatically grants the ALTER ROUTINE and EXECUTE privileges to\nthe routine creator.\n\nBy default, the routine is associated with the default database. To\nassociate the routine explicitly with a given database, specify the\nname as db_name.sp_name when you create it.\n\nIf the routine name is the same as the name of a built-in SQL function,\nyou must use a space between the name and the following parenthesis\nwhen defining the routine, or a syntax error occurs. This is also true\nwhen you invoke the routine later. For this reason, we suggest that it\nis better to avoid re-using the names of existing SQL functions for\nyour own stored routines.\n\nThe IGNORE_SPACE SQL mode applies to built-in functions, not to stored\nroutines. It is always allowable to have spaces after a routine name,\nregardless of whether IGNORE_SPACE is enabled.\n\nThe parameter list enclosed within parentheses must always be present.\nIf there are no parameters, an empty parameter list of () should be\nused.\n\nEach parameter can be declared to use any valid data type, except that\nthe COLLATE attribute cannot be used.\n\nEach parameter is an IN parameter by default. To specify otherwise for\na parameter, use the keyword OUT or INOUT before the parameter name.\n\n*Note*: Specifying a parameter as IN, OUT, or INOUT is valid only for a\nPROCEDURE. (FUNCTION parameters are always regarded as IN parameters.)\n\nAn IN parameter passes a value into a procedure. The procedure might\nmodify the value, but the modification is not visible to the caller\nwhen the procedure returns. An OUT parameter passes a value from the\nprocedure back to the caller. Its initial value is NULL within the\nprocedure, and its value is visible to the caller when the procedure\nreturns. An INOUT parameter is initialized by the caller, can be\nmodified by the procedure, and any change made by the procedure is\nvisible to the caller when the procedure returns.\n\nFor each OUT or INOUT parameter, pass a user-defined variable so that\nyou can obtain its value when the procedure returns. (For an example,\nsee [HELP CALL].) If you are calling the procedure from within another\nstored procedure or function, you can also pass a routine parameter or\nlocal routine variable as an IN or INOUT parameter.\n\nThe RETURNS clause may be specified only for a FUNCTION, for which it\nis mandatory. It indicates the return type of the function, and the\nfunction body must contain a RETURN value statement. If the RETURN\nstatement returns a value of a different type, the value is coerced to\nthe proper type. For example, if a function specifies an ENUM or SET\nvalue in the RETURNS clause, but the RETURN statement returns an\ninteger, the value returned from the function is the string for the\ncorresponding ENUM member of set of SET members.\n\nThe routine_body consists of a valid SQL procedure statement. This can\nbe a simple statement such as SELECT or INSERT, or it can be a compound\nstatement written using BEGIN and END. Compound statement syntax is\ndescribed in [HELP BEGIN END]. Compound statements can contain\ndeclarations, loops, and other control structure statements. The syntax\nfor these statements is described later in this chapter. See, for\nexample, http://dev.mysql.com/doc/refman/5.0/en/declare.html, and [HELP\nIF statement]. Some statements are not allowed in stored routines; see\nhttp://dev.mysql.com/doc/refman/5.0/en/routine-restrictions.html.\n\nMySQL stores the sql_mode system variable setting that is in effect at\nthe time a routine is created, and always executes the routine with\nthis setting in force, regardless of the current server SQL mode.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-procedure.html\n\n','mysql> delimiter //\n\nmysql> CREATE PROCEDURE simpleproc (OUT param1 INT)\n    -> BEGIN\n    ->   SELECT COUNT(*) INTO param1 FROM t;\n    -> END;\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter ;\n\nmysql> CALL simpleproc(@a);\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @a;\n+------+\n| @a   |\n+------+\n| 3    |\n+------+\n1 row in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.0/en/create-procedure.html'),(282,'INSERT SELECT',25,'Syntax:\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nWith INSERT ... SELECT, you can quickly insert many rows into a table\nfrom one or many tables. For example:\n\nINSERT INTO tbl_temp2 (fld_id)\n  SELECT tbl_temp1.fld_order_id\n  FROM tbl_temp1 WHERE tbl_temp1.fld_order_id > 100;\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/insert-select.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/insert-select.html'),(283,'VARBINARY',20,'VARBINARY(M)\n\nThe VARBINARY type is similar to the VARCHAR type, but stores binary\nbyte strings rather than non-binary character strings. M represents the\nmaximum column length in bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(284,'LOAD INDEX',25,'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [[INDEX|KEY] (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise. LOAD INDEX INTO\nCACHE is used only for MyISAM tables.\n\nThe IGNORE LEAVES modifier causes only blocks for the non-leaf nodes of\nthe index to be preloaded.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/load-index.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/load-index.html'),(285,'UNION',25,'Syntax:\nSELECT ...\nUNION [ALL | DISTINCT] SELECT ...\n[UNION [ALL | DISTINCT] SELECT ...]\n\nUNION is used to combine the result from multiple SELECT statements\ninto a single result set.\n\nThe column names from the first SELECT statement are used as the column\nnames for the results returned. Selected columns listed in\ncorresponding positions of each SELECT statement should have the same\ndata type. (For example, the first column selected by the first\nstatement should have the same type as the first column selected by the\nother statements.)\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/union.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/union.html'),(286,'TO_DAYS',28,'Syntax:\nTO_DAYS(date)\n\nGiven a date date, returns a day number (the number of days since year\n0).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT TO_DAYS(950501);\n        -> 728779\nmysql> SELECT TO_DAYS(\'1997-10-07\');\n        -> 729669\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(287,'NOT REGEXP',33,'Syntax:\nexpr NOT REGEXP pat, expr NOT RLIKE pat\n\nThis is the same as NOT (expr REGEXP pat).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html'),(288,'SHOW INDEX',25,'Syntax:\nSHOW INDEX FROM tbl_name [FROM db_name]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC.\nThe LIKE clause, if present, indicates which event names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. These two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nSHOW KEYS is a synonym for SHOW INDEX. You can also list a table\'s\nindexes with the mysqlshow -k db_name tbl_name command.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-index.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-index.html'),(289,'SHOW CREATE DATABASE',25,'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} db_name\n\nShows the CREATE DATABASE statement that creates the given database.\nSHOW CREATE SCHEMA is a synonym for SHOW CREATE DATABASE as of MySQL\n5.0.2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-create-database.html\n\n','mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n','http://dev.mysql.com/doc/refman/5.0/en/show-create-database.html'),(290,'LEAVE',35,'Syntax:\nLEAVE label\n\nThis statement is used to exit any labeled flow control construct. It\ncan be used within BEGIN ... END or loop constructs (LOOP, REPEAT,\nWHILE).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/leave-statement.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/leave-statement.html'),(291,'NOT IN',17,'Syntax:\nexpr NOT IN (value,...)\n\nThis is the same as NOT (expr IN (value,...)).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(292,'!',12,'Syntax:\nNOT, !\n\nLogical NOT. Evaluates to 1 if the operand is 0, to 0 if the operand is\nnon-zero, and NOT NULL returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html\n\n','mysql> SELECT NOT 10;\n        -> 0\nmysql> SELECT NOT 0;\n        -> 1\nmysql> SELECT NOT NULL;\n        -> NULL\nmysql> SELECT ! (1+1);\n        -> 0\nmysql> SELECT ! 1+1;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html'),(293,'DECLARE HANDLER',35,'Syntax:\nDECLARE handler_type HANDLER FOR condition_value[,...] statement\n\nhandler_type:\n    CONTINUE\n  | EXIT\n  | UNDO\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | condition_name\n  | SQLWARNING\n  | NOT FOUND\n  | SQLEXCEPTION\n  | mysql_error_code\n\nThe DECLARE ... HANDLER statement specifies handlers that each may deal\nwith one or more conditions. If one of these conditions occurs, the\nspecified statement is executed. statement can be a simple statement\n(for example, SET var_name = value), or it can be a compound statement\nwritten using BEGIN and END (see [HELP BEGIN END]).\n\nFor a CONTINUE handler, execution of the current routine continues\nafter execution of the handler statement. For an EXIT handler,\nexecution terminates for the BEGIN ... END compound statement in which\nthe handler is declared. (This is true even if the condition occurs in\nan inner block.) The UNDO handler type statement is not yet supported.\n\nIf a condition occurs for which no handler has been declared, the\ndefault action is EXIT.\n\nA condition_value can be any of the following values:\n\no An SQLSTATE value or a MySQL error code.\n\no A condition name previously specified with DECLARE ... CONDITION. See\n  [HELP DECLARE CONDITION].\n\no SQLWARNING is shorthand for all SQLSTATE codes that begin with 01.\n\no NOT FOUND is shorthand for all SQLSTATE codes that begin with 02.\n  This is relevant only within the context of cursors and is used to\n  control what happens when a cursor reaches the end of a data set.\n\no SQLEXCEPTION is shorthand for all SQLSTATE codes not caught by\n  SQLWARNING or NOT FOUND.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/declare-handlers.html\n\n','mysql> CREATE TABLE test.t (s1 int,primary key (s1));\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter //\n\nmysql> CREATE PROCEDURE handlerdemo ()\n    -> BEGIN\n    ->   DECLARE CONTINUE HANDLER FOR SQLSTATE \'23000\' SET @x2 = 1;\n    ->   SET @x = 1;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 2;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 3;\n    -> END;\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL handlerdemo()//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n    +------+\n    | @x   |\n    +------+\n    | 3    |\n    +------+\n    1 row in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.0/en/declare-handlers.html'),(294,'DOUBLE',20,'DOUBLE[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA normal-size (double-precision) floating-point number. Allowable\nvalues are -1.7976931348623157E+308 to -2.2250738585072014E-308, 0, and\n2.2250738585072014E-308 to 1.7976931348623157E+308. These are the\ntheoretical limits, based on the IEEE standard. The actual range might\nbe slightly smaller depending on your hardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits allowed by the hardware. A double-precision floating-point\nnumber is accurate to approximately 15 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(295,'TIME',20,'TIME\n\nA time. The range is \'-838:59:59\' to \'838:59:59\'. MySQL displays TIME\nvalues in \'HH:MM:SS\' format, but allows assignment of values to TIME\ncolumns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html'),(296,'&&',12,'Syntax:\nAND, &&\n\nLogical AND. Evaluates to 1 if all operands are non-zero and not NULL,\nto 0 if one or more operands are 0, otherwise NULL is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html\n\n','mysql> SELECT 1 && 1;\n        -> 1\nmysql> SELECT 1 && 0;\n        -> 0\nmysql> SELECT 1 && NULL;\n        -> NULL\nmysql> SELECT 0 && NULL;\n        -> 0\nmysql> SELECT NULL && 0;\n        -> 0\n','http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html'),(297,'X',9,'X(p)\n\nReturns the X-coordinate value for the point p as a double-precision\nnumber.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/point-property-functions.html\n\n','mysql> SET @pt = \'Point(56.7 53.34)\';\nmysql> SELECT X(GeomFromText(@pt));\n+----------------------+\n| X(GeomFromText(@pt)) |\n+----------------------+\n|                 56.7 |\n+----------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/point-property-functions.html'),(298,'FOUND_ROWS',15,'Syntax:\nFOUND_ROWS()\n\nA SELECT statement may include a LIMIT clause to restrict the number of\nrows the server returns to the client. In some cases, it is desirable\nto know how many rows the statement would have returned without the\nLIMIT, but without running the statement again. To obtain this row\ncount, include a SQL_CALC_FOUND_ROWS option in the SELECT statement,\nand then invoke FOUND_ROWS() afterward:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','mysql> SELECT SQL_CALC_FOUND_ROWS * FROM tbl_name\n    -> WHERE id > 100 LIMIT 10;\nmysql> SELECT FOUND_ROWS();\n','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(299,'SYSTEM_USER',15,'Syntax:\nSYSTEM_USER()\n\nSYSTEM_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(300,'CROSSES',26,'Crosses(g1,g2)\n\nReturns 1 if g1 spatially crosses g2. Returns NULL if g1 is a Polygon\nor a MultiPolygon, or if g2 is a Point or a MultiPoint. Otherwise,\nreturns 0.\n\nThe term spatially crosses denotes a spatial relation between two given\ngeometries that has the following properties:\n\no The two geometries intersect\n\no Their intersection results in a geometry that has a dimension that is\n  one less than the maximum dimension of the two given geometries\n\no Their intersection is not equal to either of the two given geometries\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),(301,'TRUNCATE TABLE',25,'Syntax:\nTRUNCATE [TABLE] tbl_name\n\nTRUNCATE TABLE empties a table completely. Logically, this is\nequivalent to a DELETE statement that deletes all rows, but there are\npractical differences under some circumstances.\n\nFor InnoDB before version 5.0.3, TRUNCATE TABLE is mapped to DELETE, so\nthere is no difference. Starting with MySQL 5.0.3, fast TRUNCATE TABLE\nis available. However, the operation is still mapped to DELETE if there\nare foreign key constraints that reference the table. (When fast\ntruncate is used, it resets any AUTO_INCREMENT counter. From MySQL\n5.0.13 on, the AUTO_INCREMENT counter is reset by TRUNCATE TABLE,\nregardless of whether there is a foreign key constraint.)\n\nFor other storage engines, TRUNCATE TABLE differs from DELETE in the\nfollowing ways in MySQL 5.0:\n\no Truncate operations drop and re-create the table, which is much\n  faster than deleting rows one by one.\n\no Truncate operations are not transaction-safe; an error occurs when\n  attempting one in the course of an active transaction or active table\n  lock.\n\no The number of deleted rows is not returned.\n\no As long as the table format file tbl_name.frm is valid, the table can\n  be re-created as an empty table with TRUNCATE TABLE, even if the data\n  or index files have become corrupted.\n\no The table handler does not remember the last used AUTO_INCREMENT\n  value, but starts counting from the beginning. This is true even for\n  MyISAM and InnoDB, which normally do not reuse sequence values.\n\no Since truncation of a table does not make any use of DELETE, the\n  TRUNCATE statement does not invoke ON DELETE triggers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/truncate.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/truncate.html'),(302,'BIT_XOR',14,'Syntax:\nBIT_XOR(expr)\n\nReturns the bitwise XOR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(303,'CURRENT_DATE',28,'Syntax:\nCURRENT_DATE, CURRENT_DATE()\n\nCURRENT_DATE and CURRENT_DATE() are synonyms for CURDATE().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(304,'AREA',2,'Area(poly)\n\nReturns as a double-precision number the area of the Polygon value\npoly, as measured in its spatial reference system.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html\n\n','mysql> SET @poly = \'Polygon((0 0,0 3,3 0,0 0),(1 1,1 2,2 1,1 1))\';\nmysql> SELECT Area(GeomFromText(@poly));\n+---------------------------+\n| Area(GeomFromText(@poly)) |\n+---------------------------+\n|                         4 |\n+---------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html'),(305,'START SLAVE',25,'Syntax:\nSTART SLAVE [thread_type [, thread_type] ... ]\nSTART SLAVE [SQL_THREAD] UNTIL\n    MASTER_LOG_FILE = \'log_name\', MASTER_LOG_POS = log_pos\nSTART SLAVE [SQL_THREAD] UNTIL\n    RELAY_LOG_FILE = \'log_name\', RELAY_LOG_POS = log_pos\n\nthread_type: IO_THREAD | SQL_THREAD\n\nSTART SLAVE with no thread_type options starts both of the slave\nthreads. The I/O thread reads queries from the master server and stores\nthem in the relay log. The SQL thread reads the relay log and executes\nthe queries. START SLAVE requires the SUPER privilege.\n\nIf START SLAVE succeeds in starting the slave threads, it returns\nwithout any error. However, even in that case, it might be that the\nslave threads start and then later stop (for example, because they do\nnot manage to connect to the master or read its binary logs, or some\nother problem). START SLAVE does not warn you about this. You must\ncheck the slave\'s error log for error messages generated by the slave\nthreads, or check that they are running satisfactorily with SHOW SLAVE\nSTATUS.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/start-slave.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/start-slave.html'),(306,'BEGIN END',35,'Syntax:\n[begin_label:] BEGIN\n    [statement_list]\nEND [end_label]\n\nBEGIN ... END syntax is used for writing compound statements, which can\nappear within stored routines and triggers. A compound statement can\ncontain multiple statements, enclosed by the BEGIN and END keywords.\nstatement_list represents a list of one or more statements. Each\nstatement within statement_list must be terminated by a semicolon (;)\nstatement delimiter. Note that statement_list is optional, which means\nthat the empty compound statement (BEGIN END) is legal.\n\nUse of multiple statements requires that a client is able to send\nstatement strings containing the ; statement delimiter. This is handled\nin the mysql command-line client with the delimiter command. Changing\nthe ; end-of-statement delimiter (for example, to //) allows ; to be\nused in a routine body. For an example, see [HELP CREATE PROCEDURE].\n\nA compound statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/begin-end.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/begin-end.html'),(307,'FLUSH',25,'Syntax:\nFLUSH [LOCAL | NO_WRITE_TO_BINLOG]\n    flush_option [, flush_option] ...\n\nThe FLUSH statement clears or reloads various internal caches used by\nMySQL. To execute FLUSH, you must have the RELOAD privilege.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/flush.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/flush.html'),(308,'SHOW PROCEDURE STATUS',25,'Syntax:\nSHOW {PROCEDURE | FUNCTION} STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThese statements are MySQL extensions. They return characteristics of\nroutines, such as the database, name, type, creator, and creation and\nmodification dates. The LIKE clause, if present, indicates which\nprocedure or function names to match. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-procedure-status.html\n\n','mysql> SHOW FUNCTION STATUS LIKE \'hello\'\\G\n*************************** 1. row ***************************\n           Db: test\n         Name: hello\n         Type: FUNCTION\n      Definer: testuser@localhost\n     Modified: 2004-08-03 15:29:37\n      Created: 2004-08-03 15:29:37\nSecurity_type: DEFINER\n      Comment:\n','http://dev.mysql.com/doc/refman/5.0/en/show-procedure-status.html'),(309,'SHOW WARNINGS',25,'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS shows the error, warning, and note messages that resulted\nfrom the last statement that generated messages, or nothing if the last\nstatement that used a table generated no messages. A related statement,\nSHOW ERRORS, shows only the errors. See [HELP SHOW ERRORS].\n\nThe list of messages is reset for each new statement that uses a table.\n\nThe SHOW COUNT(*) WARNINGS statement displays the total number of\nerrors, warnings, and notes. You can also retrieve this number from the\nwarning_count variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nThe value of warning_count might be greater than the number of messages\ndisplayed by SHOW WARNINGS if the max_error_count system variable is\nset so low that not all messages are stored. An example shown later in\nthis section demonstrates how this can happen.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\n[HELP SELECT].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-warnings.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-warnings.html'),(310,'DESCRIBE',24,'Syntax:\n{DESCRIBE | DESC} tbl_name [col_name | wild]\n\nDESCRIBE provides information about the columns in a table. It is a\nshortcut for SHOW COLUMNS FROM. As of MySQL 5.0.1, these statements\nalso display information for views. (See [HELP SHOW COLUMNS].)\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/describe.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/describe.html'),(311,'DROP USER',8,'Syntax:\nDROP USER user [, user] ...\n\nThe DROP USER statement removes one or more MySQL accounts. To use it,\nyou must have the global CREATE USER privilege or the DELETE privilege\nfor the mysql database. Each account is named using the same format as\nfor the GRANT statement; for example, \'jeffrey\'@\'localhost\'. If you\nspecify only the username part of the account name, a hostname part of\n\'%\' is used. For additional information about specifying account names,\nsee [HELP GRANT].\n\nDROP USER as present in MySQL 5.0.0 removes only accounts that have no\nprivileges. In MySQL 5.0.2, it was modified to remove account\nprivileges as well. This means that the procedure for removing an\naccount depends on your version of MySQL.\n\nAs of MySQL 5.0.2, you can remove an account and its privileges as\nfollows:\n\nDROP USER user;\n\nThe statement removes privilege rows for the account from all grant\ntables.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-user.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/drop-user.html'),(312,'STDDEV_POP',14,'Syntax:\nSTDDEV_POP(expr)\n\nReturns the population standard deviation of expr (the square root of\nVAR_POP()). This function was added in MySQL 5.0.3. Before 5.0.3, you\ncan use STD() or STDDEV(), which are equivalent but not standard SQL.\n\nSTDDEV_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(313,'SHOW CHARACTER SET',25,'Syntax:\nSHOW CHARACTER SET\n    [LIKE \'pattern\' | WHERE expr]\n\nThe SHOW CHARACTER SET statement shows all available character sets.\nThe LIKE clause, if present, indicates which character set names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html. For example:\n\nmysql> SHOW CHARACTER SET LIKE \'latin%\';\n+---------+-----------------------------+-------------------+--------+\n| Charset | Description                 | Default collation | Maxlen |\n+---------+-----------------------------+-------------------+--------+\n| latin1  | cp1252 West European        | latin1_swedish_ci |      1 |\n| latin2  | ISO 8859-2 Central European | latin2_general_ci |      1 |\n| latin5  | ISO 8859-9 Turkish          | latin5_turkish_ci |      1 |\n| latin7  | ISO 8859-13 Baltic          | latin7_general_ci |      1 |\n+---------+-----------------------------+-------------------+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-character-set.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-character-set.html'),(314,'SUBSTRING',33,'Syntax:\nSUBSTRING(str,pos), SUBSTRING(str FROM pos), SUBSTRING(str,pos,len),\nSUBSTRING(str FROM pos FOR len)\n\nThe forms without a len argument return a substring from string str\nstarting at position pos. The forms with a len argument return a\nsubstring len characters long from string str, starting at position\npos. The forms that use FROM are standard SQL syntax. It is also\npossible to use a negative value for pos. In this case, the beginning\nof the substring is pos characters from the end of the string, rather\nthan the beginning. A negative value may be used for pos in any of the\nforms of this function.\n\nFor all forms of SUBSTRING(), the position of the first character in\nthe string from which the substring is to be extracted is reckoned as\n1.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT SUBSTRING(\'Quadratically\',5);\n        -> \'ratically\'\nmysql> SELECT SUBSTRING(\'foobarbar\' FROM 4);\n        -> \'barbar\'\nmysql> SELECT SUBSTRING(\'Quadratically\',5,6);\n        -> \'ratica\'        \nmysql> SELECT SUBSTRING(\'Sakila\', -3);\n        -> \'ila\'        \nmysql> SELECT SUBSTRING(\'Sakila\', -5, 3);\n        -> \'aki\'\nmysql> SELECT SUBSTRING(\'Sakila\' FROM -4 FOR 2);\n        -> \'ki\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(315,'ISEMPTY',32,'IsEmpty(g)\n\nReturns 1 if the geometry value g is the empty geometry, 0 if it is not\nempty, and -1 if the argument is NULL. If the geometry is empty, it\nrepresents the empty point set.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),(316,'LTRIM',33,'Syntax:\nLTRIM(str)\n\nReturns the string str with leading space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT LTRIM(\'  barbar\');\n        -> \'barbar\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(317,'INTERSECTS',26,'Intersects(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially intersects g2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),(318,'CALL',35,'Syntax:\nCALL sp_name([parameter[,...]])\nCALL sp_name[()]\n\nThe CALL statement invokes a procedure that was defined previously with\nCREATE PROCEDURE.\n\nCALL can pass back values to its caller using parameters that are\ndeclared as OUT or INOUT parameters. It also \"returns\" the number of\nrows affected, which a client program can obtain at the SQL level by\ncalling the ROW_COUNT() function and from C by calling the\nmysql_affected_rows() C API function.\n\nAs of MySQL 5.1.13, stored procedures that take no arguments now can be\ninvoked without parentheses. That is, CALL p() and CALL p are\nequivalent.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/call.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/call.html'),(319,'MBRDISJOINT',5,'MBRDisjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are disjoint (do not intersect).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),(320,'VALUES',13,'Syntax:\nVALUES(col_name)\n\nIn an INSERT ... ON DUPLICATE KEY UPDATE statement, you can use the\nVALUES(col_name) function in the UPDATE clause to refer to column\nvalues from the INSERT portion of the statement. In other words,\nVALUES(col_name) in the UPDATE clause refers to the value of col_name\nthat would be inserted, had no duplicate-key conflict occurred. This\nfunction is especially useful in multiple-row inserts. The VALUES()\nfunction is meaningful only in INSERT ... ON DUPLICATE KEY UPDATE\nstatements and returns NULL otherwise.\nhttp://dev.mysql.com/doc/refman/5.0/en/insert-on-duplicate.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n','mysql> INSERT INTO table (a,b,c) VALUES (1,2,3),(4,5,6)\n    -> ON DUPLICATE KEY UPDATE c=VALUES(a)+VALUES(b);\n','http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),(321,'SUBSTRING_INDEX',33,'Syntax:\nSUBSTRING_INDEX(str,delim,count)\n\nReturns the substring from string str before count occurrences of the\ndelimiter delim. If count is positive, everything to the left of the\nfinal delimiter (counting from the left) is returned. If count is\nnegative, everything to the right of the final delimiter (counting from\nthe right) is returned. SUBSTRING_INDEX() performs a case-sensitive\nmatch when searching for delim.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT SUBSTRING_INDEX(\'www.mysql.com\', \'.\', 2);\n        -> \'www.mysql\'\nmysql> SELECT SUBSTRING_INDEX(\'www.mysql.com\', \'.\', -2);\n        -> \'mysql.com\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(322,'ENCODE',10,'Syntax:\nENCODE(str,pass_str)\n\nEncrypt str using pass_str as the password. To decrypt the result, use\nDECODE().\n\nThe result is a binary string of the same length as str.\n\nThe strength of the encryption is based on how good the random\ngenerator is. It should suffice for short strings.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(323,'LOOP',35,'Syntax:\n[begin_label:] LOOP\n    statement_list\nEND LOOP [end_label]\n\nLOOP implements a simple loop construct, enabling repeated execution of\nthe statement list, which consists of one or more statements. The\nstatements within the loop are repeated until the loop is exited;\nusually this is accomplished with a LEAVE statement.\n\nA LOOP statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/loop-statement.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/loop-statement.html'),(324,'TRUNCATE',4,'Syntax:\nTRUNCATE(X,D)\n\nReturns the number X, truncated to D decimal places. If D is 0, the\nresult has no decimal point or fractional part. D can be negative to\ncause D digits left of the decimal point of the value X to become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT TRUNCATE(1.223,1);\n        -> 1.2\nmysql> SELECT TRUNCATE(1.999,1);\n        -> 1.9\nmysql> SELECT TRUNCATE(1.999,0);\n        -> 1\nmysql> SELECT TRUNCATE(-1.999,1);\n        -> -1.9\nmysql> SELECT TRUNCATE(122,-2);\n       -> 100\nmysql> SELECT TRUNCATE(10.28*100,0);\n       -> 1028\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(325,'TIMESTAMPADD',28,'Syntax:\nTIMESTAMPADD(unit,interval,datetime_expr)\n\nAdds the integer expression interval to the date or datetime expression\ndatetime_expr. The unit for interval is given by the unit argument,\nwhich should be one of the following values: FRAC_SECOND\n(microseconds), SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, or\nYEAR.\n\nThe unit value may be specified using one of keywords as shown, or with\na prefix of SQL_TSI_. For example, DAY and SQL_TSI_DAY both are legal.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT TIMESTAMPADD(MINUTE,1,\'2003-01-02\');\n        -> \'2003-01-02 00:01:00\'\nmysql> SELECT TIMESTAMPADD(WEEK,1,\'2003-01-02\');\n        -> \'2003-01-09\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(326,'SHOW',25,'SHOW has many forms that provide information about databases, tables,\ncolumns, or status information about the server. This section describes\nthose following:\n\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name] [like_or_where]\nSHOW CREATE DATABASE db_name\nSHOW CREATE FUNCTION funcname\nSHOW CREATE PROCEDURE procname\nSHOW CREATE TABLE tbl_name\nSHOW DATABASES [like_or_where]\nSHOW ENGINE engine_name {LOGS | STATUS }\nSHOW [STORAGE] ENGINES\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW FUNCTION CODE sp_name\nSHOW FUNCTION STATUS [like_or_where]\nSHOW GRANTS FOR user\nSHOW INDEX FROM tbl_name [FROM db_name]\nSHOW INNODB STATUS\nSHOW PROCEDURE CODE sp_name\nSHOW PROCEDURE STATUS [like_or_where]\nSHOW [BDB] LOGS\nSHOW MUTEX STATUS\nSHOW OPEN TABLES [FROM db_name] [like_or_where]\nSHOW PRIVILEGES\nSHOW [FULL] PROCESSLIST\nSHOW PROFILE [types] [FOR QUERY n] [OFFSET n] [LIMIT n]\nSHOW PROFILES\nSHOW [GLOBAL | SESSION] STATUS [like_or_where]\nSHOW TABLE STATUS [FROM db_name] [like_or_where]\nSHOW TABLES [FROM db_name] [like_or_where]\nSHOW TRIGGERS [FROM db_name] [like_or_where]\nSHOW [GLOBAL | SESSION] VARIABLES [like_or_where]\nSHOW WARNINGS [LIMIT [offset,] row_count]\n\nlike_or_where:\n    LIKE \'pattern\'\n  | WHERE expr\n\nThe SHOW statement also has forms that provide information about\nreplication master and slave servers and are described in [HELP PURGE\nMASTER LOGS]:\n\nSHOW BINARY LOGS\nSHOW BINLOG EVENTS\nSHOW MASTER STATUS\nSHOW SLAVE HOSTS\nSHOW SLAVE STATUS\n\nIf the syntax for a given SHOW statement includes a LIKE \'pattern\'\npart, \'pattern\' is a string that can contain the SQL \"%\" and \"_\"\nwildcard characters. The pattern is useful for restricting statement\noutput to matching values.\n\nSeveral SHOW statements also accept a WHERE clause that provides more\nflexibility in specifying which rows to display. See\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show.html'),(327,'GREATEST',17,'Syntax:\nGREATEST(value1,value2,...)\n\nWith two or more arguments, returns the largest (maximum-valued)\nargument. The arguments are compared using the same rules as for\nLEAST().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT GREATEST(2,0);\n        -> 2\nmysql> SELECT GREATEST(34.0,3.0,5.0,767.0);\n        -> 767.0\nmysql> SELECT GREATEST(\'B\',\'A\',\'C\');\n        -> \'C\'\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(328,'SHOW VARIABLES',25,'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables. This\ninformation also can be obtained using the mysqladmin variables\ncommand. The LIKE clause, if present, indicates which variable names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nWith the GLOBAL modifier, SHOW VARIABLES displays the values that are\nused for new connections to MySQL. With SESSION, it displays the values\nthat are in effect for the current connection. If no modifier is\npresent, the default is SESSION. LOCAL is a synonym for SESSION.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE \'max_join_size\';\nSHOW SESSION VARIABLES LIKE \'max_join_size\';\n\nTo get a list of variables whose name match a pattern, use the \"%\"\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE \'%size%\';\nSHOW GLOBAL VARIABLES LIKE \'%size%\';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because \"_\" is a wildcard that matches\nany single character, you should escape it as \"\\_\" to match it\nliterally. In practice, this is rarely necessary.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-variables.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-variables.html'),(329,'BIT_AND',14,'Syntax:\nBIT_AND(expr)\n\nReturns the bitwise AND of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(330,'SECOND',28,'Syntax:\nSECOND(time)\n\nReturns the second for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT SECOND(\'10:05:03\');\n        -> 3\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(331,'ATAN2',4,'Syntax:\nATAN(Y,X), ATAN2(Y,X)\n\nReturns the arc tangent of the two variables X and Y. It is similar to\ncalculating the arc tangent of Y / X, except that the signs of both\narguments are used to determine the quadrant of the result.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT ATAN(-2,2);\n        -> -0.78539816339745\nmysql> SELECT ATAN2(PI(),0);\n        -> 1.5707963267949\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(332,'MBRCONTAINS',5,'MBRContains(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\ncontains the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRWithin().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n','mysql> SET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nmysql> SET @g2 = GeomFromText(\'Point(1 1)\');\nmysql> SELECT MBRContains(@g1,@g2), MBRContains(@g2,@g1);\n----------------------+----------------------+\n| MBRContains(@g1,@g2) | MBRContains(@g2,@g1) |\n+----------------------+----------------------+\n|                    1 |                    0 |\n+----------------------+----------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),(333,'HOUR',28,'Syntax:\nHOUR(time)\n\nReturns the hour for time. The range of the return value is 0 to 23 for\ntime-of-day values. However, the range of TIME values actually is much\nlarger, so HOUR can return values greater than 23.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT HOUR(\'10:05:03\');\n        -> 10\nmysql> SELECT HOUR(\'272:59:59\');\n        -> 272\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(334,'SELECT',25,'Syntax:\nSELECT\n    [ALL | DISTINCT | DISTINCTROW ]\n      [HIGH_PRIORITY]\n      [STRAIGHT_JOIN]\n      [SQL_SMALL_RESULT] [SQL_BIG_RESULT] [SQL_BUFFER_RESULT]\n      [SQL_CACHE | SQL_NO_CACHE] [SQL_CALC_FOUND_ROWS]\n    select_expr, ...\n    [FROM table_references\n    [WHERE where_condition]\n    [GROUP BY {col_name | expr | position}\n      [ASC | DESC], ... [WITH ROLLUP]]\n    [HAVING where_condition]\n    [ORDER BY {col_name | expr | position}\n      [ASC | DESC], ...]\n    [LIMIT {[offset,] row_count | row_count OFFSET offset}]\n    [PROCEDURE procedure_name(argument_list)]\n    [INTO OUTFILE \'file_name\' export_options\n      | INTO DUMPFILE \'file_name\'\n      | INTO var_name [, var_name]]\n    [FOR UPDATE | LOCK IN SHARE MODE]]\n\nSELECT is used to retrieve rows selected from one or more tables, and\ncan include UNION statements and subqueries. See [HELP UNION], and\nhttp://dev.mysql.com/doc/refman/5.0/en/subqueries.html.\n\nThe most commonly used clauses of SELECT statements are these:\n\no Each select_expr indicates a column that you want to retrieve. There\n  must be at least one select_expr.\n\no table_references indicates the table or tables from which to retrieve\n  rows. Its syntax is described in [HELP JOIN].\n\no The WHERE clause, if given, indicates the condition or conditions\n  that rows must satisfy to be selected. where_condition is an\n  expression that evaluates to true for each row to be selected. The\n  statement selects all rows if there is no WHERE clause.\n\n  In the WHERE clause, you can use any of the functions and operators\n  that MySQL supports, except for aggregate (summary) functions. See\n  [HELP =].\n\nSELECT can also be used to retrieve rows computed without reference to\nany table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/select.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/select.html'),(335,'COT',4,'Syntax:\nCOT(X)\n\nReturns the cotangent of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT COT(12);\n        -> -1.5726734063977\nmysql> SELECT COT(0);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(336,'BACKUP TABLE',19,'Syntax:\nBACKUP TABLE tbl_name [, tbl_name] ... TO \'/path/to/backup/directory\'\n\n*Note*: This statement is deprecated. We are working on a better\nreplacement for it that will provide online backup capabilities. In the\nmeantime, the mysqlhotcopy script can be used instead.\n\nBACKUP TABLE copies to the backup directory the minimum number of table\nfiles needed to restore the table, after flushing any buffered changes\nto disk. The statement works only for MyISAM tables. It copies the .frm\ndefinition and .MYD data files. The .MYI index file can be rebuilt from\nthose two files. The directory should be specified as a full pathname.\nTo restore the table, use RESTORE TABLE.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/backup-table.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/backup-table.html'),(337,'LOAD_FILE',33,'Syntax:\nLOAD_FILE(file_name)\n\nReads the file and returns the file contents as a string. To use this\nfunction, the file must be located on the server host, you must specify\nthe full pathname to the file, and you must have the FILE privilege.\nThe file must be readable by all and its size less than\nmax_allowed_packet bytes.\n\nIf the file does not exist or cannot be read because one of the\npreceding conditions is not satisfied, the function returns NULL.\n\nAs of MySQL 5.0.19, the character_set_filesystem system variable\ncontrols interpretation of filenames that are given as literal strings.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> UPDATE t\n            SET blob_col=LOAD_FILE(\'/tmp/picture\')\n            WHERE id=1;\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(338,'POINTFROMTEXT',3,'PointFromText(wkt[,srid])\n\nConstructs a POINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),(339,'LOAD TABLE FROM MASTER',25,'Syntax:\nLOAD TABLE tbl_name FROM MASTER\n\nThis feature is deprecated. We recommend not using it anymore. It is\nsubject to removal in a future version of MySQL.\n\nSince the current implementation of LOAD DATA FROM MASTER and LOAD\nTABLE FROM MASTER is very limited, these statements are deprecated in\nversions 4.1 of MySQL and above. We will introduce a more advanced\ntechnique (called \"online backup\") in a future version. That technique\nwill have the additional advantage of working with more storage\nengines.\n\nFor MySQL 5.1 and earlier, the recommended alternative solution to\nusing LOAD DATA FROM MASTER or LOAD TABLE FROM MASTER is using\nmysqldump or mysqlhotcopy. The latter requires Perl and two Perl\nmodules (DBI and DBD:mysql) and works for MyISAM and ARCHIVE tables\nonly. With mysqldump, you can create SQL dumps on the master and pipe\n(or copy) these to a mysql client on the slave. This has the advantage\nof working for all storage engines, but can be quite slow, since it\nworks using SELECT.\n\nTransfers a copy of the table from the master to the slave. This\nstatement is implemented mainly debugging LOAD DATA FROM MASTER\noperations. To use LOAD TABLE, the account used for connecting to the\nmaster server must have the RELOAD and SUPER privileges on the master\nand the SELECT privilege for the master table to load. On the slave\nside, the user that issues LOAD TABLE FROM MASTER must have privileges\nfor dropping and creating the table.\n\nThe conditions for LOAD DATA FROM MASTER apply here as well. For\nexample, LOAD TABLE FROM MASTER works only for MyISAM tables. The\ntimeout notes for LOAD DATA FROM MASTER apply as well.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/load-table-from-master.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/load-table-from-master.html'),(340,'GROUP_CONCAT',14,'Syntax:\nGROUP_CONCAT(expr)\n\nThis function returns a string result with the concatenated non-NULL\nvalues from a group. It returns NULL if there are no non-NULL values.\nThe full syntax is as follows:\n\nGROUP_CONCAT([DISTINCT] expr [,expr ...]\n             [ORDER BY {unsigned_integer | col_name | expr}\n                 [ASC | DESC] [,col_name ...]]\n             [SEPARATOR str_val])\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','mysql> SELECT student_name,\n    ->     GROUP_CONCAT(test_score)\n    ->     FROM student\n    ->     GROUP BY student_name;\n','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(341,'DATE_FORMAT',28,'Syntax:\nDATE_FORMAT(date,format)\n\nFormats the date value according to the format string.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT DATE_FORMAT(\'1997-10-04 22:23:00\', \'%W %M %Y\');\n        -> \'Saturday October 1997\'\nmysql> SELECT DATE_FORMAT(\'1997-10-04 22:23:00\', \'%H:%i:%s\');\n        -> \'22:23:00\'\nmysql> SELECT DATE_FORMAT(\'1997-10-04 22:23:00\',\n                          \'%D %y %a %d %m %b %j\');\n        -> \'4th 97 Sat 04 10 Oct 277\'\nmysql> SELECT DATE_FORMAT(\'1997-10-04 22:23:00\',\n                          \'%H %k %I %r %T %S %w\');\n        -> \'22 22 10 10:23:00 PM 22:23:00 00 6\'\nmysql> SELECT DATE_FORMAT(\'1999-01-01\', \'%X %V\');\n        -> \'1998 52\'\nmysql> SELECT DATE_FORMAT(\'2006-06-00\', \'%d\');\n        -> \'00\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(342,'BENCHMARK',15,'Syntax:\nBENCHMARK(count,expr)\n\nThe BENCHMARK() function executes the expression expr repeatedly count\ntimes. It may be used to time how quickly MySQL processes the\nexpression. The result value is always 0. The intended use is from\nwithin the mysql client, which reports query execution times:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','mysql> SELECT BENCHMARK(1000000,ENCODE(\'hello\',\'goodbye\'));\n+----------------------------------------------+\n| BENCHMARK(1000000,ENCODE(\'hello\',\'goodbye\')) |\n+----------------------------------------------+\n|                                            0 |\n+----------------------------------------------+\n1 row in set (4.74 sec)\n','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(343,'YEAR',28,'Syntax:\nYEAR(date)\n\nReturns the year for date, in the range 1000 to 9999, or 0 for the\n\"zero\" date.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT YEAR(\'98-02-03\');\n        -> 1998\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(344,'SHOW ENGINE',25,'Syntax:\nSHOW ENGINE engine_name {LOGS | STATUS }\n\nSHOW ENGINE displays log or status information about a storage engine.\nThe following statements currently are supported:\n\nSHOW ENGINE BDB LOGS\nSHOW ENGINE INNODB STATUS\nSHOW ENGINE NDB STATUS\nSHOW ENGINE NDBCLUSTER STATUS\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-engine.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-engine.html'),(345,'NAME_CONST',13,'Syntax:\nNAME_CONST(name,value)\n\nReturns the given value. When used to produce a result set column,\nNAME_CONST() causes the column to have the given name. The arguments\nshould be constants.\n\nmysql> SELECT NAME_CONST(\'myname\', 14);\n+--------+\n| myname |\n+--------+\n|     14 |\n+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),(346,'RELEASE_LOCK',13,'Syntax:\nRELEASE_LOCK(str)\n\nReleases the lock named by the string str that was obtained with\nGET_LOCK(). Returns 1 if the lock was released, 0 if the lock was not\nestablished by this thread (in which case the lock is not released),\nand NULL if the named lock did not exist. The lock does not exist if it\nwas never obtained by a call to GET_LOCK() or if it has previously been\nreleased.\n\nThe DO statement is convenient to use with RELEASE_LOCK(). See [HELP\nDO].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),(347,'IS NULL',17,'Syntax:\nIS NULL\n\nTests whether a value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT 1 IS NULL, 0 IS NULL, NULL IS NULL;\n        -> 0, 0, 1\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(348,'CONVERT_TZ',28,'Syntax:\nCONVERT_TZ(dt,from_tz,to_tz)\n\nCONVERT_TZ() converts a datetime value dt from the time zone given by\nfrom_tz to the time zone given by to_tz and returns the resulting\nvalue. Time zones are specified as described in\nhttp://dev.mysql.com/doc/refman/5.0/en/time-zone-support.html. This\nfunction returns NULL if the arguments are invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT CONVERT_TZ(\'2004-01-01 12:00:00\',\'GMT\',\'MET\');\n        -> \'2004-01-01 13:00:00\'\nmysql> SELECT CONVERT_TZ(\'2004-01-01 12:00:00\',\'+00:00\',\'+10:00\');\n        -> \'2004-01-01 22:00:00\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(349,'TIME_TO_SEC',28,'Syntax:\nTIME_TO_SEC(time)\n\nReturns the time argument, converted to seconds.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT TIME_TO_SEC(\'22:23:00\');\n        -> 80580\nmysql> SELECT TIME_TO_SEC(\'00:39:38\');\n        -> 2378\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(350,'WEEKDAY',28,'Syntax:\nWEEKDAY(date)\n\nReturns the weekday index for date (0 = Monday, 1 = Tuesday, ... 6 =\nSunday).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT WEEKDAY(\'1998-02-03 22:23:00\');\n        -> 1\nmysql> SELECT WEEKDAY(\'1997-11-05\');\n        -> 2\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(351,'EXPORT_SET',33,'Syntax:\nEXPORT_SET(bits,on,off[,separator[,number_of_bits]])\n\nReturns a string such that for every bit set in the value bits, you get\nan on string and for every bit not set in the value, you get an off\nstring. Bits in bits are examined from right to left (from low-order to\nhigh-order bits). Strings are added to the result from left to right,\nseparated by the separator string (the default being the comma\ncharacter \",\"). The number of bits examined is given by number_of_bits\n(defaults to 64).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT EXPORT_SET(5,\'Y\',\'N\',\',\',4);\n        -> \'Y,N,Y,N\'\nmysql> SELECT EXPORT_SET(6,\'1\',\'0\',\',\',10);\n        -> \'0,1,1,0,0,0,0,0,0,0\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(352,'TIME FUNCTION',28,'Syntax:\nTIME(expr)\n\nExtracts the time part of the time or datetime expression expr and\nreturns it as a string.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT TIME(\'2003-12-31 01:02:03\');\n        -> \'01:02:03\'\nmysql> SELECT TIME(\'2003-12-31 01:02:03.000123\');\n        -> \'01:02:03.000123\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(353,'DATE_ADD',28,'Syntax:\nDATE_ADD(date,INTERVAL expr unit), DATE_SUB(date,INTERVAL expr unit)\n\nThese functions perform date arithmetic. date is a DATETIME or DATE\nvalue specifying the starting date. expr is an expression specifying\nthe interval value to be added or subtracted from the starting date.\nexpr is a string; it may start with a \"-\" for negative intervals. unit\nis a keyword indicating the units in which the expression should be\ninterpreted.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT \'1997-12-31 23:59:59\' + INTERVAL 1 SECOND;\n        -> \'1998-01-01 00:00:00\'\nmysql> SELECT INTERVAL 1 DAY + \'1997-12-31\';\n        -> \'1998-01-01\'\nmysql> SELECT \'1998-01-01\' - INTERVAL 1 SECOND;\n        -> \'1997-12-31 23:59:59\'\nmysql> SELECT DATE_ADD(\'1997-12-31 23:59:59\',\n    ->                 INTERVAL 1 SECOND);\n        -> \'1998-01-01 00:00:00\'\nmysql> SELECT DATE_ADD(\'1997-12-31 23:59:59\',\n    ->                 INTERVAL 1 DAY);\n        -> \'1998-01-01 23:59:59\'\nmysql> SELECT DATE_ADD(\'1997-12-31 23:59:59\',\n    ->                 INTERVAL \'1:1\' MINUTE_SECOND);\n        -> \'1998-01-01 00:01:00\'\nmysql> SELECT DATE_SUB(\'1998-01-01 00:00:00\',\n    ->                 INTERVAL \'1 1:1:1\' DAY_SECOND);\n        -> \'1997-12-30 22:58:59\'\nmysql> SELECT DATE_ADD(\'1998-01-01 00:00:00\',\n    ->                 INTERVAL \'-1 10\' DAY_HOUR);\n        -> \'1997-12-30 14:00:00\'\nmysql> SELECT DATE_SUB(\'1998-01-02\', INTERVAL 31 DAY);\n        -> \'1997-12-02\'\nmysql> SELECT DATE_ADD(\'1992-12-31 23:59:59.000002\',\n    ->            INTERVAL \'1.999999\' SECOND_MICROSECOND);\n        -> \'1993-01-01 00:00:01.000001\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(354,'CAST',33,'Syntax:\nCAST(expr AS type)\n\nThe CAST() function takes a value of one type and produce a value of\nanother type, similar to CONVERT(). See the description of CONVERT()\nfor more information.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/cast-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/cast-functions.html'),(355,'SOUNDS LIKE',33,'Syntax:\nexpr1 SOUNDS LIKE expr2\n\nThis is the same as SOUNDEX(expr1) = SOUNDEX(expr2).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(356,'PERIOD_DIFF',28,'Syntax:\nPERIOD_DIFF(P1,P2)\n\nReturns the number of months between periods P1 and P2. P1 and P2\nshould be in the format YYMM or YYYYMM. Note that the period arguments\nP1 and P2 are not date values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT PERIOD_DIFF(9802,199703);\n        -> 11\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(357,'LIKE',33,'Syntax:\nexpr LIKE pat [ESCAPE \'escape_char\']\n\nPattern matching using SQL simple regular expression comparison.\nReturns 1 (TRUE) or 0 (FALSE). If either expr or pat is NULL, the\nresult is NULL.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html\n\n','mysql> SELECT \'David!\' LIKE \'David_\';\n        -> 1\nmysql> SELECT \'David!\' LIKE \'%D%v%\';\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html'),(358,'MULTIPOINT',22,'MultiPoint(pt1,pt2,...)\n\nConstructs a WKB MultiPoint value using WKB Point arguments. If any\nargument is not a WKB Point, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),(359,'>>',18,'Syntax:\n>>\n\nShifts a longlong (BIGINT) number to the right.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n','mysql> SELECT 4 >> 2;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),(360,'FETCH',35,'Syntax:\nFETCH cursor_name INTO var_name [, var_name] ...\n\nThis statement fetches the next row (if a row exists) using the\nspecified open cursor, and advances the cursor pointer.\n\nIf no more rows are available, a No Data condition occurs with SQLSTATE\nvalue 02000. To detect this condition, you can set up a handler for it\n(or for a NOT FOUND condition). An example is shown in [HELP DECLARE\nCURSOR].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/fetch.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/fetch.html'),(361,'AVG',14,'Syntax:\nAVG([DISTINCT] expr)\n\nReturns the average value of expr. The DISTINCT option can be used as\nof MySQL 5.0.3 to return the average of the distinct values of expr.\n\nAVG() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','mysql> SELECT student_name, AVG(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(362,'TRUE FALSE',27,'The constants TRUE and FALSE evaluate to 1 and 0, respectively. The\nconstant names can be written in any lettercase.\n\nmysql> SELECT TRUE, true, FALSE, false;\n        -> 1, 1, 0, 0\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/boolean-values.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/boolean-values.html'),(363,'MBRWITHIN',5,'MBRWithin(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\nis within the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRContains().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n','mysql> SET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nmysql> SET @g2 = GeomFromText(\'Polygon((0 0,0 5,5 5,5 0,0 0))\');\nmysql> SELECT MBRWithin(@g1,@g2), MBRWithin(@g2,@g1);\n+--------------------+--------------------+\n| MBRWithin(@g1,@g2) | MBRWithin(@g2,@g1) |\n+--------------------+--------------------+\n|                  1 |                  0 |\n+--------------------+--------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),(364,'IN',17,'Syntax:\nexpr IN (value,...)\n\nReturns 1 if expr is equal to any of the values in the IN list, else\nreturns 0. If all values are constants, they are evaluated according to\nthe type of expr and sorted. The search for the item then is done using\na binary search. This means IN is very quick if the IN value list\nconsists entirely of constants. Otherwise, type conversion takes place\naccording to the rules described in\nhttp://dev.mysql.com/doc/refman/5.0/en/type-conversion.html, but\napplied to all the arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT 2 IN (0,3,5,7);\n        -> 0\nmysql> SELECT \'wefwf\' IN (\'wee\',\'wefwf\',\'weg\');\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(365,'QUOTE',33,'Syntax:\nQUOTE(str)\n\nQuotes a string to produce a result that can be used as a properly\nescaped data value in an SQL statement. The string is returned enclosed\nby single quotes and with each instance of single quote (\"\'\"),\nbackslash (\"\\\"), ASCII NUL, and Control-Z preceded by a backslash. If\nthe argument is NULL, the return value is the word \"NULL\" without\nenclosing single quotes.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT QUOTE(\'Don\\\'t!\');\n        -> \'Don\\\'t!\'\nmysql> SELECT QUOTE(NULL);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(366,'SESSION_USER',15,'Syntax:\nSESSION_USER()\n\nSESSION_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(367,'HELP COMMAND',24,'Syntax:\nmysql> help search_string\n\nIf you provide an argument to the help command, mysql uses it as a\nsearch string to access server-side help from the contents of the MySQL\nReference Manual. The proper operation of this command requires that\nthe help tables in the mysql database be initialized with help topic\ninformation (see\nhttp://dev.mysql.com/doc/refman/5.0/en/server-side-help-support.html).\n\nIf there is no match for the search string, the search fails:\n\nmysql> help me\n\nNothing found\nPlease try to run \'help contents\' for a list of all accessible topics\n\nUse help contents to see a list of the help categories:\n\nmysql> help contents\nYou asked for help about help category: \"Contents\"\nFor more information, type \'help <item>\', where <item> is one of the\nfollowing categories:\n   Account Management\n   Administration\n   Data Definition\n   Data Manipulation\n   Data Types\n   Functions\n   Functions and Modifiers for Use with GROUP BY\n   Geographic Features\n   Language Structure\n   Storage Engines\n   Stored Routines\n   Table Maintenance\n   Transactions\n   Triggers\n\nIf the search string matches multiple items, mysql shows a list of\nmatching topics:\n\nmysql> help logs\nMany help items for your request exist.\nTo make a more specific request, please type \'help <item>\',\nwhere <item> is one of the following topics:\n   SHOW\n   SHOW BINARY LOGS\n   SHOW ENGINE\n   SHOW LOGS\n\nUse a topic as the search string to see the help entry for that topic:\n\nmysql> help show binary logs\nName: \'SHOW BINARY LOGS\'\nDescription:\nSyntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [purge-master-logs], that shows how\nto determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mysql-server-side-help.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/mysql-server-side-help.html'),(368,'QUARTER',28,'Syntax:\nQUARTER(date)\n\nReturns the quarter of the year for date, in the range 1 to 4.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT QUARTER(\'98-04-01\');\n        -> 2\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(369,'POSITION',33,'Syntax:\nPOSITION(substr IN str)\n\nPOSITION(substr IN str) is a synonym for LOCATE(substr,str).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(370,'IS_USED_LOCK',13,'Syntax:\nIS_USED_LOCK(str)\n\nChecks whether the lock named str is in use (that is, locked). If so,\nit returns the connection identifier of the client that holds the lock.\nOtherwise, it returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),(371,'POLYFROMTEXT',3,'PolyFromText(wkt[,srid]), PolygonFromText(wkt[,srid])\n\nConstructs a POLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),(372,'DES_ENCRYPT',10,'Syntax:\nDES_ENCRYPT(str[,{key_num|key_str}])\n\nEncrypts the string with the given key using the Triple-DES algorithm.\n\nThis function works only if MySQL has been configured with SSL support.\nSee http://dev.mysql.com/doc/refman/5.0/en/secure-connections.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','key_num des_key_str\n','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(373,'CEIL',4,'Syntax:\nCEIL(X)\n\nCEIL() is a synonym for CEILING().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(374,'LENGTH',33,'Syntax:\nLENGTH(str)\n\nReturns the length of the string str, measured in bytes. A multi-byte\ncharacter counts as multiple bytes. This means that for a string\ncontaining five two-byte characters, LENGTH() returns 10, whereas\nCHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT LENGTH(\'text\');\n        -> 4\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(375,'STR_TO_DATE',28,'Syntax:\nSTR_TO_DATE(str,format)\n\nThis is the inverse of the DATE_FORMAT() function. It takes a string\nstr and a format string format. STR_TO_DATE() returns a DATETIME value\nif the format string contains both date and time parts, or a DATE or\nTIME value if the string contains only date or time parts.\n\nThe date, time, or datetime values contained in str should be given in\nthe format indicated by format. For the specifiers that can be used in\nformat, see the DATE_FORMAT() function description. If str contains an\nillegal date, time, or datetime value, STR_TO_DATE() returns NULL.\nStarting from MySQL 5.0.3, an illegal value also produces a warning.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(376,'Y',9,'Y(p)\n\nReturns the Y-coordinate value for the point p as a double-precision\nnumber.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/point-property-functions.html\n\n','mysql> SET @pt = \'Point(56.7 53.34)\';\nmysql> SELECT Y(GeomFromText(@pt));\n+----------------------+\n| Y(GeomFromText(@pt)) |\n+----------------------+\n|                53.34 |\n+----------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/point-property-functions.html'),(377,'SHOW INNODB STATUS',25,'Syntax:\nSHOW INNODB STATUS\n\nIn MySQL 5.0, this is a deprecated synonym for SHOW ENGINE INNODB\nSTATUS. See [HELP SHOW ENGINE].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-innodb-status.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-innodb-status.html'),(378,'CHECKSUM TABLE',19,'Syntax:\nCHECKSUM TABLE tbl_name [, tbl_name] ... [ QUICK | EXTENDED ]\n\nCHECKSUM TABLE reports a table checksum.\n\nWith QUICK, the live table checksum is reported if it is available, or\nNULL otherwise. This is very fast. A live checksum is enabled by\nspecifying the CHECKSUM=1 table option when you create the table;\ncurrently, this is supported only for MyISAM tables. See [HELP CREATE\nTABLE].\n\nWith EXTENDED, the entire table is read row by row and the checksum is\ncalculated. This can be very slow for large tables.\n\nIf neither QUICK nor EXTENDED is specified, MySQL returns a live\nchecksum if the table storage engine supports it and scans the table\notherwise.\n\nFor a non-existent table, CHECKSUM TABLE returns NULL and, as of MySQL\n5.0.3, generates a warning.\n\nThe checksum value depends on the table row format. If the row format\nchanges, the checksum will change. For example, the storage format for\nVARCHAR changed between MySQL 4.1 and 5.0, so if a 4.1 table is\nupgraded to MySQL 5.0, the checksum value may change.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/checksum-table.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/checksum-table.html'),(379,'NUMINTERIORRINGS',2,'NumInteriorRings(poly)\n\nReturns the number of interior rings in the Polygon value poly.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html\n\n','mysql> SET @poly =\n    -> \'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))\';\nmysql> SELECT NumInteriorRings(GeomFromText(@poly));\n+---------------------------------------+\n| NumInteriorRings(GeomFromText(@poly)) |\n+---------------------------------------+\n|                                     1 |\n+---------------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html'),(380,'INTERIORRINGN',2,'InteriorRingN(poly,N)\n\nReturns the N-th interior ring for the Polygon value poly as a\nLineString. Rings are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html\n\n','mysql> SET @poly =\n    -> \'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))\';\nmysql> SELECT AsText(InteriorRingN(GeomFromText(@poly),1));\n+----------------------------------------------+\n| AsText(InteriorRingN(GeomFromText(@poly),1)) |\n+----------------------------------------------+\n| LINESTRING(1 1,1 2,2 2,2 1,1 1)              |\n+----------------------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html'),(381,'UTC_TIME',28,'Syntax:\nUTC_TIME, UTC_TIME()\n\nReturns the current UTC time as a value in \'HH:MM:SS\' or HHMMSS.uuuuuu\nformat, depending on whether the function is used in a string or\nnumeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT UTC_TIME(), UTC_TIME() + 0;\n        -> \'18:07:53\', 180753.000000\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(382,'DROP FUNCTION',34,'Syntax:\nDROP FUNCTION function_name\n\nThis statement drops the user-defined function (UDF) named\nfunction_name.\n\nTo drop a function, you must have the DELETE privilege for the mysql\ndatabase. This is because DROP FUNCTION removes a row from the\nmysql.func system table that records the function\'s name, type, and\nshared library name.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-function.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/drop-function.html'),(383,'STDDEV',14,'Syntax:\nSTDDEV(expr)\n\nReturns the population standard deviation of expr. This function is\nprovided for compatibility with Oracle. As of MySQL 5.0.3, the standard\nSQL function STDDEV_POP() can be used instead.\n\nThis function returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(384,'DATE_SUB',28,'Syntax:\nDATE_SUB(date,INTERVAL expr unit)\n\nSee the description for DATE_ADD().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(385,'PERIOD_ADD',28,'Syntax:\nPERIOD_ADD(P,N)\n\nAdds N months to period P (in the format YYMM or YYYYMM). Returns a\nvalue in the format YYYYMM. Note that the period argument P is not a\ndate value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT PERIOD_ADD(9801,2);\n        -> 199803\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(386,'|',18,'Syntax:\n|\n\nBitwise OR:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n','mysql> SELECT 29 | 15;\n        -> 31\n','http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),(387,'GEOMFROMTEXT',3,'GeomFromText(wkt[,srid]), GeometryFromText(wkt[,srid])\n\nConstructs a geometry value of any type using its WKT representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),(388,'RIGHT',33,'Syntax:\nRIGHT(str,len)\n\nReturns the rightmost len characters from the string str, or NULL if\nany argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT RIGHT(\'foobarbar\', 4);\n        -> \'rbar\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(389,'DATEDIFF',28,'Syntax:\nDATEDIFF(expr1,expr2)\n\nDATEDIFF() returns expr1 - expr2 expressed as a value in days from one\ndate to the other. expr1 and expr2 are date or date-and-time\nexpressions. Only the date parts of the values are used in the\ncalculation.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT DATEDIFF(\'1997-12-31 23:59:59\',\'1997-12-30\');\n        -> 1\nmysql> SELECT DATEDIFF(\'1997-11-30 23:59:59\',\'1997-12-31\');\n        -> -31\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(390,'DROP PROCEDURE',35,'Syntax:\nDROP {PROCEDURE | FUNCTION} [IF EXISTS] sp_name\n\nThis statement is used to drop a stored procedure or function. That is,\nthe specified routine is removed from the server. As of MySQL 5.0.3,\nyou must have the ALTER ROUTINE privilege for the routine. (That\nprivilege is granted automatically to the routine creator.)\n\nThe IF EXISTS clause is a MySQL extension. It prevents an error from\noccurring if the procedure or function does not exist. A warning is\nproduced that can be viewed with SHOW WARNINGS.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-procedure.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/drop-procedure.html'),(391,'CHECK TABLE',19,'Syntax:\nCHECK TABLE tbl_name [, tbl_name] ... [option] ...\n\noption = {FOR UPGRADE | QUICK | FAST | MEDIUM | EXTENDED | CHANGED}\n\nCHECK TABLE checks a table or tables for errors. CHECK TABLE works for\nMyISAM, InnoDB, and (as of MySQL 5.0.16) ARCHIVE tables. For MyISAM\ntables, the key statistics are updated as well.\n\nAs of MySQL 5.0.2, CHECK TABLE can also check views for problems, such\nas tables that are referenced in the view definition that no longer\nexist.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/check-table.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/check-table.html'),(392,'BIN',33,'Syntax:\nBIN(N)\n\nReturns a string representation of the binary value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,2). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT BIN(12);\n        -> \'1100\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(393,'DECLARE CURSOR',35,'Syntax:\nDECLARE cursor_name CURSOR FOR select_statement\n\nThis statement declares a cursor. Multiple cursors may be declared in a\nroutine, but each cursor in a given block must have a unique name.\n\nThe SELECT statement cannot have an INTO clause.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/declare-cursors.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/declare-cursors.html'),(394,'MULTILINESTRING',22,'MultiLineString(ls1,ls2,...)\n\nConstructs a WKB MultiLineString value using WKB LineString arguments.\nIf any argument is not a WKB LineString, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),(395,'LOAD DATA',25,'Syntax:\nLOAD DATA [LOW_PRIORITY | CONCURRENT] [LOCAL] INFILE \'file_name\'\n    [REPLACE | IGNORE]\n    INTO TABLE tbl_name\n    [CHARACTER SET charset_name]\n    [FIELDS\n        [TERMINATED BY \'string\']\n        [[OPTIONALLY] ENCLOSED BY \'char\']\n        [ESCAPED BY \'char\']\n    ]\n    [LINES\n        [STARTING BY \'string\']\n        [TERMINATED BY \'string\']\n    ]\n    [IGNORE number LINES]\n    [(col_name_or_user_var,...)]\n    [SET col_name = expr,...]\n\nThe LOAD DATA INFILE statement reads rows from a text file into a table\nat a very high speed. The filename must be given as a literal string.\n\nLOAD DATA INFILE is the complement of SELECT ... INTO OUTFILE. (See\n[HELP SELECT].) To write data from a table to a file, use SELECT ...\nINTO OUTFILE. To read the file back into a table, use LOAD DATA INFILE.\nThe syntax of the FIELDS and LINES clauses is the same for both\nstatements. Both clauses are optional, but FIELDS must precede LINES if\nboth are specified.\n\nFor more information about the efficiency of INSERT versus LOAD DATA\nINFILE and speeding up LOAD DATA INFILE, see\nhttp://dev.mysql.com/doc/refman/5.0/en/insert-speed.html.\n\nThe character set indicated by the character_set_database system\nvariable is used to interpret the information in the file. SET NAMES\nand the setting of character_set_client do not affect interpretation of\ninput. Beginning with MySQL 5.0.38, if the contents of the input file\nuse a character set that differs from the default, it is possible (and\nusually preferable) to use the CHARACTER SET clause to specify the\ncharacter set of the file.\n\nLOAD DATA INFILE interprets all fields in the file as having the same\ncharacter set, regardless of the data types of the columns into which\nfield values are loaded. For proper interpretation of file contents,\nyou must ensure that it was written with the correct character set. For\nexample, if you write a data file with mysqldump -T or by issuing a\nSELECT ... INTO OUTFILE statement in mysql, be sure to use a\n--default-character-set option with mysqldump or mysql so that output\nis written in the character set to be used when the file is loaded with\nLOAD DATA INFILE.\n\nNote that it is currently not possible to load data files that use the\nucs2 character set.\n\nAs of MySQL 5.0.19, the character_set_filesystem system variable\ncontrols the interpretation of the filename.\n\nYou can also load data files by using the mysqlimport utility; it\noperates by sending a LOAD DATA INFILE statement to the server. The\n--local option causes mysqlimport to read data files from the client\nhost. You can specify the --compress option to get better performance\nover slow networks if the client and server support the compressed\nprotocol. See http://dev.mysql.com/doc/refman/5.0/en/mysqlimport.html.\n\nIf you use LOW_PRIORITY, execution of the LOAD DATA statement is\ndelayed until no other clients are reading from the table. This affects\nonly storage engines that use only table-level locking (MyISAM, MEMORY,\nMERGE).\n\nIf you specify CONCURRENT with a MyISAM table that satisfies the\ncondition for concurrent inserts (that is, it contains no free blocks\nin the middle), other threads can retrieve data from the table while\nLOAD DATA is executing. Using this option affects the performance of\nLOAD DATA a bit, even if no other thread is using the table at the same\ntime.\n\nThe LOCAL keyword, if specified, is interpreted with respect to the\nclient end of the connection:\n\no If LOCAL is specified, the file is read by the client program on the\n  client host and sent to the server. The file can be given as a full\n  pathname to specify its exact location. If given as a relative\n  pathname, the name is interpreted relative to the directory in which\n  the client program was started.\n\no If LOCAL is not specified, the file must be located on the server\n  host and is read directly by the server. The server uses the\n  following rules to locate the file:\n\n  o If the filename is an absolute pathname, the server uses it as\n    given.\n\n  o If the filename is a relative pathname with one or more leading\n    components, the server searches for the file relative to the\n    server\'s data directory.\n\n  o If a filename with no leading components is given, the server looks\n    for the file in the database directory of the default database.\n\nNote that, in the non-LOCAL case, these rules mean that a file named as\n./myfile.txt is read from the server\'s data directory, whereas the file\nnamed as myfile.txt is read from the database directory of the default\ndatabase. For example, if db1 is the default database, the following\nLOAD DATA statement reads the file data.txt from the database directory\nfor db1, even though the statement explicitly loads the file into a\ntable in the db2 database:\n\nLOAD DATA INFILE \'data.txt\' INTO TABLE db2.my_table;\n\nWindows pathnames are specified using forward slashes rather than\nbackslashes. If you do use backslashes, you must double them.\n\nFor security reasons, when reading text files located on the server,\nthe files must either reside in the database directory or be readable\nby all. Also, to use LOAD DATA INFILE on server files, you must have\nthe FILE privilege. See\nhttp://dev.mysql.com/doc/refman/5.0/en/privileges-provided.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/load-data.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/load-data.html'),(396,'LOCALTIME',28,'Syntax:\nLOCALTIME, LOCALTIME()\n\nLOCALTIME and LOCALTIME() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(397,'MPOINTFROMTEXT',3,'MPointFromText(wkt[,srid]), MultiPointFromText(wkt[,srid])\n\nConstructs a MULTIPOINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),(398,'BLOB',20,'BLOB[(M)]\n\nA BLOB column with a maximum length of 65,535 (216 - 1) bytes. Each\nBLOB value is stored using a two-byte length prefix that indicates the\nnumber of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest BLOB type large enough to hold\nvalues M bytes long.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(399,'SHA1',10,'Syntax:\nSHA1(str), SHA(str)\n\nCalculates an SHA-1 160-bit checksum for the string, as described in\nRFC 3174 (Secure Hash Algorithm). The value is returned as a binary\nstring of 40 hex digits, or NULL if the argument was NULL. One of the\npossible uses for this function is as a hash key. You can also use it\nas a cryptographic function for storing passwords. SHA() is synonymous\nwith SHA1().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','mysql> SELECT SHA1(\'abc\');\n        -> \'a9993e364706816aba3e25717850c26c9cd0d89d\'\n','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(400,'SUBSTR',33,'Syntax:\nSUBSTR(str,pos), SUBSTR(str FROM pos), SUBSTR(str,pos,len), SUBSTR(str\nFROM pos FOR len)\n\nSUBSTR() is a synonym for SUBSTRING().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(401,'PASSWORD',10,'Syntax:\nPASSWORD(str)\n\nCalculates and returns a password string from the plaintext password\nstr and returns a binary string, or NULL if the argument was NULL. This\nis the function that is used for encrypting MySQL passwords for storage\nin the Password column of the user grant table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','mysql> SELECT PASSWORD(\'badpwd\');\n        -> \'*AAB3E285149C0135D51A520E1940DD3263DC008C\'\n','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(402,'CHAR',20,'[NATIONAL] CHAR[(M)] [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA fixed-length string that is always right-padded with spaces to the\nspecified length when stored. M represents the column length in\ncharacters. The range of M is 0 to 255. If M is omitted, the length is\n1.\n\n*Note*: Trailing spaces are removed when CHAR values are retrieved.\n\nBefore MySQL 5.0.3, a CHAR column with a length specification greater\nthan 255 is converted to the smallest TEXT type that can hold values of\nthe given length. For example, CHAR(500) is converted to TEXT, and\nCHAR(200000) is converted to MEDIUMTEXT. However, this conversion\ncauses the column to become a variable-length column, and also affects\ntrailing-space removal.\n\nIn MySQL 5.0.3 and later, a CHAR length greater than 255 is illegal and\nfails with an error:\n\nmysql> CREATE TABLE c1 (col1 INT, col2 CHAR(500));\nERROR 1074 (42000): Column length too big for column \'col\' (max = 255);\nuse BLOB or TEXT instead\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(403,'UTC_DATE',28,'Syntax:\nUTC_DATE, UTC_DATE()\n\nReturns the current UTC date as a value in \'YYYY-MM-DD\' or YYYYMMDD\nformat, depending on whether the function is used in a string or\nnumeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT UTC_DATE(), UTC_DATE() + 0;\n        -> \'2003-08-14\', 20030814\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(404,'DIMENSION',32,'Dimension(g)\n\nReturns the inherent dimension of the geometry value g. The result can\nbe -1, 0, 1, or 2. The meaning of these values is given in [HELP MBR\ndefinition].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n','mysql> SELECT Dimension(GeomFromText(\'LineString(1 1,2 2)\'));\n+------------------------------------------------+\n| Dimension(GeomFromText(\'LineString(1 1,2 2)\')) |\n+------------------------------------------------+\n|                                              1 |\n+------------------------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),(405,'COUNT DISTINCT',14,'Syntax:\nCOUNT(DISTINCT expr,[expr...])\n\nReturns a count of the number of different non-NULL values.\n\nCOUNT(DISTINCT) returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n','mysql> SELECT COUNT(DISTINCT results) FROM student;\n','http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),(406,'BIT',20,'BIT[(M)]\n\nA bit-field type. M indicates the number of bits per value, from 1 to\n64. The default is 1 if M is omitted.\n\nThis data type was added in MySQL 5.0.3 for MyISAM, and extended in\n5.0.5 to MEMORY, InnoDB, and BDB. Before 5.0.3, BIT is a synonym for\nTINYINT(1).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(407,'EQUALS',26,'Equals(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially equal to g2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),(408,'SHOW CREATE VIEW',25,'Syntax:\nSHOW CREATE VIEW view_name\n\nThis statement shows a CREATE VIEW statement that creates the given\nview.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-create-view.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-create-view.html'),(409,'INTERVAL',17,'Syntax:\nINTERVAL(N,N1,N2,N3,...)\n\nReturns 0 if N < N1, 1 if N < N2 and so on or -1 if N is NULL. All\narguments are treated as integers. It is required that N1 < N2 < N3 <\n... < Nn for this function to work correctly. This is because a binary\nsearch is used (very fast).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT INTERVAL(23, 1, 15, 17, 30, 44, 200);\n        -> 3\nmysql> SELECT INTERVAL(10, 1, 10, 100, 1000);\n        -> 2\nmysql> SELECT INTERVAL(22, 23, 30, 44, 200);\n        -> 0\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(410,'FROM_DAYS',28,'Syntax:\nFROM_DAYS(N)\n\nGiven a day number N, returns a DATE value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT FROM_DAYS(729669);\n        -> \'1997-10-07\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(411,'ALTER PROCEDURE',35,'Syntax:\nALTER {PROCEDURE | FUNCTION} sp_name [characteristic ...]\n\ncharacteristic:\n    { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n  | COMMENT \'string\'\n\nThis statement can be used to change the characteristics of a stored\nprocedure or function. As of MySQL 5.0.3, you must have the ALTER\nROUTINE privilege for the routine. (That privilege is granted\nautomatically to the routine creator.) If binary logging is enabled,\nthis statement might also require the SUPER privilege, as described in\nhttp://dev.mysql.com/doc/refman/5.0/en/stored-procedure-logging.html.\n\nMore than one change may be specified in an ALTER PROCEDURE or ALTER\nFUNCTION statement.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/alter-procedure.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/alter-procedure.html'),(412,'BIT_COUNT',18,'Syntax:\nBIT_COUNT(N)\n\nReturns the number of bits that are set in the argument N.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n','mysql> SELECT BIT_COUNT(29), BIT_COUNT(b\'101010\');\n        -> 4, 3\n','http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),(413,'OCTET_LENGTH',33,'Syntax:\nOCTET_LENGTH(str)\n\nOCTET_LENGTH() is a synonym for LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(414,'UTC_TIMESTAMP',28,'Syntax:\nUTC_TIMESTAMP, UTC_TIMESTAMP()\n\nReturns the current UTC date and time as a value in \'YYYY-MM-DD\nHH:MM:SS\' or YYYYMMDDHHMMSS.uuuuuu format, depending on whether the\nfunction is used in a string or numeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT UTC_TIMESTAMP(), UTC_TIMESTAMP() + 0;\n        -> \'2003-08-14 18:08:04\', 20030814180804.000000\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(415,'AES_ENCRYPT',10,'Syntax:\nAES_ENCRYPT(str,key_str)\n\nAES_ENCRYPT() and AES_DECRYPT() allow encryption and decryption of data\nusing the official AES (Advanced Encryption Standard) algorithm,\npreviously known as \"Rijndael.\" Encoding with a 128-bit key length is\nused, but you can extend it up to 256 bits by modifying the source. We\nchose 128 bits because it is much faster and it is secure enough for\nmost purposes.\n\nAES_ENCRYPT() encrypts a string and returns a binary string.\nAES_DECRYPT() decrypts the encrypted string and returns the original\nstring. The input arguments may be any length. If either argument is\nNULL, the result of this function is also NULL.\n\nBecause AES is a block-level algorithm, padding is used to encode\nuneven length strings and so the result string length may be calculated\nusing this formula:\n\n16 x (trunc(string_length / 16) + 1)\n\nIf AES_DECRYPT() detects invalid data or incorrect padding, it returns\nNULL. However, it is possible for AES_DECRYPT() to return a non-NULL\nvalue (possibly garbage) if the input data or the key is invalid.\n\nYou can use the AES functions to store data in an encrypted form by\nmodifying your queries:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','INSERT INTO t VALUES (1,AES_ENCRYPT(\'text\',\'password\'));\n','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(416,'+',4,'Syntax:\n+\n\nAddition:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n','mysql> SELECT 3+5;\n        -> 8\n','http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),(417,'INET_NTOA',13,'Syntax:\nINET_NTOA(expr)\n\nGiven a numeric network address (4 or 8 byte), returns the dotted-quad\nrepresentation of the address as a string.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n','mysql> SELECT INET_NTOA(3520061480);\n        -> \'209.207.224.40\'\n','http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),(418,'ACOS',4,'Syntax:\nACOS(X)\n\nReturns the arc cosine of X, that is, the value whose cosine is X.\nReturns NULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT ACOS(1);\n        -> 0\nmysql> SELECT ACOS(1.0001);\n        -> NULL\nmysql> SELECT ACOS(0);\n        -> 1.5707963267949\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(419,'ISOLATION',7,'Syntax:\nSET [GLOBAL | SESSION] TRANSACTION ISOLATION LEVEL\n{ READ UNCOMMITTED | READ COMMITTED | REPEATABLE READ | SERIALIZABLE }\n\nThis statement sets the transaction isolation level for the next\ntransaction, globally, or for the current session.\n\nThe default behavior of SET TRANSACTION is to set the isolation level\nfor the next (not yet started) transaction. If you use the GLOBAL\nkeyword, the statement sets the default transaction level globally for\nall new connections created from that point on. Existing connections\nare unaffected. You need the SUPER privilege to do this. Using the\nSESSION keyword sets the default transaction level for all future\ntransactions performed on the current connection.\n\nFor descriptions of each InnoDB transaction isolation level, see\nhttp://dev.mysql.com/doc/refman/5.0/en/innodb-transaction-isolation.htm\nl. InnoDB supports each of these levels in MySQL 5.0. The default level\nis REPEATABLE READ.\n\nTo set the initial default global isolation level for mysqld, use the\n--transaction-isolation option. See\nhttp://dev.mysql.com/doc/refman/5.0/en/server-options.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/set-transaction.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/set-transaction.html'),(420,'CEILING',4,'Syntax:\nCEILING(X)\n\nReturns the smallest integer value not less than X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT CEILING(1.23);\n        -> 2\nmysql> SELECT CEILING(-1.23);\n        -> -1\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(421,'SIN',4,'Syntax:\nSIN(X)\n\nReturns the sine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT SIN(PI());\n        -> 1.2246063538224e-16\nmysql> SELECT ROUND(SIN(PI()));\n        -> 0\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(422,'DAYOFWEEK',28,'Syntax:\nDAYOFWEEK(date)\n\nReturns the weekday index for date (1 = Sunday, 2 = Monday, ..., 7 =\nSaturday). These index values correspond to the ODBC standard.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT DAYOFWEEK(\'1998-02-03\');\n        -> 3\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(423,'LINEFROMWKB',29,'LineFromWKB(wkb[,srid]), LineStringFromWKB(wkb[,srid])\n\nConstructs a LINESTRING value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),(424,'SHOW PROCESSLIST',25,'Syntax:\nSHOW [FULL] PROCESSLIST\n\nSHOW PROCESSLIST shows you which threads are running. You can also get\nthis information using the mysqladmin processlist command. If you have\nthe PROCESS privilege, you can see all threads. Otherwise, you can see\nonly your own threads (that is, threads associated with the MySQL\naccount that you are using). If you do not use the FULL keyword, only\nthe first 100 characters of each statement are shown in the Info field.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-processlist.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-processlist.html'),(425,'GEOMETRYTYPE',32,'GeometryType(g)\n\nReturns as a string the name of the geometry type of which the geometry\ninstance g is a member. The name corresponds to one of the instantiable\nGeometry subclasses.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n','mysql> SELECT GeometryType(GeomFromText(\'POINT(1 1)\'));\n+------------------------------------------+\n| GeometryType(GeomFromText(\'POINT(1 1)\')) |\n+------------------------------------------+\n| POINT                                    |\n+------------------------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),(426,'CREATE VIEW',36,'Syntax:\nCREATE\n    [OR REPLACE]\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThe CREATE VIEW statement creates a new view, or replaces an existing\none if the OR REPLACE clause is given. This statement was added in\nMySQL 5.0.1. If the view does not exist, CREATE OR REPLACE VIEW is the\nsame as CREATE VIEW. If the view does exist, CREATE OR REPLACE VIEW is\nthe same as ALTER VIEW.\n\nThe select_statement is a SELECT statement that provides the definition\nof the view. (When you select from the view, you select in effect using\nthe SELECT statement.) select_statement can select from base tables or\nother views.\n\nThe view definition is \"frozen\" at creation time, so changes to the\nunderlying tables afterward do not affect the view definition. For\nexample, if a view is defined as SELECT * on a table, new columns added\nto the table later do not become part of the view.\n\nThe ALGORITHM clause affects how MySQL processes the view. The DEFINER\nand SQL SECURITY clauses specify the security context to be used when\nchecking access privileges at view invocation time. The WITH CHECK\nOPTION clause can be given to constrain inserts or updates to rows in\ntables referenced by the view. These clauses are described later in\nthis section.\n\nThe CREATE VIEW statement requires the CREATE VIEW privilege for the\nview, and some privilege for each column selected by the SELECT\nstatement. For columns used elsewhere in the SELECT statement you must\nhave the SELECT privilege. If the OR REPLACE clause is present, you\nmust also have the DROP privilege for the view.\n\nA view belongs to a database. By default, a new view is created in the\ndefault database. To create the view explicitly in a given database,\nspecify the name as db_name.view_name when you create it.\n\nmysql> CREATE VIEW test.v AS SELECT * FROM t;\n\nBase tables and views share the same namespace within a database, so a\ndatabase cannot contain a base table and a view that have the same\nname.\n\nViews must have unique column names with no duplicates, just like base\ntables. By default, the names of the columns retrieved by the SELECT\nstatement are used for the view column names. To define explicit names\nfor the view columns, the optional column_list clause can be given as a\nlist of comma-separated identifiers. The number of names in column_list\nmust be the same as the number of columns retrieved by the SELECT\nstatement.\n\nWhen you modify an existing view, the current view definition is backed\nup and saved. It is stored in that table\'s database directory, in a\nsub-folder named arc. The backup file will be named\nview_name.frm-00001. If you alter the view again, the next backup will\nbe named view_name.frm-00002. The three latest view backup definitions\nwill be stored.\n\n*Note*: Backed up view definitions will not be preserved by mysqldump,\nor any other such programs, but you could retain it from a file copy.\nHowever, they are not needed for anything, but to provide you with a\nbackup of your previous view definition.\n\nAlso note that while it is safe to remove these, it is not safe to do\nso while mysqld is running. If you delete this folder (or sub-files)\nwhile mysqld is running, you will receive an error the next time you\ntry to alter that view:\n\nmysql> ALTER VIEW v AS SELECT * FROM t;\nERROR 6 (HY000): Error on delete of \'.\\test\\arc/v.frm-0004\' (Errcode:\n2)\n\nColumns retrieved by the SELECT statement can be simple references to\ntable columns. They can also be expressions that use functions,\nconstant values, operators, and so forth.\n\nUnqualified table or view names in the SELECT statement are interpreted\nwith respect to the default database. A view can refer to tables or\nviews in other databases by qualifying the table or view name with the\nproper database name.\n\nA view can be created from many kinds of SELECT statements. It can\nrefer to base tables or other views. It can use joins, UNION, and\nsubqueries. The SELECT need not even refer to any tables. The following\nexample defines a view that selects two columns from another table, as\nwell as an expression calculated from those columns:\n\nmysql> CREATE TABLE t (qty INT, price INT);\nmysql> INSERT INTO t VALUES(3, 50);\nmysql> CREATE VIEW v AS SELECT qty, price, qty*price AS value FROM t;\nmysql> SELECT * FROM v;\n+------+-------+-------+\n| qty  | price | value |\n+------+-------+-------+\n|    3 |    50 |   150 |\n+------+-------+-------+\n\nA view definition is subject to the following restrictions:\n\no The SELECT statement cannot contain a subquery in the FROM clause.\n\no The SELECT statement cannot refer to system or user variables.\n\no The SELECT statement cannot refer to prepared statement parameters.\n\no Within a stored routine, the definition cannot refer to routine\n  parameters or local variables.\n\no Any table or view referred to in the definition must exist. However,\n  after a view has been created, it is possible to drop a table or view\n  that the definition refers to. In this case, use of the view results\n  in an error. To check a view definition for problems of this kind,\n  use the CHECK TABLE statement.\n\no The definition cannot refer to a TEMPORARY table, and you cannot\n  create a TEMPORARY view.\n\no The tables named in the view definition must already exist.\n\no You cannot associate a trigger with a view.\n\nORDER BY is allowed in a view definition, but it is ignored if you\nselect from a view using a statement that has its own ORDER BY.\n\nFor other options or clauses in the definition, they are added to the\noptions or clauses of the statement that references the view, but the\neffect is undefined. For example, if a view definition includes a LIMIT\nclause, and you select from the view using a statement that has its own\nLIMIT clause, it is undefined which limit applies. This same principle\napplies to options such as ALL, DISTINCT, or SQL_SMALL_RESULT that\nfollow the SELECT keyword, and to clauses such as INTO, FOR UPDATE,\nLOCK IN SHARE MODE, and PROCEDURE.\n\nIf you create a view and then change the query processing environment\nby changing system variables, that may affect the results that you get\nfrom the view:\n\nmysql> CREATE VIEW v (mycol) AS SELECT \'abc\';\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SET sql_mode = \'\';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT \"mycol\" FROM v;\n+-------+\n| mycol |\n+-------+\n| mycol | \n+-------+\n1 row in set (0.01 sec)\n\nmysql> SET sql_mode = \'ANSI_QUOTES\';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT \"mycol\" FROM v;\n+-------+\n| mycol |\n+-------+\n| abc   | \n+-------+\n1 row in set (0.00 sec)\n\nThe DEFINER and SQL SECURITY clauses specify the security context to be\nused when checking access privileges at view invocation time. They were\naddded in MySQL 5.0.13, but have no effect until MySQL 5.0.16.\n\nThe default DEFINER value is the user who executes the CREATE VIEW\nstatement. This is the same as specifying DEFINER = CURRENT_USER\nexplicitly. CURRENT_USER also can be given as CURRENT_USER(). If a user\nvalue is given, it should be a MySQL account in \'user_name\'@\'host_name\'\nformat (the same format used in the GRANT statement). The user_name and\nhost_name values both are required.\n\nIf you specify the DEFINER clause, you cannot set the value to any user\nbut your own unless you have the SUPER privilege. These rules determine\nthe legal DEFINER user values:\n\no If you do not have the SUPER privilege, the only legal user value is\n  your own account, either specified literally or by using\n  CURRENT_USER. You cannot set the definer to some other account.\n\no If you have the SUPER privilege, you can specify any syntactically\n  legal account name. If the account does not actually exist, a warning\n  is generated.\n\nWithin a stored routine that is defined with the SQL SECURITY DEFINER\ncharacteristic, CURRENT_USER returns the routine creator. This also\naffects a view defined within such a routine, if the view definition\ncontains a DEFINER value of CURRENT_USER.\n\nThe SQL SECURITY characteristic determines which MySQL account to use\nwhen checking access privileges for the view when a statement is\nexecuted that references the view. The legal characteristic values are\nDEFINER and INVOKER. These indicate that the required privileges must\nbe held by the user who defined or invoked the view, respectively. The\ndefault SQL SECURITY value is DEFINER. If the value is DEFINER but the\ndefiner account does not exist when the view is referenced, an error\noccurs.\n\nAs of MySQL 5.0.16 (when the DEFINER and SQL SECURITY clauses were\nimplemented), view privileges are checked like this:\n\no At view definition time, the view creator must have the privileges\n  needed to use the top-level objects accessed by the view. For\n  example, if the view definition refers to table columns, the creator\n  must have privileges for the columns, as described previously. If the\n  definition refers to a stored function, only the privileges needed to\n  invoke the function can be checked. The privileges required when the\n  function runs can be checked only as it executes: For different\n  invocations of the function, different execution paths within the\n  function might be taken.\n\no When a view is referenced, privileges for objects accessed by the\n  view are checked against the privileges held by the view creator or\n  invoker, depending on whether the SQL SECURITY characteristic is\n  DEFINER or INVOKER, respectively.\n\no If reference to a view causes execution of a stored function,\n  privilege checking for statements executed within the function depend\n  on whether the function is defined with a SQL SECURITY characteristic\n  of DEFINER or INVOKER. If the security characteristic is DEFINER, the\n  function runs with the privileges of its creator. If the\n  characteristic is INVOKER, the function runs with the privileges\n  determined by the view\'s SQL SECURITY characteristic.\n\nPrior to MySQL 5.0.16 (before the DEFINER and SQL SECURITY clauses were\nimplemented), privileges required for objects used in a view are\nchecked at view creation time.\n\nExample: A view might depend on a stored function, and that function\nmight invoke other stored routines. For example, the following view\ninvokes a stored function f():\n\nCREATE VIEW v AS SELECT * FROM t WHERE t.id = f(t.name);\n\nSuppose that f() contains a statement such as this:\n\nIF name IS NULL then\n  CALL p1();\nELSE\n  CALL p2();\nEND IF;\n\nThe privileges required for executing statements within f() need to be\nchecked when f() executes. This might mean that privileges are needed\nfor p1() or p2(), depending on the execution path within f(). Those\nprivileges must be checked at runtime, and the user who must possess\nthe privileges is determined by the SQL SECURITY values of the view v\nand the function f().\n\nThe DEFINER and SQL SECURITY clauses for views are extensions to\nstandard SQL. In standard SQL, views are handled using the rules for\nSQL SECURITY INVOKER.\n\nIf you invoke a view that was created before MySQL 5.0.13, it is\ntreated as though it was created with a SQL SECURITY DEFINER clause and\nwith a DEFINER value that is the same as your account. However, because\nthe actual definer is unknown, MySQL issues a warning. To make the\nwarning go away, it is sufficient to re-create the view so that the\nview definition includes a DEFINER clause.\n\nThe optional ALGORITHM clause is a MySQL extension to standard SQL. It\naffects how MySQL processes the view. ALGORITHM takes three values:\nMERGE, TEMPTABLE, or UNDEFINED. The default algorithm is UNDEFINED if\nno ALGORITHM clause is present.\n\nFor MERGE, the text of a statement that refers to the view and the view\ndefinition are merged such that parts of the view definition replace\ncorresponding parts of the statement.\n\nFor TEMPTABLE, the results from the view are retrieved into a temporary\ntable, which then is used to execute the statement.\n\nFor UNDEFINED, MySQL chooses which algorithm to use. It prefers MERGE\nover TEMPTABLE if possible, because MERGE is usually more efficient and\nbecause a view cannot be updatable if a temporary table is used.\n\nA reason to choose TEMPTABLE explicitly is that locks can be released\non underlying tables after the temporary table has been created and\nbefore it is used to finish processing the statement. This might result\nin quicker lock release than the MERGE algorithm so that other clients\nthat use the view are not blocked as long.\n\nA view algorithm can be UNDEFINED for three reasons:\n\no No ALGORITHM clause is present in the CREATE VIEW statement.\n\no The CREATE VIEW statement has an explicit ALGORITHM = UNDEFINED\n  clause.\n\no ALGORITHM = MERGE is specified for a view that can be processed only\n  with a temporary table. In this case, MySQL generates a warning and\n  sets the algorithm to UNDEFINED.\n\nAs mentioned earlier, MERGE is handled by merging corresponding parts\nof a view definition into the statement that refers to the view. The\nfollowing examples briefly illustrate how the MERGE algorithm works.\nThe examples assume that there is a view v_merge that has this\ndefinition:\n\nCREATE ALGORITHM = MERGE VIEW v_merge (vc1, vc2) AS\nSELECT c1, c2 FROM t WHERE c3 > 100;\n\nExample 1: Suppose that we issue this statement:\n\nSELECT * FROM v_merge;\n\nMySQL handles the statement as follows:\n\no v_merge becomes t\n\no * becomes vc1, vc2, which corresponds to c1, c2\n\no The view WHERE clause is added\n\nThe resulting statement to be executed becomes:\n\nSELECT c1, c2 FROM t WHERE c3 > 100;\n\nExample 2: Suppose that we issue this statement:\n\nSELECT * FROM v_merge WHERE vc1 < 100;\n\nThis statement is handled similarly to the previous one, except that\nvc1 < 100 becomes c1 < 100 and the view WHERE clause is added to the\nstatement WHERE clause using an AND connective (and parentheses are\nadded to make sure the parts of the clause are executed with correct\nprecedence). The resulting statement to be executed becomes:\n\nSELECT c1, c2 FROM t WHERE (c3 > 100) AND (c1 < 100);\n\nEffectively, the statement to be executed has a WHERE clause of this\nform:\n\nWHERE (select WHERE) AND (view WHERE)\n\nThe MERGE algorithm requires a one-to-one relationship between the rows\nin the view and the rows in the underlying table. If this relationship\ndoes not hold, a temporary table must be used instead. Lack of a\none-to-one relationship occurs if the view contains any of a number of\nconstructs:\n\no Aggregate functions (SUM(), MIN(), MAX(), COUNT(), and so forth)\n\no DISTINCT\n\no GROUP BY\n\no HAVING\n\no UNION or UNION ALL\n\no Subquery in the select list\n\no Refers only to literal values (in this case, there is no underlying\n  table)\n\nSome views are updatable. That is, you can use them in statements such\nas UPDATE, DELETE, or INSERT to update the contents of the underlying\ntable. For a view to be updatable, there must be a one-to-one\nrelationship between the rows in the view and the rows in the\nunderlying table. There are also certain other constructs that make a\nview non-updatable. To be more specific, a view is not updatable if it\ncontains any of the following:\n\no Aggregate functions (SUM(), MIN(), MAX(), COUNT(), and so forth)\n\no DISTINCT\n\no GROUP BY\n\no HAVING\n\no UNION or UNION ALL\n\no Subquery in the select list\n\no Certain joins (see additional join discussion later in this section)\n\no Non-updatable view in the FROM clause\n\no A subquery in the WHERE clause that refers to a table in the FROM\n  clause\n\no Refers only to literal values (in this case, there is no underlying\n  table to update)\n\no ALGORITHM = TEMPTABLE (use of a temporary table always makes a view\n  non-updatable)\n\nWith respect to insertability (being updatable with INSERT statements),\nan updatable view is insertable if it also satisfies these additional\nrequirements for the view columns:\n\no There must be no duplicate view column names.\n\no The view must contain all columns in the base table that do not have\n  a default value.\n\no The view columns must be simple column references and not derived\n  columns. A derived column is one that is not a simple column\n  reference but is derived from an expression. These are examples of\n  derived columns:\n\n3.14159\ncol1 + 3\nUPPER(col2)\ncol3 / col4\n(subquery)\n\nA view that has a mix of simple column references and derived columns\nis not insertable, but it can be updatable if you update only those\ncolumns that are not derived. Consider this view:\n\nCREATE VIEW v AS SELECT col1, 1 AS col2 FROM t;\n\nThis view is not insertable because col2 is derived from an expression.\nBut it is updatable if the update does not try to update col2. This\nupdate is allowable:\n\nUPDATE v SET col1 = 0;\n\nThis update is not allowable because it attempts to update a derived\ncolumn:\n\nUPDATE v SET col2 = 0;\n\nIt is sometimes possible for a multiple-table view to be updatable,\nassuming that it can be processed with the MERGE algorithm. For this to\nwork, the view must use an inner join (not an outer join or a UNION).\nAlso, only a single table in the view definition can be updated, so the\nSET clause must name only columns from one of the tables in the view.\nViews that use UNION ALL are disallowed even though they might be\ntheoretically updatable, because the implementation uses temporary\ntables to process them.\n\nFor a multiple-table updatable view, INSERT can work if it inserts into\na single table. DELETE is not supported.\n\nINSERT DELAYED is not supported for views.\n\nIf a table contains an AUTO_INCREMENT column, inserting into an\ninsertable view on the table that does not include the AUTO_INCREMENT\ncolumn does not change the value of LAST_INSERT_ID(), because the side\neffects of inserting default values into columns not part of the view\nshould not be visible.\n\nThe WITH CHECK OPTION clause can be given for an updatable view to\nprevent inserts or updates to rows except those for which the WHERE\nclause in the select_statement is true. The WITH CHECK OPTION clause\nwas implemented in MySQL 5.0.2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-view.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/create-view.html'),(427,'TRIM',33,'Syntax:\nTRIM([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr\nFROM] str)\n\nReturns the string str with all remstr prefixes or suffixes removed. If\nnone of the specifiers BOTH, LEADING, or TRAILING is given, BOTH is\nassumed. remstr is optional and, if not specified, spaces are removed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT TRIM(\'  bar   \');\n        -> \'bar\'\nmysql> SELECT TRIM(LEADING \'x\' FROM \'xxxbarxxx\');\n        -> \'barxxx\'\nmysql> SELECT TRIM(BOTH \'x\' FROM \'xxxbarxxx\');\n        -> \'bar\'\nmysql> SELECT TRIM(TRAILING \'xyz\' FROM \'barxxyz\');\n        -> \'barx\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(428,'IS',17,'Syntax:\nIS boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT 1 IS TRUE, 0 IS FALSE, NULL IS UNKNOWN;\n        -> 1, 1, 1\n        -> 1, 1, 0\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(429,'GET_FORMAT',28,'Syntax:\nGET_FORMAT(DATE|TIME|DATETIME, \'EUR\'|\'USA\'|\'JIS\'|\'ISO\'|\'INTERNAL\')\n\nReturns a format string. This function is useful in combination with\nthe DATE_FORMAT() and the STR_TO_DATE() functions.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT DATE_FORMAT(\'2003-10-03\',GET_FORMAT(DATE,\'EUR\'));\n        -> \'03.10.2003\'\nmysql> SELECT STR_TO_DATE(\'10.31.2003\',GET_FORMAT(DATE,\'USA\'));\n        -> \'2003-10-31\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(430,'TINYBLOB',20,'TINYBLOB\n\nA BLOB column with a maximum length of 255 (28 - 1) bytes. Each\nTINYBLOB value is stored using a one-byte length prefix that indicates\nthe number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(431,'SAVEPOINT',7,'Syntax:\nSAVEPOINT identifier\nROLLBACK [WORK] TO SAVEPOINT identifier\nRELEASE SAVEPOINT identifier\n\nInnoDB supports the SQL statements SAVEPOINT and ROLLBACK TO SAVEPOINT.\nStarting from MySQL 5.0.3, RELEASE SAVEPOINT and the optional WORK\nkeyword for ROLLBACK are supported as well.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/savepoints.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/savepoints.html'),(432,'USER',15,'Syntax:\nUSER()\n\nReturns the current MySQL username and hostname as a string in the utf8\ncharacter set.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','mysql> SELECT USER();\n        -> \'davida@localhost\'\n','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(433,'MPOINTFROMWKB',29,'MPointFromWKB(wkb[,srid]), MultiPointFromWKB(wkb[,srid])\n\nConstructs a MULTIPOINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),(434,'ALTER TABLE',36,'Syntax:\nALTER [IGNORE] TABLE tbl_name\n    alter_specification [, alter_specification] ...\n\nalter_specification:\n    table_option ...\n  | ADD [COLUMN] col_name column_definition [FIRST | AFTER col_name ]\n  | ADD [COLUMN] (col_name column_definition,...)\n  | ADD {INDEX|KEY} [index_name] [index_type] (index_col_name,...)\n  | ADD [CONSTRAINT [symbol]]\n        PRIMARY KEY [index_type] (index_col_name,...)\n  | ADD [CONSTRAINT [symbol]]\n        UNIQUE [INDEX|KEY] [index_name] [index_type] (index_col_name,...)\n  | ADD [FULLTEXT|SPATIAL] [INDEX|KEY] [index_name] (index_col_name,...)\n  | ADD [CONSTRAINT [symbol]]\n        FOREIGN KEY [index_name] (index_col_name,...)\n        reference_definition\n  | ALTER [COLUMN] col_name {SET DEFAULT literal | DROP DEFAULT}\n  | CHANGE [COLUMN] old_col_name new_col_name column_definition\n        [FIRST|AFTER col_name]\n  | MODIFY [COLUMN] col_name column_definition [FIRST | AFTER col_name]\n  | DROP [COLUMN] col_name\n  | DROP PRIMARY KEY\n  | DROP {INDEX|KEY} index_name\n  | DROP FOREIGN KEY fk_symbol\n  | DISABLE KEYS\n  | ENABLE KEYS\n  | RENAME [TO] new_tbl_name\n  | ORDER BY col_name [, col_name] ...\n  | CONVERT TO CHARACTER SET charset_name [COLLATE collation_name]\n  | [DEFAULT] CHARACTER SET charset_name [COLLATE collation_name]\n  | DISCARD TABLESPACE\n  | IMPORT TABLESPACE\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH | RTREE}\n\nALTER TABLE enables you to change the structure of an existing table.\nFor example, you can add or delete columns, create or destroy indexes,\nchange the type of existing columns, or rename columns or the table\nitself. You can also change the comment for the table and type of the\ntable.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/alter-table.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/alter-table.html'),(435,'PURGE MASTER LOGS',25,'Syntax:\nPURGE {MASTER | BINARY} LOGS TO \'log_name\'\nPURGE {MASTER | BINARY} LOGS BEFORE \'date\'\n\nDeletes all the binary logs listed in the log index prior to the\nspecified log or date. The logs also are removed from the list recorded\nin the log index file, so that the given log becomes the first.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/purge-master-logs.html\n\n','PURGE MASTER LOGS TO \'mysql-bin.010\';\nPURGE MASTER LOGS BEFORE \'2003-04-02 22:46:26\';\n','http://dev.mysql.com/doc/refman/5.0/en/purge-master-logs.html'),(436,'CHAR BYTE',20,'The CHAR BYTE data type is an alias for the BINARY data type. This is a\ncompatibility feature.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(437,'REPAIR TABLE',19,'Syntax:\nREPAIR [LOCAL | NO_WRITE_TO_BINLOG] TABLE\n    tbl_name [, tbl_name] ... [QUICK] [EXTENDED] [USE_FRM]\n\nREPAIR TABLE repairs a possibly corrupted table. By default, it has the\nsame effect as myisamchk --recover tbl_name. REPAIR TABLE works for\nMyISAM and for ARCHIVE tables. See\nhttp://dev.mysql.com/doc/refman/5.0/en/myisam-storage-engine.html, and\nhttp://dev.mysql.com/doc/refman/5.0/en/archive-storage-engine.html.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/repair-table.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/repair-table.html'),(438,'MERGE',36,'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n\"Identical\" means that all tables have identical column and index\ninformation. You cannot merge MyISAM tables in which the columns are\nlisted in a different order, do not have exactly the same columns, or\nhave the indexes in different order. However, any or all of the MyISAM\ntables can be compressed with myisampack. See\nhttp://dev.mysql.com/doc/refman/5.0/en/myisampack.html. Differences in\ntable options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS do not\nmatter.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/merge-storage-engine.html\n\n','mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (\'Testing\'),(\'table\'),(\'t1\');\nmysql> INSERT INTO t2 (message) VALUES (\'Testing\'),(\'table\'),(\'t2\');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n','http://dev.mysql.com/doc/refman/5.0/en/merge-storage-engine.html'),(439,'CREATE TABLE',36,'Syntax:\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    (create_definition,...)\n    [table_option ...]\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    [(create_definition,...)]\n    [table_option ...]\n    select_statement\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    { LIKE old_tbl_name | (LIKE old_tbl_name) }\n\ncreate_definition:\n    col_name column_definition\n  | [CONSTRAINT [symbol]] PRIMARY KEY [index_type] (index_col_name,...)\n  | {INDEX|KEY} [index_name] [index_type] (index_col_name,...)\n  | [CONSTRAINT [symbol]] UNIQUE [INDEX|KEY]\n      [index_name] [index_type] (index_col_name,...)\n  | {FULLTEXT|SPATIAL} [INDEX|KEY] [index_name] (index_col_name,...)\n  | [CONSTRAINT [symbol]] FOREIGN KEY\n      [index_name] (index_col_name,...) reference_definition\n  | CHECK (expr)\n\ncolumn_definition:\n    data_type [NOT NULL | NULL] [DEFAULT default_value]\n      [AUTO_INCREMENT] [UNIQUE [KEY] | [PRIMARY] KEY]\n      [COMMENT \'string\'] [reference_definition]\n\ndata_type:\n    BIT[(length)]\n  | TINYINT[(length)] [UNSIGNED] [ZEROFILL]\n  | SMALLINT[(length)] [UNSIGNED] [ZEROFILL]\n  | MEDIUMINT[(length)] [UNSIGNED] [ZEROFILL]\n  | INT[(length)] [UNSIGNED] [ZEROFILL]\n  | INTEGER[(length)] [UNSIGNED] [ZEROFILL]\n  | BIGINT[(length)] [UNSIGNED] [ZEROFILL]\n  | REAL[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DOUBLE[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | FLOAT[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DECIMAL(length,decimals) [UNSIGNED] [ZEROFILL]\n  | NUMERIC(length,decimals) [UNSIGNED] [ZEROFILL]\n  | DATE\n  | TIME\n  | TIMESTAMP\n  | DATETIME\n  | YEAR\n  | CHAR(length)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | VARCHAR(length)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | BINARY(length)\n  | VARBINARY(length)\n  | TINYBLOB\n  | BLOB\n  | MEDIUMBLOB\n  | LONGBLOB\n  | TINYTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | TEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | MEDIUMTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | LONGTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | ENUM(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | SET(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | spatial_type\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH | RTREE}\n\nreference_definition:\n    REFERENCES tbl_name [(index_col_name,...)]\n      [MATCH FULL | MATCH PARTIAL | MATCH SIMPLE]\n      [ON DELETE reference_option]\n      [ON UPDATE reference_option]\n\nreference_option:\n    RESTRICT | CASCADE | SET NULL | NO ACTION\n\ntable_option:\n    {ENGINE|TYPE} [=] engine_name\n  | AUTO_INCREMENT [=] value\n  | AVG_ROW_LENGTH [=] value\n  | [DEFAULT] CHARACTER SET charset_name\n  | CHECKSUM [=] {0 | 1}\n  | COLLATE collation_name\n  | COMMENT [=] \'string\'\n  | CONNECTION [=] \'connect_string\'\n  | DATA DIRECTORY [=] \'absolute path to directory\'\n  | DELAY_KEY_WRITE [=] {0 | 1}\n  | INDEX DIRECTORY [=] \'absolute path to directory\'\n  | INSERT_METHOD [=] { NO | FIRST | LAST }\n  | MAX_ROWS [=] value\n  | MIN_ROWS [=] value\n  | PACK_KEYS [=] {0 | 1 | DEFAULT}\n  | PASSWORD [=] \'string\'\n  | ROW_FORMAT [=] {DEFAULT|DYNAMIC|FIXED|COMPRESSED|REDUNDANT|COMPACT}\n  | UNION [=] (tbl_name[,tbl_name]...)\n\nselect_statement:\n    [IGNORE | REPLACE] [AS] SELECT ...   (Some legal select statement)\n\nCREATE TABLE creates a table with the given name. You must have the\nCREATE privilege for the table.\n\nRules for allowable table names are given in\nhttp://dev.mysql.com/doc/refman/5.0/en/identifiers.html. By default,\nthe table is created in the default database. An error occurs if the\ntable exists, if there is no default database, or if the database does\nnot exist.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-table.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/create-table.html'),(440,'>',17,'Syntax:\n>\n\nGreater than:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT 2 > 2;\n        -> 0\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(441,'ANALYZE TABLE',19,'Syntax:\nANALYZE [LOCAL | NO_WRITE_TO_BINLOG] TABLE tbl_name [, tbl_name] ...\n\nANALYZE TABLE analyzes and stores the key distribution for a table.\nDuring the analysis, the table is locked with a read lock for MyISAM\nand BDB. For InnoDB the table is locked with a write lock. This\nstatement works with MyISAM, BDB, and InnoDB tables. For MyISAM tables,\nthis statement is equivalent to using myisamchk --analyze.\n\nFor more information on how the analysis works withinInnoDB, see\nhttp://dev.mysql.com/doc/refman/5.0/en/innodb-restrictions.html.\n\nMySQL uses the stored key distribution to decide the order in which\ntables should be joined when you perform a join on something other than\na constant. In addition, key distributions can be used when deciding\nwhich indexes to use for a specific table within a query.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/analyze-table.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/analyze-table.html'),(442,'MICROSECOND',28,'Syntax:\nMICROSECOND(expr)\n\nReturns the microseconds from the time or datetime expression expr as a\nnumber in the range from 0 to 999999.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT MICROSECOND(\'12:00:00.123456\');\n        -> 123456\nmysql> SELECT MICROSECOND(\'1997-12-31 23:59:59.000010\');\n        -> 10\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(443,'CONSTRAINT',36,'InnoDB also supports foreign key constraints. The syntax for a foreign\nkey constraint definition in InnoDB looks like this:\n\n[CONSTRAINT symbol] FOREIGN KEY [id] (index_col_name, ...)\n    REFERENCES tbl_name (index_col_name, ...)\n    [ON DELETE {RESTRICT | CASCADE | SET NULL | NO ACTION}]\n    [ON UPDATE {RESTRICT | CASCADE | SET NULL | NO ACTION}]\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/innodb-foreign-key-constraints.html\n\n','CREATE TABLE product (category INT NOT NULL, id INT NOT NULL,\n                      price DECIMAL,\n                      PRIMARY KEY(category, id)) ENGINE=INNODB;\nCREATE TABLE customer (id INT NOT NULL,\n                       PRIMARY KEY (id)) ENGINE=INNODB;\nCREATE TABLE product_order (no INT NOT NULL AUTO_INCREMENT,\n                            product_category INT NOT NULL,\n                            product_id INT NOT NULL,\n                            customer_id INT NOT NULL,\n                            PRIMARY KEY(no),\n                            INDEX (product_category, product_id),\n                            FOREIGN KEY (product_category, product_id)\n                              REFERENCES product(category, id)\n                              ON UPDATE CASCADE ON DELETE RESTRICT,\n                            INDEX (customer_id),\n                            FOREIGN KEY (customer_id)\n                              REFERENCES customer(id)) ENGINE=INNODB;\n','http://dev.mysql.com/doc/refman/5.0/en/innodb-foreign-key-constraints.html'),(444,'FIELD',33,'Syntax:\nFIELD(str,str1,str2,str3,...)\n\nReturns the index (position) of str in the str1, str2, str3, ... list.\nReturns 0 if str is not found.\n\nIf all arguments to FIELD() are strings, all arguments are compared as\nstrings. If all arguments are numbers, they are compared as numbers.\nOtherwise, the arguments are compared as double.\n\nIf str is NULL, the return value is 0 because NULL fails equality\ncomparison with any value. FIELD() is the complement of ELT().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT FIELD(\'ej\', \'Hej\', \'ej\', \'Heja\', \'hej\', \'foo\');\n        -> 2\nmysql> SELECT FIELD(\'fo\', \'Hej\', \'ej\', \'Heja\', \'hej\', \'foo\');\n        -> 0\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(445,'MAKETIME',28,'Syntax:\nMAKETIME(hour,minute,second)\n\nReturns a time value calculated from the hour, minute, and second\narguments.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT MAKETIME(12,15,30);\n        -> \'12:15:30\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(446,'CURDATE',28,'Syntax:\nCURDATE()\n\nReturns the current date as a value in \'YYYY-MM-DD\' or YYYYMMDD format,\ndepending on whether the function is used in a string or numeric\ncontext.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT CURDATE();\n        -> \'1997-12-15\'\nmysql> SELECT CURDATE() + 0;\n        -> 19971215\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(447,'SET PASSWORD',8,'Syntax:\nSET PASSWORD [FOR user] = PASSWORD(\'some password\')\n\nThe SET PASSWORD statement assigns a password to an existing MySQL user\naccount.\n\nWith no FOR clause, this statement sets the password for the current\nuser. Any client that has connected to the server using a non-anonymous\naccount can change the password for that account.\n\nWith a FOR clause, this statement sets the password for a specific\naccount on the current server host. Only clients that have the UPDATE\nprivilege for the mysql database can do this. The user value should be\ngiven in user_name@host_name format, where user_name and host_name are\nexactly as they are listed in the User and Host columns of the\nmysql.user table entry. For example, if you had an entry with User and\nHost column values of \'bob\' and \'%.loc.gov\', you would write the\nstatement like this:\n\nSET PASSWORD FOR \'bob\'@\'%.loc.gov\' = PASSWORD(\'newpass\');\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/set-password.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/set-password.html'),(448,'IF FUNCTION',6,'Syntax:\nIF(expr1,expr2,expr3)\n\nIf expr1 is TRUE (expr1 <> 0 and expr1 <> NULL) then IF() returns\nexpr2; otherwise it returns expr3. IF() returns a numeric or string\nvalue, depending on the context in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html\n\n','mysql> SELECT IF(1>2,2,3);\n        -> 3\nmysql> SELECT IF(1<2,\'yes\',\'no\');\n        -> \'yes\'\nmysql> SELECT IF(STRCMP(\'test\',\'test1\'),\'no\',\'yes\');\n        -> \'no\'\n','http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html'),(449,'ENUM',20,'ENUM(\'value1\',\'value2\',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nAn enumeration. A string object that can have only one value, chosen\nfrom the list of values \'value1\', \'value2\', ..., NULL or the special \'\'\nerror value. An ENUM column can have a maximum of 65,535 distinct\nvalues. ENUM values are represented internally as integers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(450,'DATABASE',15,'Syntax:\nDATABASE()\n\nReturns the default (current) database name as a string in the utf8\ncharacter set. If there is no default database, DATABASE() returns\nNULL. Within a stored routine, the default database is the database\nthat the routine is associated with, which is not necessarily the same\nas the database that is the default in the calling context.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','mysql> SELECT DATABASE();\n        -> \'test\'\n','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(451,'POINTFROMWKB',29,'PointFromWKB(wkb[,srid])\n\nConstructs a POINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),(452,'POWER',4,'Syntax:\nPOWER(X,Y)\n\nThis is a synonym for POW().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(453,'ATAN',4,'Syntax:\nATAN(X)\n\nReturns the arc tangent of X, that is, the value whose tangent is X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT ATAN(2);\n        -> 1.1071487177941\nmysql> SELECT ATAN(-2);\n        -> -1.1071487177941\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(454,'STRCMP',33,'Syntax:\nSTRCMP(expr1,expr2)\n\nSTRCMP() returns 0 if the strings are the same, -1 if the first\nargument is smaller than the second according to the current sort\norder, and 1 otherwise.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html\n\n','mysql> SELECT STRCMP(\'text\', \'text2\');\n        -> -1\nmysql> SELECT STRCMP(\'text2\', \'text\');\n        -> 1\nmysql> SELECT STRCMP(\'text\', \'text\');\n        -> 0\n','http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html'),(455,'INSERT DELAYED',25,'Syntax:\nINSERT DELAYED ...\n\nThe DELAYED option for the INSERT statement is a MySQL extension to\nstandard SQL that is very useful if you have clients that cannot or\nneed not wait for the INSERT to complete. This is a common situation\nwhen you use MySQL for logging and you also periodically run SELECT and\nUPDATE statements that take a long time to complete.\n\nWhen a client uses INSERT DELAYED, it gets an okay from the server at\nonce, and the row is queued to be inserted when the table is not in use\nby any other thread.\n\nAnother major benefit of using INSERT DELAYED is that inserts from many\nclients are bundled together and written in one block. This is much\nfaster than performing many separate inserts.\n\nNote that INSERT DELAYED is slower than a normal INSERT if the table is\nnot otherwise in use. There is also the additional overhead for the\nserver to handle a separate thread for each table for which there are\ndelayed rows. This means that you should use INSERT DELAYED only when\nyou are really sure that you need it.\n\nThe queued rows are held only in memory until they are inserted into\nthe table. This means that if you terminate mysqld forcibly (for\nexample, with kill -9) or if mysqld dies unexpectedly, any queued rows\nthat have not been written to disk are lost.\n\nThere are some constraints on the use of DELAYED:\n\no INSERT DELAYED works only with MyISAM, MEMORY, and ARCHIVE tables.\n  See\n  http://dev.mysql.com/doc/refman/5.0/en/myisam-storage-engine.html,\n  http://dev.mysql.com/doc/refman/5.0/en/memory-storage-engine.html,\n  and\n  http://dev.mysql.com/doc/refman/5.0/en/archive-storage-engine.html.\n\no For MyISAM tables, if there are no free blocks in the middle of the\n  data file, concurrent SELECT and INSERT statements are supported.\n  Under these circumstances, you very seldom need to use INSERT DELAYED\n  with MyISAM.\n\no INSERT DELAYED should be used only for INSERT statements that specify\n  value lists. The server ignores DELAYED for INSERT ... SELECT or\n  INSERT ... ON DUPLICATE KEY UPDATE statements.\n\no Because the INSERT DELAYED statement returns immediately, before the\n  rows are inserted, you cannot use LAST_INSERT_ID() to get the\n  AUTO_INCREMENT value that the statement might generate.\n\no DELAYED rows are not visible to SELECT statements until they actually\n  have been inserted.\n\no DELAYED is ignored on slave replication servers because it could\n  cause the slave to have different data than the master.\n\no Pending INSERT DELAYED statements are lost if a table is write locked\n  and ALTER TABLE is used to modify the table structure.\n\no INSERT DELAYED is not supported for views.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/insert-delayed.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/insert-delayed.html'),(456,'SHOW PROCEDURE CODE',25,'Syntax:\nSHOW {PROCEDURE | FUNCTION} CODE sp_name\n\nThese statements are MySQL extensions that are available only for\nservers that have been built with debugging support. They display a\nrepresentation of the internal implementation of the named routine. The\nstatements require that you be the owner of the routine or have SELECT\naccess to the mysql.proc table.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one \"instruction\" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-procedure-code.html\n\n','mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n    -> BEGIN\n    ->   DECLARE fanta INT DEFAULT 55;\n    ->   DROP TABLE t2;\n    ->   LOOP\n    ->     INSERT INTO t3 VALUES (fanta);\n    ->     END LOOP;\n    ->   END//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 \"DROP TABLE t2\"                 |\n|   2 | stmt 5 \"INSERT INTO t3 VALUES (fanta)\" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.0/en/show-procedure-code.html'),(457,'MEDIUMTEXT',20,'MEDIUMTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 16,777,215 (224 - 1) characters.\nThe effective maximum length is less if the value contains multi-byte\ncharacters. Each MEDIUMTEXT value is stored using a three-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),(458,'LN',4,'Syntax:\nLN(X)\n\nReturns the natural logarithm of X; that is, the base-e logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT LN(2);\n        -> 0.69314718055995\nmysql> SELECT LN(-2);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(459,'SHOW COLLATION',25,'Syntax:\nSHOW COLLATION\n    [LIKE \'pattern\' | WHERE expr]\n\nThe output from SHOW COLLATION includes all available character sets.\nThe LIKE clause, if present, indicates which collation names to match.\nThe WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html. For example:\n\nmysql> SHOW COLLATION LIKE \'latin1%\';\n+-------------------+---------+----+---------+----------+---------+\n| Collation         | Charset | Id | Default | Compiled | Sortlen |\n+-------------------+---------+----+---------+----------+---------+\n| latin1_german1_ci | latin1  |  5 |         |          |       0 |\n| latin1_swedish_ci | latin1  |  8 | Yes     | Yes      |       0 |\n| latin1_danish_ci  | latin1  | 15 |         |          |       0 |\n| latin1_german2_ci | latin1  | 31 |         | Yes      |       2 |\n| latin1_bin        | latin1  | 47 |         | Yes      |       0 |\n| latin1_general_ci | latin1  | 48 |         |          |       0 |\n| latin1_general_cs | latin1  | 49 |         |          |       0 |\n| latin1_spanish_ci | latin1  | 94 |         |          |       0 |\n+-------------------+---------+----+---------+----------+---------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-collation.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/show-collation.html'),(460,'LOG',4,'Syntax:\nLOG(X), LOG(B,X)\n\nIf called with one parameter, this function returns the natural\nlogarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT LOG(2);\n        -> 0.69314718055995\nmysql> SELECT LOG(-2);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(461,'SET SQL_LOG_BIN',25,'Syntax:\nSET SQL_LOG_BIN = {0|1}\n\nDisables or enables binary logging for the current connection\n(SQL_LOG_BIN is a session variable) if the client has the SUPER\nprivilege. The statement is refused with an error if the client does\nnot have that privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/set-sql-log-bin.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/set-sql-log-bin.html'),(462,'!=',17,'Syntax:\n<>, !=\n\nNot equal:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT \'.01\' <> \'0.01\';\n        -> 1\nmysql> SELECT .01 <> \'0.01\';\n        -> 0\nmysql> SELECT \'zapp\' <> \'zappp\';\n        -> 1\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(463,'WHILE',35,'Syntax:\n[begin_label:] WHILE search_condition DO\n    statement_list\nEND WHILE [end_label]\n\nThe statement list within a WHILE statement is repeated as long as the\nsearch_condition is true. statement_list consists of one or more\nstatements.\n\nA WHILE statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/while-statement.html\n\n','CREATE PROCEDURE dowhile()\nBEGIN\n  DECLARE v1 INT DEFAULT 5;\n\n  WHILE v1 > 0 DO\n    ...\n    SET v1 = v1 - 1;\n  END WHILE;\nEND\n','http://dev.mysql.com/doc/refman/5.0/en/while-statement.html'),(464,'AES_DECRYPT',10,'Syntax:\nAES_DECRYPT(crypt_str,key_str)\n\nThis function allows decryption of data using the official AES\n(Advanced Encryption Standard) algorithm. For more information, see the\ndescription of AES_ENCRYPT().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),(465,'DAYNAME',28,'Syntax:\nDAYNAME(date)\n\nReturns the name of the weekday for date. As of MySQL 5.0.25, the\nlanguage used for the name is controlled by the value of the\nlc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.0/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n','mysql> SELECT DAYNAME(\'1998-02-05\');\n        -> \'Thursday\'\n','http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),(466,'COERCIBILITY',15,'Syntax:\nCOERCIBILITY(str)\n\nReturns the collation coercibility value of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','mysql> SELECT COERCIBILITY(\'abc\' COLLATE latin1_swedish_ci);\n        -> 0\nmysql> SELECT COERCIBILITY(USER());\n        -> 3\nmysql> SELECT COERCIBILITY(\'abc\');\n        -> 4\n','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(467,'INT',20,'INT[(M)] [UNSIGNED] [ZEROFILL]\n\nA normal-size integer. The signed range is -2147483648 to 2147483647.\nThe unsigned range is 0 to 4294967295.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),(468,'GLENGTH',11,'GLength(ls)\n\nReturns as a double-precision number the length of the LineString value\nls in its associated spatial reference.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html\n\n','mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT GLength(GeomFromText(@ls));\n+----------------------------+\n| GLength(GeomFromText(@ls)) |\n+----------------------------+\n|            2.8284271247462 |\n+----------------------------+\n','http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html'),(469,'RADIANS',4,'Syntax:\nRADIANS(X)\n\nReturns the argument X, converted from degrees to radians. (Note that\nπ radians equals 180 degrees.)\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n','mysql> SELECT RADIANS(90);\n        -> 1.5707963267949\n','http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),(470,'COLLATION',15,'Syntax:\nCOLLATION(str)\n\nReturns the collation of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','mysql> SELECT COLLATION(\'abc\');\n        -> \'latin1_swedish_ci\'\nmysql> SELECT COLLATION(_utf8\'abc\');\n        -> \'utf8_general_ci\'\n','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(471,'COALESCE',17,'Syntax:\nCOALESCE(value,...)\n\nReturns the first non-NULL value in the list, or NULL if there are no\nnon-NULL values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n','mysql> SELECT COALESCE(NULL,1);\n        -> 1\nmysql> SELECT COALESCE(NULL,NULL,NULL);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),(472,'VERSION',15,'Syntax:\nVERSION()\n\nReturns a string that indicates the MySQL server version. The string\nuses the utf8 character set.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n','mysql> SELECT VERSION();\n        -> \'5.0.56-standard\'\n','http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),(473,'MAKE_SET',33,'Syntax:\nMAKE_SET(bits,str1,str2,...)\n\nReturns a set value (a string containing substrings separated by \",\"\ncharacters) consisting of the strings that have the corresponding bit\nin bits set. str1 corresponds to bit 0, str2 to bit 1, and so on. NULL\nvalues in str1, str2, ... are not appended to the result.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT MAKE_SET(1,\'a\',\'b\',\'c\');\n        -> \'a\'\nmysql> SELECT MAKE_SET(1 | 4,\'hello\',\'nice\',\'world\');\n        -> \'hello,world\'\nmysql> SELECT MAKE_SET(1 | 4,\'hello\',\'nice\',NULL,\'world\');\n        -> \'hello\'\nmysql> SELECT MAKE_SET(0,\'a\',\'b\',\'c\');\n        -> \'\'\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),(474,'FIND_IN_SET',33,'Syntax:\nFIND_IN_SET(str,strlist)\n\nReturns a value in the range of 1 to N if the string str is in the\nstring list strlist consisting of N substrings. A string list is a\nstring composed of substrings separated by \",\" characters. If the first\nargument is a constant string and the second is a column of type SET,\nthe FIND_IN_SET() function is optimized to use bit arithmetic. Returns\n0 if str is not in strlist or if strlist is the empty string. Returns\nNULL if either argument is NULL. This function does not work properly\nif the first argument contains a comma (\",\") character.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n','mysql> SELECT FIND_IN_SET(\'b\',\'a,b,c,d\');\n        -> 2\n','http://dev.mysql.com/doc/refman/5.0/en/string-functions.html');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `host` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `Select_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Insert_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Update_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Delete_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Drop_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Grant_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `References_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Index_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_tmp_table_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Lock_tables_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Execute_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  PRIMARY KEY  (`Host`,`Db`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Host privileges;  Merged with database privileges';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proc`
--

DROP TABLE IF EXISTS `proc`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `proc` (
  `db` char(64) character set utf8 collate utf8_bin NOT NULL default '',
  `name` char(64) NOT NULL default '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL default '',
  `language` enum('SQL') NOT NULL default 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL default 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL default 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL default 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` char(64) NOT NULL default '',
  `body` longblob NOT NULL,
  `definer` char(77) character set utf8 collate utf8_bin NOT NULL default '',
  `created` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL default '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE') NOT NULL default '',
  `comment` char(64) character set utf8 collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`db`,`name`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `proc`
--

LOCK TABLES `proc` WRITE;
/*!40000 ALTER TABLE `proc` DISABLE KEYS */;
INSERT INTO `proc` VALUES ('owasp10','getBestCollegeBasketballTeam','PROCEDURE','getBestCollegeBasketballTeam','SQL','CONTAINS_SQL','NO','DEFINER','','','BEGIN\r\n		SELECT \'Kentucky Wildcats\';\r\n	END','root@%','2014-11-05 23:44:37','2014-11-05 23:44:37','',''),('owasp10','authenticateUserAndReturnProfile','PROCEDURE','authenticateUserAndReturnProfile','SQL','CONTAINS_SQL','NO','DEFINER','p_username text, p_password text','','BEGIN\r\n			SELECT  accounts.cid, \r\n		          accounts.username, \r\n		          accounts.password, \r\n		          accounts.mysignature\r\n		  FROM accounts\r\n		    WHERE accounts.username = p_username\r\n		      AND accounts.password = p_password;\r\n		END','root@%','2014-11-05 23:44:37','2014-11-05 23:44:37','',''),('owasp10','insertBlogEntry','PROCEDURE','insertBlogEntry','SQL','CONTAINS_SQL','NO','DEFINER','\r\n		  pBloggerName text,\r\n		  pComment text\r\n		','','BEGIN\r\n		\r\n		  INSERT INTO blogs_table(\r\n		    blogger_name, \r\n		    comment, \r\n		    date\r\n		   )VALUES(\r\n		    pBloggerName, \r\n		    pComment, \r\n		    now()\r\n		  );\r\n		\r\n		END','root@%','2014-11-05 23:44:37','2014-11-05 23:44:37','',''),('nowasp','insertBlogEntry','PROCEDURE','insertBlogEntry','SQL','CONTAINS_SQL','NO','DEFINER','\r\n		  pBloggerName text,\r\n		  pComment text\r\n		','','BEGIN\r\n		\r\n		  INSERT INTO blogs_table(\r\n		    blogger_name, \r\n		    comment, \r\n		    date\r\n		   )VALUES(\r\n		    pBloggerName, \r\n		    pComment, \r\n		    now()\r\n		  );\r\n		\r\n		END','root@%','2014-11-05 23:41:30','2014-11-05 23:41:30','',''),('nowasp','getBestCollegeBasketballTeam','PROCEDURE','getBestCollegeBasketballTeam','SQL','CONTAINS_SQL','NO','DEFINER','','','BEGIN\r\n		SELECT \'Kentucky Wildcats\';\r\n	END','root@%','2014-11-05 23:41:30','2014-11-05 23:41:30','',''),('nowasp','authenticateUserAndReturnProfile','PROCEDURE','authenticateUserAndReturnProfile','SQL','CONTAINS_SQL','NO','DEFINER','p_username text, p_password text','','BEGIN\r\n			SELECT  accounts.cid, \r\n		          accounts.username, \r\n		          accounts.password, \r\n		          accounts.mysignature\r\n		  FROM accounts\r\n		    WHERE accounts.username = p_username\r\n		      AND accounts.password = p_password;\r\n		END','root@%','2014-11-05 23:41:30','2014-11-05 23:41:30','','');
/*!40000 ALTER TABLE `proc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `procs_priv` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Routine_name` char(64) collate utf8_bin NOT NULL default '',
  `Routine_type` enum('FUNCTION','PROCEDURE') collate utf8_bin NOT NULL,
  `Grantor` char(77) collate utf8_bin NOT NULL default '',
  `Proc_priv` set('Execute','Alter Routine','Grant') character set utf8 NOT NULL default '',
  `Timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tables_priv` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Table_name` char(64) collate utf8_bin NOT NULL default '',
  `Grantor` char(77) collate utf8_bin NOT NULL default '',
  `Timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view') character set utf8 NOT NULL default '',
  `Column_priv` set('Select','Insert','Update','References') character set utf8 NOT NULL default '',
  PRIMARY KEY  (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL auto_increment,
  `Use_leap_seconds` enum('Y','N') NOT NULL default 'N',
  PRIMARY KEY  (`Time_zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zones';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY  (`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Leap seconds information for time zones';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone names';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`Time_zone_id`,`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transitions';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL default '0',
  `Is_DST` tinyint(3) unsigned NOT NULL default '0',
  `Abbreviation` char(8) NOT NULL default '',
  PRIMARY KEY  (`Time_zone_id`,`Transition_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transition types';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Password` char(41) character set latin1 collate latin1_bin NOT NULL default '',
  `Select_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Insert_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Update_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Delete_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Drop_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Reload_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Shutdown_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Process_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `File_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Grant_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `References_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Index_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_db_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Super_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_tmp_table_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Lock_tables_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Execute_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Repl_slave_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Repl_client_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_user_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') character set utf8 NOT NULL default '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL default '0',
  `max_updates` int(11) unsigned NOT NULL default '0',
  `max_connections` int(11) unsigned NOT NULL default '0',
  `max_user_connections` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`Host`,`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('','debian-sys-maint','','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','N','N','N','','','','',0,0,0,0),('%','root','*6B4F89A54E2D27ECD7E8DA05B4AB8FD9D1D8B119','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','Y','','',0,0,0,0),('%','guest','','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','Y','','',0,0,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `nowasp`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nowasp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nowasp`;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `accounts` (
  `cid` int(11) NOT NULL auto_increment,
  `username` text,
  `password` text,
  `mysignature` text,
  `is_admin` varchar(5) default NULL,
  `firstname` text,
  `lastname` text,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'admin','adminpass','g0t r00t?','TRUE','System','Administrator'),(2,'adrian','somepassword','Zombie Films Rock!','TRUE','Adrian','Crenshaw'),(3,'john','monkey','I like the smell of confunk','FALSE','John','Pentest'),(4,'jeremy','password','d1373 1337 speak','FALSE','Jeremy','Druin'),(5,'bryce','password','I Love SANS','FALSE','Bryce','Galbraith'),(6,'samurai','samurai','Carving fools','FALSE','Samurai','WTF'),(7,'jim','password','Rome is burning','FALSE','Jim','Rome'),(8,'bobby','password','Hank is my dad','FALSE','Bobby','Hill'),(9,'simba','password','I am a super-cat','FALSE','Simba','Lion'),(10,'dreveil','password','Preparation H','FALSE','Dr.','Evil'),(11,'scotty','password','Scotty do','FALSE','Scotty','Evil'),(12,'cal','password','C-A-T-S Cats Cats Cats','FALSE','John','Calipari'),(13,'john','password','Do the Duggie!','FALSE','John','Wall'),(14,'kevin','42','Doug Adams rocks','FALSE','Kevin','Johnson'),(15,'dave','set','Bet on S.E.T. FTW','FALSE','Dave','Kennedy'),(16,'patches','tortoise','meow','FALSE','Patches','Pester'),(17,'rocky','stripes','treats?','FALSE','Rocky','Paws'),(18,'tim','lanmaster53','Because reconnaissance is hard to spell','FALSE','Tim','Tomes'),(19,'ABaker','SoSecret','Muffin tops only','TRUE','Aaron','Baker'),(20,'PPan','NotTelling','Where is Tinker?','FALSE','Peter','Pan'),(21,'CHook','JollyRoger','Gator-hater','FALSE','Captain','Hook'),(22,'james','i<3devs','Occupation: Researcher','FALSE','James','Jardine'),(23,'ed','pentest','Commandline KungFu anyone?','FALSE','Ed','Skoudis');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balloon_tips`
--

DROP TABLE IF EXISTS `balloon_tips`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `balloon_tips` (
  `tip_key` varchar(64) NOT NULL,
  `hint_level` int(11) NOT NULL default '0',
  `tip` text,
  PRIMARY KEY  (`tip_key`,`hint_level`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `balloon_tips`
--

LOCK TABLES `balloon_tips` WRITE;
/*!40000 ALTER TABLE `balloon_tips` DISABLE KEYS */;
INSERT INTO `balloon_tips` VALUES ('ParameterPollutionInjectionPoint',0,'User input is not evaluated for duplicate parameters'),('ParameterPollutionInjectionPoint',1,'If user input contains the same variable more than once, the system will only accept one of the values. This can be used to trick the system into accepting a correct value and a mallicious value but only counting the mallicious value.'),('ParameterPollutionInjectionPoint',2,'Send two copies of the same parameter. Note carefully if the system uses the first, second, or both values. Some systems will concatenate the values together. If the system uses the first value, inject the value you want the system to count first.'),('CSSInjectionPoint',0,'User input is incorporated into the style sheet returned from the server'),('CSSInjectionPoint',1,'User input is incorporated into the style sheet returned from the server without being properly encoded. This allows an attacker to inject cross-site scripts or HTML into the input and break out of the style-sheet context. Arbitrary Javascript and HTML can be injected.'),('CSSInjectionPoint',2,'Locate the input parameter that is incorporated into the style sheet. Determine what chracters are needed to properly complete the style so it is sytactically correct. Inject this closing statement along with a Javascript or HTML to be executed.'),('JSONInjectionPoint',0,'User input is incorporated into the JSON returned from the server'),('JSONInjectionPoint',1,'User input is incorporated into the JSON returned from the server without being properly encoded. This allows an attacker to inject JSON into the input and break out of the JSON context. Arbitrary Javascript can be injected.'),('JSONInjectionPoint',2,'Locate the input parameter that is incorporated into the JSON. Determine what chracters are needed to properly complete the JSON so it is sytactically correct. Inject this closing statement along with a Javascript to be executed.'),('DOMXSSExecutionPoint',0,'This location contains dynamic output modified by the DOM'),('DOMXSSExecutionPoint',1,'Lack of output encoding controls often result in cross-site scripting when user input is incorporated into the DOM'),('DOMXSSExecutionPoint',2,'This output is vulnerable to cross-site scripting because user-input is incorporated into the DOM without properly encoding the user input first. Determine which input field contributes output here and inject HTML or scripts'),('ArbitraryRedirectionPoint',0,'Arbitrary redirection is a type of insecure direct object reference'),('ArbitraryRedirectionPoint',1,'See if a URL can be injected in place of the intended URL'),('ArbitraryRedirectionPoint',2,'Try injecting a URL into the parameter which contains the page to which the site thinks the user should be redirected to. It may be neccesary to use a complete URL including the protocol.'),('SQLInjectionPoint',0,'SQL Injection may occur on any page interacting with a database'),('SQLInjectionPoint',1,'Try injecting single-quotes and other special control characters'),('SQLInjectionPoint',2,'Try injecting single-quotes and other special control characters to produce an error if possible. Note any queries in the error to assist in injecting a complete query. Try using SQLMAP to inject queries.'),('CookieTamperingAffectedArea',0,'Cookies may store system state information'),('CookieTamperingAffectedArea',1,'Inspect the value of the cookies with a Firefox add-on like Cookie-Manager or a non-transparent proxy like Burp or Zap'),('CookieTamperingAffectedArea',2,'Change the value of the cookies to see what affect is produced on the site. Also watch how the values of the cookies change after using different site features.'),('JavascriptInjectionPoint',0,'This location does not use Javascript string encoding'),('JavascriptInjectionPoint',1,'This location is vulnerable to Javascript string injection. The first step is to determine which parameter is output here'),('JavascriptInjectionPoint',2,'Locate the input parameter that is output to this location and inject raw Javascript commands. Use the view-source to see if the syntax of the injection is correct'),('LocalFileInclusionVulnerability',0,'Perhaps a file other than the one intended could be included in this page'),('LocalFileInclusionVulnerability',1,'This page is vulnerable a local file inclusion vulnerability because it does not strongly validate that only explicitly named-pages are allowed.'),('LocalFileInclusionVulnerability',2,'Identify the input parameter that accepts the filename to be included then change that parameter to a system file such as /etc/passwd or C:oot.ini'),('RemoteFileInclusionVulnerability',0,'Perhaps a remote URI could be included in this page. Note that on newer PHP servers the configuration parameters \"allow_url_fopen\" and \"allow_url_include\" must be set to \"On\"'),('RemoteFileInclusionVulnerability',1,'This page is vulnerable a remote file inclusion vulnerability because it does not strongly validate that only explicitly named-pages are allowed. Note that on newer PHP servers the configuration parameters \"allow_url_fopen\" and \"allow_url_include\" must be set to \"On\".'),('RemoteFileInclusionVulnerability',2,'Identify the input parameter that accepts the filename to be included then change that parameter to a system file such as http://www.google.com. Note that on newer PHP servers the configuration parameters \"allow_url_fopen\" and \"allow_url_include\" must be set to \"On\".'),('HTMLandXSSandSQLInjectionPoint',0,'Inputs are usually a good place to start testing for cross-site scripting, HTML injection and SQL injection'),('HTMLandXSSandSQLInjectionPoint',1,'This input is vulnerable to multiple types of injection including cross-site scripting, HTML injection and SQL injection'),('HTMLandXSSandSQLInjectionPoint',2,'To get started with cross-site scripting and HTML injection, inject a Javascript or HTML code then view-source on the resulting page to see if the script syntax is correct. For SQL injection, start by injecting a single-quote to produce an error.'),('HTMLandXSSInjectionPoint',0,'Inputs are usually a good place to start testing for cross-site scripting and HTML injection'),('HTMLandXSSInjectionPoint',1,'This input is vulnerable to multiple types of injection including cross-site scripting and HTML injection'),('HTMLandXSSInjectionPoint',2,'To get started with cross-site scripting and HTML injection, inject a Javascript or HTML code then view-source on the resulting page to see if the script syntax is correct.'),('BufferOverflowInjectionPoint',0,'Inputs are usually a good place to start testing for buffer overflows.'),('BufferOverflowInjectionPoint',1,'This input is vulnerable to overflowing a memory buffer. Given this is an interpreted web application, the buffer is just a variable rather than a stack- or heap- overflow.'),('BufferOverflowInjectionPoint',2,'To trigger a buffer overflow, cause the system to store a large number of characters in a string variable or inject a large number that overflows the data type assigned. PHP documentation states that 134,217,728 characters can be held in a string including the null terminator. String buffer overflows using str_repeat() are tricky because if the number of characters to repeat is too large, PHP sees the number as NaN and wont throw an overflow error.'),('OSCommandInjectionPoint',0,'Inputs are usually a good place to start testing for command injection'),('OSCommandInjectionPoint',1,'This input is vulnerable to multiple types of injection'),('OSCommandInjectionPoint',2,'This input is vulnerable to command injection plus may provide an injection point for reflected cross-site scripting. Try stating with \"127.0.0.1 && dir\".'),('XSRFVulnerabilityArea',0,'HTML forms are vulnerable to cross-site request forgery by default although sensitive forms may be protected'),('XSRFVulnerabilityArea',1,'This form is vulnerable to cross-site request forgery. Knowing the form action and inputs is the first step.'),('XSRFVulnerabilityArea',2,'Use this form to commit cross-site request forgery. Capture a legitimate request in Burp/Zap then create a cross-site script that sends the equivilent request when a user executes the cross-site script.'),('ReflectedXSSExecutionPoint',0,'This location contains dynamic output'),('ReflectedXSSExecutionPoint',1,'Lack of output encoding controls often result in cross-site scripting'),('ReflectedXSSExecutionPoint',2,'This output is vulnerable to cross-site scripting. Determine which input field contributes output here and inject scripts'),('HTMLEventReflectedXSSExecutionPoint',0,'This location contains dynamic output'),('HTMLEventReflectedXSSExecutionPoint',1,'Lack of output encoding controls often result in cross-site scripting; in this case via HTML Event injection.'),('HTMLEventReflectedXSSExecutionPoint',2,'This output is vulnerable to cross-site scripting because the input is not encoded prior to be used as a value in an HTML event. Determine which input field contributes output here and inject scripts.');
/*!40000 ALTER TABLE `balloon_tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_table`
--

DROP TABLE IF EXISTS `blogs_table`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `blogs_table` (
  `cid` int(11) NOT NULL auto_increment,
  `blogger_name` text,
  `comment` text,
  `date` datetime default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `blogs_table`
--

LOCK TABLES `blogs_table` WRITE;
/*!40000 ALTER TABLE `blogs_table` DISABLE KEYS */;
INSERT INTO `blogs_table` VALUES (1,'adrian','Well, I\'ve been working on this for a bit. Welcome to my crappy blog software. :)','2009-03-01 22:26:12'),(2,'adrian','Looks like I got a lot more work to do. Fun, Fun, Fun!!!','2009-03-01 22:26:54'),(3,'anonymous','An anonymous blog? Huh? ','2009-03-01 22:27:11'),(4,'ed','I love me some Netcat!!!','2009-03-01 22:27:48'),(5,'john','Listen to Pauldotcom!','2009-03-01 22:29:04'),(6,'jeremy','Why give users the ability to get to the unfiltered Internet? It\'s just asking for trouble. ','2009-03-01 22:29:49'),(7,'john','Chocolate is GOOD!!!','2009-03-01 22:30:06'),(8,'admin','Fear me, for I am ROOT!','2009-03-01 22:31:13'),(9,'dave','Social Engineering is woot-tastic','2009-03-01 22:31:13'),(10,'kevin','Read more Douglas Adams','2009-03-01 22:31:13'),(11,'kevin','You should take SANS SEC542','2009-03-01 22:31:13'),(12,'asprox','Fear me, for I am asprox!','2009-03-01 22:31:13');
/*!40000 ALTER TABLE `blogs_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captured_data`
--

DROP TABLE IF EXISTS `captured_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `captured_data` (
  `data_id` int(11) NOT NULL auto_increment,
  `ip_address` text,
  `hostname` text,
  `port` text,
  `user_agent_string` text,
  `referrer` text,
  `data` text,
  `capture_date` datetime default NULL,
  PRIMARY KEY  (`data_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `captured_data`
--

LOCK TABLES `captured_data` WRITE;
/*!40000 ALTER TABLE `captured_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `captured_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_cards`
--

DROP TABLE IF EXISTS `credit_cards`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `credit_cards` (
  `ccid` int(11) NOT NULL auto_increment,
  `ccnumber` text,
  `ccv` text,
  `expiration` date default NULL,
  PRIMARY KEY  (`ccid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `credit_cards`
--

LOCK TABLES `credit_cards` WRITE;
/*!40000 ALTER TABLE `credit_cards` DISABLE KEYS */;
INSERT INTO `credit_cards` VALUES (1,'4444111122223333','745','2012-03-01'),(2,'7746536337776330','722','2015-04-01'),(3,'8242325748474749','461','2016-03-01'),(4,'7725653200487633','230','2017-06-01'),(5,'1234567812345678','627','2018-11-01');
/*!40000 ALTER TABLE `credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_texts`
--

DROP TABLE IF EXISTS `help_texts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `help_texts` (
  `help_text_key` int(11) NOT NULL default '0',
  `help_text` text,
  PRIMARY KEY  (`help_text_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `help_texts`
--

LOCK TABLES `help_texts` WRITE;
/*!40000 ALTER TABLE `help_texts` DISABLE KEYS */;
INSERT INTO `help_texts` VALUES (0,'The index page has several global vulnerabilities.'),(1,'<span class=\"label\">SSLStrip</span> can be used to downgrade the connection when the Enforce SSL button is selected.'),(2,'Output fields such as the logged-in username, signature, and the footer are vulnerable to cross-site scripting.'),(3,'The hints cookie and other cookies can be hacked to login as another user and gain admin access.'),(4,'Cookies are missing the HTTPOnly attribute and may be accessed via cross-site scripting.'),(5,'Check HTML comments for database credentials.'),(6,'The \"page\" input parameter is vulnerable to insecure direct object reference. Fuzzing the parameter with administrative page names or system file paths is likely to yield results.'),(7,'This is the home page. Its primary purpose is to provide a starting page for the user and provide instructions. There are no known vulnerabilties on the home.php page.'),(8,'<span class=\"label\">Stored Cross-Site Scripting</span>: Attempt to inject cross-site scripts which will be stored in the backend database. When a user visits this page, the cross-site scripts will be fetched from the database, incorporated into the HTML generated, and sent to the user browser. The user browser will execute the Javascript. One option is to inject a cross-site script which sends the user to the capture-data.php page. You can view captured data on the captured-data.php page.'),(9,'<span class=\"label\">Directory Browsing</span>: The entire site is vulnerable to directory browsing. Looking at the robots.txt file can provide hints of interesting directories.'),(10,'<span class=\"label\">SQL Injection</span>: Attempt to inject special database characters or SQL timing attacks into page parameters. Database errors, page defacement, or noticable delays in response may indicate SQL injection flaws. This page is vulnerable.'),(11,'<span class=\"label\">Reflected Cross-Site Scripting:</span> This page is vulnerable to reflected cross-site scripting because the input is not encoded prior to be used as output. Determine which input field contributes output here and inject scripts. Try to redirect the user to the capture-data.php page which records cookies and other parameters. Visit the captured-data.php page to view captured data.'),(12,'<span class=\"label\">HTML Injection</span>: It is possible to inject your own HTML into this page because the input is not encoded prior to be used as output. Determine which input field contributes output here and inject HTML, CSS, and/or Javascripts in order to alter the client-side code of this page.'),(13,'<span class=\"label\">Javascript Validation Bypass</span>: Set the page to at least security level 1 to activate the javascript validation. Javascript validation can always be bypassed. Use a client-proxy like Burp-Suite to capture the request after it has left the browser. You can alter the request at that time. Also, Javascript can be disabled.'),(14,'<span class=\"label\">Cross Site Request Forgery</span>: This page is vulnerable to cross-site request forgery. There are a few steps to prepare a cross-site script to carry out the cross-site request forgery. Begin by filling out the form capturing the legitimate request. Inject a stored or reflected cross-site script anywhere on the site that will cause the browser to submit a copy of the legitimate request to the server. The server will process the request as if the user had filled out the form themselves.'),(15,'<span class=\"label\">System File Compromise</span>: It is possible to access system files by injecting input parameters with the pathnames of system files. The web application will fetch the system files instead of application files. The system files may be displayed and/or included in page output. Remember web applications are usually served from a system directory like /var/www or C:XAMPP. You may need to move up directories.'),(16,'<span class=\"label\">Insecure Direct Object Reference</span>: This page refers directly to resources by there real name or identifier making it possible to modify the name/ID to access other resources. Determine what resources are fetched. Provide the name or ID of a different resource. Resources can be filenames, record identifiers or others.'),(17,'<span class=\"label\">Server Side Include</span>: It is possible to make the application include application files in this page that are not intended. These files may even come from other sites.'),(18,'<span class=\"label\">Javascript Injection</span>: This page uses at least some of the input from the user to generate Javascript code. Usually in these cases the user input is used to create either a Javascript string or JSON object. Attempt to inject input which when incorporated with the page will form a syntactically correct Javascript statement. This will allow the injection to execute in the context of the browser.'),(19,'<span class=\"label\">Unvalidated Redirects and Forwards</span>: This page refers directly to dynamic URLs. If the user clicks on one of the link, the URL embedded is passed to a page which performs redirection. Try to over-write one of the intended pages beind passed to redirect the user to an arbitrary page. Give the poisoned link you create to a freind and see if they are redirected to a site of your choosing.'),(20,'<span class=\"label\">Operating System Command Injection</span>:  Command injection may occur when a web application passes user input in part or in whole to the operating system for execution. This page incorporates user input into a larger statement that is submitted to an operating system shell for execution. Try to determine the operating system in use. Enter characters that are reserved in shells; especially characters used to concatenate commands.'),(21,'<span class=\"label\">HTTP Parameter Pollution</span>: If multiple parameters with the same name are sent in a request, different application servers will react differently. PHP takes only one of the parameters but not neccesarily the parameters intended by the developer. By duplicating parameters with a value of your choosing and placing that parameters before and-or after the pages native parameters, you can influence the pages behavior. Note that ASP and Java application servers act different.'),(22,'<span class=\"label\">Click-jacking</span>: By placing an invisible overlay over top of a legitimate page, a malicious agent can hijack a users mouse clicks. To overlay the vulnerable page, the malicious agent will host the victim page inside a full page frame with no borders.'),(23,'<span class=\"label\">Document Object Model (DOM) Injection</span>: User input is incorporated into the document object model (DOM) of the page itself. This allows a user to inject HTML which will be incorporated into the source code of the page. The browser will execute this new code immediately.'),(24,'The UID cookie is used in an SQL query allowing SQL injection via a cookie value.'),(25,'<span class=\"label\">Authentication Bypass</span>: Authentication bypass can be achieved by either hacking the UID cookie or by SQL injecting the login.'),(26,'<span class=\"label\">Javascript Object Notation (JSON) Injection</span>: This page uses JSON to pass data which is later parsed and incorporated into the page. Because the output is not properly encoded, it is possible to carefully craft an injection which will add extra data into the JSON without breaking the JSON syntax. This extra data will be executed by the browser once the data is incorporated into the page.'),(27,'<span class=\"label\">Platform Path Disclosure</span>: Internal system paths are disclosed by this page under certain conditions.'),(28,'<span class=\"label\">Application Path Disclosure</span>: Application file paths are disclosed by this page under certain conditions.'),(29,'<span class=\"label\">Information Disclosure</span>: This page gives away internal system information, configuration information, paths, filenames, or other private information.'),(30,'<span class=\"label\">Method Tampering</span>: Because the page does not specify that the input parameters must be posted, it is possible to submit input parameters via a post or a get. This is a second order vulnerability allowing other vulnerabilities to be exploited easier.'),(31,'<span class=\"label\">Parameter Addition</span>: If extra parameters are submitted, the page will include them in output. A parameter can be added containing scripts which will be executed when loaded in the users browser.'),(32,'<span class=\"label\">Buffer Overflow</span>: If very long input is submitted, it is possible to exhaust the available space alloted on the heap.'),(33,'<span class=\"label\">Cascading Style Sheet Injection</span>: CSS styles can be used to interpret and execute Javascript. If styles can be injected, it is possible to inject a style with embedded Javascript which will be executed when loaded into the users browser.'),(34,'<span class=\"label\">Denial of Service</span>: This page allows denial of service. DOS can be performed by exhausting system resource(s) such as filling up disk drives or consuming available network bandwidth.'),(35,'<span class=\"label\">Phishing/Remote File Inclusion</span>: Due to defects allowing arbitrary web pages to be loaded into this pages frames, phishing and malware downloads are possible.'),(36,'<span class=\"label\">XML External Entity Injection Attack</span>: This page parses XML which the user can influence. If external entities embedded in the XML contain system file directives, it is possible to cause the page to load system files and include the contents in the XML output.'),(38,'<span class=\"label\">Cipher Block Chaining (CBC) Bit Flipping Attack</span>: This page is vulnerable to CBC bit flipping attack.'),(39,'<span class=\"label\">Local File Inclusion</span>: This page is vulnerable to local file inclusion if the user account under which PHP is running has access to files besides the intended web site files.'),(40,'<span class=\"label\">Remote File Inclusion</span>: This page is vulnerable to remote file inclusion if the PHP server configuration parameters \"allow_url_fopen\" and \"allow_url_include\" are set to \"On\" in php.ini.'),(41,'<span class=\"label\">Frame Source Injection</span>: By controlling the parameter which determines the src attribute of a pages frame, a carefully injected value can load any arbitrary page into the frame.'),(42,'<span class=\"label\">HTML 5 Web Storage Theft and Manipulation</span>: Using a cross site scripting attack, this page is vulnerable to having an attacker read, insert, update, or delete the values stored in the HTML5 web storage.'),(43,'<span class=\"label\">Robots.txt</span>: This file gives away sensitive file paths.'),(44,'<span class=\"label\">Secret Administrative Pages</span>: These pages are obscured by not being linked from other pages but they can be found using other vulnerabilities such as directory browsing, robots.txt, and local file inclusion.'),(45,'<span class=\"label\">User Agent Impersonation</span>: Based on the information sent by the browser, this page decides if the user is authorized.'),(46,'<span class=\"label\">Unrestricted File Upload</span>: This page allows dangerous files to be uploaded.'),(47,'<span class=\"label\">Username Enumeration</span>: This page allows usernames to be enumerated.'),(48,'<span class=\"label\">Application Log Injection</span>: Some inputs on this page are recorded into log records which can be read by visiting the Show Log page. Vulnerabilities on the Show Log page may allow injections in log records to execute.'),(49,'<span class=\"label\">XPath Injection</span>: Some inputs on this page are vulnerable to XPath injection.');
/*!40000 ALTER TABLE `help_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hitlog`
--

DROP TABLE IF EXISTS `hitlog`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `hitlog` (
  `cid` int(11) NOT NULL auto_increment,
  `hostname` text,
  `ip` text,
  `browser` text,
  `referer` text,
  `date` datetime default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `hitlog`
--

LOCK TABLES `hitlog` WRITE;
/*!40000 ALTER TABLE `hitlog` DISABLE KEYS */;
INSERT INTO `hitlog` VALUES (1,'192.168.73.1','192.168.73.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36','User visited: home.php','2014-11-05 18:42:33'),(2,'192.168.73.1','192.168.73.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36','User visited: login.php','2014-11-05 18:42:40'),(3,'192.168.73.1','192.168.73.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36','User admin attempting to authenticate','2014-11-05 18:42:44'),(4,'192.168.73.1','192.168.73.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36','Login Failed: Account admin does not exist','2014-11-05 18:42:44'),(5,'192.168.73.1','192.168.73.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36','User visited: login.php','2014-11-05 18:42:45');
/*!40000 ALTER TABLE `hitlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_1_help_include_files`
--

DROP TABLE IF EXISTS `level_1_help_include_files`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `level_1_help_include_files` (
  `level_1_help_include_file_key` int(11) NOT NULL default '0',
  `level_1_help_include_file` text,
  PRIMARY KEY  (`level_1_help_include_file_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `level_1_help_include_files`
--

LOCK TABLES `level_1_help_include_files` WRITE;
/*!40000 ALTER TABLE `level_1_help_include_files` DISABLE KEYS */;
INSERT INTO `level_1_help_include_files` VALUES (1,'ssl-misconfiguration-hint.inc'),(9,'directory-browsing-hint.inc'),(10,'sql-injection-hint.inc'),(11,'cross-site-scripting-hint.inc'),(12,'html-injection-hint.inc'),(13,'javascript-validation-bypass-hint.inc'),(14,'cross-site-request-forgery-hint.inc'),(16,'insecure-direct-object-reference-hint.inc'),(18,'javascript-injection-hint.inc'),(19,'unvalidated-redirects-and-forwards.inc'),(20,'command-injection-hint.inc'),(21,'parameter-pollution-hint.inc'),(22,'click-jacking-hint.inc'),(23,'dom-injection-hint.inc'),(25,'authentication-bypass-hint.inc'),(26,'json-injection-hint.inc'),(27,'platform-path-disclosure-hint.inc'),(28,'application-path-disclosure-hint.inc'),(29,'information-disclosure-hint.inc'),(30,'method-tampering-hint.inc'),(31,'parameter-addition-hint.inc'),(32,'buffer-overflow-hint.inc'),(33,'cascading-style-sheet-injection-hint.inc'),(36,'xml-external-entity-attack-hint.inc'),(38,'cbc-bit-flipping-attack-hint.inc'),(39,'local-file-inclusion-hint.inc'),(40,'remote-file-inclusion-hint.inc'),(41,'frame-source-injection-hint.inc'),(42,'html5-web-storage-hint.inc'),(43,'robots-txt-hint.inc'),(44,'secret-administrative-pages-hint.inc'),(45,'user-agent-impersonation-hint.inc'),(46,'unrestricted-file-upload-hint.inc'),(48,'application-log-injection.inc'),(49,'xpath-injection-hint.inc');
/*!40000 ALTER TABLE `level_1_help_include_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_help`
--

DROP TABLE IF EXISTS `page_help`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `page_help` (
  `page_name` varchar(64) NOT NULL,
  `help_text_key` int(11) NOT NULL default '0',
  `order_preference` int(11) default NULL,
  PRIMARY KEY  (`page_name`,`help_text_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `page_help`
--

LOCK TABLES `page_help` WRITE;
/*!40000 ALTER TABLE `page_help` DISABLE KEYS */;
INSERT INTO `page_help` VALUES ('home.php',0,1),('home.php',1,1),('home.php',2,1),('home.php',3,1),('home.php',4,1),('home.php',5,1),('home.php',6,1),('home.php',7,0),('home.php',9,1),('home.php',24,1),('home.php',39,1),('home.php',40,1),('add-to-your-blog.php',8,0),('add-to-your-blog.php',10,1),('add-to-your-blog.php',11,1),('add-to-your-blog.php',12,1),('add-to-your-blog.php',13,1),('add-to-your-blog.php',14,1),('add-to-your-blog.php',30,1),('add-to-your-blog.php',48,1),('arbitrary-file-inclusion.php',11,1),('arbitrary-file-inclusion.php',12,1),('arbitrary-file-inclusion.php',15,0),('arbitrary-file-inclusion.php',16,1),('arbitrary-file-inclusion.php',17,1),('arbitrary-file-inclusion.php',39,1),('arbitrary-file-inclusion.php',40,1),('back-button-discussion.php',11,1),('back-button-discussion.php',12,1),('back-button-discussion.php',18,1),('back-button-discussion.php',19,1),('browser-info.php',11,1),('browser-info.php',12,1),('browser-info.php',18,1),('capture-data.php',1,1),('capture-data.php',10,1),('capture-data.php',11,1),('capture-data.php',12,1),('capture-data.php',48,1),('captured-data.php',11,1),('captured-data.php',12,1),('credits.php',19,1),('directory-browsing.php',9,1),('dns-lookup.php',11,1),('dns-lookup.php',12,1),('dns-lookup.php',13,1),('dns-lookup.php',20,1),('dns-lookup.php',30,1),('dns-lookup.php',48,1),('document-viewer.php',11,1),('document-viewer.php',12,1),('document-viewer.php',21,1),('document-viewer.php',30,1),('document-viewer.php',41,1),('document-viewer.php',48,1),('framing.php',22,1),('html5-storage.php',23,1),('html5-storage.php',42,1),('login.php',1,1),('login.php',10,1),('login.php',11,1),('login.php',12,1),('login.php',13,1),('login.php',25,1),('login.php',47,1),('login.php',48,1),('password-generator.php',1,1),('password-generator.php',11,1),('password-generator.php',12,1),('password-generator.php',18,1),('pen-test-tool-lookup.php',26,1),('pen-test-tool-lookup-ajax.php',26,1),('phpinfo.php',27,1),('phpinfo.php',28,1),('phpinfo.php',29,1),('register.php',10,1),('register.php',11,1),('register.php',12,1),('register.php',14,1),('register.php',30,1),('register.php',48,1),('rene-magritte.php',22,1),('robots-txt.php',9,1),('robots-txt.php',29,1),('robots-txt.php',43,1),('repeater.php',11,1),('repeater.php',12,1),('repeater.php',13,1),('repeater.php',31,1),('repeater.php',32,1),('secret-administrative-pages.php',6,1),('secret-administrative-pages.php',27,1),('secret-administrative-pages.php',28,1),('secret-administrative-pages.php',29,1),('secret-administrative-pages.php',44,1),('set-background-color.php',11,1),('set-background-color.php',12,1),('set-background-color.php',33,1),('show-log.php',11,1),('show-log.php',12,1),('show-log.php',34,1),('site-footer-xss-discussion.php',11,1),('site-footer-xss-discussion.php',12,1),('source-viewer.php',11,1),('source-viewer.php',12,1),('source-viewer.php',15,1),('source-viewer.php',16,1),('source-viewer.php',39,1),('source-viewer.php',40,1),('source-viewer.php',48,1),('sqlmap-targets.php',10,1),('ssl-misconfiguration.php',1,1),('text-file-viewer.php',11,1),('text-file-viewer.php',12,1),('text-file-viewer.php',15,1),('text-file-viewer.php',16,1),('text-file-viewer.php',30,1),('text-file-viewer.php',35,1),('text-file-viewer.php',39,1),('text-file-viewer.php',40,1),('upload-file.php',46,1),('upload-file.php',11,2),('upload-file.php',12,2),('user-agent-impersonation.php',11,1),('user-agent-impersonation.php',18,1),('user-agent-impersonation.php',45,1),('user-info.php',1,1),('user-info.php',10,1),('user-info.php',11,1),('user-info.php',12,1),('user-info.php',13,1),('user-info.php',30,1),('user-info-xpath.php',1,1),('user-info-xpath.php',11,1),('user-info-xpath.php',12,1),('user-info-xpath.php',13,1),('user-info-xpath.php',30,1),('user-info-xpath.php',49,1),('user-poll.php',11,1),('user-poll.php',12,1),('user-poll.php',14,1),('user-poll.php',21,1),('user-poll.php',30,1),('view-someones-blog.php',11,1),('view-someones-blog.php',12,1),('view-someones-blog.php',14,1),('view-someones-blog.php',30,1),('view-user-privilege-level.php',11,1),('view-user-privilege-level.php',12,1),('view-user-privilege-level.php',25,1),('view-user-privilege-level.php',31,1),('view-user-privilege-level.php',38,1),('xml-validator.php',11,1),('xml-validator.php',12,1),('xml-validator.php',15,1),('xml-validator.php',36,1);
/*!40000 ALTER TABLE `page_help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_hints`
--

DROP TABLE IF EXISTS `page_hints`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `page_hints` (
  `page_name` varchar(64) NOT NULL,
  `hint_key` int(11) NOT NULL default '0',
  `hint` text,
  PRIMARY KEY  (`page_name`,`hint_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `page_hints`
--

LOCK TABLES `page_hints` WRITE;
/*!40000 ALTER TABLE `page_hints` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_hints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pen_test_tools`
--

DROP TABLE IF EXISTS `pen_test_tools`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `pen_test_tools` (
  `tool_id` int(11) NOT NULL auto_increment,
  `tool_name` text,
  `phase_to_use` text,
  `tool_type` text,
  `comment` text,
  PRIMARY KEY  (`tool_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `pen_test_tools`
--

LOCK TABLES `pen_test_tools` WRITE;
/*!40000 ALTER TABLE `pen_test_tools` DISABLE KEYS */;
INSERT INTO `pen_test_tools` VALUES (1,'WebSecurify','Discovery','Scanner','Can capture screenshots automatically'),(2,'Grendel-Scan','Discovery','Scanner','Has interactive-mode. Lots plug-ins. Includes Nikto. May not spider JS menus well.'),(3,'Skipfish','Discovery','Scanner','Agressive. Fast. Uses wordlists to brute force directories.'),(4,'w3af','Discovery','Scanner','GUI simple to use. Can call sqlmap. Allows scan packages to be saved in profiles. Provides evasion, discovery, brute force, vulneraility assessment (audit), exploitation, pattern matching (grep).'),(5,'Burp-Suite','Discovery','Scanner','GUI simple to use. Provides highly configurable manual scan assistence with productivity enhancements.'),(6,'Netsparker Community Edition','Discovery','Scanner','Excellent spider abilities and reporting. GUI driven. Runs on Windows. Good at SQLi and XSS detection. From Mavituna Security. Professional version available for purchase.'),(7,'NeXpose','Discovery','Scanner','GUI driven. Runs on Windows. From Rapid7. Professional version available for purchase. Updates automatically. Requires large amounts of memory.'),(8,'Hailstorm','Discovery','Scanner','From Cenzic. Professional version requires dedicated staff, multiple dediciated servers, professional pen-tester to analyze results, and very large license fee. Extensive scanning ability. Very large vulnerability database. Highly configurable. Excellent reporting. Can scan entire networks of web applications. Extremely expensive. Requires large amounts of memory.'),(9,'Tamper Data','Discovery','Interception Proxy','Firefox add-on. Easy to use. Tampers with POST parameters and HTTP Headers. Does not tamper with URL query parameters. Requires manual browsing.'),(10,'DirBuster','Discovery','Fuzzer','OWASP tool. Fuzzes directory names to brute force directories.'),(11,'SQL Inject Me','Discovery','Fuzzer','Firefox add-on. Attempts common strings which elicit XSS responses. Not compatible with Firefox 8.0.'),(12,'XSS Me','Discovery','Fuzzer','Firefox add-on. Attempts common strings which elicit responses from databases when SQL injection is present. Not compatible with Firefox 8.0.'),(13,'GreaseMonkey','Discovery','Browser Manipulation Tool','Firefox add-on. Allows the user to inject Javascripts and change page.'),(14,'NSLookup','Reconnaissance','DNS Server Query Tool','DNS query tool can query DNS name or reverse lookup on IP. Set debug for better output. Premiere tool on Windows but Linux perfers Dig. DNS traffic generally over UDP 53 unless response long then over TCP 53. Online version combined with anonymous proxy or TOR network may be prefered for stealth.'),(15,'Whois','Reconnaissance','Domain name lookup service','Whois is available in Linux naitvely and Windows as a Sysinternals download plus online. Whois can lookup the registrar of a domain and the IP block associated. An online version is http://network-tools.com/'),(16,'Dig','Reconnaissance','DNS Server Query Tool','The Domain Information Groper is prefered on Linux over NSLookup and provides more information natively. NSLookup must be in debug mode to give similar output. DIG can perform zone transfers if the DNS server allows transfers.'),(17,'Fierce Domain Scanner','Reconnaissance','DNS Server Query Tool','Powerful DNS scan tool. FDS is a Perl program which scans and reverse scans a domain plus scans IPs within the same block to look for neighoring machines. Available in the Samurai and Backtrack distributions plus http://ha.ckers.org/fierce/'),(18,'host','Reconnaissance','DNS Server Query Tool','A simple DNS lookup tool included with BIND. The tool is a friendly and capible command line tool with excellent documentation. Does not posess the automation of FDS.'),(19,'zaproxy','Reconnaissance','Interception Proxy','OWASP Zed Attack Proxy. An interception proxy that can also passively or actively scan applications as well as perform brute-forcing. Similar to Burp-Suite without the disadvantage of requiring a costly license.'),(20,'Google intitle','Discovery','Search Engine','intitle and site directives allow directory discovery. GHDB available to provide hints. See Hackers for Charity site.');
/*!40000 ALTER TABLE `pen_test_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youTubeVideos`
--

DROP TABLE IF EXISTS `youTubeVideos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `youTubeVideos` (
  `recordIndetifier` int(11) NOT NULL,
  `identificationToken` varchar(16) default NULL,
  `title` varchar(128) default NULL,
  PRIMARY KEY  (`recordIndetifier`),
  UNIQUE KEY `identificationToken` (`identificationToken`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `youTubeVideos`
--

LOCK TABLES `youTubeVideos` WRITE;
/*!40000 ALTER TABLE `youTubeVideos` DISABLE KEYS */;
INSERT INTO `youTubeVideos` VALUES (1,'YouTubeVideoIden','Video Title'),(2,'1hF0Q6ihvjc','Installing OWASP Mutillidae II on Windows with XAMPP'),(3,'e0vpBKRZPGc','Installing Metasploitable-2 with Mutillidae on Virtual Box'),(4,'y-Cz3YRNc9U','How to install latest Mutillidae on Samurai WTF 2.0'),(5,'L4un5IppoY4','Introduction to Installing, Configuring, and Using Burp-Suite Proxy'),(6,'Fj0n17Jtnzw','How to install and configure Burp-Suite with Firefox'),(7,'kDo52RySRME','How to remove PHP errors after installing Mutillidae on Windows XAMPP'),(8,'5egBxI5Nnwo','Building a Virtual Lab to Practice Pen Testing'),(9,'obOLDQ-66oQ','How to Upgrade to the Latest Mutillidae on Samurai WTF 2.0'),(10,'P52EuH9MnTs','Spidering Web Applications with Burp-Suite'),(11,'q3iG7YMjcmE','Basics of Burp-Suite Targets Tab'),(12,'4Fz9mJeMNkI','Brute Force Page Names using Burp-Suite Intruder'),(13,'la5hTlSDKWg','Using Burp Intruder Sniper to Fuzz Parameters'),(14,'2Ehp33BLRmI','Comparing Burp-Suite Intruder Modes Sniper, Battering-ram, Pitchfork, Cluster-bomb'),(15,'KxqY_bp13gc','Introduction to Burp-Suite Comparer Tool'),(16,'YGRoFU0USRA','Using Burp-Suite Sequencer to Compare CSRF-token strengths'),(17,'qsE04AhlJrc','Basics of Web Request and Response Interception with Burp-Suite'),(18,'JPd2YtgJm8Q','ISSA 2013 Web Pen-testing Workshop - Part 1 - Intro to Mutillidae, Burp Suite & Injection'),(19,'Id_JC3hJzhk','Overview of Useful Pen Testing Add-ons for Firefox'),(20,'0_AN5FKsxaw','Bypass Authentication using SQL Injection'),(21,'dmYp2drEwwE','Automate SQL Injection using sqlmap'),(22,'3qOgt9IYgaI','Basics of SQL Injection Timing Attacks'),(23,'UcbZUmuMy3U','Introduction to Union-Based SQL Injection'),(24,'WLmKK4LKdl0','Basics of Inserting Data with SQL Injection'),(25,'lcaqam-CyBE','Inject Web Shell Backdoor via SQL Injection'),(26,'EBk0-lJ2LrM','Basics of using SQL Injection to Read Files'),(27,'UH9gx4TyFlk','Generate Cross Site Scripts with SQL Injection'),(28,'RFEqlg21mkE','SQL Injection via AJAX request with JSON response'),(29,'vTB3Ze901pM','Basics of using sqlmap - ISSA KY Workshop - February 2013'),(30,'YCfInEFWbVA','Explanation of HTTPOnly Cookies in Presence Cross-Site Scripting'),(31,'sTTdFujJIAA','Two Methods to Steal Session Token using Cross-Site Scripting'),(32,'DXtLNGqfgMo','Injecting a Cross Site Script via Cascading Stylesheet Context'),(33,'C_3I6IpbP78','Basics of Injecting Cross-Site Script into HTML onclick Event'),(34,'XnOqNCd31B4','Introduction to locating Reflected Cross-site Scripting'),(35,'dIGJ7kuj9Qo','Sending Persistent Cross-site Scripts into Web Logs to Snag Web Admin'),(37,'bj9IcclYG1k','Injecting Cross Site Scripts (XSS) into Log Page via Cookie'),(38,'efHdM5grGkI','Introduction to HTML Injection (HTMLi) and Cross Site Scripting (XSS) Using Mutillidae'),(39,'zs30qw4CF2U','Introduction to Cross Site Scripting (XSS) via JavaScript String Injection'),(41,'uJoMHujjo_I','Adding Values to DOM Storage using Cross-site Scripting'),(42,'N1-FXp7WrC4','Alter Values in HTML5 Web Storage using Cross-site Script'),(43,'F4I9XfTAsJk','Alter Values in HTML5 Web Storage using Persistent Cross-site Script'),(44,'luMyYV70bk4','Alter Values in HTML5 Web Storage using Reflected Cross-site Script '),(45,'MNvAib9KWzo','Web Pen Testing HTML 5 Web Storage using JSON Injection'),(46,'_tGcZKBXsFU','Stealing HTML5 Storage via JSON Injection'),(47,'3nAqRp9wt8g','Reading Hidden Values from HTML5 Dom Storage'),(48,'1bXTq_qaa_U','Command Injection to Dump Files, Start Services, and Disable Firewall'),(49,'VWZYyH0VewQ','How to Locate the Easter egg File using Command Injection'),(50,'GRuRK-bejgM','Gaining Administrative Shell Access via Command Injection'),(51,'if17nCdQfMg','Using Command Injection to Gain Remote Desktop'),(52,'Tosp-JyWVS4','Introduction to HTTP Parameter Pollution'),(53,'SsUUyizhS60','Using Hydra to Brute Force Web Forms Based Authentication'),(55,'mEbmturLljU','Bypass Authentication via Authentication Token Manipulation'),(56,'frtkNB5G3vI','Brute Force Authentication using Burp-Intruder'),(57,'kNSAhKiXctA','Analyze Session Token Randomness using Burp-Suite Sequencer'),(58,'goCm1TCJ29g','Determine Server Banners using Netcat, Nikto, and w3af'),(59,'VQV-y_-AN80','Using Nmap to Fingerprint HTTP servers and Web Applications'),(60,'Ouqubk9H-KY','Finding Comments and File Metadata using Multiple Techniques'),(61,'t8w6Bd5zxbU','How to Exploit Local File Inclusion Vulnerability using Burp-Suite'),(62,'0fODWaeupV0','ISSA 2013 Web Pen-testing Workshop - Part 6 - Local/Remote File Inclusion'),(63,'e0M-qJYhCnk','Two Methods to Bypass JavaScript Validation'),(64,'9EaNr_8D65A','XSS bypassing JavaScript Validation'),(65,'mjeBPCGA7ko','How to Bypass Maxlength Restrictions on HTML Input Fields'),(66,'TNt2rJcxdyg','Introduction to CBC Bit Flipping Attack'),(67,'n_5NGkOnr7Q','Using Ettercap and SSLstrip to Capture Credentials'),(68,'DJaX4HN2gwQ','Introduction to XML External Entity Injection'),(69,'MxiVx7e_FbM','Determine HTTP Methods using Netcat'),(70,'Zl8U2YVp2lw','ISSA KY September 2013 Workshop - Introduction to XML External Entity Injection'),(71,'VAGG4uC1ogw','Introduction to User-agent Impersonation');
/*!40000 ALTER TABLE `youTubeVideos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `owasp10`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `owasp10` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `owasp10`;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `accounts` (
  `cid` int(11) NOT NULL auto_increment,
  `username` text,
  `password` text,
  `mysignature` text,
  `is_admin` varchar(5) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'admin','adminpass','Monkey!','TRUE'),(2,'adrian','somepassword','Zombie Films Rock!','TRUE'),(3,'john','monkey','I like the smell of confunk','FALSE'),(4,'jeremy','password','d1373 1337 speak','FALSE'),(5,'bryce','password','I Love SANS','FALSE'),(6,'samurai','samurai','Carving Fools','FALSE'),(7,'jim','password','Jim Rome is Burning','FALSE'),(8,'bobby','password','Hank is my dad','FALSE'),(9,'simba','password','I am a cat','FALSE'),(10,'dreveil','password','Preparation H','FALSE'),(11,'scotty','password','Scotty Do','FALSE'),(12,'cal','password','Go Wildcats','FALSE'),(13,'john','password','Do the Duggie!','FALSE'),(14,'kevin','42','Doug Adams rocks','FALSE'),(15,'dave','set','Bet on S.E.T. FTW','FALSE'),(16,'ed','pentest','Commandline KungFu anyone?','FALSE');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_table`
--

DROP TABLE IF EXISTS `blogs_table`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `blogs_table` (
  `cid` int(11) NOT NULL auto_increment,
  `blogger_name` text,
  `comment` text,
  `date` datetime default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `blogs_table`
--

LOCK TABLES `blogs_table` WRITE;
/*!40000 ALTER TABLE `blogs_table` DISABLE KEYS */;
INSERT INTO `blogs_table` VALUES (1,'adrian','Well, I\'ve been working on this for a bit. Welcome to my crappy blog software. :)','2009-03-01 22:26:12'),(2,'adrian','Looks like I got a lot more work to do. Fun, Fun, Fun!!!','2009-03-01 22:26:54'),(3,'anonymous','An anonymous blog? Huh? ','2009-03-01 22:27:11'),(4,'ed','I love me some Netcat!!!','2009-03-01 22:27:48'),(5,'john','Listen to Pauldotcom!','2009-03-01 22:29:04'),(6,'jeremy','Why give users the ability to get to the unfiltered Internet? It\'s just asking for trouble. ','2009-03-01 22:29:49'),(7,'john','Chocolate is GOOD!!!','2009-03-01 22:30:06'),(8,'admin','Fear me, for I am ROOT!','2009-03-01 22:31:13'),(9,'dave','Social Engineering is woot-tastic','2009-03-01 22:31:13'),(10,'kevin','Read more Douglas Adams','2009-03-01 22:31:13'),(11,'kevin','You should take SANS SEC542','2009-03-01 22:31:13'),(12,'asprox','Fear me, for I am asprox!','2009-03-01 22:31:13');
/*!40000 ALTER TABLE `blogs_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captured_data`
--

DROP TABLE IF EXISTS `captured_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `captured_data` (
  `data_id` int(11) NOT NULL auto_increment,
  `ip_address` text,
  `hostname` text,
  `port` text,
  `user_agent_string` text,
  `referrer` text,
  `data` text,
  `capture_date` datetime default NULL,
  PRIMARY KEY  (`data_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `captured_data`
--

LOCK TABLES `captured_data` WRITE;
/*!40000 ALTER TABLE `captured_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `captured_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_cards`
--

DROP TABLE IF EXISTS `credit_cards`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `credit_cards` (
  `ccid` int(11) NOT NULL auto_increment,
  `ccnumber` text,
  `ccv` text,
  `expiration` date default NULL,
  PRIMARY KEY  (`ccid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `credit_cards`
--

LOCK TABLES `credit_cards` WRITE;
/*!40000 ALTER TABLE `credit_cards` DISABLE KEYS */;
INSERT INTO `credit_cards` VALUES (1,'4444111122223333','745','2012-03-01'),(2,'7746536337776330','722','2015-04-01'),(3,'8242325748474749','461','2016-03-01'),(4,'7725653200487633','230','2017-06-01'),(5,'1234567812345678','627','2018-11-01');
/*!40000 ALTER TABLE `credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hitlog`
--

DROP TABLE IF EXISTS `hitlog`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `hitlog` (
  `cid` int(11) NOT NULL auto_increment,
  `hostname` text,
  `ip` text,
  `browser` text,
  `referer` text,
  `date` datetime default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `hitlog`
--

LOCK TABLES `hitlog` WRITE;
/*!40000 ALTER TABLE `hitlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `hitlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pen_test_tools`
--

DROP TABLE IF EXISTS `pen_test_tools`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `pen_test_tools` (
  `tool_id` int(11) NOT NULL auto_increment,
  `tool_name` text,
  `phase_to_use` text,
  `tool_type` text,
  `comment` text,
  PRIMARY KEY  (`tool_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `pen_test_tools`
--

LOCK TABLES `pen_test_tools` WRITE;
/*!40000 ALTER TABLE `pen_test_tools` DISABLE KEYS */;
INSERT INTO `pen_test_tools` VALUES (1,'WebSecurify','Discovery','Scanner','Can capture screenshots automatically'),(2,'Grendel-Scan','Discovery','Scanner','Has interactive-mode. Lots plug-ins. Includes Nikto. May not spider JS menus well.'),(3,'Skipfish','Discovery','Scanner','Agressive. Fast. Uses wordlists to brute force directories.'),(4,'w3af','Discovery','Scanner','GUI simple to use. Can call sqlmap. Allows scan packages to be saved in profiles. Provides evasion, discovery, brute force, vulneraility assessment (audit), exploitation, pattern matching (grep).'),(5,'Burp-Suite','Discovery','Scanner','GUI simple to use. Provides highly configurable manual scan assistence with productivity enhancements.'),(6,'Netsparker Community Edition','Discovery','Scanner','Excellent spider abilities and reporting. GUI driven. Runs on Windows. Good at SQLi and XSS detection. From Mavituna Security. Professional version available for purchase.'),(7,'NeXpose','Discovery','Scanner','GUI driven. Runs on Windows. From Rapid7. Professional version available for purchase. Updates automatically. Requires large amounts of memory.'),(8,'Hailstorm','Discovery','Scanner','From Cenzic. Professional version requires dedicated staff, multiple dediciated servers, professional pen-tester to analyze results, and very large license fee. Extensive scanning ability. Very large vulnerability database. Highly configurable. Excellent reporting. Can scan entire networks of web applications. Extremely expensive. Requires large amounts of memory.'),(9,'Tamper Data','Discovery','Interception Proxy','Firefox add-on. Easy to use. Tampers with POST parameters and HTTP Headers. Does not tamper with URL query parameters. Requires manual browsing.'),(10,'DirBuster','Discovery','Fuzzer','OWASP tool. Fuzzes directory names to brute force directories.'),(11,'SQL Inject Me','Discovery','Fuzzer','Firefox add-on. Attempts common strings which elicit XSS responses. Not compatible with Firefox 8.0.'),(12,'XSS Me','Discovery','Fuzzer','Firefox add-on. Attempts common strings which elicit responses from databases when SQL injection is present. Not compatible with Firefox 8.0.'),(13,'GreaseMonkey','Discovery','Browser Manipulation Tool','Firefox add-on. Allows the user to inject JavaScripts and change page.'),(14,'NSLookup','Reconnaissance','DNS Server Query Tool','DNS query tool can query DNS name or reverse lookup on IP. Set debug for better output. Premiere tool on Windows but Linux perfers Dig. DNS traffic generally over UDP 53 unless response long then over TCP 53. Online version combined with anonymous proxy or TOR network may be prefered for stealth.'),(15,'Whois','Reconnaissance','Domain name lookup service','Whois is available in Linux naitvely and Windows as a Sysinternals download plus online. Whois can lookup the registrar of a domain and the IP block associated. An online version is http://network-tools.com/'),(16,'Dig','Reconnaissance','DNS Server Query Tool','The Domain Information Groper is prefered on Linux over NSLookup and provides more information natively. NSLookup must be in debug mode to give similar output. DIG can perform zone transfers if the DNS server allows transfers.'),(17,'Fierce Domain Scanner','Reconnaissance','DNS Server Query Tool','Powerful DNS scan tool. FDS is a Perl program which scans and reverse scans a domain plus scans IPs within the same block to look for neighoring machines. Available in the Samurai and Backtrack distributions plus http://ha.ckers.org/fierce/'),(18,'host','Reconnaissance','DNS Server Query Tool','A simple DNS lookup tool included with BIND. The tool is a friendly and capible command line tool with excellent documentation. Does not posess the automation of FDS.'),(19,'zaproxy','Reconnaissance','Interception Proxy','OWASP Zed Attack Proxy. An interception proxy that can also passively or actively scan applications as well as perform brute-forcing. Similar to Burp-Suite without the disadvantage of requiring a costly license.'),(20,'Google intitle','Discovery','Search Engine','intitle and site directives allow directory discovery. GHDB available to provide hints. See Hackers for Charity site.');
/*!40000 ALTER TABLE `pen_test_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `tikiwiki`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tikiwiki` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tikiwiki`;

--
-- Table structure for table `galaxia_activities`
--

DROP TABLE IF EXISTS `galaxia_activities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_activities` (
  `activityId` int(14) NOT NULL auto_increment,
  `name` varchar(80) default NULL,
  `normalized_name` varchar(80) default NULL,
  `pId` int(14) NOT NULL default '0',
  `type` enum('start','end','split','switch','join','activity','standalone') default NULL,
  `isAutoRouted` char(1) default NULL,
  `flowNum` int(10) default NULL,
  `isInteractive` char(1) default NULL,
  `lastModif` int(14) default NULL,
  `description` text,
  `expirationTime` int(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`activityId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_activities`
--

LOCK TABLES `galaxia_activities` WRITE;
/*!40000 ALTER TABLE `galaxia_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_activity_roles`
--

DROP TABLE IF EXISTS `galaxia_activity_roles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_activity_roles` (
  `activityId` int(14) NOT NULL default '0',
  `roleId` int(14) NOT NULL default '0',
  PRIMARY KEY  (`activityId`,`roleId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_activity_roles`
--

LOCK TABLES `galaxia_activity_roles` WRITE;
/*!40000 ALTER TABLE `galaxia_activity_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_activity_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_instance_activities`
--

DROP TABLE IF EXISTS `galaxia_instance_activities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_instance_activities` (
  `instanceId` int(14) NOT NULL default '0',
  `activityId` int(14) NOT NULL default '0',
  `started` int(14) NOT NULL default '0',
  `ended` int(14) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `status` enum('running','completed') default NULL,
  PRIMARY KEY  (`instanceId`,`activityId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_instance_activities`
--

LOCK TABLES `galaxia_instance_activities` WRITE;
/*!40000 ALTER TABLE `galaxia_instance_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_instance_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_instance_comments`
--

DROP TABLE IF EXISTS `galaxia_instance_comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_instance_comments` (
  `cId` int(14) NOT NULL auto_increment,
  `instanceId` int(14) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `activityId` int(14) default NULL,
  `hash` varchar(32) default NULL,
  `title` varchar(250) default NULL,
  `comment` text,
  `activity` varchar(80) default NULL,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`cId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_instance_comments`
--

LOCK TABLES `galaxia_instance_comments` WRITE;
/*!40000 ALTER TABLE `galaxia_instance_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_instance_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_instances`
--

DROP TABLE IF EXISTS `galaxia_instances`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_instances` (
  `instanceId` int(14) NOT NULL auto_increment,
  `pId` int(14) NOT NULL default '0',
  `started` int(14) default NULL,
  `name` varchar(200) NOT NULL default 'No Name',
  `owner` varchar(200) default NULL,
  `nextActivity` int(14) default NULL,
  `nextUser` varchar(200) default NULL,
  `ended` int(14) default NULL,
  `status` enum('active','exception','aborted','completed') default NULL,
  `properties` longblob,
  PRIMARY KEY  (`instanceId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_instances`
--

LOCK TABLES `galaxia_instances` WRITE;
/*!40000 ALTER TABLE `galaxia_instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_processes`
--

DROP TABLE IF EXISTS `galaxia_processes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_processes` (
  `pId` int(14) NOT NULL auto_increment,
  `name` varchar(80) default NULL,
  `isValid` char(1) default NULL,
  `isActive` char(1) default NULL,
  `version` varchar(12) default NULL,
  `description` text,
  `lastModif` int(14) default NULL,
  `normalized_name` varchar(80) default NULL,
  PRIMARY KEY  (`pId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_processes`
--

LOCK TABLES `galaxia_processes` WRITE;
/*!40000 ALTER TABLE `galaxia_processes` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_roles`
--

DROP TABLE IF EXISTS `galaxia_roles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_roles` (
  `roleId` int(14) NOT NULL auto_increment,
  `pId` int(14) NOT NULL default '0',
  `lastModif` int(14) default NULL,
  `name` varchar(80) default NULL,
  `description` text,
  PRIMARY KEY  (`roleId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_roles`
--

LOCK TABLES `galaxia_roles` WRITE;
/*!40000 ALTER TABLE `galaxia_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_transitions`
--

DROP TABLE IF EXISTS `galaxia_transitions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_transitions` (
  `pId` int(14) NOT NULL default '0',
  `actFromId` int(14) NOT NULL default '0',
  `actToId` int(14) NOT NULL default '0',
  PRIMARY KEY  (`actFromId`,`actToId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_transitions`
--

LOCK TABLES `galaxia_transitions` WRITE;
/*!40000 ALTER TABLE `galaxia_transitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_user_roles`
--

DROP TABLE IF EXISTS `galaxia_user_roles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_user_roles` (
  `pId` int(14) NOT NULL default '0',
  `roleId` int(14) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`roleId`,`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_user_roles`
--

LOCK TABLES `galaxia_user_roles` WRITE;
/*!40000 ALTER TABLE `galaxia_user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_workitems`
--

DROP TABLE IF EXISTS `galaxia_workitems`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_workitems` (
  `itemId` int(14) NOT NULL auto_increment,
  `instanceId` int(14) NOT NULL default '0',
  `orderId` int(14) NOT NULL default '0',
  `activityId` int(14) NOT NULL default '0',
  `properties` longblob,
  `started` int(14) default NULL,
  `ended` int(14) default NULL,
  `user` varchar(40) default NULL,
  PRIMARY KEY  (`itemId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_workitems`
--

LOCK TABLES `galaxia_workitems` WRITE;
/*!40000 ALTER TABLE `galaxia_workitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_workitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messu_archive`
--

DROP TABLE IF EXISTS `messu_archive`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `messu_archive` (
  `msgId` int(14) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  `user_from` varchar(40) NOT NULL default '',
  `user_to` text,
  `user_cc` text,
  `user_bcc` text,
  `subject` varchar(255) default NULL,
  `body` text,
  `hash` varchar(32) default NULL,
  `replyto_hash` varchar(32) default NULL,
  `date` int(14) default NULL,
  `isRead` char(1) default NULL,
  `isReplied` char(1) default NULL,
  `isFlagged` char(1) default NULL,
  `priority` int(2) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `messu_archive`
--

LOCK TABLES `messu_archive` WRITE;
/*!40000 ALTER TABLE `messu_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `messu_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messu_messages`
--

DROP TABLE IF EXISTS `messu_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `messu_messages` (
  `msgId` int(14) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  `user_from` varchar(200) NOT NULL default '',
  `user_to` text,
  `user_cc` text,
  `user_bcc` text,
  `subject` varchar(255) default NULL,
  `body` text,
  `hash` varchar(32) default NULL,
  `replyto_hash` varchar(32) default NULL,
  `date` int(14) default NULL,
  `isRead` char(1) default NULL,
  `isReplied` char(1) default NULL,
  `isFlagged` char(1) default NULL,
  `priority` int(2) default NULL,
  PRIMARY KEY  (`msgId`),
  KEY `userIsRead` (`user`,`isRead`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `messu_messages`
--

LOCK TABLES `messu_messages` WRITE;
/*!40000 ALTER TABLE `messu_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messu_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messu_sent`
--

DROP TABLE IF EXISTS `messu_sent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `messu_sent` (
  `msgId` int(14) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  `user_from` varchar(40) NOT NULL default '',
  `user_to` text,
  `user_cc` text,
  `user_bcc` text,
  `subject` varchar(255) default NULL,
  `body` text,
  `hash` varchar(32) default NULL,
  `replyto_hash` varchar(32) default NULL,
  `date` int(14) default NULL,
  `isRead` char(1) default NULL,
  `isReplied` char(1) default NULL,
  `isFlagged` char(1) default NULL,
  `priority` int(2) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `messu_sent`
--

LOCK TABLES `messu_sent` WRITE;
/*!40000 ALTER TABLE `messu_sent` DISABLE KEYS */;
/*!40000 ALTER TABLE `messu_sent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sessions` (
  `sesskey` char(32) NOT NULL,
  `expiry` int(11) unsigned NOT NULL,
  `expireref` varchar(64) default NULL,
  `data` text NOT NULL,
  PRIMARY KEY  (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_actionlog`
--

DROP TABLE IF EXISTS `tiki_actionlog`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_actionlog` (
  `action` varchar(255) NOT NULL default '',
  `lastModif` int(14) default NULL,
  `pageName` varchar(200) default NULL,
  `user` varchar(40) default NULL,
  `ip` varchar(15) default NULL,
  `comment` varchar(200) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_actionlog`
--

LOCK TABLES `tiki_actionlog` WRITE;
/*!40000 ALTER TABLE `tiki_actionlog` DISABLE KEYS */;
INSERT INTO `tiki_actionlog` VALUES ('Created',1271399888,'HomePage','admin','0.0.0.0','Tiki initialization');
/*!40000 ALTER TABLE `tiki_actionlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_article_types`
--

DROP TABLE IF EXISTS `tiki_article_types`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_article_types` (
  `type` varchar(50) NOT NULL,
  `use_ratings` varchar(1) default NULL,
  `show_pre_publ` varchar(1) default NULL,
  `show_post_expire` varchar(1) default 'y',
  `heading_only` varchar(1) default NULL,
  `allow_comments` varchar(1) default 'y',
  `show_image` varchar(1) default 'y',
  `show_avatar` varchar(1) default NULL,
  `show_author` varchar(1) default 'y',
  `show_pubdate` varchar(1) default 'y',
  `show_expdate` varchar(1) default NULL,
  `show_reads` varchar(1) default 'y',
  `show_size` char(1) default 'n',
  `show_topline` char(1) default 'n',
  `show_subtitle` char(1) default 'n',
  `show_linkto` char(1) default 'n',
  `show_image_caption` char(1) default 'n',
  `show_lang` char(1) default 'n',
  `creator_edit` varchar(1) default NULL,
  `comment_can_rate_article` char(1) default NULL,
  PRIMARY KEY  (`type`),
  KEY `show_pre_publ` (`show_pre_publ`),
  KEY `show_post_expire` (`show_post_expire`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_article_types`
--

LOCK TABLES `tiki_article_types` WRITE;
/*!40000 ALTER TABLE `tiki_article_types` DISABLE KEYS */;
INSERT INTO `tiki_article_types` VALUES ('Article',NULL,NULL,'y',NULL,'y','y',NULL,'y','y',NULL,'y','n','n','n','n','n','n',NULL,NULL),('Review','y',NULL,'y',NULL,'y','y',NULL,'y','y',NULL,'y','n','n','n','n','n','n',NULL,NULL),('Event',NULL,NULL,'n',NULL,'y','y',NULL,'y','y',NULL,'y','n','n','n','n','n','n',NULL,NULL),('Classified',NULL,NULL,'n','y','n','y',NULL,'y','y',NULL,'y','n','n','n','n','n','n',NULL,NULL);
/*!40000 ALTER TABLE `tiki_article_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_articles`
--

DROP TABLE IF EXISTS `tiki_articles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_articles` (
  `articleId` int(8) NOT NULL auto_increment,
  `topline` varchar(255) default NULL,
  `title` varchar(80) default NULL,
  `subtitle` varchar(255) default NULL,
  `linkto` varchar(255) default NULL,
  `lang` varchar(16) default NULL,
  `state` char(1) default 's',
  `authorName` varchar(60) default NULL,
  `topicId` int(14) default NULL,
  `topicName` varchar(40) default NULL,
  `size` int(12) default NULL,
  `useImage` char(1) default NULL,
  `image_name` varchar(80) default NULL,
  `image_caption` text,
  `image_type` varchar(80) default NULL,
  `image_size` int(14) default NULL,
  `image_x` int(4) default NULL,
  `image_y` int(4) default NULL,
  `image_data` longblob,
  `publishDate` int(14) default NULL,
  `expireDate` int(14) default NULL,
  `created` int(14) default NULL,
  `heading` text,
  `body` text,
  `hash` varchar(32) default NULL,
  `author` varchar(200) default NULL,
  `nbreads` int(14) default NULL,
  `votes` int(8) default NULL,
  `points` int(14) default NULL,
  `type` varchar(50) default NULL,
  `rating` decimal(3,2) default NULL,
  `isfloat` char(1) default NULL,
  PRIMARY KEY  (`articleId`),
  KEY `title` (`title`),
  KEY `heading` (`heading`(255)),
  KEY `body` (`body`(255)),
  KEY `nbreads` (`nbreads`),
  KEY `author` (`author`(32)),
  KEY `topicId` (`topicId`),
  KEY `publishDate` (`publishDate`),
  KEY `expireDate` (`expireDate`),
  KEY `type` (`type`),
  FULLTEXT KEY `ft` (`title`,`heading`,`body`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_articles`
--

LOCK TABLES `tiki_articles` WRITE;
/*!40000 ALTER TABLE `tiki_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_banners`
--

DROP TABLE IF EXISTS `tiki_banners`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_banners` (
  `bannerId` int(12) NOT NULL auto_increment,
  `client` varchar(200) NOT NULL default '',
  `url` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `alt` varchar(250) default NULL,
  `which` varchar(50) default NULL,
  `imageData` longblob,
  `imageType` varchar(200) default NULL,
  `imageName` varchar(100) default NULL,
  `HTMLData` text,
  `fixedURLData` varchar(255) default NULL,
  `textData` text,
  `fromDate` int(14) default NULL,
  `toDate` int(14) default NULL,
  `useDates` char(1) default NULL,
  `mon` char(1) default NULL,
  `tue` char(1) default NULL,
  `wed` char(1) default NULL,
  `thu` char(1) default NULL,
  `fri` char(1) default NULL,
  `sat` char(1) default NULL,
  `sun` char(1) default NULL,
  `hourFrom` varchar(4) default NULL,
  `hourTo` varchar(4) default NULL,
  `created` int(14) default NULL,
  `maxImpressions` int(8) default NULL,
  `impressions` int(8) default NULL,
  `clicks` int(8) default NULL,
  `zone` varchar(40) default NULL,
  PRIMARY KEY  (`bannerId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_banners`
--

LOCK TABLES `tiki_banners` WRITE;
/*!40000 ALTER TABLE `tiki_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_banning`
--

DROP TABLE IF EXISTS `tiki_banning`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_banning` (
  `banId` int(12) NOT NULL auto_increment,
  `mode` enum('user','ip') default NULL,
  `title` varchar(200) default NULL,
  `ip1` char(3) default NULL,
  `ip2` char(3) default NULL,
  `ip3` char(3) default NULL,
  `ip4` char(3) default NULL,
  `user` varchar(40) default NULL,
  `date_from` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `date_to` timestamp NOT NULL default '0000-00-00 00:00:00',
  `use_dates` char(1) default NULL,
  `created` int(14) default NULL,
  `message` text,
  PRIMARY KEY  (`banId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_banning`
--

LOCK TABLES `tiki_banning` WRITE;
/*!40000 ALTER TABLE `tiki_banning` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_banning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_banning_sections`
--

DROP TABLE IF EXISTS `tiki_banning_sections`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_banning_sections` (
  `banId` int(12) NOT NULL default '0',
  `section` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`banId`,`section`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_banning_sections`
--

LOCK TABLES `tiki_banning_sections` WRITE;
/*!40000 ALTER TABLE `tiki_banning_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_banning_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_blog_activity`
--

DROP TABLE IF EXISTS `tiki_blog_activity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_blog_activity` (
  `blogId` int(8) NOT NULL default '0',
  `day` int(14) NOT NULL default '0',
  `posts` int(8) default NULL,
  PRIMARY KEY  (`blogId`,`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_blog_activity`
--

LOCK TABLES `tiki_blog_activity` WRITE;
/*!40000 ALTER TABLE `tiki_blog_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_blog_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_blog_posts`
--

DROP TABLE IF EXISTS `tiki_blog_posts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_blog_posts` (
  `postId` int(8) NOT NULL auto_increment,
  `blogId` int(8) NOT NULL default '0',
  `data` text,
  `data_size` int(11) unsigned NOT NULL default '0',
  `created` int(14) default NULL,
  `user` varchar(40) default NULL,
  `trackbacks_to` text,
  `trackbacks_from` text,
  `title` varchar(80) default NULL,
  `priv` varchar(1) default NULL,
  PRIMARY KEY  (`postId`),
  KEY `data` (`data`(255)),
  KEY `blogId` (`blogId`),
  KEY `created` (`created`),
  FULLTEXT KEY `ft` (`data`,`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_blog_posts`
--

LOCK TABLES `tiki_blog_posts` WRITE;
/*!40000 ALTER TABLE `tiki_blog_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_blog_posts_images`
--

DROP TABLE IF EXISTS `tiki_blog_posts_images`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_blog_posts_images` (
  `imgId` int(14) NOT NULL auto_increment,
  `postId` int(14) NOT NULL default '0',
  `filename` varchar(80) default NULL,
  `filetype` varchar(80) default NULL,
  `filesize` int(14) default NULL,
  `data` longblob,
  PRIMARY KEY  (`imgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_blog_posts_images`
--

LOCK TABLES `tiki_blog_posts_images` WRITE;
/*!40000 ALTER TABLE `tiki_blog_posts_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_blog_posts_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_blogs`
--

DROP TABLE IF EXISTS `tiki_blogs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_blogs` (
  `blogId` int(8) NOT NULL auto_increment,
  `created` int(14) default NULL,
  `lastModif` int(14) default NULL,
  `title` varchar(200) default NULL,
  `description` text,
  `user` varchar(40) default NULL,
  `public` char(1) default NULL,
  `posts` int(8) default NULL,
  `maxPosts` int(8) default NULL,
  `hits` int(8) default NULL,
  `activity` decimal(4,2) default NULL,
  `heading` text,
  `use_find` char(1) default NULL,
  `use_title` char(1) default NULL,
  `add_date` char(1) default NULL,
  `add_poster` char(1) default NULL,
  `allow_comments` char(1) default NULL,
  `show_avatar` char(1) default NULL,
  PRIMARY KEY  (`blogId`),
  KEY `title` (`title`),
  KEY `description` (`description`(255)),
  KEY `hits` (`hits`),
  FULLTEXT KEY `ft` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_blogs`
--

LOCK TABLES `tiki_blogs` WRITE;
/*!40000 ALTER TABLE `tiki_blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_calendar_categories`
--

DROP TABLE IF EXISTS `tiki_calendar_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_calendar_categories` (
  `calcatId` int(11) NOT NULL auto_increment,
  `calendarId` int(14) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`calcatId`),
  UNIQUE KEY `catname` (`calendarId`,`name`(16))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_calendar_categories`
--

LOCK TABLES `tiki_calendar_categories` WRITE;
/*!40000 ALTER TABLE `tiki_calendar_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_calendar_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_calendar_items`
--

DROP TABLE IF EXISTS `tiki_calendar_items`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_calendar_items` (
  `calitemId` int(14) NOT NULL auto_increment,
  `calendarId` int(14) NOT NULL default '0',
  `start` int(14) NOT NULL default '0',
  `end` int(14) NOT NULL default '0',
  `locationId` int(14) default NULL,
  `categoryId` int(14) default NULL,
  `nlId` int(12) NOT NULL default '0',
  `priority` enum('1','2','3','4','5','6','7','8','9') NOT NULL default '1',
  `status` enum('0','1','2') NOT NULL default '0',
  `url` varchar(255) default NULL,
  `lang` char(16) NOT NULL default 'en',
  `name` varchar(255) NOT NULL default '',
  `description` blob,
  `user` varchar(40) default NULL,
  `created` int(14) NOT NULL default '0',
  `lastmodif` int(14) NOT NULL default '0',
  PRIMARY KEY  (`calitemId`),
  KEY `calendarId` (`calendarId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_calendar_items`
--

LOCK TABLES `tiki_calendar_items` WRITE;
/*!40000 ALTER TABLE `tiki_calendar_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_calendar_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_calendar_locations`
--

DROP TABLE IF EXISTS `tiki_calendar_locations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_calendar_locations` (
  `callocId` int(14) NOT NULL auto_increment,
  `calendarId` int(14) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` blob,
  PRIMARY KEY  (`callocId`),
  UNIQUE KEY `locname` (`calendarId`,`name`(16))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_calendar_locations`
--

LOCK TABLES `tiki_calendar_locations` WRITE;
/*!40000 ALTER TABLE `tiki_calendar_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_calendar_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_calendar_roles`
--

DROP TABLE IF EXISTS `tiki_calendar_roles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_calendar_roles` (
  `calitemId` int(14) NOT NULL default '0',
  `username` varchar(40) NOT NULL default '',
  `role` enum('0','1','2','3','6') NOT NULL default '0',
  PRIMARY KEY  (`calitemId`,`username`(16),`role`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_calendar_roles`
--

LOCK TABLES `tiki_calendar_roles` WRITE;
/*!40000 ALTER TABLE `tiki_calendar_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_calendar_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_calendars`
--

DROP TABLE IF EXISTS `tiki_calendars`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_calendars` (
  `calendarId` int(14) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `description` varchar(255) default NULL,
  `user` varchar(40) NOT NULL default '',
  `customlocations` enum('n','y') NOT NULL default 'n',
  `customcategories` enum('n','y') NOT NULL default 'n',
  `customlanguages` enum('n','y') NOT NULL default 'n',
  `custompriorities` enum('n','y') NOT NULL default 'n',
  `customparticipants` enum('n','y') NOT NULL default 'n',
  `customsubscription` enum('n','y') NOT NULL default 'n',
  `created` int(14) NOT NULL default '0',
  `lastmodif` int(14) NOT NULL default '0',
  `personal` enum('n','y') NOT NULL default 'n',
  PRIMARY KEY  (`calendarId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_calendars`
--

LOCK TABLES `tiki_calendars` WRITE;
/*!40000 ALTER TABLE `tiki_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_categories`
--

DROP TABLE IF EXISTS `tiki_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_categories` (
  `categId` int(12) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `description` varchar(250) default NULL,
  `parentId` int(12) default NULL,
  `hits` int(8) default NULL,
  PRIMARY KEY  (`categId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_categories`
--

LOCK TABLES `tiki_categories` WRITE;
/*!40000 ALTER TABLE `tiki_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_categorized_objects`
--

DROP TABLE IF EXISTS `tiki_categorized_objects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_categorized_objects` (
  `catObjectId` int(12) NOT NULL auto_increment,
  `type` varchar(50) default NULL,
  `objId` varchar(255) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `name` varchar(200) default NULL,
  `href` varchar(200) default NULL,
  `hits` int(8) default NULL,
  PRIMARY KEY  (`catObjectId`),
  KEY `type` (`type`,`objId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_categorized_objects`
--

LOCK TABLES `tiki_categorized_objects` WRITE;
/*!40000 ALTER TABLE `tiki_categorized_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_categorized_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_category_objects`
--

DROP TABLE IF EXISTS `tiki_category_objects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_category_objects` (
  `catObjectId` int(12) NOT NULL default '0',
  `categId` int(12) NOT NULL default '0',
  PRIMARY KEY  (`catObjectId`,`categId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_category_objects`
--

LOCK TABLES `tiki_category_objects` WRITE;
/*!40000 ALTER TABLE `tiki_category_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_category_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_category_sites`
--

DROP TABLE IF EXISTS `tiki_category_sites`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_category_sites` (
  `categId` int(10) NOT NULL default '0',
  `siteId` int(14) NOT NULL default '0',
  PRIMARY KEY  (`categId`,`siteId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_category_sites`
--

LOCK TABLES `tiki_category_sites` WRITE;
/*!40000 ALTER TABLE `tiki_category_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_category_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_chart_items`
--

DROP TABLE IF EXISTS `tiki_chart_items`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_chart_items` (
  `itemId` int(14) NOT NULL auto_increment,
  `title` varchar(250) default NULL,
  `description` text,
  `chartId` int(14) NOT NULL default '0',
  `created` int(14) default NULL,
  `URL` varchar(250) default NULL,
  `votes` int(14) default NULL,
  `points` int(14) default NULL,
  `average` decimal(4,2) default NULL,
  PRIMARY KEY  (`itemId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_chart_items`
--

LOCK TABLES `tiki_chart_items` WRITE;
/*!40000 ALTER TABLE `tiki_chart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_chart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_charts`
--

DROP TABLE IF EXISTS `tiki_charts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_charts` (
  `chartId` int(14) NOT NULL auto_increment,
  `title` varchar(250) default NULL,
  `description` text,
  `hits` int(14) default NULL,
  `singleItemVotes` char(1) default NULL,
  `singleChartVotes` char(1) default NULL,
  `suggestions` char(1) default NULL,
  `autoValidate` char(1) default NULL,
  `topN` int(6) default NULL,
  `maxVoteValue` int(4) default NULL,
  `frequency` int(14) default NULL,
  `showAverage` char(1) default NULL,
  `isActive` char(1) default NULL,
  `showVotes` char(1) default NULL,
  `useCookies` char(1) default NULL,
  `lastChart` int(14) default NULL,
  `voteAgainAfter` int(14) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`chartId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_charts`
--

LOCK TABLES `tiki_charts` WRITE;
/*!40000 ALTER TABLE `tiki_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_charts_rankings`
--

DROP TABLE IF EXISTS `tiki_charts_rankings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_charts_rankings` (
  `chartId` int(14) NOT NULL default '0',
  `itemId` int(14) NOT NULL default '0',
  `position` int(14) NOT NULL default '0',
  `timestamp` int(14) NOT NULL default '0',
  `lastPosition` int(14) NOT NULL default '0',
  `period` int(14) NOT NULL default '0',
  `rvotes` int(14) NOT NULL default '0',
  `raverage` decimal(4,2) NOT NULL default '0.00',
  PRIMARY KEY  (`chartId`,`itemId`,`period`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_charts_rankings`
--

LOCK TABLES `tiki_charts_rankings` WRITE;
/*!40000 ALTER TABLE `tiki_charts_rankings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_charts_rankings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_charts_votes`
--

DROP TABLE IF EXISTS `tiki_charts_votes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_charts_votes` (
  `user` varchar(40) NOT NULL default '',
  `itemId` int(14) NOT NULL default '0',
  `timestamp` int(14) default NULL,
  `chartId` int(14) default NULL,
  PRIMARY KEY  (`user`,`itemId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_charts_votes`
--

LOCK TABLES `tiki_charts_votes` WRITE;
/*!40000 ALTER TABLE `tiki_charts_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_charts_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_chat_channels`
--

DROP TABLE IF EXISTS `tiki_chat_channels`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_chat_channels` (
  `channelId` int(8) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `description` varchar(250) default NULL,
  `max_users` int(8) default NULL,
  `mode` char(1) default NULL,
  `moderator` varchar(200) default NULL,
  `active` char(1) default NULL,
  `refresh` int(6) default NULL,
  PRIMARY KEY  (`channelId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_chat_channels`
--

LOCK TABLES `tiki_chat_channels` WRITE;
/*!40000 ALTER TABLE `tiki_chat_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_chat_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_chat_messages`
--

DROP TABLE IF EXISTS `tiki_chat_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_chat_messages` (
  `messageId` int(8) NOT NULL auto_increment,
  `channelId` int(8) NOT NULL default '0',
  `data` varchar(255) default NULL,
  `poster` varchar(200) NOT NULL default 'anonymous',
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`messageId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_chat_messages`
--

LOCK TABLES `tiki_chat_messages` WRITE;
/*!40000 ALTER TABLE `tiki_chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_chat_users`
--

DROP TABLE IF EXISTS `tiki_chat_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_chat_users` (
  `nickname` varchar(200) NOT NULL default '',
  `channelId` int(8) NOT NULL default '0',
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`nickname`,`channelId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_chat_users`
--

LOCK TABLES `tiki_chat_users` WRITE;
/*!40000 ALTER TABLE `tiki_chat_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_chat_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_comments`
--

DROP TABLE IF EXISTS `tiki_comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_comments` (
  `threadId` int(14) NOT NULL auto_increment,
  `object` varchar(255) NOT NULL default '',
  `objectType` varchar(32) NOT NULL default '',
  `parentId` int(14) default NULL,
  `userName` varchar(40) default NULL,
  `commentDate` int(14) default NULL,
  `hits` int(8) default NULL,
  `type` char(1) default NULL,
  `points` decimal(8,2) default NULL,
  `votes` int(8) default NULL,
  `average` decimal(8,4) default NULL,
  `title` varchar(100) default NULL,
  `data` text,
  `hash` varchar(32) default NULL,
  `user_ip` varchar(15) default NULL,
  `summary` varchar(240) default NULL,
  `smiley` varchar(80) default NULL,
  `message_id` varchar(250) default NULL,
  `in_reply_to` varchar(250) default NULL,
  `comment_rating` tinyint(2) default NULL,
  PRIMARY KEY  (`threadId`),
  KEY `title` (`title`),
  KEY `data` (`data`(255)),
  KEY `hits` (`hits`),
  KEY `tc_pi` (`parentId`),
  KEY `objectType` (`object`,`objectType`),
  KEY `commentDate` (`commentDate`),
  FULLTEXT KEY `ft` (`title`,`data`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_comments`
--

LOCK TABLES `tiki_comments` WRITE;
/*!40000 ALTER TABLE `tiki_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_content`
--

DROP TABLE IF EXISTS `tiki_content`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_content` (
  `contentId` int(8) NOT NULL auto_increment,
  `description` text,
  PRIMARY KEY  (`contentId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_content`
--

LOCK TABLES `tiki_content` WRITE;
/*!40000 ALTER TABLE `tiki_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_content_templates`
--

DROP TABLE IF EXISTS `tiki_content_templates`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_content_templates` (
  `templateId` int(10) NOT NULL auto_increment,
  `content` longblob,
  `name` varchar(200) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`templateId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_content_templates`
--

LOCK TABLES `tiki_content_templates` WRITE;
/*!40000 ALTER TABLE `tiki_content_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_content_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_content_templates_sections`
--

DROP TABLE IF EXISTS `tiki_content_templates_sections`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_content_templates_sections` (
  `templateId` int(10) NOT NULL default '0',
  `section` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`templateId`,`section`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_content_templates_sections`
--

LOCK TABLES `tiki_content_templates_sections` WRITE;
/*!40000 ALTER TABLE `tiki_content_templates_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_content_templates_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_cookies`
--

DROP TABLE IF EXISTS `tiki_cookies`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_cookies` (
  `cookieId` int(10) NOT NULL auto_increment,
  `cookie` text,
  PRIMARY KEY  (`cookieId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_cookies`
--

LOCK TABLES `tiki_cookies` WRITE;
/*!40000 ALTER TABLE `tiki_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_copyrights`
--

DROP TABLE IF EXISTS `tiki_copyrights`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_copyrights` (
  `copyrightId` int(12) NOT NULL auto_increment,
  `page` varchar(200) default NULL,
  `title` varchar(200) default NULL,
  `year` int(11) default NULL,
  `authors` varchar(200) default NULL,
  `copyright_order` int(11) default NULL,
  `userName` varchar(40) default NULL,
  PRIMARY KEY  (`copyrightId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_copyrights`
--

LOCK TABLES `tiki_copyrights` WRITE;
/*!40000 ALTER TABLE `tiki_copyrights` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_copyrights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_directory_categories`
--

DROP TABLE IF EXISTS `tiki_directory_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_directory_categories` (
  `categId` int(10) NOT NULL auto_increment,
  `parent` int(10) default NULL,
  `name` varchar(240) default NULL,
  `description` text,
  `childrenType` char(1) default NULL,
  `sites` int(10) default NULL,
  `viewableChildren` int(4) default NULL,
  `allowSites` char(1) default NULL,
  `showCount` char(1) default NULL,
  `editorGroup` varchar(200) default NULL,
  `hits` int(12) default NULL,
  PRIMARY KEY  (`categId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_directory_categories`
--

LOCK TABLES `tiki_directory_categories` WRITE;
/*!40000 ALTER TABLE `tiki_directory_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_directory_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_directory_search`
--

DROP TABLE IF EXISTS `tiki_directory_search`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_directory_search` (
  `term` varchar(250) NOT NULL default '',
  `hits` int(14) default NULL,
  PRIMARY KEY  (`term`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_directory_search`
--

LOCK TABLES `tiki_directory_search` WRITE;
/*!40000 ALTER TABLE `tiki_directory_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_directory_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_directory_sites`
--

DROP TABLE IF EXISTS `tiki_directory_sites`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_directory_sites` (
  `siteId` int(14) NOT NULL auto_increment,
  `name` varchar(240) default NULL,
  `description` text,
  `url` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  `hits` int(12) default NULL,
  `isValid` char(1) default NULL,
  `created` int(14) default NULL,
  `lastModif` int(14) default NULL,
  `cache` longblob,
  `cache_timestamp` int(14) default NULL,
  PRIMARY KEY  (`siteId`),
  FULLTEXT KEY `ft` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_directory_sites`
--

LOCK TABLES `tiki_directory_sites` WRITE;
/*!40000 ALTER TABLE `tiki_directory_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_directory_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_download`
--

DROP TABLE IF EXISTS `tiki_download`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_download` (
  `id` int(11) NOT NULL auto_increment,
  `object` varchar(255) NOT NULL default '',
  `userId` int(8) NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `date` int(14) NOT NULL default '0',
  `IP` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `object` (`object`,`userId`,`type`),
  KEY `userId` (`userId`),
  KEY `type` (`type`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_download`
--

LOCK TABLES `tiki_download` WRITE;
/*!40000 ALTER TABLE `tiki_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_drawings`
--

DROP TABLE IF EXISTS `tiki_drawings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_drawings` (
  `drawId` int(12) NOT NULL auto_increment,
  `version` int(8) default NULL,
  `name` varchar(250) default NULL,
  `filename_draw` varchar(250) default NULL,
  `filename_pad` varchar(250) default NULL,
  `timestamp` int(14) default NULL,
  `user` varchar(40) default NULL,
  PRIMARY KEY  (`drawId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_drawings`
--

LOCK TABLES `tiki_drawings` WRITE;
/*!40000 ALTER TABLE `tiki_drawings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_drawings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_dsn`
--

DROP TABLE IF EXISTS `tiki_dsn`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_dsn` (
  `dsnId` int(12) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `dsn` varchar(255) default NULL,
  PRIMARY KEY  (`dsnId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_dsn`
--

LOCK TABLES `tiki_dsn` WRITE;
/*!40000 ALTER TABLE `tiki_dsn` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_dsn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_dynamic_variables`
--

DROP TABLE IF EXISTS `tiki_dynamic_variables`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_dynamic_variables` (
  `name` varchar(40) NOT NULL,
  `data` text,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_dynamic_variables`
--

LOCK TABLES `tiki_dynamic_variables` WRITE;
/*!40000 ALTER TABLE `tiki_dynamic_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_dynamic_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_eph`
--

DROP TABLE IF EXISTS `tiki_eph`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_eph` (
  `ephId` int(12) NOT NULL auto_increment,
  `title` varchar(250) default NULL,
  `isFile` char(1) default NULL,
  `filename` varchar(250) default NULL,
  `filetype` varchar(250) default NULL,
  `filesize` varchar(250) default NULL,
  `data` longblob,
  `textdata` longblob,
  `publish` int(14) default NULL,
  `hits` int(10) default NULL,
  PRIMARY KEY  (`ephId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_eph`
--

LOCK TABLES `tiki_eph` WRITE;
/*!40000 ALTER TABLE `tiki_eph` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_eph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_extwiki`
--

DROP TABLE IF EXISTS `tiki_extwiki`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_extwiki` (
  `extwikiId` int(12) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `extwiki` varchar(255) default NULL,
  PRIMARY KEY  (`extwikiId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_extwiki`
--

LOCK TABLES `tiki_extwiki` WRITE;
/*!40000 ALTER TABLE `tiki_extwiki` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_extwiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_faq_questions`
--

DROP TABLE IF EXISTS `tiki_faq_questions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_faq_questions` (
  `questionId` int(10) NOT NULL auto_increment,
  `faqId` int(10) default NULL,
  `position` int(4) default NULL,
  `question` text,
  `answer` text,
  PRIMARY KEY  (`questionId`),
  KEY `faqId` (`faqId`),
  KEY `question` (`question`(255)),
  KEY `answer` (`answer`(255)),
  FULLTEXT KEY `ft` (`question`,`answer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_faq_questions`
--

LOCK TABLES `tiki_faq_questions` WRITE;
/*!40000 ALTER TABLE `tiki_faq_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_faq_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_faqs`
--

DROP TABLE IF EXISTS `tiki_faqs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_faqs` (
  `faqId` int(10) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `questions` int(5) default NULL,
  `hits` int(8) default NULL,
  `canSuggest` char(1) default NULL,
  PRIMARY KEY  (`faqId`),
  KEY `title` (`title`),
  KEY `description` (`description`(255)),
  KEY `hits` (`hits`),
  FULLTEXT KEY `ft` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_faqs`
--

LOCK TABLES `tiki_faqs` WRITE;
/*!40000 ALTER TABLE `tiki_faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_featured_links`
--

DROP TABLE IF EXISTS `tiki_featured_links`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_featured_links` (
  `url` varchar(200) NOT NULL default '',
  `title` varchar(200) default NULL,
  `description` text,
  `hits` int(8) default NULL,
  `position` int(6) default NULL,
  `type` char(1) default NULL,
  PRIMARY KEY  (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_featured_links`
--

LOCK TABLES `tiki_featured_links` WRITE;
/*!40000 ALTER TABLE `tiki_featured_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_featured_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_file_galleries`
--

DROP TABLE IF EXISTS `tiki_file_galleries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_file_galleries` (
  `galleryId` int(14) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `description` text,
  `created` int(14) default NULL,
  `visible` char(1) default NULL,
  `lastModif` int(14) default NULL,
  `user` varchar(40) default NULL,
  `hits` int(14) default NULL,
  `votes` int(8) default NULL,
  `points` decimal(8,2) default NULL,
  `maxRows` int(10) default NULL,
  `public` char(1) default NULL,
  `show_id` char(1) default NULL,
  `show_icon` char(1) default NULL,
  `show_name` char(1) default NULL,
  `show_size` char(1) default NULL,
  `show_description` char(1) default NULL,
  `max_desc` int(8) default NULL,
  `show_created` char(1) default NULL,
  `show_dl` char(1) default NULL,
  PRIMARY KEY  (`galleryId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_file_galleries`
--

LOCK TABLES `tiki_file_galleries` WRITE;
/*!40000 ALTER TABLE `tiki_file_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_file_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_file_handlers`
--

DROP TABLE IF EXISTS `tiki_file_handlers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_file_handlers` (
  `mime_type` varchar(64) default NULL,
  `cmd` varchar(238) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_file_handlers`
--

LOCK TABLES `tiki_file_handlers` WRITE;
/*!40000 ALTER TABLE `tiki_file_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_file_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_files`
--

DROP TABLE IF EXISTS `tiki_files`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_files` (
  `fileId` int(14) NOT NULL auto_increment,
  `galleryId` int(14) NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `description` text,
  `created` int(14) default NULL,
  `filename` varchar(80) default NULL,
  `filesize` int(14) default NULL,
  `filetype` varchar(250) default NULL,
  `data` longblob,
  `user` varchar(40) default NULL,
  `downloads` int(14) default NULL,
  `votes` int(8) default NULL,
  `points` decimal(8,2) default NULL,
  `path` varchar(255) default NULL,
  `reference_url` varchar(250) default NULL,
  `is_reference` char(1) default NULL,
  `hash` varchar(32) default NULL,
  `search_data` longtext,
  `lastModif` int(14) default NULL,
  `lastModifUser` varchar(200) default NULL,
  PRIMARY KEY  (`fileId`),
  KEY `name` (`name`),
  KEY `description` (`description`(255)),
  KEY `downloads` (`downloads`),
  FULLTEXT KEY `ft` (`name`,`description`,`search_data`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_files`
--

LOCK TABLES `tiki_files` WRITE;
/*!40000 ALTER TABLE `tiki_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_forum_attachments`
--

DROP TABLE IF EXISTS `tiki_forum_attachments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_forum_attachments` (
  `attId` int(14) NOT NULL auto_increment,
  `threadId` int(14) NOT NULL default '0',
  `qId` int(14) NOT NULL default '0',
  `forumId` int(14) default NULL,
  `filename` varchar(250) default NULL,
  `filetype` varchar(250) default NULL,
  `filesize` int(12) default NULL,
  `data` longblob,
  `dir` varchar(200) default NULL,
  `created` int(14) default NULL,
  `path` varchar(250) default NULL,
  PRIMARY KEY  (`attId`),
  KEY `threadId` (`threadId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_forum_attachments`
--

LOCK TABLES `tiki_forum_attachments` WRITE;
/*!40000 ALTER TABLE `tiki_forum_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_forum_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_forum_reads`
--

DROP TABLE IF EXISTS `tiki_forum_reads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_forum_reads` (
  `user` varchar(40) NOT NULL default '',
  `threadId` int(14) NOT NULL default '0',
  `forumId` int(14) default NULL,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`user`,`threadId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_forum_reads`
--

LOCK TABLES `tiki_forum_reads` WRITE;
/*!40000 ALTER TABLE `tiki_forum_reads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_forum_reads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_forums`
--

DROP TABLE IF EXISTS `tiki_forums`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_forums` (
  `forumId` int(8) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `lastPost` int(14) default NULL,
  `threads` int(8) default NULL,
  `comments` int(8) default NULL,
  `controlFlood` char(1) default NULL,
  `floodInterval` int(8) default NULL,
  `moderator` varchar(200) default NULL,
  `hits` int(8) default NULL,
  `mail` varchar(200) default NULL,
  `useMail` char(1) default NULL,
  `section` varchar(200) default NULL,
  `usePruneUnreplied` char(1) default NULL,
  `pruneUnrepliedAge` int(8) default NULL,
  `usePruneOld` char(1) default NULL,
  `pruneMaxAge` int(8) default NULL,
  `topicsPerPage` int(6) default NULL,
  `topicOrdering` varchar(100) default NULL,
  `threadOrdering` varchar(100) default NULL,
  `att` varchar(80) default NULL,
  `att_store` varchar(4) default NULL,
  `att_store_dir` varchar(250) default NULL,
  `att_max_size` int(12) default NULL,
  `ui_level` char(1) default NULL,
  `forum_password` varchar(32) default NULL,
  `forum_use_password` char(1) default NULL,
  `moderator_group` varchar(200) default NULL,
  `approval_type` varchar(20) default NULL,
  `outbound_address` varchar(250) default NULL,
  `outbound_mails_for_inbound_mails` char(1) default NULL,
  `outbound_mails_reply_link` char(1) default NULL,
  `outbound_from` varchar(250) default NULL,
  `inbound_pop_server` varchar(250) default NULL,
  `inbound_pop_port` int(4) default NULL,
  `inbound_pop_user` varchar(200) default NULL,
  `inbound_pop_password` varchar(80) default NULL,
  `topic_smileys` char(1) default NULL,
  `ui_avatar` char(1) default NULL,
  `ui_flag` char(1) default NULL,
  `ui_posts` char(1) default NULL,
  `ui_email` char(1) default NULL,
  `ui_online` char(1) default NULL,
  `topic_summary` char(1) default NULL,
  `show_description` char(1) default NULL,
  `topics_list_replies` char(1) default NULL,
  `topics_list_reads` char(1) default NULL,
  `topics_list_pts` char(1) default NULL,
  `topics_list_lastpost` char(1) default NULL,
  `topics_list_author` char(1) default NULL,
  `vote_threads` char(1) default NULL,
  `forum_last_n` int(2) default '0',
  PRIMARY KEY  (`forumId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_forums`
--

LOCK TABLES `tiki_forums` WRITE;
/*!40000 ALTER TABLE `tiki_forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_forums_queue`
--

DROP TABLE IF EXISTS `tiki_forums_queue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_forums_queue` (
  `qId` int(14) NOT NULL auto_increment,
  `object` varchar(32) default NULL,
  `parentId` int(14) default NULL,
  `forumId` int(14) default NULL,
  `timestamp` int(14) default NULL,
  `user` varchar(40) default NULL,
  `title` varchar(240) default NULL,
  `data` text,
  `type` varchar(60) default NULL,
  `hash` varchar(32) default NULL,
  `topic_smiley` varchar(80) default NULL,
  `topic_title` varchar(240) default NULL,
  `summary` varchar(240) default NULL,
  PRIMARY KEY  (`qId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_forums_queue`
--

LOCK TABLES `tiki_forums_queue` WRITE;
/*!40000 ALTER TABLE `tiki_forums_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_forums_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_forums_reported`
--

DROP TABLE IF EXISTS `tiki_forums_reported`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_forums_reported` (
  `threadId` int(12) NOT NULL default '0',
  `forumId` int(12) NOT NULL default '0',
  `parentId` int(12) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `timestamp` int(14) default NULL,
  `reason` varchar(250) default NULL,
  PRIMARY KEY  (`threadId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_forums_reported`
--

LOCK TABLES `tiki_forums_reported` WRITE;
/*!40000 ALTER TABLE `tiki_forums_reported` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_forums_reported` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_friends`
--

DROP TABLE IF EXISTS `tiki_friends`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_friends` (
  `user` char(40) NOT NULL default '',
  `friend` char(40) NOT NULL default '',
  PRIMARY KEY  (`user`,`friend`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_friends`
--

LOCK TABLES `tiki_friends` WRITE;
/*!40000 ALTER TABLE `tiki_friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_friendship_requests`
--

DROP TABLE IF EXISTS `tiki_friendship_requests`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_friendship_requests` (
  `userFrom` char(40) NOT NULL default '',
  `userTo` char(40) NOT NULL default '',
  `tstamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`userFrom`,`userTo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_friendship_requests`
--

LOCK TABLES `tiki_friendship_requests` WRITE;
/*!40000 ALTER TABLE `tiki_friendship_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_friendship_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_galleries`
--

DROP TABLE IF EXISTS `tiki_galleries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_galleries` (
  `galleryId` int(14) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `description` text,
  `created` int(14) default NULL,
  `lastModif` int(14) default NULL,
  `visible` char(1) default NULL,
  `geographic` char(1) default NULL,
  `theme` varchar(60) default NULL,
  `user` varchar(40) default NULL,
  `hits` int(14) default NULL,
  `maxRows` int(10) default NULL,
  `rowImages` int(10) default NULL,
  `thumbSizeX` int(10) default NULL,
  `thumbSizeY` int(10) default NULL,
  `public` char(1) default NULL,
  `sortorder` varchar(20) NOT NULL default 'created',
  `sortdirection` varchar(4) NOT NULL default 'desc',
  `galleryimage` varchar(20) NOT NULL default 'first',
  `parentgallery` int(14) NOT NULL default '-1',
  `showname` char(1) NOT NULL default 'y',
  `showimageid` char(1) NOT NULL default 'n',
  `showdescription` char(1) NOT NULL default 'n',
  `showcreated` char(1) NOT NULL default 'n',
  `showuser` char(1) NOT NULL default 'n',
  `showhits` char(1) NOT NULL default 'y',
  `showxysize` char(1) NOT NULL default 'y',
  `showfilesize` char(1) NOT NULL default 'n',
  `showfilename` char(1) NOT NULL default 'n',
  `defaultscale` varchar(10) NOT NULL default 'o',
  PRIMARY KEY  (`galleryId`),
  KEY `name` (`name`),
  KEY `description` (`description`(255)),
  KEY `hits` (`hits`),
  KEY `parentgallery` (`parentgallery`),
  KEY `visibleUser` (`visible`,`user`),
  FULLTEXT KEY `ft` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_galleries`
--

LOCK TABLES `tiki_galleries` WRITE;
/*!40000 ALTER TABLE `tiki_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_galleries_scales`
--

DROP TABLE IF EXISTS `tiki_galleries_scales`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_galleries_scales` (
  `galleryId` int(14) NOT NULL default '0',
  `scale` int(11) NOT NULL default '0',
  PRIMARY KEY  (`galleryId`,`scale`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_galleries_scales`
--

LOCK TABLES `tiki_galleries_scales` WRITE;
/*!40000 ALTER TABLE `tiki_galleries_scales` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_galleries_scales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_games`
--

DROP TABLE IF EXISTS `tiki_games`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_games` (
  `gameName` varchar(200) NOT NULL default '',
  `hits` int(8) default NULL,
  `votes` int(8) default NULL,
  `points` int(8) default NULL,
  PRIMARY KEY  (`gameName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_games`
--

LOCK TABLES `tiki_games` WRITE;
/*!40000 ALTER TABLE `tiki_games` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_group_inclusion`
--

DROP TABLE IF EXISTS `tiki_group_inclusion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_group_inclusion` (
  `groupName` varchar(255) NOT NULL default '',
  `includeGroup` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`groupName`(30),`includeGroup`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_group_inclusion`
--

LOCK TABLES `tiki_group_inclusion` WRITE;
/*!40000 ALTER TABLE `tiki_group_inclusion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_group_inclusion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_history`
--

DROP TABLE IF EXISTS `tiki_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_history` (
  `pageName` varchar(160) NOT NULL default '',
  `version` int(8) NOT NULL default '0',
  `version_minor` int(8) NOT NULL default '0',
  `lastModif` int(14) default NULL,
  `description` varchar(200) default NULL,
  `user` varchar(40) default NULL,
  `ip` varchar(15) default NULL,
  `comment` varchar(200) default NULL,
  `data` longblob,
  PRIMARY KEY  (`pageName`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_history`
--

LOCK TABLES `tiki_history` WRITE;
/*!40000 ALTER TABLE `tiki_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_hotwords`
--

DROP TABLE IF EXISTS `tiki_hotwords`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_hotwords` (
  `word` varchar(40) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_hotwords`
--

LOCK TABLES `tiki_hotwords` WRITE;
/*!40000 ALTER TABLE `tiki_hotwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_hotwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_html_pages`
--

DROP TABLE IF EXISTS `tiki_html_pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_html_pages` (
  `pageName` varchar(200) NOT NULL default '',
  `content` longblob,
  `refresh` int(10) default NULL,
  `type` char(1) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`pageName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_html_pages`
--

LOCK TABLES `tiki_html_pages` WRITE;
/*!40000 ALTER TABLE `tiki_html_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_html_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_html_pages_dynamic_zones`
--

DROP TABLE IF EXISTS `tiki_html_pages_dynamic_zones`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_html_pages_dynamic_zones` (
  `pageName` varchar(40) NOT NULL default '',
  `zone` varchar(80) NOT NULL default '',
  `type` char(2) default NULL,
  `content` text,
  PRIMARY KEY  (`pageName`,`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_html_pages_dynamic_zones`
--

LOCK TABLES `tiki_html_pages_dynamic_zones` WRITE;
/*!40000 ALTER TABLE `tiki_html_pages_dynamic_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_html_pages_dynamic_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_images`
--

DROP TABLE IF EXISTS `tiki_images`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_images` (
  `imageId` int(14) NOT NULL auto_increment,
  `galleryId` int(14) NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `description` text,
  `lon` float default NULL,
  `lat` float default NULL,
  `created` int(14) default NULL,
  `user` varchar(40) default NULL,
  `hits` int(14) default NULL,
  `path` varchar(255) default NULL,
  PRIMARY KEY  (`imageId`),
  KEY `name` (`name`),
  KEY `description` (`description`(255)),
  KEY `hits` (`hits`),
  KEY `ti_gId` (`galleryId`),
  KEY `ti_cr` (`created`),
  KEY `ti_us` (`user`),
  FULLTEXT KEY `ft` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_images`
--

LOCK TABLES `tiki_images` WRITE;
/*!40000 ALTER TABLE `tiki_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_images_data`
--

DROP TABLE IF EXISTS `tiki_images_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_images_data` (
  `imageId` int(14) NOT NULL default '0',
  `xsize` int(8) NOT NULL default '0',
  `ysize` int(8) NOT NULL default '0',
  `type` char(1) NOT NULL default '',
  `filesize` int(14) default NULL,
  `filetype` varchar(80) default NULL,
  `filename` varchar(80) default NULL,
  `data` longblob,
  `etag` varchar(32) default NULL,
  PRIMARY KEY  (`imageId`,`xsize`,`ysize`,`type`),
  KEY `t_i_d_it` (`imageId`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_images_data`
--

LOCK TABLES `tiki_images_data` WRITE;
/*!40000 ALTER TABLE `tiki_images_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_images_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_integrator_reps`
--

DROP TABLE IF EXISTS `tiki_integrator_reps`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_integrator_reps` (
  `repID` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `path` varchar(255) NOT NULL default '',
  `start_page` varchar(255) NOT NULL default '',
  `css_file` varchar(255) NOT NULL default '',
  `visibility` char(1) NOT NULL default 'y',
  `cacheable` char(1) NOT NULL default 'y',
  `expiration` int(11) NOT NULL default '0',
  `description` text NOT NULL,
  PRIMARY KEY  (`repID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_integrator_reps`
--

LOCK TABLES `tiki_integrator_reps` WRITE;
/*!40000 ALTER TABLE `tiki_integrator_reps` DISABLE KEYS */;
INSERT INTO `tiki_integrator_reps` VALUES (1,'Doxygened (1.3.4) Documentation','','index.html','doxygen.css','n','y',0,'Use this repository as rule source for all your repositories based on doxygened docs. To setup yours just add new repository and copy rules from this repository :)');
/*!40000 ALTER TABLE `tiki_integrator_reps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_integrator_rules`
--

DROP TABLE IF EXISTS `tiki_integrator_rules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_integrator_rules` (
  `ruleID` int(11) NOT NULL auto_increment,
  `repID` int(11) NOT NULL default '0',
  `ord` int(2) unsigned NOT NULL default '0',
  `srch` blob NOT NULL,
  `repl` blob NOT NULL,
  `type` char(1) NOT NULL default 'n',
  `casesense` char(1) NOT NULL default 'y',
  `rxmod` varchar(20) NOT NULL default '',
  `enabled` char(1) NOT NULL default 'n',
  `description` text NOT NULL,
  PRIMARY KEY  (`ruleID`),
  KEY `repID` (`repID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_integrator_rules`
--

LOCK TABLES `tiki_integrator_rules` WRITE;
/*!40000 ALTER TABLE `tiki_integrator_rules` DISABLE KEYS */;
INSERT INTO `tiki_integrator_rules` VALUES (1,1,1,'.*<body[^>]*?>(.*?)</body.*','1','y','n','i','y','Extract code between <BODY> tags'),(2,1,2,'img src=(\"|\')(?!http://)','img src=1{path}/','y','n','i','y','Fix images path'),(3,1,3,'href=(\"|\')(?!(#|(http|ftp)://))','href=1tiki-integrator.php?repID={repID}&file=','y','n','i','y','Relace internal links to integrator. Dont touch an external links.');
/*!40000 ALTER TABLE `tiki_integrator_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_language`
--

DROP TABLE IF EXISTS `tiki_language`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_language` (
  `source` tinyblob NOT NULL,
  `lang` char(16) NOT NULL default '',
  `tran` tinyblob,
  PRIMARY KEY  (`source`(255),`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_language`
--

LOCK TABLES `tiki_language` WRITE;
/*!40000 ALTER TABLE `tiki_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_languages`
--

DROP TABLE IF EXISTS `tiki_languages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_languages` (
  `lang` char(16) NOT NULL default '',
  `language` varchar(255) default NULL,
  PRIMARY KEY  (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_languages`
--

LOCK TABLES `tiki_languages` WRITE;
/*!40000 ALTER TABLE `tiki_languages` DISABLE KEYS */;
INSERT INTO `tiki_languages` VALUES ('en','English');
/*!40000 ALTER TABLE `tiki_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_link_cache`
--

DROP TABLE IF EXISTS `tiki_link_cache`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_link_cache` (
  `cacheId` int(14) NOT NULL auto_increment,
  `url` varchar(250) default NULL,
  `data` longblob,
  `refresh` int(14) default NULL,
  PRIMARY KEY  (`cacheId`),
  KEY `urlindex` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_link_cache`
--

LOCK TABLES `tiki_link_cache` WRITE;
/*!40000 ALTER TABLE `tiki_link_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_link_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_links`
--

DROP TABLE IF EXISTS `tiki_links`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_links` (
  `fromPage` varchar(160) NOT NULL default '',
  `toPage` varchar(160) NOT NULL default '',
  PRIMARY KEY  (`fromPage`,`toPage`),
  KEY `toPage` (`toPage`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_links`
--

LOCK TABLES `tiki_links` WRITE;
/*!40000 ALTER TABLE `tiki_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_live_support_events`
--

DROP TABLE IF EXISTS `tiki_live_support_events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_live_support_events` (
  `eventId` int(14) NOT NULL auto_increment,
  `reqId` varchar(32) NOT NULL default '',
  `type` varchar(40) default NULL,
  `seqId` int(14) default NULL,
  `senderId` varchar(32) default NULL,
  `data` text,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`eventId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_live_support_events`
--

LOCK TABLES `tiki_live_support_events` WRITE;
/*!40000 ALTER TABLE `tiki_live_support_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_live_support_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_live_support_message_comments`
--

DROP TABLE IF EXISTS `tiki_live_support_message_comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_live_support_message_comments` (
  `cId` int(12) NOT NULL auto_increment,
  `msgId` int(12) default NULL,
  `data` text,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`cId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_live_support_message_comments`
--

LOCK TABLES `tiki_live_support_message_comments` WRITE;
/*!40000 ALTER TABLE `tiki_live_support_message_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_live_support_message_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_live_support_messages`
--

DROP TABLE IF EXISTS `tiki_live_support_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_live_support_messages` (
  `msgId` int(12) NOT NULL auto_increment,
  `data` text,
  `timestamp` int(14) default NULL,
  `user` varchar(40) default NULL,
  `username` varchar(200) default NULL,
  `priority` int(2) default NULL,
  `status` char(1) default NULL,
  `assigned_to` varchar(200) default NULL,
  `resolution` varchar(100) default NULL,
  `title` varchar(200) default NULL,
  `module` int(4) default NULL,
  `email` varchar(250) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_live_support_messages`
--

LOCK TABLES `tiki_live_support_messages` WRITE;
/*!40000 ALTER TABLE `tiki_live_support_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_live_support_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_live_support_modules`
--

DROP TABLE IF EXISTS `tiki_live_support_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_live_support_modules` (
  `modId` int(4) NOT NULL auto_increment,
  `name` varchar(90) default NULL,
  PRIMARY KEY  (`modId`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_live_support_modules`
--

LOCK TABLES `tiki_live_support_modules` WRITE;
/*!40000 ALTER TABLE `tiki_live_support_modules` DISABLE KEYS */;
INSERT INTO `tiki_live_support_modules` VALUES (1,'wiki'),(2,'forums'),(3,'image galleries'),(4,'file galleries'),(5,'directory'),(6,'workflow'),(7,'charts');
/*!40000 ALTER TABLE `tiki_live_support_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_live_support_operators`
--

DROP TABLE IF EXISTS `tiki_live_support_operators`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_live_support_operators` (
  `user` varchar(40) NOT NULL default '',
  `accepted_requests` int(10) default NULL,
  `status` varchar(20) default NULL,
  `longest_chat` int(10) default NULL,
  `shortest_chat` int(10) default NULL,
  `average_chat` int(10) default NULL,
  `last_chat` int(14) default NULL,
  `time_online` int(10) default NULL,
  `votes` int(10) default NULL,
  `points` int(10) default NULL,
  `status_since` int(14) default NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_live_support_operators`
--

LOCK TABLES `tiki_live_support_operators` WRITE;
/*!40000 ALTER TABLE `tiki_live_support_operators` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_live_support_operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_live_support_requests`
--

DROP TABLE IF EXISTS `tiki_live_support_requests`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_live_support_requests` (
  `reqId` varchar(32) NOT NULL default '',
  `user` varchar(40) default NULL,
  `tiki_user` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  `operator` varchar(200) default NULL,
  `operator_id` varchar(32) default NULL,
  `user_id` varchar(32) default NULL,
  `reason` text,
  `req_timestamp` int(14) default NULL,
  `timestamp` int(14) default NULL,
  `status` varchar(40) default NULL,
  `resolution` varchar(40) default NULL,
  `chat_started` int(14) default NULL,
  `chat_ended` int(14) default NULL,
  PRIMARY KEY  (`reqId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_live_support_requests`
--

LOCK TABLES `tiki_live_support_requests` WRITE;
/*!40000 ALTER TABLE `tiki_live_support_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_live_support_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_logs`
--

DROP TABLE IF EXISTS `tiki_logs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_logs` (
  `logId` int(8) NOT NULL auto_increment,
  `logtype` varchar(20) NOT NULL,
  `logmessage` text NOT NULL,
  `loguser` varchar(40) NOT NULL,
  `logip` varchar(200) NOT NULL,
  `logclient` text NOT NULL,
  `logtime` int(14) NOT NULL,
  PRIMARY KEY  (`logId`),
  KEY `logtype` (`logtype`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_logs`
--

LOCK TABLES `tiki_logs` WRITE;
/*!40000 ALTER TABLE `tiki_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_mail_events`
--

DROP TABLE IF EXISTS `tiki_mail_events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_mail_events` (
  `event` varchar(200) default NULL,
  `object` varchar(200) default NULL,
  `email` varchar(200) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_mail_events`
--

LOCK TABLES `tiki_mail_events` WRITE;
/*!40000 ALTER TABLE `tiki_mail_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_mail_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_mailin_accounts`
--

DROP TABLE IF EXISTS `tiki_mailin_accounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_mailin_accounts` (
  `accountId` int(12) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  `account` varchar(50) NOT NULL default '',
  `pop` varchar(255) default NULL,
  `port` int(4) default NULL,
  `username` varchar(100) default NULL,
  `pass` varchar(100) default NULL,
  `active` char(1) default NULL,
  `type` varchar(40) default NULL,
  `smtp` varchar(255) default NULL,
  `useAuth` char(1) default NULL,
  `smtpPort` int(4) default NULL,
  `anonymous` char(1) NOT NULL default 'y',
  `attachments` char(1) NOT NULL default 'n',
  `article_topicId` int(4) default NULL,
  `article_type` varchar(50) default NULL,
  `discard_after` varchar(255) default NULL,
  PRIMARY KEY  (`accountId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_mailin_accounts`
--

LOCK TABLES `tiki_mailin_accounts` WRITE;
/*!40000 ALTER TABLE `tiki_mailin_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_mailin_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_menu_languages`
--

DROP TABLE IF EXISTS `tiki_menu_languages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_menu_languages` (
  `menuId` int(8) NOT NULL auto_increment,
  `language` char(16) NOT NULL default '',
  PRIMARY KEY  (`menuId`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_menu_languages`
--

LOCK TABLES `tiki_menu_languages` WRITE;
/*!40000 ALTER TABLE `tiki_menu_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_menu_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_menu_options`
--

DROP TABLE IF EXISTS `tiki_menu_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_menu_options` (
  `optionId` int(8) NOT NULL auto_increment,
  `menuId` int(8) default NULL,
  `type` char(1) default NULL,
  `name` varchar(200) default NULL,
  `url` varchar(255) default NULL,
  `position` int(4) default NULL,
  `section` varchar(255) default NULL,
  `perm` varchar(255) default NULL,
  `groupname` varchar(255) default NULL,
  PRIMARY KEY  (`optionId`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_menu_options`
--

LOCK TABLES `tiki_menu_options` WRITE;
/*!40000 ALTER TABLE `tiki_menu_options` DISABLE KEYS */;
INSERT INTO `tiki_menu_options` VALUES (1,42,'o','Home','tiki-index.php',10,'','',''),(2,42,'o','Chat','tiki-chat.php',15,'feature_chat','tiki_p_chat',''),(3,42,'o','Contact us','tiki-contact.php',20,'feature_contact','',''),(4,42,'o','Stats','tiki-stats.php',23,'feature_stats','tiki_p_view_stats',''),(5,42,'o','Categories','tiki-browse_categories.php',25,'feature_categories','tiki_p_view_categories',''),(6,42,'o','Games','tiki-list_games.php',30,'feature_games','tiki_p_play_games',''),(7,42,'o','Calendar','tiki-calendar.php',35,'feature_calendar','tiki_p_view_calendar',''),(8,42,'o','Users map','tiki-gmap_usermap.php',36,'feature_gmap','',''),(9,42,'o','Mobile','tiki-mobile.php',37,'feature_mobile','',''),(10,42,'o','(debug)','javascript:toggle(\"debugconsole\")',40,'feature_debug_console','tiki_p_admin',''),(11,42,'s','MyTiki','tiki-my_tiki.php',50,'','','Registered'),(12,42,'o','MyTiki home','tiki-my_tiki.php',51,'','','Registered'),(13,42,'o','Preferences','tiki-user_preferences.php',55,'feature_userPreferences','','Registered'),(14,42,'o','Messages','messu-mailbox.php',60,'feature_messages','tiki_p_messages','Registered'),(15,42,'o','Tasks','tiki-user_tasks.php',65,'feature_tasks','tiki_p_tasks','Registered'),(16,42,'o','Bookmarks','tiki-user_bookmarks.php',70,'feature_user_bookmarks','tiki_p_create_bookmarks','Registered'),(17,42,'o','Modules','tiki-user_assigned_modules.php',75,'user_assigned_modules','tiki_p_configure_modules','Registered'),(18,42,'o','Newsreader','tiki-newsreader_servers.php',80,'feature_newsreader','tiki_p_newsreader','Registered'),(19,42,'o','Webmail','tiki-webmail.php',85,'feature_webmail','tiki_p_use_webmail','Registered'),(20,42,'o','Notepad','tiki-notepad_list.php',90,'feature_notepad','tiki_p_notepad','Registered'),(21,42,'o','My files','tiki-userfiles.php',95,'feature_userfiles','tiki_p_userfiles','Registered'),(22,42,'o','User menu','tiki-usermenu.php',100,'feature_usermenu','tiki_p_usermenu','Registered'),(23,42,'o','Mini calendar','tiki-minical.php',105,'feature_minical','tiki_p_minical','Registered'),(24,42,'o','My watches','tiki-user_watches.php',110,'feature_user_watches','','Registered'),(25,42,'s','Workflow','tiki-g-user_processes.php',150,'feature_workflow','tiki_p_use_workflow',''),(26,42,'o','Admin processes','tiki-g-admin_processes.php',155,'feature_workflow','tiki_p_admin_workflow',''),(27,42,'o','Monitor processes','tiki-g-monitor_processes.php',160,'feature_workflow','tiki_p_admin_workflow',''),(28,42,'o','Monitor activities','tiki-g-monitor_activities.php',165,'feature_workflow','tiki_p_admin_workflow',''),(29,42,'o','Monitor instances','tiki-g-monitor_instances.php',170,'feature_workflow','tiki_p_admin_workflow',''),(30,42,'o','User processes','tiki-g-user_processes.php',175,'feature_workflow','tiki_p_use_workflow',''),(31,42,'o','User activities','tiki-g-user_activities.php',180,'feature_workflow','tiki_p_use_workflow',''),(32,42,'o','User instances','tiki-g-user_instances.php',185,'feature_workflow','tiki_p_use_workflow',''),(33,42,'s','Community','tiki-list_users.php',187,'feature_friends','tiki_p_list_users',''),(34,42,'o','User list','tiki-list_users.php',188,'feature_friends','tiki_p_list_users',''),(35,42,'o','Friendship Network','tiki-friends.php',189,'feature_friends','','Registered'),(36,42,'s','Wiki','tiki-index.php',200,'feature_wiki','tiki_p_view',''),(37,42,'o','Wiki Home','tiki-index.php',202,'feature_wiki','tiki_p_view',''),(38,42,'o','Last Changes','tiki-lastchanges.php',205,'feature_wiki,feature_lastChanges','tiki_p_view',''),(39,42,'o','Dump','dump/new.tar',210,'feature_wiki,feature_dump','tiki_p_view',''),(40,42,'o','Rankings','tiki-wiki_rankings.php',215,'feature_wiki,feature_wiki_rankings','tiki_p_view',''),(41,42,'o','List pages','tiki-listpages.php',220,'feature_wiki,feature_listPages','tiki_p_view',''),(42,42,'o','Orphan pages','tiki-orphan_pages.php',225,'feature_wiki,feature_listPages','tiki_p_view',''),(43,42,'o','Sandbox','tiki-editpage.php?page=sandbox',230,'feature_wiki,feature_sandbox','tiki_p_view',''),(44,42,'o','Print','tiki-print_pages.php',235,'feature_wiki,feature_wiki_multiprint','tiki_p_view',''),(45,42,'o','Send pages','tiki-send_objects.php',240,'feature_wiki,feature_comm','tiki_p_view,tiki_p_send_pages',''),(46,42,'o','Received pages','tiki-received_pages.php',245,'feature_wiki,feature_comm','tiki_p_view,tiki_p_admin_received_pages',''),(47,42,'o','Structures','tiki-admin_structures.php',250,'feature_wiki','tiki_p_edit_structures',''),(48,42,'s','Image Galleries','tiki-galleries.php',300,'feature_galleries','tiki_p_view_image_gallery',''),(49,42,'o','Galleries','tiki-galleries.php',305,'feature_galleries','tiki_p_view_image_gallery',''),(50,42,'o','Rankings','tiki-galleries_rankings.php',310,'feature_galleries,feature_gal_rankings','tiki_p_view_image_gallery',''),(51,42,'o','Upload image','tiki-upload_image.php',315,'feature_galleries','tiki_p_upload_images',''),(52,42,'o','Directory batch','tiki-batch_upload.php',318,'feature_galleries,feature_gal_batch','tiki_p_batch_upload',''),(53,42,'o','System gallery','tiki-list_gallery.php?galleryId=0',320,'feature_galleries','tiki_p_admin_galleries',''),(54,42,'s','Articles','tiki-view_articles.php',350,'feature_articles','tiki_p_read_article',''),(55,42,'o','Articles home','tiki-view_articles.php',355,'feature_articles','tiki_p_read_article',''),(56,42,'o','List articles','tiki-list_articles.php',360,'feature_articles','tiki_p_read_article',''),(57,42,'o','Rankings','tiki-cms_rankings.php',365,'feature_articles,feature_cms_rankings','tiki_p_read_article',''),(58,42,'o','Submit article','tiki-edit_submission.php',370,'feature_articles,feature_submissions','tiki_p_read_article,tiki_p_submit_article',''),(59,42,'o','View submissions','tiki-list_submissions.php',375,'feature_articles,feature_submissions','tiki_p_read_article,tiki_p_submit_article',''),(60,42,'o','View submissions','tiki-list_submissions.php',375,'feature_articles,feature_submissions','tiki_p_read_article,tiki_p_approve_submission',''),(61,42,'o','View submissions','tiki-list_submissions.php',375,'feature_articles,feature_submissions','tiki_p_read_article,tiki_p_remove_submission',''),(62,42,'o','Edit article','tiki-edit_article.php',380,'feature_articles','tiki_p_read_article,tiki_p_edit_article',''),(63,42,'o','Send articles','tiki-send_objects.php',385,'feature_articles,feature_comm','tiki_p_read_article,tiki_p_send_articles',''),(64,42,'o','Received articles','tiki-received_articles.php',385,'feature_articles,feature_comm','tiki_p_read_article,tiki_p_admin_received_articles',''),(65,42,'o','Admin topics','tiki-admin_topics.php',390,'feature_articles','tiki_p_read_article,tiki_p_admin_cms',''),(66,42,'o','Admin types','tiki-article_types.php',395,'feature_articles','tiki_p_read_article,tiki_p_admin_cms',''),(67,42,'s','Blogs','tiki-list_blogs.php',450,'feature_blogs','tiki_p_read_blog',''),(68,42,'o','List blogs','tiki-list_blogs.php',455,'feature_blogs','tiki_p_read_blog',''),(69,42,'o','Rankings','tiki-blog_rankings.php',460,'feature_blogs,feature_blog_rankings','tiki_p_read_blog',''),(70,42,'o','Create/Edit blog','tiki-edit_blog.php',465,'feature_blogs','tiki_p_read_blog,tiki_p_create_blogs',''),(71,42,'o','Post','tiki-blog_post.php',470,'feature_blogs','tiki_p_read_blog,tiki_p_blog_post',''),(72,42,'o','Admin posts','tiki-list_posts.php',475,'feature_blogs','tiki_p_read_blog,tiki_p_blog_admin',''),(73,42,'s','Forums','tiki-forums.php',500,'feature_forums','tiki_p_forum_read',''),(74,42,'o','List forums','tiki-forums.php',505,'feature_forums','tiki_p_forum_read',''),(75,42,'o','Rankings','tiki-forum_rankings.php',510,'feature_forums,feature_forum_rankings','tiki_p_forum_read',''),(76,42,'o','Admin forums','tiki-admin_forums.php',515,'feature_forums','tiki_p_forum_read,tiki_p_admin_forum',''),(77,42,'s','Directory','tiki-directory_browse.php',550,'feature_directory','tiki_p_view_directory',''),(78,42,'o','Submit a new link','tiki-directory_add_site.php',555,'feature_directory','tiki_p_submit_link',''),(79,42,'o','Browse directory','tiki-directory_browse.php',560,'feature_directory','tiki_p_view_directory',''),(80,42,'o','Admin directory','tiki-directory_admin.php',565,'feature_directory','tiki_p_view_directory,tiki_p_admin_directory_cats',''),(81,42,'o','Admin directory','tiki-directory_admin.php',565,'feature_directory','tiki_p_view_directory,tiki_p_admin_directory_sites',''),(82,42,'o','Admin directory','tiki-directory_admin.php',565,'feature_directory','tiki_p_view_directory,tiki_p_validate_links',''),(83,42,'s','File Galleries','tiki-file_galleries.php',600,'feature_file_galleries','tiki_p_view_file_gallery',''),(84,42,'o','List galleries','tiki-file_galleries.php',605,'feature_file_galleries','tiki_p_view_file_gallery',''),(85,42,'o','Rankings','tiki-file_galleries_rankings.php',610,'feature_file_galleries,feature_file_galleries_rankings','tiki_p_view_file_gallery',''),(86,42,'o','Upload file','tiki-upload_file.php',615,'feature_file_galleries','tiki_p_view_file_gallery,tiki_p_upload_files',''),(87,42,'s','FAQs','tiki-list_faqs.php',650,'feature_faqs','tiki_p_view_faqs',''),(88,42,'o','List FAQs','tiki-list_faqs.php',665,'feature_faqs','tiki_p_view_faqs',''),(89,42,'o','Admin FAQs','tiki-list_faqs.php',660,'feature_faqs','tiki_p_admin_faqs',''),(90,42,'s','Maps','tiki-map.phtml',700,'feature_maps','tiki_p_map_view',''),(91,42,'o','Mapfiles','tiki-map_edit.php',705,'feature_maps','tiki_p_map_view',''),(92,42,'o','Layer management','tiki-map_upload.php',710,'feature_maps','tiki_p_map_edit',''),(93,42,'s','Quizzes','tiki-list_quizzes.php',750,'feature_quizzes','tiki_p_take_quiz',''),(94,42,'o','List quizzes','tiki-list_quizzes.php',755,'feature_quizzes','tiki_p_take_quiz',''),(95,42,'o','Quiz stats','tiki-quiz_stats.php',760,'feature_quizzes','tiki_p_view_quiz_stats',''),(96,42,'o','Admin quiz','tiki-edit_quiz.php',765,'feature_quizzes','tiki_p_admin_quizzes',''),(97,42,'s','TikiSheet','tiki-sheets.php',780,'feature_sheet','tiki_p_view_sheet',''),(98,42,'s','Trackers','tiki-list_trackers.php',800,'feature_trackers','tiki_p_view_trackers',''),(99,42,'o','List trackers','tiki-list_trackers.php',805,'feature_trackers','tiki_p_view_trackers',''),(100,42,'o','Admin trackers','tiki-admin_trackers.php',810,'feature_trackers','tiki_p_admin_trackers',''),(101,42,'s','Surveys','tiki-list_surveys.php',850,'feature_surveys','tiki_p_take_survey',''),(102,42,'o','List surveys','tiki-list_surveys.php',855,'feature_surveys','tiki_p_take_survey',''),(103,42,'o','Stats','tiki-survey_stats.php',860,'feature_surveys','tiki_p_view_survey_stats',''),(104,42,'o','Admin surveys','tiki-admin_surveys.php',865,'feature_surveys','tiki_p_admin_surveys',''),(105,42,'s','Newsletters','tiki-newsletters.php',900,'feature_newsletters','tiki_p_subscribe_newsletters',''),(106,42,'s','Newsletters','tiki-newsletters.php',900,'feature_newsletters','tiki_p_send_newsletters',''),(107,42,'s','Newsletters','tiki-newsletters.php',900,'feature_newsletters','tiki_p_admin_newsletters',''),(108,42,'o','Send newsletters','tiki-send_newsletters.php',905,'feature_newsletters','tiki_p_send_newsletters',''),(109,42,'o','Admin newsletters','tiki-admin_newsletters.php',910,'feature_newsletters','tiki_p_admin_newsletters',''),(110,42,'s','Ephemerides','tiki-eph.php',950,'feature_eph','tiki_p_view_eph',''),(111,42,'o','Admin ephemerides','tiki-eph_admin.php',955,'feature_eph','tiki_p_eph_admin',''),(112,42,'s','Charts','tiki-charts.php',1000,'feature_charts','tiki_p_view_chart',''),(113,42,'o','Admin charts','tiki-admin_charts.php',1005,'feature_charts','tiki_p_admin_charts',''),(114,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin',''),(115,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_chat',''),(116,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_categories',''),(117,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_banners',''),(118,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_edit_templates',''),(119,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_edit_cookies',''),(120,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_dynamic',''),(121,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_mailin',''),(122,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_edit_content_templates',''),(123,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_edit_html_pages',''),(124,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_view_referer_stats',''),(125,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_drawings',''),(126,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_shoutbox',''),(127,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_live_support_admin',''),(128,42,'r','Admin','tiki-admin.php',1050,'','user_is_operator',''),(129,42,'r','Admin','tiki-admin.php',1050,'feature_integrator','tiki_p_admin_integrator',''),(130,42,'o','Admin home','tiki-admin.php',1051,'','tiki_p_admin',''),(131,42,'o','Live support','tiki-live_support_admin.php',1055,'feature_live_support','tiki_p_live_support_admin',''),(132,42,'o','Live support','tiki-live_support_admin.php',1055,'feature_live_support','user_is_operator',''),(133,42,'o','Banning','tiki-admin_banning.php',1060,'feature_banning','tiki_p_admin_banning',''),(134,42,'o','Calendar','tiki-admin_calendars.php',1065,'feature_calendar','tiki_p_admin_calendar',''),(135,42,'o','Users','tiki-adminusers.php',1070,'','tiki_p_admin_users',''),(136,42,'o','Groups','tiki-admingroups.php',1075,'','tiki_p_admin',''),(137,42,'o','Cache','tiki-list_cache.php',1080,'cachepages','tiki_p_admin',''),(138,42,'o','Modules','tiki-admin_modules.php',1085,'','tiki_p_admin',''),(139,42,'o','Hotwords','tiki-admin_hotwords.php',1095,'feature_hotwords','tiki_p_admin',''),(140,42,'o','RSS modules','tiki-admin_rssmodules.php',1100,'','tiki_p_admin_rssmodules',''),(141,42,'o','Menus','tiki-admin_menus.php',1105,'','tiki_p_admin',''),(142,42,'o','Polls','tiki-admin_polls.php',1110,'feature_polls','tiki_p_admin_polls',''),(143,42,'o','Mail notifications','tiki-admin_notifications.php',1120,'','tiki_p_admin',''),(144,42,'o','Search stats','tiki-search_stats.php',1125,'feature_search_stats','tiki_p_admin',''),(145,42,'o','Theme control','tiki-theme_control.php',1130,'feature_theme_control','tiki_p_admin',''),(146,42,'o','QuickTags','tiki-admin_quicktags.php',1135,'','tiki_p_admin',''),(147,42,'o','Chat','tiki-admin_chat.php',1140,'feature_chat','tiki_p_admin_chat',''),(148,42,'o','Categories','tiki-admin_categories.php',1145,'feature_categories','tiki_p_admin_categories',''),(149,42,'o','Banners','tiki-list_banners.php',1150,'feature_banners','tiki_p_admin_banners',''),(150,42,'o','Edit templates','tiki-edit_templates.php',1155,'feature_edit_templates','tiki_p_edit_templates',''),(151,42,'o','Drawings','tiki-admin_drawings.php',1160,'feature_drawings','tiki_p_admin_drawings',''),(152,42,'o','Dynamic content','tiki-list_contents.php',1165,'feature_dynamic_content','tiki_p_admin_dynamic',''),(153,42,'o','Mail-in','tiki-admin_mailin.php',1175,'feature_mailin','tiki_p_admin_mailin',''),(154,42,'o','HTML pages','tiki-admin_html_pages.php',1185,'feature_html_pages','tiki_p_edit_html_pages',''),(155,42,'o','Shoutbox','tiki-shoutbox.php',1190,'feature_shoutbox','tiki_p_admin_shoutbox',''),(156,42,'o','Shoutbox Words','tiki-admin_shoutbox_words.php',1191,'feature_shoutbox','tiki_p_admin_shoutbox',''),(157,42,'o','Referer stats','tiki-referer_stats.php',1195,'feature_referer_stats','tiki_p_view_referer_stats',''),(158,42,'o','Integrator','tiki-admin_integrator.php',1205,'feature_integrator','tiki_p_admin_integrator',''),(159,42,'o','phpinfo','tiki-phpinfo.php',1215,'','tiki_p_admin',''),(160,42,'o','System Admin','tiki-admin_system.php',1230,'','tiki_p_admin',''),(161,42,'o','Score','tiki-admin_score.php',1235,'feature_score','tiki_p_admin',''),(162,42,'o','Admin mods','tiki-mods.php',1240,'','tiki_p_admin',''),(163,42,'o','Tiki Logs','tiki-syslog.php',1245,'','tiki_p_admin',''),(164,42,'o','Security Admin','tiki-admin_security.php',1250,'','tiki_p_admin','');
/*!40000 ALTER TABLE `tiki_menu_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_menus`
--

DROP TABLE IF EXISTS `tiki_menus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_menus` (
  `menuId` int(8) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `description` text,
  `type` char(1) default NULL,
  PRIMARY KEY  (`menuId`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_menus`
--

LOCK TABLES `tiki_menus` WRITE;
/*!40000 ALTER TABLE `tiki_menus` DISABLE KEYS */;
INSERT INTO `tiki_menus` VALUES (42,'Application menu','Main extensive navigation menu','d');
/*!40000 ALTER TABLE `tiki_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_minical_events`
--

DROP TABLE IF EXISTS `tiki_minical_events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_minical_events` (
  `user` varchar(40) default NULL,
  `eventId` int(12) NOT NULL auto_increment,
  `title` varchar(250) default NULL,
  `description` text,
  `start` int(14) default NULL,
  `end` int(14) default NULL,
  `security` char(1) default NULL,
  `duration` int(3) default NULL,
  `topicId` int(12) default NULL,
  `reminded` char(1) default NULL,
  PRIMARY KEY  (`eventId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_minical_events`
--

LOCK TABLES `tiki_minical_events` WRITE;
/*!40000 ALTER TABLE `tiki_minical_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_minical_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_minical_topics`
--

DROP TABLE IF EXISTS `tiki_minical_topics`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_minical_topics` (
  `user` varchar(40) default NULL,
  `topicId` int(12) NOT NULL auto_increment,
  `name` varchar(250) default NULL,
  `filename` varchar(200) default NULL,
  `filetype` varchar(200) default NULL,
  `filesize` varchar(200) default NULL,
  `data` longblob,
  `path` varchar(250) default NULL,
  `isIcon` char(1) default NULL,
  PRIMARY KEY  (`topicId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_minical_topics`
--

LOCK TABLES `tiki_minical_topics` WRITE;
/*!40000 ALTER TABLE `tiki_minical_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_minical_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_modules`
--

DROP TABLE IF EXISTS `tiki_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_modules` (
  `name` varchar(200) NOT NULL default '',
  `position` char(1) default NULL,
  `ord` int(4) default NULL,
  `type` char(1) default NULL,
  `title` varchar(255) default NULL,
  `cache_time` int(14) default NULL,
  `rows` int(4) default NULL,
  `params` varchar(255) default NULL,
  `groups` text,
  PRIMARY KEY  (`name`),
  KEY `positionType` (`position`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_modules`
--

LOCK TABLES `tiki_modules` WRITE;
/*!40000 ALTER TABLE `tiki_modules` DISABLE KEYS */;
INSERT INTO `tiki_modules` VALUES ('login_box','r',1,NULL,NULL,0,NULL,NULL,'a:2:{i:0;s:10:\"Registered\";i:1;s:9:\"Anonymous\";}'),('mnu_application_menu','l',1,NULL,NULL,0,NULL,'flip=y','a:2:{i:0;s:10:\"Registered\";i:1;s:9:\"Anonymous\";}'),('quick_edit','l',2,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:10:\"Registered\";}'),('assistant','l',10,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:6:\"Admins\";}'),('since_last_visit_new','r',40,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:6:\"Admins\";}');
/*!40000 ALTER TABLE `tiki_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_newsletter_groups`
--

DROP TABLE IF EXISTS `tiki_newsletter_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_newsletter_groups` (
  `nlId` int(12) NOT NULL default '0',
  `groupName` varchar(255) NOT NULL default '',
  `code` varchar(32) default NULL,
  PRIMARY KEY  (`nlId`,`groupName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_newsletter_groups`
--

LOCK TABLES `tiki_newsletter_groups` WRITE;
/*!40000 ALTER TABLE `tiki_newsletter_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_newsletter_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_newsletter_subscriptions`
--

DROP TABLE IF EXISTS `tiki_newsletter_subscriptions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_newsletter_subscriptions` (
  `nlId` int(12) NOT NULL default '0',
  `email` varchar(255) NOT NULL default '',
  `code` varchar(32) default NULL,
  `valid` char(1) default NULL,
  `subscribed` int(14) default NULL,
  `isUser` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`nlId`,`email`,`isUser`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_newsletter_subscriptions`
--

LOCK TABLES `tiki_newsletter_subscriptions` WRITE;
/*!40000 ALTER TABLE `tiki_newsletter_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_newsletter_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_newsletters`
--

DROP TABLE IF EXISTS `tiki_newsletters`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_newsletters` (
  `nlId` int(12) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `lastSent` int(14) default NULL,
  `editions` int(10) default NULL,
  `users` int(10) default NULL,
  `allowUserSub` char(1) default 'y',
  `allowAnySub` char(1) default NULL,
  `unsubMsg` char(1) default 'y',
  `validateAddr` char(1) default 'y',
  `frequency` int(14) default NULL,
  PRIMARY KEY  (`nlId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_newsletters`
--

LOCK TABLES `tiki_newsletters` WRITE;
/*!40000 ALTER TABLE `tiki_newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_newsreader_marks`
--

DROP TABLE IF EXISTS `tiki_newsreader_marks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_newsreader_marks` (
  `user` varchar(40) NOT NULL default '',
  `serverId` int(12) NOT NULL default '0',
  `groupName` varchar(255) NOT NULL default '',
  `timestamp` int(14) NOT NULL default '0',
  PRIMARY KEY  (`user`,`serverId`,`groupName`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_newsreader_marks`
--

LOCK TABLES `tiki_newsreader_marks` WRITE;
/*!40000 ALTER TABLE `tiki_newsreader_marks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_newsreader_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_newsreader_servers`
--

DROP TABLE IF EXISTS `tiki_newsreader_servers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_newsreader_servers` (
  `user` varchar(40) NOT NULL default '',
  `serverId` int(12) NOT NULL auto_increment,
  `server` varchar(250) default NULL,
  `port` int(4) default NULL,
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  PRIMARY KEY  (`serverId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_newsreader_servers`
--

LOCK TABLES `tiki_newsreader_servers` WRITE;
/*!40000 ALTER TABLE `tiki_newsreader_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_newsreader_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_object_ratings`
--

DROP TABLE IF EXISTS `tiki_object_ratings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_object_ratings` (
  `catObjectId` int(12) NOT NULL default '0',
  `pollId` int(12) NOT NULL default '0',
  PRIMARY KEY  (`catObjectId`,`pollId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_object_ratings`
--

LOCK TABLES `tiki_object_ratings` WRITE;
/*!40000 ALTER TABLE `tiki_object_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_object_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_page_footnotes`
--

DROP TABLE IF EXISTS `tiki_page_footnotes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_page_footnotes` (
  `user` varchar(40) NOT NULL default '',
  `pageName` varchar(250) NOT NULL default '',
  `data` text,
  PRIMARY KEY  (`user`,`pageName`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_page_footnotes`
--

LOCK TABLES `tiki_page_footnotes` WRITE;
/*!40000 ALTER TABLE `tiki_page_footnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_page_footnotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_pages`
--

DROP TABLE IF EXISTS `tiki_pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_pages` (
  `page_id` int(14) NOT NULL auto_increment,
  `pageName` varchar(160) NOT NULL default '',
  `hits` int(8) default NULL,
  `data` text,
  `description` varchar(200) default NULL,
  `lastModif` int(14) default NULL,
  `comment` varchar(200) default NULL,
  `version` int(8) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `ip` varchar(15) default NULL,
  `flag` char(1) default NULL,
  `points` int(8) default NULL,
  `votes` int(8) default NULL,
  `cache` longtext,
  `wiki_cache` int(10) default NULL,
  `cache_timestamp` int(14) default NULL,
  `pageRank` decimal(4,3) default NULL,
  `creator` varchar(200) default NULL,
  `page_size` int(10) unsigned default '0',
  `lang` varchar(16) default NULL,
  `lockedby` varchar(200) default NULL,
  `is_html` tinyint(1) default '0',
  `created` int(14) default NULL,
  PRIMARY KEY  (`page_id`),
  UNIQUE KEY `pageName` (`pageName`),
  KEY `data` (`data`(255)),
  KEY `pageRank` (`pageRank`),
  FULLTEXT KEY `ft` (`pageName`,`description`,`data`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_pages`
--

LOCK TABLES `tiki_pages` WRITE;
/*!40000 ALTER TABLE `tiki_pages` DISABLE KEYS */;
INSERT INTO `tiki_pages` VALUES (1,'HomePage',4,'','',1271399888,'Tiki initialization',1,'admin','0.0.0.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',0,NULL,NULL,0,1271399888);
/*!40000 ALTER TABLE `tiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_pageviews`
--

DROP TABLE IF EXISTS `tiki_pageviews`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_pageviews` (
  `day` int(14) NOT NULL default '0',
  `pageviews` int(14) default NULL,
  PRIMARY KEY  (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_pageviews`
--

LOCK TABLES `tiki_pageviews` WRITE;
/*!40000 ALTER TABLE `tiki_pageviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_pageviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_poll_objects`
--

DROP TABLE IF EXISTS `tiki_poll_objects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_poll_objects` (
  `catObjectId` int(11) NOT NULL default '0',
  `pollId` int(11) NOT NULL default '0',
  `title` varchar(255) default NULL,
  PRIMARY KEY  (`catObjectId`,`pollId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_poll_objects`
--

LOCK TABLES `tiki_poll_objects` WRITE;
/*!40000 ALTER TABLE `tiki_poll_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_poll_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_poll_options`
--

DROP TABLE IF EXISTS `tiki_poll_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_poll_options` (
  `pollId` int(8) NOT NULL default '0',
  `optionId` int(8) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `position` int(4) NOT NULL default '0',
  `votes` int(8) default NULL,
  PRIMARY KEY  (`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_poll_options`
--

LOCK TABLES `tiki_poll_options` WRITE;
/*!40000 ALTER TABLE `tiki_poll_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_poll_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_polls`
--

DROP TABLE IF EXISTS `tiki_polls`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_polls` (
  `pollId` int(8) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `votes` int(8) default NULL,
  `active` char(1) default NULL,
  `publishDate` int(14) default NULL,
  PRIMARY KEY  (`pollId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_polls`
--

LOCK TABLES `tiki_polls` WRITE;
/*!40000 ALTER TABLE `tiki_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_preferences`
--

DROP TABLE IF EXISTS `tiki_preferences`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_preferences` (
  `name` varchar(40) NOT NULL default '',
  `value` text,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_preferences`
--

LOCK TABLES `tiki_preferences` WRITE;
/*!40000 ALTER TABLE `tiki_preferences` DISABLE KEYS */;
INSERT INTO `tiki_preferences` VALUES ('allowRegister','n'),('anonCanEdit','n'),('art_list_author','y'),('art_list_date','y'),('art_list_expire','n'),('art_list_img','n'),('art_list_reads','y'),('art_list_size','n'),('art_list_title','y'),('art_list_topic','y'),('art_list_type','y'),('art_list_visible','n'),('article_comments_default_ordering','points_desc'),('article_comments_per_page','10'),('auth_create_user_auth','n'),('auth_create_user_tiki','n'),('auth_imap_pop3_basedsn',''),('auth_ldap_adminpass',''),('auth_ldap_adminuser',''),('auth_ldap_basedn',''),('auth_ldap_groupattr','cn'),('auth_ldap_groupdn',''),('auth_ldap_groupoc','groupOfUniqueNames'),('auth_ldap_memberattr','uniqueMember'),('auth_ldap_memberisdn','n'),('auth_ldap_scope','sub'),('auth_ldap_url',''),('auth_ldap_userattr','uid'),('auth_ldap_userdn',''),('auth_ldap_useroc','inetOrgPerson'),('auth_method','tiki'),('auth_pear_host','localhost'),('auth_pear_port','389'),('auth_skip_admin','y'),('auth_type','LDAP'),('available_languages','a:0:{}'),('available_styles','a:0:{}'),('blog_comments_default_ordering','points_desc'),('blog_comments_per_page','10'),('blog_list_activity','y'),('blog_list_created','y'),('blog_list_description','y'),('blog_list_lastmodif','y'),('blog_list_order','created_desc'),('blog_list_posts','y'),('blog_list_title','y'),('blog_list_user','n'),('blog_list_visits','y'),('blog_spellcheck','n'),('cacheimages','n'),('cachepages','n'),('calendar_sticky_popup','n'),('calendar_view_tab','n'),('change_language','y'),('change_password','y'),('change_theme','y'),('cms_bot_bar','y'),('cms_left_column','y'),('cms_right_column','y'),('cms_spellcheck','n'),('cms_top_bar','n'),('contact_anon','n'),('contact_user','admin'),('count_admin_pvs','y'),('default_map','pacific.map'),('default_wiki_diff_style','minsidediff'),('direct_pagination','n'),('directory_columns','3'),('directory_cool_sites','y'),('directory_links_per_page','20'),('directory_open_links','n'),('directory_validate_urls','n'),('display_timezone','EST'),('eponymousGroups','n'),('faq_comments_default_ordering','points_desc'),('faq_comments_per_page','10'),('feature_article_comments','n'),('feature_articles','n'),('feature_autolinks','y'),('feature_babelfish','n'),('feature_babelfish_logo','n'),('feature_backlinks','y'),('feature_banners','n'),('feature_banning','n'),('feature_blog_comments','n'),('feature_blog_rankings','y'),('feature_blogposts_comments','n'),('feature_blogposts_pings','n'),('feature_blogs','n'),('feature_bot_bar','y'),('feature_bot_bar_debug','n'),('feature_bot_bar_icons','y'),('feature_calendar','n'),('feature_categories','n'),('feature_categoryobjects','n'),('feature_categorypath','n'),('feature_challenge','n'),('feature_charts','n'),('feature_chat','n'),('feature_clear_passwords','n'),('feature_cms_print','y'),('feature_cms_rankings','y'),('feature_cms_templates','n'),('feature_comm','n'),('feature_contact','n'),('feature_custom_home','n'),('feature_debug_console','n'),('feature_debugger_console','n'),('feature_detect_language','n'),('feature_directory','n'),('feature_drawings','n'),('feature_dump','n'),('feature_dynamic_content','n'),('feature_edit_templates','n'),('feature_editcss','n'),('feature_eph','n'),('feature_faq_comments','y'),('feature_faqs','n'),('feature_featuredLinks','y'),('feature_file_galleries','n'),('feature_file_galleries_comments','n'),('feature_file_galleries_rankings','n'),('feature_forum_parse','y'),('feature_forum_quickjump','n'),('feature_forum_rankings','y'),('feature_forum_topicd','n'),('feature_forums','n'),('feature_friends','n'),('feature_gal_batch','n'),('feature_gal_imgcache','n'),('feature_gal_rankings','y'),('feature_gal_slideshow','y'),('feature_galleries','n'),('feature_games','n'),('feature_help','y'),('feature_history','y'),('feature_hotwords','n'),('feature_hotwords_nw','n'),('feature_html_pages','n'),('feature_image_galleries_comments','n'),('feature_integrator','n'),('feature_jscalendar','n'),('feature_lastChanges','y'),('feature_left_column','y'),('feature_likePages','n'),('feature_listPages','y'),('feature_live_support','n'),('feature_maps','n'),('feature_menusfolderstyle','y'),('feature_messages','n'),('feature_minical','n'),('feature_mobile','n'),('feature_modulecontrols','n'),('feature_multilingual','n'),('feature_newsletters','n'),('feature_newsreader','n'),('feature_notepad','n'),('feature_obzip','n'),('feature_page_title','y'),('feature_phplayers','n'),('feature_poll_anonymous','n'),('feature_poll_comments','n'),('feature_polls','n'),('feature_quizzes','n'),('feature_ranking','n'),('feature_referer_stats','n'),('feature_right_column','y'),('feature_sandbox','n'),('feature_score','n'),('feature_search','y'),('feature_search_fulltext','y'),('feature_search_stats','n'),('feature_sheet','n'),('feature_shoutbox','n'),('feature_smileys','y'),('feature_stats','n'),('feature_submissions','n'),('feature_surveys','n'),('feature_tabs','n'),('feature_tasks','n'),('feature_theme_control','n'),('feature_ticketlib','n'),('feature_ticketlib2','y'),('feature_top_bar','y'),('feature_trackbackpings','n'),('feature_trackers','n'),('feature_userPreferences','n'),('feature_userVersions','n'),('feature_user_bookmarks','n'),('feature_user_watches','n'),('feature_user_watches_translations','n'),('feature_userfiles','n'),('feature_usermenu','n'),('feature_view_tpl','n'),('feature_warn_on_edit','n'),('feature_webmail','n'),('feature_wiki','y'),('feature_wiki_allowhtml','n'),('feature_wiki_attachments','n'),('feature_wiki_comments','n'),('feature_wiki_description','n'),('feature_wiki_discuss','n'),('feature_wiki_export','n'),('feature_wiki_footnotes','n'),('feature_wiki_import_html','n'),('feature_wiki_import_page','n'),('feature_wiki_monosp','n'),('feature_wiki_multiprint','n'),('feature_wiki_notepad','n'),('feature_wiki_open_as_structure','n'),('feature_wiki_pdf','n'),('feature_wiki_pictures','n'),('feature_wiki_rankings','y'),('feature_wiki_ratings','n'),('feature_wiki_tables','new'),('feature_wiki_templates','n'),('feature_wiki_undo','n'),('feature_wiki_userpage','y'),('feature_wiki_userpage_prefix','UserPage'),('feature_wiki_usrlock','n'),('feature_wikiwords','y'),('feature_workflow','n'),('feature_wysiwyg','no'),('feature_xmlrpc','n'),('fgal_allow_duplicates','y'),('fgal_list_created','y'),('fgal_list_description','n'),('fgal_list_files','y'),('fgal_list_hits','y'),('fgal_list_lastmodif','y'),('fgal_list_name','y'),('fgal_list_user','y'),('fgal_match_regex',''),('fgal_nmatch_regex',''),('fgal_use_db','y'),('fgal_use_dir',''),('file_galleries_comments_default_ordering','points_desc'),('file_galleries_comments_per_page','10'),('forgotPass','n'),('forum_list_desc','y'),('forum_list_lastpost','y'),('forum_list_posts','y'),('forum_list_ppd','n'),('forum_list_topics','n'),('forum_list_visits','y'),('forums_ordering','created_desc'),('gal_batch_dir',''),('gal_imgcache_dir','temp/cache'),('gal_list_created','y'),('gal_list_description','y'),('gal_list_imgs','y'),('gal_list_lastmodif','y'),('gal_list_name','y'),('gal_list_user','y'),('gal_list_visits','y'),('gal_match_regex',''),('gal_nmatch_regex',''),('gal_use_db','y'),('gal_use_dir',''),('gal_use_lib','gd'),('groupTracker','n'),('home_file_gallery',''),('http_domain',''),('http_port','80'),('http_prefix','/'),('https','auto'),('https_domain',''),('https_login','n'),('https_login_required','n'),('https_port','443'),('https_prefix','/'),('image_galleries_comments_default_order','points_desc'),('image_galleries_comments_per_page','10'),('keep_versions','1'),('lang_use_db','n'),('language','en'),('layout_section','n'),('limitedGoGroupHome','y'),('long_date_format','%A %d of %B, %Y'),('long_time_format','%H:%M:%S %Z'),('mail_crlf','LF'),('map_path','/var/www/html/map/'),('maxArticles','10'),('maxRecords','25'),('maxVersions','0'),('max_rss_articles','10'),('max_rss_blog','10'),('max_rss_blogs','10'),('max_rss_directories','10'),('max_rss_file_galleries','10'),('max_rss_file_gallery','10'),('max_rss_forum','10'),('max_rss_forums','10'),('max_rss_image_galleries','10'),('max_rss_image_gallery','10'),('max_rss_mapfiles','10'),('max_rss_tracker','10'),('max_rss_wiki','10'),('min_pass_length','1'),('modallgroups','n'),('pass_chr_num','n'),('pass_due','1999'),('poll_comments_default_ordering','points_desc'),('poll_comments_per_page','10'),('popupLinks','n'),('proxy_host',''),('proxy_port',''),('record_untranslated','n'),('registerPasscode',''),('rememberme','disabled'),('remembertime','7200'),('rnd_num_reg','n'),('rss_articles','n'),('rss_blog','n'),('rss_blogs','n'),('rss_directories','n'),('rss_file_galleries','n'),('rss_file_gallery','n'),('rss_forum','n'),('rss_forums','n'),('rss_image_galleries','n'),('rss_image_gallery','n'),('rss_mapfiles','n'),('rss_tracker','n'),('rss_wiki','n'),('rssfeed_creator',''),('rssfeed_css','y'),('rssfeed_default_version','2'),('rssfeed_editor',''),('rssfeed_language','en-us'),('rssfeed_publisher',''),('rssfeed_webmaster',''),('search_lru_length','100'),('search_lru_purge_rate','5'),('search_max_syllwords','100'),('search_min_wordlength','3'),('search_refresh_rate','5'),('search_syll_age','48'),('sender_email',''),('short_date_format','%a %d of %b, %Y'),('short_time_format','%H:%M %Z'),('shoutbox_autolink','n'),('siteTitle',''),('slide_style','slidestyle.css'),('style','tikineat.css'),('system_os','unix'),('t_use_db','y'),('t_use_dir',''),('tikiIndex','tiki-index.php'),('tmpDir','temp'),('trk_with_mirror_tables','n'),('uf_use_db','y'),('uf_use_dir',''),('urlIndex',''),('useRegisterPasscode','n'),('useUrlIndex','n'),('use_proxy','n'),('userTracker','n'),('user_assigned_modules','n'),('user_list_order','score_desc'),('userfiles_quota','30'),('validateEmail','n'),('validateRegistration','n'),('validateUsers','n'),('w_use_db','y'),('w_use_dir',''),('warn_on_edit_time','2'),('webmail_max_attachment','1500000'),('webmail_view_html','y'),('webserverauth','n'),('wikiHomePage','HomePage'),('wikiLicensePage',''),('wikiSubmitNotice',''),('wiki_bot_bar','n'),('wiki_cache','0'),('wiki_comments_default_ordering','points_desc'),('wiki_comments_per_page','10'),('wiki_creator_admin','n'),('wiki_feature_copyrights','n'),('wiki_forum',''),('wiki_forum_id',''),('wiki_left_column','y'),('wiki_list_backlinks','y'),('wiki_list_comment','y'),('wiki_list_creator','n'),('wiki_list_hits','y'),('wiki_list_lastmodif','y'),('wiki_list_lastver','n'),('wiki_list_links','n'),('wiki_list_name','y'),('wiki_list_size','n'),('wiki_list_status','n'),('wiki_list_user','y'),('wiki_list_versions','n'),('wiki_page_regex','strict'),('wiki_right_column','y'),('wiki_spellcheck','n'),('wiki_top_bar','n'),('wiki_uses_slides','n'),('wiki_wikisyntax_in_html','full'),('messu_mailbox_size','0'),('messu_archive_size','200'),('messu_sent_size','200'),('case_patched','y');
/*!40000 ALTER TABLE `tiki_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_private_messages`
--

DROP TABLE IF EXISTS `tiki_private_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_private_messages` (
  `messageId` int(8) NOT NULL auto_increment,
  `toNickname` varchar(200) NOT NULL default '',
  `data` varchar(255) default NULL,
  `poster` varchar(200) NOT NULL default 'anonymous',
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`messageId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_private_messages`
--

LOCK TABLES `tiki_private_messages` WRITE;
/*!40000 ALTER TABLE `tiki_private_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_private_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_programmed_content`
--

DROP TABLE IF EXISTS `tiki_programmed_content`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_programmed_content` (
  `pId` int(8) NOT NULL auto_increment,
  `contentId` int(8) NOT NULL default '0',
  `publishDate` int(14) NOT NULL default '0',
  `data` text,
  PRIMARY KEY  (`pId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_programmed_content`
--

LOCK TABLES `tiki_programmed_content` WRITE;
/*!40000 ALTER TABLE `tiki_programmed_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_programmed_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quicktags`
--

DROP TABLE IF EXISTS `tiki_quicktags`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quicktags` (
  `tagId` int(4) unsigned NOT NULL auto_increment,
  `taglabel` varchar(255) default NULL,
  `taginsert` text,
  `tagicon` varchar(255) default NULL,
  `tagcategory` varchar(255) default NULL,
  PRIMARY KEY  (`tagId`),
  KEY `tagcategory` (`tagcategory`),
  KEY `taglabel` (`taglabel`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quicktags`
--

LOCK TABLES `tiki_quicktags` WRITE;
/*!40000 ALTER TABLE `tiki_quicktags` DISABLE KEYS */;
INSERT INTO `tiki_quicktags` VALUES (1,'bold','__text__','images/ed_format_bold.gif','wiki'),(2,'italic','\'\'text\'\'','images/ed_format_italic.gif','wiki'),(3,'underline','===text===','images/ed_format_underline.gif','wiki'),(4,'table new','||r1c1|r1c2\nr2c1|r2c2||','images/insert_table.gif','wiki'),(5,'external link','[http://example.com|text]','images/ed_link.gif','wiki'),(6,'wiki link','((text))','images/ed_copy.gif','wiki'),(7,'heading1','!text','images/ed_custom.gif','wiki'),(8,'title bar','-=text=-','images/fullscreen_maximize.gif','wiki'),(9,'box','^text^','images/ed_about.gif','wiki'),(10,'hr','---','images/ed_hr.gif','wiki'),(11,'center text','::text::','images/ed_align_center.gif','wiki'),(12,'colored text','~~#FF0000:text~~','images/fontfamily.gif','wiki'),(13,'image','{img src= width= height= align= desc= link= }','images/ed_image.gif','wiki'),(14,'New wms Metadata','METADATA\r\n		\"wms_name\" \"myname\"\r\n 	\"wms_srs\" \"EPSG:4326\"\r\n 	\"wms_server_version\" \" \"\r\n 	\"wms_layers\" \"mylayers\"\r\n 	\"wms_request\" \"myrequest\"\r\n 	\"wms_format\" \" \"\r\n 	\"wms_time\" \" \"\r\n END','img/icons/admin_metatags.png','maps'),(15,'New Class','CLASS\r\n EXPRESSION ()\r\n SYMBOL 0\r\n OUTLINECOLOR\r\n COLOR\r\n NAME \"myclass\" \r\nEND #end of class','img/icons/mini_triangle.gif','maps'),(16,'New Projection','PROJECTION\r\n \"init=epsg:4326\"\r\nEND','images/ico_mode.gif','maps'),(17,'New Query','#\r\n# Start of query definitions\r\n#\r\n QUERYMAP\r\n STATUS ON\r\n STYLE HILITE\r\nEND','img/icons/questions.gif','maps'),(18,'New Scalebar','#\r\n# Start of scalebar\r\n#\r\nSCALEBAR\r\n IMAGECOLOR 255 255 255\r\n STYLE 1\r\n SIZE 400 2\r\n COLOR 0 0 0\r\n UNITS KILOMETERS\r\n INTERVALS 5\r\n STATUS ON\r\nEND','img/icons/desc_length.gif','maps'),(19,'New Layer','LAYER\r\n NAME\r\n TYPE\r\n STATUS ON\r\n DATA \"mydata\"\r\nEND #end of layer','images/ed_copy.gif','maps'),(20,'New Label','LABEL\r\n COLOR\r\n ANGLE\r\n FONT arial\r\n TYPE TRUETYPE\r\n POSITION\r\n PARTIALS TRUE\r\n SIZE 6\r\n BUFFER 0\r\n OUTLINECOLOR \r\nEND #end of label','img/icons/fontfamily.gif','maps'),(21,'New Reference','#\r\n#start of reference\r\n#\r\n REFERENCE\r\n SIZE 120 60\r\n STATUS ON\r\n EXTENT -180 -90 182 88\r\n OUTLINECOLOR 255 0 0\r\n IMAGE \"myimagedata\"\r\n COLOR -1 -1 -1\r\nEND','images/ed_image.gif','maps'),(22,'New Legend','#\r\n#start of Legend\r\n#\r\n LEGEND\r\n KEYSIZE 18 12\r\n POSTLABELCACHE TRUE\r\n STATUS ON\r\nEND','images/ed_about.gif','maps'),(23,'New Web','#\r\n# Start of web interface definition\r\n#\r\nWEB\r\n TEMPLATE \"myfile/url\"\r\n MINSCALE 1000\r\n MAXSCALE 40000\r\n IMAGEPATH \"myimagepath\"\r\n IMAGEURL \"mypath\"\r\nEND','img/icons/ico_link.gif','maps'),(24,'New Outputformat','OUTPUTFORMAT\r\n NAME\r\n DRIVER \" \"\r\n MIMETYPE \"myimagetype\"\r\n IMAGEMODE RGB\r\n EXTENSION \"png\"\r\nEND','img/icons/opera.gif','maps'),(25,'New Mapfile','#\r\n# Start of mapfile\r\n#\r\nNAME MYMAPFLE\r\n STATUS ON\r\nSIZE \r\nEXTENT\r\nUNITS \r\nSHAPEPATH \" \"\r\nIMAGETYPE \" \"\r\nFONTSET \" \"\r\nIMAGECOLOR -1 -1 -1\r\n\r\n#remove this text and add objects here\r\n\r\nEND # end of mapfile','img/icons/global.gif','maps'),(26,'bold','__text__','images/ed_format_bold.gif','newsletters'),(27,'italic','\'\'text\'\'','images/ed_format_italic.gif','newsletters'),(28,'underline','===text===','images/ed_format_underline.gif','newsletters'),(29,'external link','[http://example.com|text|nocache]','images/ed_link.gif','newsletters'),(30,'heading1','!text','images/ed_custom.gif','newsletters'),(31,'hr','---','images/ed_hr.gif','newsletters'),(32,'center text','::text::','images/ed_align_center.gif','newsletters'),(33,'colored text','~~#FF0000:text~~','images/fontfamily.gif','newsletters'),(34,'image','{img src= width= height= align= desc= link= }','images/ed_image.gif','newsletters');
/*!40000 ALTER TABLE `tiki_quicktags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quiz_question_options`
--

DROP TABLE IF EXISTS `tiki_quiz_question_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quiz_question_options` (
  `optionId` int(10) NOT NULL auto_increment,
  `questionId` int(10) default NULL,
  `optionText` text,
  `points` int(4) default NULL,
  PRIMARY KEY  (`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quiz_question_options`
--

LOCK TABLES `tiki_quiz_question_options` WRITE;
/*!40000 ALTER TABLE `tiki_quiz_question_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_quiz_question_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quiz_questions`
--

DROP TABLE IF EXISTS `tiki_quiz_questions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quiz_questions` (
  `questionId` int(10) NOT NULL auto_increment,
  `quizId` int(10) default NULL,
  `question` text,
  `position` int(4) default NULL,
  `type` char(1) default NULL,
  `maxPoints` int(4) default NULL,
  PRIMARY KEY  (`questionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quiz_questions`
--

LOCK TABLES `tiki_quiz_questions` WRITE;
/*!40000 ALTER TABLE `tiki_quiz_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_quiz_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quiz_results`
--

DROP TABLE IF EXISTS `tiki_quiz_results`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quiz_results` (
  `resultId` int(10) NOT NULL auto_increment,
  `quizId` int(10) default NULL,
  `fromPoints` int(4) default NULL,
  `toPoints` int(4) default NULL,
  `answer` text,
  PRIMARY KEY  (`resultId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quiz_results`
--

LOCK TABLES `tiki_quiz_results` WRITE;
/*!40000 ALTER TABLE `tiki_quiz_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_quiz_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quiz_stats`
--

DROP TABLE IF EXISTS `tiki_quiz_stats`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quiz_stats` (
  `quizId` int(10) NOT NULL default '0',
  `questionId` int(10) NOT NULL default '0',
  `optionId` int(10) NOT NULL default '0',
  `votes` int(10) default NULL,
  PRIMARY KEY  (`quizId`,`questionId`,`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quiz_stats`
--

LOCK TABLES `tiki_quiz_stats` WRITE;
/*!40000 ALTER TABLE `tiki_quiz_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_quiz_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quiz_stats_sum`
--

DROP TABLE IF EXISTS `tiki_quiz_stats_sum`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quiz_stats_sum` (
  `quizId` int(10) NOT NULL default '0',
  `quizName` varchar(255) default NULL,
  `timesTaken` int(10) default NULL,
  `avgpoints` decimal(5,2) default NULL,
  `avgavg` decimal(5,2) default NULL,
  `avgtime` decimal(5,2) default NULL,
  PRIMARY KEY  (`quizId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quiz_stats_sum`
--

LOCK TABLES `tiki_quiz_stats_sum` WRITE;
/*!40000 ALTER TABLE `tiki_quiz_stats_sum` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_quiz_stats_sum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quizzes`
--

DROP TABLE IF EXISTS `tiki_quizzes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quizzes` (
  `quizId` int(10) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `canRepeat` char(1) default NULL,
  `storeResults` char(1) default NULL,
  `questionsPerPage` int(4) default NULL,
  `timeLimited` char(1) default NULL,
  `timeLimit` int(14) default NULL,
  `created` int(14) default NULL,
  `taken` int(10) default NULL,
  `immediateFeedback` char(1) default NULL,
  `showAnswers` char(1) default NULL,
  `shuffleQuestions` char(1) default NULL,
  `shuffleAnswers` char(1) default NULL,
  `publishDate` int(14) default NULL,
  `expireDate` int(14) default NULL,
  `bDeleted` char(1) default NULL,
  `nVersion` int(4) NOT NULL,
  `nAuthor` int(4) default NULL,
  `bOnline` char(1) default NULL,
  `bRandomQuestions` char(1) default NULL,
  `nRandomQuestions` tinyint(4) default NULL,
  `bLimitQuestionsPerPage` char(1) default NULL,
  `nLimitQuestionsPerPage` tinyint(4) default NULL,
  `bMultiSession` char(1) default NULL,
  `nCanRepeat` tinyint(4) default NULL,
  `sGradingMethod` varchar(80) default NULL,
  `sShowScore` varchar(80) default NULL,
  `sShowCorrectAnswers` varchar(80) default NULL,
  `sPublishStats` varchar(80) default NULL,
  `bAdditionalQuestions` char(1) default NULL,
  `bForum` char(1) default NULL,
  `sForum` varchar(80) default NULL,
  `sPrologue` text,
  `sData` text,
  `sEpilogue` text,
  `passingperct` int(4) default '0',
  PRIMARY KEY  (`quizId`,`nVersion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quizzes`
--

LOCK TABLES `tiki_quizzes` WRITE;
/*!40000 ALTER TABLE `tiki_quizzes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_received_articles`
--

DROP TABLE IF EXISTS `tiki_received_articles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_received_articles` (
  `receivedArticleId` int(14) NOT NULL auto_increment,
  `receivedFromSite` varchar(200) default NULL,
  `receivedFromUser` varchar(200) default NULL,
  `receivedDate` int(14) default NULL,
  `title` varchar(80) default NULL,
  `authorName` varchar(60) default NULL,
  `size` int(12) default NULL,
  `useImage` char(1) default NULL,
  `image_name` varchar(80) default NULL,
  `image_type` varchar(80) default NULL,
  `image_size` int(14) default NULL,
  `image_x` int(4) default NULL,
  `image_y` int(4) default NULL,
  `image_data` longblob,
  `publishDate` int(14) default NULL,
  `expireDate` int(14) default NULL,
  `created` int(14) default NULL,
  `heading` text,
  `body` longblob,
  `hash` varchar(32) default NULL,
  `author` varchar(200) default NULL,
  `type` varchar(50) default NULL,
  `rating` decimal(3,2) default NULL,
  PRIMARY KEY  (`receivedArticleId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_received_articles`
--

LOCK TABLES `tiki_received_articles` WRITE;
/*!40000 ALTER TABLE `tiki_received_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_received_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_received_pages`
--

DROP TABLE IF EXISTS `tiki_received_pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_received_pages` (
  `receivedPageId` int(14) NOT NULL auto_increment,
  `pageName` varchar(160) NOT NULL default '',
  `data` longblob,
  `description` varchar(200) default NULL,
  `comment` varchar(200) default NULL,
  `receivedFromSite` varchar(200) default NULL,
  `receivedFromUser` varchar(200) default NULL,
  `receivedDate` int(14) default NULL,
  PRIMARY KEY  (`receivedPageId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_received_pages`
--

LOCK TABLES `tiki_received_pages` WRITE;
/*!40000 ALTER TABLE `tiki_received_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_received_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_referer_stats`
--

DROP TABLE IF EXISTS `tiki_referer_stats`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_referer_stats` (
  `referer` varchar(255) NOT NULL default '',
  `hits` int(10) default NULL,
  `last` int(14) default NULL,
  PRIMARY KEY  (`referer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_referer_stats`
--

LOCK TABLES `tiki_referer_stats` WRITE;
/*!40000 ALTER TABLE `tiki_referer_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_referer_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_related_categories`
--

DROP TABLE IF EXISTS `tiki_related_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_related_categories` (
  `categId` int(10) NOT NULL default '0',
  `relatedTo` int(10) NOT NULL default '0',
  PRIMARY KEY  (`categId`,`relatedTo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_related_categories`
--

LOCK TABLES `tiki_related_categories` WRITE;
/*!40000 ALTER TABLE `tiki_related_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_related_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_rss_feeds`
--

DROP TABLE IF EXISTS `tiki_rss_feeds`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_rss_feeds` (
  `name` varchar(30) NOT NULL default '',
  `rssVer` char(1) NOT NULL default '1',
  `refresh` int(8) default '300',
  `lastUpdated` int(14) default NULL,
  `cache` longblob,
  PRIMARY KEY  (`name`,`rssVer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_rss_feeds`
--

LOCK TABLES `tiki_rss_feeds` WRITE;
/*!40000 ALTER TABLE `tiki_rss_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_rss_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_rss_modules`
--

DROP TABLE IF EXISTS `tiki_rss_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_rss_modules` (
  `rssId` int(8) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL default '',
  `description` text,
  `url` varchar(255) NOT NULL default '',
  `refresh` int(8) default NULL,
  `lastUpdated` int(14) default NULL,
  `showTitle` char(1) default 'n',
  `showPubDate` char(1) default 'n',
  `content` longblob,
  PRIMARY KEY  (`rssId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_rss_modules`
--

LOCK TABLES `tiki_rss_modules` WRITE;
/*!40000 ALTER TABLE `tiki_rss_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_rss_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_score`
--

DROP TABLE IF EXISTS `tiki_score`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_score` (
  `event` varchar(40) NOT NULL default '',
  `score` int(11) NOT NULL default '0',
  `expiration` int(11) NOT NULL default '0',
  PRIMARY KEY  (`event`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_score`
--

LOCK TABLES `tiki_score` WRITE;
/*!40000 ALTER TABLE `tiki_score` DISABLE KEYS */;
INSERT INTO `tiki_score` VALUES ('login',1,0),('login_remain',2,60),('profile_fill',10,0),('profile_see',2,0),('profile_is_seen',1,0),('friend_new',10,0),('message_receive',1,0),('message_send',2,0),('article_read',2,0),('article_comment',5,0),('article_new',20,0),('article_is_read',1,0),('article_is_commented',2,0),('fgallery_new',10,0),('fgallery_new_file',10,0),('fgallery_download',5,0),('fgallery_is_downloaded',5,0),('igallery_new',10,0),('igallery_new_img',6,0),('igallery_see_img',3,0),('igallery_img_seen',1,0),('blog_new',20,0),('blog_post',5,0),('blog_read',2,0),('blog_comment',2,0),('blog_is_read',3,0),('blog_is_commented',3,0),('wiki_new',10,0),('wiki_edit',5,0),('wiki_attach_file',3,0);
/*!40000 ALTER TABLE `tiki_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_search_stats`
--

DROP TABLE IF EXISTS `tiki_search_stats`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_search_stats` (
  `term` varchar(50) NOT NULL default '',
  `hits` int(10) default NULL,
  PRIMARY KEY  (`term`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_search_stats`
--

LOCK TABLES `tiki_search_stats` WRITE;
/*!40000 ALTER TABLE `tiki_search_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_search_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_searchindex`
--

DROP TABLE IF EXISTS `tiki_searchindex`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_searchindex` (
  `searchword` varchar(80) NOT NULL default '',
  `location` varchar(80) NOT NULL default '',
  `page` varchar(255) NOT NULL default '',
  `count` int(11) NOT NULL default '1',
  `last_update` int(11) NOT NULL default '0',
  PRIMARY KEY  (`searchword`,`location`,`page`(80)),
  KEY `last_update` (`last_update`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_searchindex`
--

LOCK TABLES `tiki_searchindex` WRITE;
/*!40000 ALTER TABLE `tiki_searchindex` DISABLE KEYS */;
INSERT INTO `tiki_searchindex` VALUES ('homepage','wiki','HomePage',1,1271407142);
/*!40000 ALTER TABLE `tiki_searchindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_searchsyllable`
--

DROP TABLE IF EXISTS `tiki_searchsyllable`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_searchsyllable` (
  `syllable` varchar(80) NOT NULL default '',
  `lastUsed` int(11) NOT NULL default '0',
  `lastUpdated` int(11) NOT NULL default '0',
  PRIMARY KEY  (`syllable`),
  KEY `lastUsed` (`lastUsed`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_searchsyllable`
--

LOCK TABLES `tiki_searchsyllable` WRITE;
/*!40000 ALTER TABLE `tiki_searchsyllable` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_searchsyllable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_searchwords`
--

DROP TABLE IF EXISTS `tiki_searchwords`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_searchwords` (
  `syllable` varchar(80) NOT NULL default '',
  `searchword` varchar(80) NOT NULL default '',
  PRIMARY KEY  (`syllable`,`searchword`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_searchwords`
--

LOCK TABLES `tiki_searchwords` WRITE;
/*!40000 ALTER TABLE `tiki_searchwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_searchwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_secdb`
--

DROP TABLE IF EXISTS `tiki_secdb`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_secdb` (
  `md5_value` varchar(32) NOT NULL,
  `filename` varchar(250) NOT NULL,
  `tiki_version` varchar(60) NOT NULL,
  `severity` int(4) NOT NULL default '0',
  PRIMARY KEY  (`md5_value`,`filename`(100),`tiki_version`),
  KEY `sdb_fn` (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_secdb`
--

LOCK TABLES `tiki_secdb` WRITE;
/*!40000 ALTER TABLE `tiki_secdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_secdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_semaphores`
--

DROP TABLE IF EXISTS `tiki_semaphores`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_semaphores` (
  `semName` varchar(250) NOT NULL default '',
  `user` varchar(40) default NULL,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`semName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_semaphores`
--

LOCK TABLES `tiki_semaphores` WRITE;
/*!40000 ALTER TABLE `tiki_semaphores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_semaphores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_sent_newsletters`
--

DROP TABLE IF EXISTS `tiki_sent_newsletters`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_sent_newsletters` (
  `editionId` int(12) NOT NULL auto_increment,
  `nlId` int(12) NOT NULL default '0',
  `users` int(10) default NULL,
  `sent` int(14) default NULL,
  `subject` varchar(200) default NULL,
  `data` longblob,
  PRIMARY KEY  (`editionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_sent_newsletters`
--

LOCK TABLES `tiki_sent_newsletters` WRITE;
/*!40000 ALTER TABLE `tiki_sent_newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_sent_newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_sessions`
--

DROP TABLE IF EXISTS `tiki_sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_sessions` (
  `sessionId` varchar(32) NOT NULL default '',
  `user` varchar(40) default NULL,
  `timestamp` int(14) default NULL,
  `tikihost` varchar(200) default NULL,
  PRIMARY KEY  (`sessionId`),
  KEY `user` (`user`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_sessions`
--

LOCK TABLES `tiki_sessions` WRITE;
/*!40000 ALTER TABLE `tiki_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_sheet_layout`
--

DROP TABLE IF EXISTS `tiki_sheet_layout`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_sheet_layout` (
  `sheetId` int(8) NOT NULL default '0',
  `begin` int(10) NOT NULL default '0',
  `end` int(10) default NULL,
  `headerRow` int(4) NOT NULL default '0',
  `footerRow` int(4) NOT NULL default '0',
  `className` varchar(64) default NULL,
  UNIQUE KEY `sheetId` (`sheetId`,`begin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_sheet_layout`
--

LOCK TABLES `tiki_sheet_layout` WRITE;
/*!40000 ALTER TABLE `tiki_sheet_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_sheet_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_sheet_values`
--

DROP TABLE IF EXISTS `tiki_sheet_values`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_sheet_values` (
  `sheetId` int(8) NOT NULL default '0',
  `begin` int(10) NOT NULL default '0',
  `end` int(10) default NULL,
  `rowIndex` int(4) NOT NULL default '0',
  `columnIndex` int(4) NOT NULL default '0',
  `value` varchar(255) default NULL,
  `calculation` varchar(255) default NULL,
  `width` int(4) NOT NULL default '1',
  `height` int(4) NOT NULL default '1',
  `format` varchar(255) default NULL,
  UNIQUE KEY `sheetId` (`sheetId`,`begin`,`rowIndex`,`columnIndex`),
  KEY `sheetId_2` (`sheetId`,`rowIndex`,`columnIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_sheet_values`
--

LOCK TABLES `tiki_sheet_values` WRITE;
/*!40000 ALTER TABLE `tiki_sheet_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_sheet_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_sheets`
--

DROP TABLE IF EXISTS `tiki_sheets`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_sheets` (
  `sheetId` int(8) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL default '',
  `description` text,
  `author` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`sheetId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_sheets`
--

LOCK TABLES `tiki_sheets` WRITE;
/*!40000 ALTER TABLE `tiki_sheets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_sheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_shoutbox`
--

DROP TABLE IF EXISTS `tiki_shoutbox`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_shoutbox` (
  `msgId` int(10) NOT NULL auto_increment,
  `message` varchar(255) default NULL,
  `timestamp` int(14) default NULL,
  `user` varchar(40) default NULL,
  `hash` varchar(32) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_shoutbox`
--

LOCK TABLES `tiki_shoutbox` WRITE;
/*!40000 ALTER TABLE `tiki_shoutbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_shoutbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_shoutbox_words`
--

DROP TABLE IF EXISTS `tiki_shoutbox_words`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_shoutbox_words` (
  `word` varchar(40) NOT NULL,
  `qty` int(11) NOT NULL default '0',
  PRIMARY KEY  (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_shoutbox_words`
--

LOCK TABLES `tiki_shoutbox_words` WRITE;
/*!40000 ALTER TABLE `tiki_shoutbox_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_shoutbox_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_stats`
--

DROP TABLE IF EXISTS `tiki_stats`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_stats` (
  `object` varchar(255) NOT NULL default '',
  `type` varchar(20) NOT NULL default '',
  `day` int(14) NOT NULL default '0',
  `hits` int(14) NOT NULL default '0',
  PRIMARY KEY  (`object`,`type`,`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_stats`
--

LOCK TABLES `tiki_stats` WRITE;
/*!40000 ALTER TABLE `tiki_stats` DISABLE KEYS */;
INSERT INTO `tiki_stats` VALUES ('HomePage','wiki',1271390400,2),('HomePage','wiki',1271649600,2);
/*!40000 ALTER TABLE `tiki_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_structure_versions`
--

DROP TABLE IF EXISTS `tiki_structure_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_structure_versions` (
  `structure_id` int(14) NOT NULL auto_increment,
  `version` int(14) default NULL,
  PRIMARY KEY  (`structure_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_structure_versions`
--

LOCK TABLES `tiki_structure_versions` WRITE;
/*!40000 ALTER TABLE `tiki_structure_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_structure_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_structures`
--

DROP TABLE IF EXISTS `tiki_structures`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_structures` (
  `page_ref_id` int(14) NOT NULL auto_increment,
  `structure_id` int(14) NOT NULL,
  `parent_id` int(14) default NULL,
  `page_id` int(14) NOT NULL,
  `page_version` int(8) default NULL,
  `page_alias` varchar(240) NOT NULL default '',
  `pos` int(4) default NULL,
  PRIMARY KEY  (`page_ref_id`),
  KEY `pidpaid` (`page_id`,`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_structures`
--

LOCK TABLES `tiki_structures` WRITE;
/*!40000 ALTER TABLE `tiki_structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_submissions`
--

DROP TABLE IF EXISTS `tiki_submissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_submissions` (
  `subId` int(8) NOT NULL auto_increment,
  `topline` varchar(255) default NULL,
  `title` varchar(80) default NULL,
  `subtitle` varchar(255) default NULL,
  `linkto` varchar(255) default NULL,
  `lang` varchar(16) default NULL,
  `authorName` varchar(60) default NULL,
  `topicId` int(14) default NULL,
  `topicName` varchar(40) default NULL,
  `size` int(12) default NULL,
  `useImage` char(1) default NULL,
  `image_name` varchar(80) default NULL,
  `image_caption` text,
  `image_type` varchar(80) default NULL,
  `image_size` int(14) default NULL,
  `image_x` int(4) default NULL,
  `image_y` int(4) default NULL,
  `image_data` longblob,
  `publishDate` int(14) default NULL,
  `expireDate` int(14) default NULL,
  `created` int(14) default NULL,
  `bibliographical_references` text,
  `resume` text,
  `heading` text,
  `body` text,
  `hash` varchar(32) default NULL,
  `author` varchar(200) default NULL,
  `nbreads` int(14) default NULL,
  `votes` int(8) default NULL,
  `points` int(14) default NULL,
  `type` varchar(50) default NULL,
  `rating` decimal(3,2) default NULL,
  `isfloat` char(1) default NULL,
  PRIMARY KEY  (`subId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_submissions`
--

LOCK TABLES `tiki_submissions` WRITE;
/*!40000 ALTER TABLE `tiki_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_suggested_faq_questions`
--

DROP TABLE IF EXISTS `tiki_suggested_faq_questions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_suggested_faq_questions` (
  `sfqId` int(10) NOT NULL auto_increment,
  `faqId` int(10) NOT NULL default '0',
  `question` text,
  `answer` text,
  `created` int(14) default NULL,
  `user` varchar(40) default NULL,
  PRIMARY KEY  (`sfqId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_suggested_faq_questions`
--

LOCK TABLES `tiki_suggested_faq_questions` WRITE;
/*!40000 ALTER TABLE `tiki_suggested_faq_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_suggested_faq_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_survey_question_options`
--

DROP TABLE IF EXISTS `tiki_survey_question_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_survey_question_options` (
  `optionId` int(12) NOT NULL auto_increment,
  `questionId` int(12) NOT NULL default '0',
  `qoption` text,
  `votes` int(10) default NULL,
  PRIMARY KEY  (`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_survey_question_options`
--

LOCK TABLES `tiki_survey_question_options` WRITE;
/*!40000 ALTER TABLE `tiki_survey_question_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_survey_question_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_survey_questions`
--

DROP TABLE IF EXISTS `tiki_survey_questions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_survey_questions` (
  `questionId` int(12) NOT NULL auto_increment,
  `surveyId` int(12) NOT NULL default '0',
  `question` text,
  `options` text,
  `type` char(1) default NULL,
  `position` int(5) default NULL,
  `votes` int(10) default NULL,
  `value` int(10) default NULL,
  `average` decimal(4,2) default NULL,
  PRIMARY KEY  (`questionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_survey_questions`
--

LOCK TABLES `tiki_survey_questions` WRITE;
/*!40000 ALTER TABLE `tiki_survey_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_surveys`
--

DROP TABLE IF EXISTS `tiki_surveys`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_surveys` (
  `surveyId` int(12) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `description` text,
  `taken` int(10) default NULL,
  `lastTaken` int(14) default NULL,
  `created` int(14) default NULL,
  `status` char(1) default NULL,
  PRIMARY KEY  (`surveyId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_surveys`
--

LOCK TABLES `tiki_surveys` WRITE;
/*!40000 ALTER TABLE `tiki_surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tags`
--

DROP TABLE IF EXISTS `tiki_tags`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tags` (
  `tagName` varchar(80) NOT NULL default '',
  `pageName` varchar(160) NOT NULL default '',
  `hits` int(8) default NULL,
  `description` varchar(200) default NULL,
  `data` longblob,
  `lastModif` int(14) default NULL,
  `comment` varchar(200) default NULL,
  `version` int(8) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `ip` varchar(15) default NULL,
  `flag` char(1) default NULL,
  PRIMARY KEY  (`tagName`,`pageName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tags`
--

LOCK TABLES `tiki_tags` WRITE;
/*!40000 ALTER TABLE `tiki_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_theme_control_categs`
--

DROP TABLE IF EXISTS `tiki_theme_control_categs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_theme_control_categs` (
  `categId` int(12) NOT NULL default '0',
  `theme` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`categId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_theme_control_categs`
--

LOCK TABLES `tiki_theme_control_categs` WRITE;
/*!40000 ALTER TABLE `tiki_theme_control_categs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_theme_control_categs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_theme_control_objects`
--

DROP TABLE IF EXISTS `tiki_theme_control_objects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_theme_control_objects` (
  `objId` varchar(250) NOT NULL default '',
  `type` varchar(250) NOT NULL default '',
  `name` varchar(250) NOT NULL default '',
  `theme` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`objId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_theme_control_objects`
--

LOCK TABLES `tiki_theme_control_objects` WRITE;
/*!40000 ALTER TABLE `tiki_theme_control_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_theme_control_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_theme_control_sections`
--

DROP TABLE IF EXISTS `tiki_theme_control_sections`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_theme_control_sections` (
  `section` varchar(250) NOT NULL default '',
  `theme` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`section`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_theme_control_sections`
--

LOCK TABLES `tiki_theme_control_sections` WRITE;
/*!40000 ALTER TABLE `tiki_theme_control_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_theme_control_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_topics`
--

DROP TABLE IF EXISTS `tiki_topics`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_topics` (
  `topicId` int(14) NOT NULL auto_increment,
  `name` varchar(40) default NULL,
  `image_name` varchar(80) default NULL,
  `image_type` varchar(80) default NULL,
  `image_size` int(14) default NULL,
  `image_data` longblob,
  `active` char(1) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`topicId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_topics`
--

LOCK TABLES `tiki_topics` WRITE;
/*!40000 ALTER TABLE `tiki_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tracker_fields`
--

DROP TABLE IF EXISTS `tiki_tracker_fields`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tracker_fields` (
  `fieldId` int(12) NOT NULL auto_increment,
  `trackerId` int(12) NOT NULL default '0',
  `name` varchar(255) default NULL,
  `options` text,
  `type` char(1) default NULL,
  `isMain` char(1) default NULL,
  `isTblVisible` char(1) default NULL,
  `position` int(4) default NULL,
  `isSearchable` char(1) NOT NULL default 'y',
  `isPublic` char(1) NOT NULL default 'n',
  `isHidden` char(1) NOT NULL default 'n',
  `isMandatory` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`fieldId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tracker_fields`
--

LOCK TABLES `tiki_tracker_fields` WRITE;
/*!40000 ALTER TABLE `tiki_tracker_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tracker_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tracker_item_attachments`
--

DROP TABLE IF EXISTS `tiki_tracker_item_attachments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tracker_item_attachments` (
  `attId` int(12) NOT NULL auto_increment,
  `itemId` int(12) NOT NULL default '0',
  `filename` varchar(80) default NULL,
  `filetype` varchar(80) default NULL,
  `filesize` int(14) default NULL,
  `user` varchar(40) default NULL,
  `data` longblob,
  `path` varchar(255) default NULL,
  `downloads` int(10) default NULL,
  `created` int(14) default NULL,
  `comment` varchar(250) default NULL,
  `longdesc` blob,
  `version` varchar(40) default NULL,
  PRIMARY KEY  (`attId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tracker_item_attachments`
--

LOCK TABLES `tiki_tracker_item_attachments` WRITE;
/*!40000 ALTER TABLE `tiki_tracker_item_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tracker_item_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tracker_item_comments`
--

DROP TABLE IF EXISTS `tiki_tracker_item_comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tracker_item_comments` (
  `commentId` int(12) NOT NULL auto_increment,
  `itemId` int(12) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `data` text,
  `title` varchar(200) default NULL,
  `posted` int(14) default NULL,
  PRIMARY KEY  (`commentId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tracker_item_comments`
--

LOCK TABLES `tiki_tracker_item_comments` WRITE;
/*!40000 ALTER TABLE `tiki_tracker_item_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tracker_item_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tracker_item_fields`
--

DROP TABLE IF EXISTS `tiki_tracker_item_fields`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tracker_item_fields` (
  `itemId` int(12) NOT NULL default '0',
  `fieldId` int(12) NOT NULL default '0',
  `value` text,
  PRIMARY KEY  (`itemId`,`fieldId`),
  FULLTEXT KEY `ft` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tracker_item_fields`
--

LOCK TABLES `tiki_tracker_item_fields` WRITE;
/*!40000 ALTER TABLE `tiki_tracker_item_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tracker_item_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tracker_items`
--

DROP TABLE IF EXISTS `tiki_tracker_items`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tracker_items` (
  `itemId` int(12) NOT NULL auto_increment,
  `trackerId` int(12) NOT NULL default '0',
  `created` int(14) default NULL,
  `status` char(1) default NULL,
  `lastModif` int(14) default NULL,
  PRIMARY KEY  (`itemId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tracker_items`
--

LOCK TABLES `tiki_tracker_items` WRITE;
/*!40000 ALTER TABLE `tiki_tracker_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tracker_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tracker_options`
--

DROP TABLE IF EXISTS `tiki_tracker_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tracker_options` (
  `trackerId` int(12) NOT NULL default '0',
  `name` varchar(80) NOT NULL default '',
  `value` text,
  PRIMARY KEY  (`trackerId`,`name`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tracker_options`
--

LOCK TABLES `tiki_tracker_options` WRITE;
/*!40000 ALTER TABLE `tiki_tracker_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tracker_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_trackers`
--

DROP TABLE IF EXISTS `tiki_trackers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_trackers` (
  `trackerId` int(12) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `lastModif` int(14) default NULL,
  `showCreated` char(1) default NULL,
  `showStatus` char(1) default NULL,
  `showLastModif` char(1) default NULL,
  `useComments` char(1) default NULL,
  `useAttachments` char(1) default NULL,
  `showAttachments` char(1) default NULL,
  `items` int(10) default NULL,
  `showComments` char(1) default NULL,
  `orderAttachments` varchar(255) NOT NULL default 'filename,created,filesize,downloads,desc',
  PRIMARY KEY  (`trackerId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_trackers`
--

LOCK TABLES `tiki_trackers` WRITE;
/*!40000 ALTER TABLE `tiki_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_translated_objects`
--

DROP TABLE IF EXISTS `tiki_translated_objects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_translated_objects` (
  `traId` int(14) NOT NULL auto_increment,
  `type` varchar(50) NOT NULL,
  `objId` varchar(255) NOT NULL,
  `lang` varchar(16) default NULL,
  PRIMARY KEY  (`type`,`objId`),
  KEY `traId` (`traId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_translated_objects`
--

LOCK TABLES `tiki_translated_objects` WRITE;
/*!40000 ALTER TABLE `tiki_translated_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_translated_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_untranslated`
--

DROP TABLE IF EXISTS `tiki_untranslated`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_untranslated` (
  `id` int(14) NOT NULL auto_increment,
  `source` tinyblob NOT NULL,
  `lang` char(16) NOT NULL default '',
  PRIMARY KEY  (`source`(255),`lang`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_untranslated`
--

LOCK TABLES `tiki_untranslated` WRITE;
/*!40000 ALTER TABLE `tiki_untranslated` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_untranslated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_answers`
--

DROP TABLE IF EXISTS `tiki_user_answers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_answers` (
  `userResultId` int(10) NOT NULL default '0',
  `quizId` int(10) NOT NULL default '0',
  `questionId` int(10) NOT NULL default '0',
  `optionId` int(10) NOT NULL default '0',
  PRIMARY KEY  (`userResultId`,`quizId`,`questionId`,`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_answers`
--

LOCK TABLES `tiki_user_answers` WRITE;
/*!40000 ALTER TABLE `tiki_user_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_answers_uploads`
--

DROP TABLE IF EXISTS `tiki_user_answers_uploads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_answers_uploads` (
  `answerUploadId` int(4) NOT NULL auto_increment,
  `userResultId` int(11) NOT NULL default '0',
  `questionId` int(11) NOT NULL default '0',
  `filename` varchar(255) NOT NULL default '',
  `filetype` varchar(64) NOT NULL default '',
  `filesize` varchar(255) NOT NULL default '',
  `filecontent` longblob NOT NULL,
  PRIMARY KEY  (`answerUploadId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_answers_uploads`
--

LOCK TABLES `tiki_user_answers_uploads` WRITE;
/*!40000 ALTER TABLE `tiki_user_answers_uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_answers_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_assigned_modules`
--

DROP TABLE IF EXISTS `tiki_user_assigned_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_assigned_modules` (
  `name` varchar(200) NOT NULL default '',
  `position` char(1) default NULL,
  `ord` int(4) default NULL,
  `type` char(1) default NULL,
  `user` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`name`,`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_assigned_modules`
--

LOCK TABLES `tiki_user_assigned_modules` WRITE;
/*!40000 ALTER TABLE `tiki_user_assigned_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_assigned_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_bookmarks_folders`
--

DROP TABLE IF EXISTS `tiki_user_bookmarks_folders`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_bookmarks_folders` (
  `folderId` int(12) NOT NULL auto_increment,
  `parentId` int(12) default NULL,
  `user` varchar(40) NOT NULL default '',
  `name` varchar(30) default NULL,
  PRIMARY KEY  (`user`,`folderId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_bookmarks_folders`
--

LOCK TABLES `tiki_user_bookmarks_folders` WRITE;
/*!40000 ALTER TABLE `tiki_user_bookmarks_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_bookmarks_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_bookmarks_urls`
--

DROP TABLE IF EXISTS `tiki_user_bookmarks_urls`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_bookmarks_urls` (
  `urlId` int(12) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `url` varchar(250) default NULL,
  `data` longblob,
  `lastUpdated` int(14) default NULL,
  `folderId` int(12) NOT NULL default '0',
  `user` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`urlId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_bookmarks_urls`
--

LOCK TABLES `tiki_user_bookmarks_urls` WRITE;
/*!40000 ALTER TABLE `tiki_user_bookmarks_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_bookmarks_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_mail_accounts`
--

DROP TABLE IF EXISTS `tiki_user_mail_accounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_mail_accounts` (
  `accountId` int(12) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  `account` varchar(50) NOT NULL default '',
  `pop` varchar(255) default NULL,
  `current` char(1) default NULL,
  `port` int(4) default NULL,
  `username` varchar(100) default NULL,
  `pass` varchar(100) default NULL,
  `msgs` int(4) default NULL,
  `smtp` varchar(255) default NULL,
  `useAuth` char(1) default NULL,
  `smtpPort` int(4) default NULL,
  PRIMARY KEY  (`accountId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_mail_accounts`
--

LOCK TABLES `tiki_user_mail_accounts` WRITE;
/*!40000 ALTER TABLE `tiki_user_mail_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_mail_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_menus`
--

DROP TABLE IF EXISTS `tiki_user_menus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_menus` (
  `user` varchar(40) NOT NULL default '',
  `menuId` int(12) NOT NULL auto_increment,
  `url` varchar(250) default NULL,
  `name` varchar(40) default NULL,
  `position` int(4) default NULL,
  `mode` char(1) default NULL,
  PRIMARY KEY  (`menuId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_menus`
--

LOCK TABLES `tiki_user_menus` WRITE;
/*!40000 ALTER TABLE `tiki_user_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_modules`
--

DROP TABLE IF EXISTS `tiki_user_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_modules` (
  `name` varchar(200) NOT NULL default '',
  `title` varchar(40) default NULL,
  `data` longblob,
  `parse` char(1) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_modules`
--

LOCK TABLES `tiki_user_modules` WRITE;
/*!40000 ALTER TABLE `tiki_user_modules` DISABLE KEYS */;
INSERT INTO `tiki_user_modules` VALUES ('mnu_application_menu','Menu','{menu id=42}','n');
/*!40000 ALTER TABLE `tiki_user_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_notes`
--

DROP TABLE IF EXISTS `tiki_user_notes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_notes` (
  `user` varchar(40) NOT NULL default '',
  `noteId` int(12) NOT NULL auto_increment,
  `created` int(14) default NULL,
  `name` varchar(255) default NULL,
  `lastModif` int(14) default NULL,
  `data` text,
  `size` int(14) default NULL,
  `parse_mode` varchar(20) default NULL,
  PRIMARY KEY  (`noteId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_notes`
--

LOCK TABLES `tiki_user_notes` WRITE;
/*!40000 ALTER TABLE `tiki_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_postings`
--

DROP TABLE IF EXISTS `tiki_user_postings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_postings` (
  `user` varchar(40) NOT NULL default '',
  `posts` int(12) default NULL,
  `last` int(14) default NULL,
  `first` int(14) default NULL,
  `level` int(8) default NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_postings`
--

LOCK TABLES `tiki_user_postings` WRITE;
/*!40000 ALTER TABLE `tiki_user_postings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_postings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_preferences`
--

DROP TABLE IF EXISTS `tiki_user_preferences`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_preferences` (
  `user` varchar(40) NOT NULL default '',
  `prefName` varchar(40) NOT NULL default '',
  `value` varchar(250) default NULL,
  PRIMARY KEY  (`user`,`prefName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_preferences`
--

LOCK TABLES `tiki_user_preferences` WRITE;
/*!40000 ALTER TABLE `tiki_user_preferences` DISABLE KEYS */;
INSERT INTO `tiki_user_preferences` VALUES ('admin','realName','System Administrator');
/*!40000 ALTER TABLE `tiki_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_quizzes`
--

DROP TABLE IF EXISTS `tiki_user_quizzes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_quizzes` (
  `user` varchar(40) default NULL,
  `quizId` int(10) default NULL,
  `timestamp` int(14) default NULL,
  `timeTaken` int(14) default NULL,
  `points` int(12) default NULL,
  `maxPoints` int(12) default NULL,
  `resultId` int(10) default NULL,
  `userResultId` int(10) NOT NULL auto_increment,
  PRIMARY KEY  (`userResultId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_quizzes`
--

LOCK TABLES `tiki_user_quizzes` WRITE;
/*!40000 ALTER TABLE `tiki_user_quizzes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_taken_quizzes`
--

DROP TABLE IF EXISTS `tiki_user_taken_quizzes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_taken_quizzes` (
  `user` varchar(40) NOT NULL default '',
  `quizId` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`user`,`quizId`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_taken_quizzes`
--

LOCK TABLES `tiki_user_taken_quizzes` WRITE;
/*!40000 ALTER TABLE `tiki_user_taken_quizzes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_taken_quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_tasks`
--

DROP TABLE IF EXISTS `tiki_user_tasks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_tasks` (
  `taskId` int(14) NOT NULL auto_increment,
  `last_version` int(4) NOT NULL default '0',
  `user` varchar(40) NOT NULL default '',
  `creator` varchar(200) NOT NULL,
  `public_for_group` varchar(30) default NULL,
  `rights_by_creator` char(1) default NULL,
  `created` int(14) NOT NULL,
  `status` char(1) default NULL,
  `priority` int(2) default NULL,
  `completed` int(14) default NULL,
  `percentage` int(4) default NULL,
  PRIMARY KEY  (`taskId`),
  UNIQUE KEY `creator` (`creator`,`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_tasks`
--

LOCK TABLES `tiki_user_tasks` WRITE;
/*!40000 ALTER TABLE `tiki_user_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_tasks_history`
--

DROP TABLE IF EXISTS `tiki_user_tasks_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_tasks_history` (
  `belongs_to` int(14) NOT NULL,
  `task_version` int(4) NOT NULL default '0',
  `title` varchar(250) NOT NULL,
  `description` text,
  `start` int(14) default NULL,
  `end` int(14) default NULL,
  `lasteditor` varchar(200) NOT NULL,
  `lastchanges` int(14) NOT NULL,
  `priority` int(2) NOT NULL default '3',
  `completed` int(14) default NULL,
  `deleted` int(14) default NULL,
  `status` char(1) default NULL,
  `percentage` int(4) default NULL,
  `accepted_creator` char(1) default NULL,
  `accepted_user` char(1) default NULL,
  PRIMARY KEY  (`belongs_to`,`task_version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_tasks_history`
--

LOCK TABLES `tiki_user_tasks_history` WRITE;
/*!40000 ALTER TABLE `tiki_user_tasks_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_tasks_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_votings`
--

DROP TABLE IF EXISTS `tiki_user_votings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_votings` (
  `user` varchar(40) NOT NULL default '',
  `id` varchar(255) NOT NULL default '',
  `optionId` int(10) NOT NULL default '0',
  PRIMARY KEY  (`user`,`id`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_votings`
--

LOCK TABLES `tiki_user_votings` WRITE;
/*!40000 ALTER TABLE `tiki_user_votings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_votings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_watches`
--

DROP TABLE IF EXISTS `tiki_user_watches`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_watches` (
  `user` varchar(40) NOT NULL default '',
  `event` varchar(40) NOT NULL default '',
  `object` varchar(200) NOT NULL default '',
  `hash` varchar(32) default NULL,
  `title` varchar(250) default NULL,
  `type` varchar(200) default NULL,
  `url` varchar(250) default NULL,
  `email` varchar(200) default NULL,
  PRIMARY KEY  (`user`,`event`,`object`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_watches`
--

LOCK TABLES `tiki_user_watches` WRITE;
/*!40000 ALTER TABLE `tiki_user_watches` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_watches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_userfiles`
--

DROP TABLE IF EXISTS `tiki_userfiles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_userfiles` (
  `user` varchar(40) NOT NULL default '',
  `fileId` int(12) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `filename` varchar(200) default NULL,
  `filetype` varchar(200) default NULL,
  `filesize` varchar(200) default NULL,
  `data` longblob,
  `hits` int(8) default NULL,
  `isFile` char(1) default NULL,
  `path` varchar(255) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`fileId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_userfiles`
--

LOCK TABLES `tiki_userfiles` WRITE;
/*!40000 ALTER TABLE `tiki_userfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_userfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_userpoints`
--

DROP TABLE IF EXISTS `tiki_userpoints`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_userpoints` (
  `user` varchar(40) default NULL,
  `points` decimal(8,2) default NULL,
  `voted` int(8) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_userpoints`
--

LOCK TABLES `tiki_userpoints` WRITE;
/*!40000 ALTER TABLE `tiki_userpoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_userpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_users`
--

DROP TABLE IF EXISTS `tiki_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_users` (
  `user` varchar(40) NOT NULL default '',
  `password` varchar(40) default NULL,
  `email` varchar(200) default NULL,
  `lastLogin` int(14) default NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_users`
--

LOCK TABLES `tiki_users` WRITE;
/*!40000 ALTER TABLE `tiki_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_users_score`
--

DROP TABLE IF EXISTS `tiki_users_score`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_users_score` (
  `user` char(40) NOT NULL default '',
  `event_id` char(40) NOT NULL default '',
  `expire` int(14) NOT NULL default '0',
  `tstamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user`,`event_id`),
  KEY `user` (`user`,`event_id`,`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_users_score`
--

LOCK TABLES `tiki_users_score` WRITE;
/*!40000 ALTER TABLE `tiki_users_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_users_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_webmail_contacts`
--

DROP TABLE IF EXISTS `tiki_webmail_contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_webmail_contacts` (
  `contactId` int(12) NOT NULL auto_increment,
  `firstName` varchar(80) default NULL,
  `lastName` varchar(80) default NULL,
  `email` varchar(250) default NULL,
  `nickname` varchar(200) default NULL,
  `user` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`contactId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_webmail_contacts`
--

LOCK TABLES `tiki_webmail_contacts` WRITE;
/*!40000 ALTER TABLE `tiki_webmail_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_webmail_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_webmail_messages`
--

DROP TABLE IF EXISTS `tiki_webmail_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_webmail_messages` (
  `accountId` int(12) NOT NULL default '0',
  `mailId` varchar(255) NOT NULL default '',
  `user` varchar(40) NOT NULL default '',
  `isRead` char(1) default NULL,
  `isReplied` char(1) default NULL,
  `isFlagged` char(1) default NULL,
  PRIMARY KEY  (`accountId`,`mailId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_webmail_messages`
--

LOCK TABLES `tiki_webmail_messages` WRITE;
/*!40000 ALTER TABLE `tiki_webmail_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_webmail_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_wiki_attachments`
--

DROP TABLE IF EXISTS `tiki_wiki_attachments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_wiki_attachments` (
  `attId` int(12) NOT NULL auto_increment,
  `page` varchar(200) NOT NULL default '',
  `filename` varchar(80) default NULL,
  `filetype` varchar(80) default NULL,
  `filesize` int(14) default NULL,
  `user` varchar(40) default NULL,
  `data` longblob,
  `path` varchar(255) default NULL,
  `downloads` int(10) default NULL,
  `created` int(14) default NULL,
  `comment` varchar(250) default NULL,
  PRIMARY KEY  (`attId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_wiki_attachments`
--

LOCK TABLES `tiki_wiki_attachments` WRITE;
/*!40000 ALTER TABLE `tiki_wiki_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_wiki_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_zones`
--

DROP TABLE IF EXISTS `tiki_zones`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_zones` (
  `zone` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_zones`
--

LOCK TABLES `tiki_zones` WRITE;
/*!40000 ALTER TABLE `tiki_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_grouppermissions`
--

DROP TABLE IF EXISTS `users_grouppermissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_grouppermissions` (
  `groupName` varchar(255) NOT NULL default '',
  `permName` varchar(30) NOT NULL default '',
  `value` char(1) default '',
  PRIMARY KEY  (`groupName`(30),`permName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_grouppermissions`
--

LOCK TABLES `users_grouppermissions` WRITE;
/*!40000 ALTER TABLE `users_grouppermissions` DISABLE KEYS */;
INSERT INTO `users_grouppermissions` VALUES ('Anonymous','tiki_p_view',''),('Anonymous','tiki_p_wiki_view_history',''),('Anonymous','tiki_p_wiki_view_comments',''),('Admins','tiki_p_admin','');
/*!40000 ALTER TABLE `users_grouppermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_groups` (
  `groupName` varchar(255) NOT NULL default '',
  `groupDesc` varchar(255) default NULL,
  `groupHome` varchar(255) default NULL,
  `usersTrackerId` int(11) default NULL,
  `groupTrackerId` int(11) default NULL,
  `usersFieldId` int(11) default NULL,
  `groupFieldId` int(11) default NULL,
  PRIMARY KEY  (`groupName`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES ('Anonymous','Public users not logged',NULL,NULL,NULL,NULL,NULL),('Registered','Users logged into the system',NULL,NULL,NULL,NULL,NULL),('Admins','Administrator and accounts managers.',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_objectpermissions`
--

DROP TABLE IF EXISTS `users_objectpermissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_objectpermissions` (
  `groupName` varchar(255) NOT NULL default '',
  `permName` varchar(30) NOT NULL default '',
  `objectType` varchar(20) NOT NULL default '',
  `objectId` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`objectId`,`objectType`,`groupName`(30),`permName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_objectpermissions`
--

LOCK TABLES `users_objectpermissions` WRITE;
/*!40000 ALTER TABLE `users_objectpermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_objectpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permissions`
--

DROP TABLE IF EXISTS `users_permissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_permissions` (
  `permName` varchar(30) NOT NULL default '',
  `permDesc` varchar(250) default NULL,
  `level` varchar(80) default NULL,
  `type` varchar(20) default NULL,
  PRIMARY KEY  (`permName`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_permissions`
--

LOCK TABLES `users_permissions` WRITE;
/*!40000 ALTER TABLE `users_permissions` DISABLE KEYS */;
INSERT INTO `users_permissions` VALUES ('tiki_p_abort_instance','Can abort a process instance','editors','workflow'),('tiki_p_access_closed_site','Can access site when closed','admin','tiki'),('tiki_p_add_events','Can add events in the calendar','registered','calendar'),('tiki_p_admin','Administrator, can manage users groups and permissions, Hotwords and all the weblog features','admin','tiki'),('tiki_p_admin_banners','Administrator, can admin banners','admin','tiki'),('tiki_p_admin_banning','Can ban users or ips','admin','tiki'),('tiki_p_admin_calendar','Can create/admin calendars','admin','calendar'),('tiki_p_admin_categories','Can admin categories','editors','tiki'),('tiki_p_admin_charts','Can admin charts','admin','charts'),('tiki_p_admin_chat','Administrator, can create channels remove channels etc','editors','chat'),('tiki_p_admin_cms','Can admin the cms','editors','cms'),('tiki_p_admin_directory','Can admin the directory','editors','directory'),('tiki_p_admin_directory_cats','Can admin directory categories','editors','directory'),('tiki_p_admin_directory_sites','Can admin directory sites','editors','directory'),('tiki_p_admin_drawings','Can admin drawings','editors','drawings'),('tiki_p_admin_dynamic','Can admin the dynamic content system','editors','tiki'),('tiki_p_admin_faqs','Can admin faqs','editors','faqs'),('tiki_p_admin_file_galleries','Can admin file galleries','editors','file galleries'),('tiki_p_admin_forum','Can admin forums','editors','forums'),('tiki_p_admin_galleries','Can admin Image Galleries','editors','image galleries'),('tiki_p_admin_games','Can admin games','editors','games'),('tiki_p_admin_integrator','Can admin integrator repositories and rules','admin','tiki'),('tiki_p_admin_mailin','Can admin mail-in accounts','admin','tiki'),('tiki_p_admin_newsletters','Can admin newsletters','admin','newsletters'),('tiki_p_admin_objects','Can edit object permissions','admin','tiki'),('tiki_p_admin_polls','Can admin polls','admin','tiki'),('tiki_p_admin_quizzes','Can admin quizzes','editors','quizzes'),('tiki_p_admin_received_articles','Can admin received articles','editors','comm'),('tiki_p_admin_received_pages','Can admin received pages','editors','comm'),('tiki_p_admin_rssmodules','Can admin rss modules','admin','tiki'),('tiki_p_admin_sheet','Can admin sheet','admin','sheet'),('tiki_p_admin_shoutbox','Can admin shoutbox (Edit/remove msgs)','editors','shoutbox'),('tiki_p_admin_surveys','Can admin surveys','editors','surveys'),('tiki_p_admin_trackers','Can admin trackers','editors','trackers'),('tiki_p_admin_users','Can admin users','admin','user'),('tiki_p_admin_wiki','Can admin the wiki','editors','wiki'),('tiki_p_admin_workflow','Can admin workflow processes','admin','workflow'),('tiki_p_approve_submission','Can approve submissions','editors','cms'),('tiki_p_attach_trackers','Can attach files to tracker items','registered','trackers'),('tiki_p_autoapprove_submission','Submited articles automatically approved','editors','cms'),('tiki_p_autosubmit_link','Submited links are valid','editors','directory'),('tiki_p_autoval_chart_suggestio','Autovalidate suggestions','editors','charts'),('tiki_p_batch_upload_files','Can upload zip files with files','editors','file galleries'),('tiki_p_batch_upload_image_dir','Can use Directory Batch Load','editors','image galleries'),('tiki_p_batch_upload_images','Can upload zip files with images','editors','image galleries'),('tiki_p_blog_admin','Can admin blogs','editors','blogs'),('tiki_p_blog_post','Can post to a blog','registered','blogs'),('tiki_p_broadcast','Can broadcast messages to groups','admin','messu'),('tiki_p_broadcast_all','Can broadcast messages to all user','admin','messu'),('tiki_p_cache_bookmarks','Can cache user bookmarks','admin','user'),('tiki_p_change_events','Can change events in the calendar','registered','calendar'),('tiki_p_chat','Can use the chat system','registered','chat'),('tiki_p_comment_tracker_items','Can insert comments for tracker items','basic','trackers'),('tiki_p_configure_modules','Can configure modules','registered','user'),('tiki_p_create_blogs','Can create a blog','editors','blogs'),('tiki_p_create_bookmarks','Can create user bookmarks','registered','user'),('tiki_p_create_css','Can create new css suffixed with -user','registered','tiki'),('tiki_p_create_file_galleries','Can create file galleries','editors','file galleries'),('tiki_p_create_galleries','Can create image galleries','editors','image galleries'),('tiki_p_create_tracker_items','Can create new items for trackers','registered','trackers'),('tiki_p_download_files','Can download files','basic','file galleries'),('tiki_p_edit','Can edit pages','registered','wiki'),('tiki_p_edit_article','Can edit articles','editors','cms'),('tiki_p_edit_comments','Can edit all comments','editors','comments'),('tiki_p_edit_content_templates','Can edit content templates','editors','content templates'),('tiki_p_edit_cookies','Can admin cookies','editors','tiki'),('tiki_p_edit_copyrights','Can edit copyright notices','editors','wiki'),('tiki_p_edit_drawings','Can edit drawings','basic','drawings'),('tiki_p_edit_dynvar','Can edit dynamic variables','editors','wiki'),('tiki_p_edit_html_pages','Can edit HTML pages','editors','html pages'),('tiki_p_edit_languages','Can edit translations and create new languages','editors','tiki'),('tiki_p_edit_sheet','Can create and edit sheets','editors','sheet'),('tiki_p_edit_structures','Can create and edit structures','editors','wiki'),('tiki_p_edit_submission','Can edit submissions','editors','cms'),('tiki_p_edit_templates','Can edit site templates','admin','tiki'),('tiki_p_eph_admin','Can admin ephemerides','editors','tiki'),('tiki_p_exception_instance','Can declare an instance as exception','registered','workflow'),('tiki_p_forum_attach','Can attach to forum posts','registered','forums'),('tiki_p_forum_autoapp','Auto approve forum posts','editors','forums'),('tiki_p_forum_post','Can post in forums','registered','forums'),('tiki_p_forum_post_topic','Can start threads in forums','registered','forums'),('tiki_p_forum_read','Can read forums','basic','forums'),('tiki_p_forum_vote','Can vote comments in forums','registered','forums'),('tiki_p_forums_report','Can report msgs to moderator','registered','forums'),('tiki_p_list_users','Can list registered users','registered','community'),('tiki_p_live_support','Can use live support system','basic','support'),('tiki_p_live_support_admin','Admin live support system','admin','support'),('tiki_p_lock','Can lock pages','editors','wiki'),('tiki_p_map_create','Can create new mapfile','admin','maps'),('tiki_p_map_delete','Can delete mapfiles','admin','maps'),('tiki_p_map_edit','Can edit mapfiles','editors','maps'),('tiki_p_map_view','Can view mapfiles','basic','maps'),('tiki_p_map_view_mapfiles','Can view contents of mapfiles','registered','maps'),('tiki_p_messages','Can use the messaging system','registered','messu'),('tiki_p_minical','Can use the mini event calendar','registered','user'),('tiki_p_minor','Can save as minor edit','registered','wiki'),('tiki_p_modify_tracker_items','Can change tracker items','registered','trackers'),('tiki_p_newsreader','Can use the newsreader','registered','user'),('tiki_p_notepad','Can use the notepad','registered','user'),('tiki_p_play_games','Can play games','basic','games'),('tiki_p_post_comments','Can post new comments','registered','comments'),('tiki_p_post_shoutbox','Can post messages in shoutbox','basic','shoutbox'),('tiki_p_read_article','Can read articles','basic','cms'),('tiki_p_read_blog','Can read blogs','basic','blogs'),('tiki_p_read_comments','Can read comments','basic','comments'),('tiki_p_remove','Can remove','editors','wiki'),('tiki_p_remove_article','Can remove articles','editors','cms'),('tiki_p_remove_comments','Can delete comments','editors','comments'),('tiki_p_remove_submission','Can remove submissions','editors','cms'),('tiki_p_rename','Can rename pages','editors','wiki'),('tiki_p_rollback','Can rollback pages','editors','wiki'),('tiki_p_send_articles','Can send articles to other sites','editors','comm'),('tiki_p_send_instance','Can send instances after completion','registered','workflow'),('tiki_p_send_newsletters','Can send newsletters','editors','newsletters'),('tiki_p_send_pages','Can send pages to other sites','registered','comm'),('tiki_p_sendme_articles','Can send articles to this site','registered','comm'),('tiki_p_sendme_pages','Can send pages to this site','registered','comm'),('tiki_p_submit_article','Can submit articles','basic','cms'),('tiki_p_submit_link','Can submit sites to the directory','basic','directory'),('tiki_p_subscribe_email','Can subscribe any email to newsletters','editors','newsletters'),('tiki_p_subscribe_newsletters','Can subscribe to newsletters','basic','newsletters'),('tiki_p_suggest_chart_item','Can suggest items','basic','charts'),('tiki_p_suggest_faq','Can suggest faq questions','basic','faqs'),('tiki_p_take_quiz','Can take quizzes','basic','quizzes'),('tiki_p_take_survey','Can take surveys','basic','surveys'),('tiki_p_tasks','Can use tasks','registered','user'),('tiki_p_tasks_admin','Can admin public tasks','admin','user'),('tiki_p_tasks_receive','Can  receive tasks from other users','registered','user'),('tiki_p_tasks_send','Can send tasks to other users','registered','user'),('tiki_p_topic_read','Can read a topic (Applies only to individual topic perms)','basic','topics'),('tiki_p_tracker_view_ratings','Can view rating result for tracker items','basic','trackers'),('tiki_p_tracker_vote_ratings','Can vote a rating for tracker items','registered','trackers'),('tiki_p_upload_files','Can upload files','registered','file galleries'),('tiki_p_upload_images','Can upload images','registered','image galleries'),('tiki_p_upload_picture','Can upload pictures to wiki pages','registered','wiki'),('tiki_p_use_HTML','Can use HTML in pages','editors','tiki'),('tiki_p_use_content_templates','Can use content templates','registered','content templates'),('tiki_p_use_webmail','Can use webmail','registered','webmail'),('tiki_p_use_workflow','Can execute workflow activities','registered','workflow'),('tiki_p_userfiles','Can upload personal files','registered','user'),('tiki_p_usermenu','Can create items in personal menu','registered','user'),('tiki_p_validate_links','Can validate submited links','editors','directory'),('tiki_p_view','Can view page/pages','basic','wiki'),('tiki_p_view_calendar','Can browse the calendar','basic','calendar'),('tiki_p_view_categories','Can browse categories','basic','tiki'),('tiki_p_view_chart','Can view charts','basic','charts'),('tiki_p_view_directory','Can use the directory','basic','directory'),('tiki_p_view_eph','Can view ephemerides','registered','tiki'),('tiki_p_view_faqs','Can view faqs','basic','faqs'),('tiki_p_view_file_gallery','Can view file galleries','basic','file galleries'),('tiki_p_view_html_pages','Can view HTML pages','basic','html pages'),('tiki_p_view_image_gallery','Can view image galleries','basic','image galleries'),('tiki_p_view_integrator','Can view integrated repositories','basic','tiki'),('tiki_p_view_quiz_stats','Can view quiz stats','basic','quizzes'),('tiki_p_view_referer_stats','Can view referer stats','editors','tiki'),('tiki_p_view_sheet','Can view sheet','basic','sheet'),('tiki_p_view_sheet_history','Can view sheet history','admin','sheet'),('tiki_p_view_shoutbox','Can view shoutbox','basic','shoutbox'),('tiki_p_view_stats','Can view site stats','basic','tiki'),('tiki_p_view_survey_stats','Can view survey stats','basic','surveys'),('tiki_p_view_templates','Can view site templates','admin','tiki'),('tiki_p_view_tiki_calendar','Can view Tikiwiki tools calendar','basic','calendar'),('tiki_p_view_trackers','Can view trackers','basic','trackers'),('tiki_p_list_trackers','Can list trackers','basic','trackers'),('tiki_p_view_trackers_closed','Can view trackers closed items','registered','trackers'),('tiki_p_view_trackers_pending','Can view trackers pending items','editors','trackers'),('tiki_p_view_user_results','Can view user quiz results','editors','quizzes'),('tiki_p_vote_chart','Can vote','basic','charts'),('tiki_p_vote_comments','Can vote comments','registered','comments'),('tiki_p_vote_poll','Can vote polls','basic','tiki'),('tiki_p_wiki_admin_attachments','Can admin attachments to wiki pages','editors','wiki'),('tiki_p_wiki_admin_ratings','Can add and change ratings on wiki pages','admin','wiki'),('tiki_p_wiki_attach_files','Can attach files to wiki pages','registered','wiki'),('tiki_p_wiki_view_attachments','Can view wiki attachments and download','registered','wiki'),('tiki_p_wiki_view_comments','Can view wiki comments','basic','wiki'),('tiki_p_wiki_view_history','Can view wiki history','basic','wiki'),('tiki_p_wiki_view_ratings','Can view rating of wiki pages','basic','wiki'),('tiki_p_wiki_vote_ratings','Can participate to rating of wiki pages','registered','wiki');
/*!40000 ALTER TABLE `users_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_usergroups`
--

DROP TABLE IF EXISTS `users_usergroups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_usergroups` (
  `userId` int(8) NOT NULL default '0',
  `groupName` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`userId`,`groupName`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_usergroups`
--

LOCK TABLES `users_usergroups` WRITE;
/*!40000 ALTER TABLE `users_usergroups` DISABLE KEYS */;
INSERT INTO `users_usergroups` VALUES (1,'Admins');
/*!40000 ALTER TABLE `users_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_users`
--

DROP TABLE IF EXISTS `users_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_users` (
  `userId` int(8) NOT NULL auto_increment,
  `email` varchar(200) default NULL,
  `login` varchar(40) NOT NULL default '',
  `password` varchar(30) default '',
  `provpass` varchar(30) default NULL,
  `default_group` varchar(255) default NULL,
  `lastLogin` int(14) default NULL,
  `currentLogin` int(14) default NULL,
  `registrationDate` int(14) default NULL,
  `challenge` varchar(32) default NULL,
  `pass_due` int(14) default NULL,
  `hash` varchar(32) default NULL,
  `created` int(14) default NULL,
  `avatarName` varchar(80) default NULL,
  `avatarSize` int(14) default NULL,
  `avatarFileType` varchar(250) default NULL,
  `avatarData` longblob,
  `avatarLibName` varchar(200) default NULL,
  `avatarType` char(1) default NULL,
  `score` int(11) NOT NULL default '0',
  `valid` varchar(32) default NULL,
  PRIMARY KEY  (`userId`),
  KEY `score` (`score`),
  KEY `login` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_users`
--

LOCK TABLES `users_users` WRITE;
/*!40000 ALTER TABLE `users_users` DISABLE KEYS */;
INSERT INTO `users_users` VALUES (1,'','admin','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'f6fdffe48c908deb0f4c3bd36c032e72',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `users_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `tikiwiki195`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tikiwiki195` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tikiwiki195`;

--
-- Table structure for table `galaxia_activities`
--

DROP TABLE IF EXISTS `galaxia_activities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_activities` (
  `activityId` int(14) NOT NULL auto_increment,
  `name` varchar(80) default NULL,
  `normalized_name` varchar(80) default NULL,
  `pId` int(14) NOT NULL default '0',
  `type` enum('start','end','split','switch','join','activity','standalone') default NULL,
  `isAutoRouted` char(1) default NULL,
  `flowNum` int(10) default NULL,
  `isInteractive` char(1) default NULL,
  `lastModif` int(14) default NULL,
  `description` text,
  `expirationTime` int(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`activityId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_activities`
--

LOCK TABLES `galaxia_activities` WRITE;
/*!40000 ALTER TABLE `galaxia_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_activity_roles`
--

DROP TABLE IF EXISTS `galaxia_activity_roles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_activity_roles` (
  `activityId` int(14) NOT NULL default '0',
  `roleId` int(14) NOT NULL default '0',
  PRIMARY KEY  (`activityId`,`roleId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_activity_roles`
--

LOCK TABLES `galaxia_activity_roles` WRITE;
/*!40000 ALTER TABLE `galaxia_activity_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_activity_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_instance_activities`
--

DROP TABLE IF EXISTS `galaxia_instance_activities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_instance_activities` (
  `instanceId` int(14) NOT NULL default '0',
  `activityId` int(14) NOT NULL default '0',
  `started` int(14) NOT NULL default '0',
  `ended` int(14) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `status` enum('running','completed') default NULL,
  PRIMARY KEY  (`instanceId`,`activityId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_instance_activities`
--

LOCK TABLES `galaxia_instance_activities` WRITE;
/*!40000 ALTER TABLE `galaxia_instance_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_instance_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_instance_comments`
--

DROP TABLE IF EXISTS `galaxia_instance_comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_instance_comments` (
  `cId` int(14) NOT NULL auto_increment,
  `instanceId` int(14) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `activityId` int(14) default NULL,
  `hash` varchar(32) default NULL,
  `title` varchar(250) default NULL,
  `comment` text,
  `activity` varchar(80) default NULL,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`cId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_instance_comments`
--

LOCK TABLES `galaxia_instance_comments` WRITE;
/*!40000 ALTER TABLE `galaxia_instance_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_instance_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_instances`
--

DROP TABLE IF EXISTS `galaxia_instances`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_instances` (
  `instanceId` int(14) NOT NULL auto_increment,
  `pId` int(14) NOT NULL default '0',
  `started` int(14) default NULL,
  `name` varchar(200) NOT NULL default 'No Name',
  `owner` varchar(200) default NULL,
  `nextActivity` int(14) default NULL,
  `nextUser` varchar(200) default NULL,
  `ended` int(14) default NULL,
  `status` enum('active','exception','aborted','completed') default NULL,
  `properties` longblob,
  PRIMARY KEY  (`instanceId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_instances`
--

LOCK TABLES `galaxia_instances` WRITE;
/*!40000 ALTER TABLE `galaxia_instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_processes`
--

DROP TABLE IF EXISTS `galaxia_processes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_processes` (
  `pId` int(14) NOT NULL auto_increment,
  `name` varchar(80) default NULL,
  `isValid` char(1) default NULL,
  `isActive` char(1) default NULL,
  `version` varchar(12) default NULL,
  `description` text,
  `lastModif` int(14) default NULL,
  `normalized_name` varchar(80) default NULL,
  PRIMARY KEY  (`pId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_processes`
--

LOCK TABLES `galaxia_processes` WRITE;
/*!40000 ALTER TABLE `galaxia_processes` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_roles`
--

DROP TABLE IF EXISTS `galaxia_roles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_roles` (
  `roleId` int(14) NOT NULL auto_increment,
  `pId` int(14) NOT NULL default '0',
  `lastModif` int(14) default NULL,
  `name` varchar(80) default NULL,
  `description` text,
  PRIMARY KEY  (`roleId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_roles`
--

LOCK TABLES `galaxia_roles` WRITE;
/*!40000 ALTER TABLE `galaxia_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_transitions`
--

DROP TABLE IF EXISTS `galaxia_transitions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_transitions` (
  `pId` int(14) NOT NULL default '0',
  `actFromId` int(14) NOT NULL default '0',
  `actToId` int(14) NOT NULL default '0',
  PRIMARY KEY  (`actFromId`,`actToId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_transitions`
--

LOCK TABLES `galaxia_transitions` WRITE;
/*!40000 ALTER TABLE `galaxia_transitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_user_roles`
--

DROP TABLE IF EXISTS `galaxia_user_roles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_user_roles` (
  `pId` int(14) NOT NULL default '0',
  `roleId` int(14) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`roleId`,`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_user_roles`
--

LOCK TABLES `galaxia_user_roles` WRITE;
/*!40000 ALTER TABLE `galaxia_user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxia_workitems`
--

DROP TABLE IF EXISTS `galaxia_workitems`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `galaxia_workitems` (
  `itemId` int(14) NOT NULL auto_increment,
  `instanceId` int(14) NOT NULL default '0',
  `orderId` int(14) NOT NULL default '0',
  `activityId` int(14) NOT NULL default '0',
  `properties` longblob,
  `started` int(14) default NULL,
  `ended` int(14) default NULL,
  `user` varchar(40) default NULL,
  PRIMARY KEY  (`itemId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `galaxia_workitems`
--

LOCK TABLES `galaxia_workitems` WRITE;
/*!40000 ALTER TABLE `galaxia_workitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxia_workitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messu_archive`
--

DROP TABLE IF EXISTS `messu_archive`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `messu_archive` (
  `msgId` int(14) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  `user_from` varchar(40) NOT NULL default '',
  `user_to` text,
  `user_cc` text,
  `user_bcc` text,
  `subject` varchar(255) default NULL,
  `body` text,
  `hash` varchar(32) default NULL,
  `replyto_hash` varchar(32) default NULL,
  `date` int(14) default NULL,
  `isRead` char(1) default NULL,
  `isReplied` char(1) default NULL,
  `isFlagged` char(1) default NULL,
  `priority` int(2) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `messu_archive`
--

LOCK TABLES `messu_archive` WRITE;
/*!40000 ALTER TABLE `messu_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `messu_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messu_messages`
--

DROP TABLE IF EXISTS `messu_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `messu_messages` (
  `msgId` int(14) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  `user_from` varchar(200) NOT NULL default '',
  `user_to` text,
  `user_cc` text,
  `user_bcc` text,
  `subject` varchar(255) default NULL,
  `body` text,
  `hash` varchar(32) default NULL,
  `replyto_hash` varchar(32) default NULL,
  `date` int(14) default NULL,
  `isRead` char(1) default NULL,
  `isReplied` char(1) default NULL,
  `isFlagged` char(1) default NULL,
  `priority` int(2) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `messu_messages`
--

LOCK TABLES `messu_messages` WRITE;
/*!40000 ALTER TABLE `messu_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messu_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messu_sent`
--

DROP TABLE IF EXISTS `messu_sent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `messu_sent` (
  `msgId` int(14) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  `user_from` varchar(40) NOT NULL default '',
  `user_to` text,
  `user_cc` text,
  `user_bcc` text,
  `subject` varchar(255) default NULL,
  `body` text,
  `hash` varchar(32) default NULL,
  `replyto_hash` varchar(32) default NULL,
  `date` int(14) default NULL,
  `isRead` char(1) default NULL,
  `isReplied` char(1) default NULL,
  `isFlagged` char(1) default NULL,
  `priority` int(2) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `messu_sent`
--

LOCK TABLES `messu_sent` WRITE;
/*!40000 ALTER TABLE `messu_sent` DISABLE KEYS */;
/*!40000 ALTER TABLE `messu_sent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sessions` (
  `sesskey` char(32) NOT NULL,
  `expiry` int(11) unsigned NOT NULL,
  `expireref` varchar(64) default NULL,
  `data` text NOT NULL,
  PRIMARY KEY  (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_actionlog`
--

DROP TABLE IF EXISTS `tiki_actionlog`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_actionlog` (
  `action` varchar(255) NOT NULL default '',
  `lastModif` int(14) default NULL,
  `pageName` varchar(200) default NULL,
  `user` varchar(40) default NULL,
  `ip` varchar(15) default NULL,
  `comment` varchar(200) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_actionlog`
--

LOCK TABLES `tiki_actionlog` WRITE;
/*!40000 ALTER TABLE `tiki_actionlog` DISABLE KEYS */;
INSERT INTO `tiki_actionlog` VALUES ('Created',1271407536,'HomePage','admin','0.0.0.0','Tiki initialization');
/*!40000 ALTER TABLE `tiki_actionlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_article_types`
--

DROP TABLE IF EXISTS `tiki_article_types`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_article_types` (
  `type` varchar(50) NOT NULL,
  `use_ratings` varchar(1) default NULL,
  `show_pre_publ` varchar(1) default NULL,
  `show_post_expire` varchar(1) default 'y',
  `heading_only` varchar(1) default NULL,
  `allow_comments` varchar(1) default 'y',
  `show_image` varchar(1) default 'y',
  `show_avatar` varchar(1) default NULL,
  `show_author` varchar(1) default 'y',
  `show_pubdate` varchar(1) default 'y',
  `show_expdate` varchar(1) default NULL,
  `show_reads` varchar(1) default 'y',
  `show_size` varchar(1) default 'y',
  `show_topline` varchar(1) default 'n',
  `show_subtitle` varchar(1) default 'n',
  `show_linkto` varchar(1) default 'n',
  `show_image_caption` varchar(1) default 'n',
  `show_lang` varchar(1) default 'n',
  `creator_edit` varchar(1) default NULL,
  `comment_can_rate_article` char(1) default NULL,
  PRIMARY KEY  (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_article_types`
--

LOCK TABLES `tiki_article_types` WRITE;
/*!40000 ALTER TABLE `tiki_article_types` DISABLE KEYS */;
INSERT INTO `tiki_article_types` VALUES ('Article',NULL,NULL,'y',NULL,'y','y',NULL,'y','y',NULL,'y','y','n','n','n','n','n',NULL,NULL),('Review','y',NULL,'y',NULL,'y','y',NULL,'y','y',NULL,'y','y','n','n','n','n','n',NULL,NULL),('Event',NULL,NULL,'n',NULL,'y','y',NULL,'y','y',NULL,'y','y','n','n','n','n','n',NULL,NULL),('Classified',NULL,NULL,'n','y','n','y',NULL,'y','y',NULL,'y','y','n','n','n','n','n',NULL,NULL);
/*!40000 ALTER TABLE `tiki_article_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_articles`
--

DROP TABLE IF EXISTS `tiki_articles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_articles` (
  `articleId` int(8) NOT NULL auto_increment,
  `topline` varchar(255) default NULL,
  `title` varchar(80) default NULL,
  `subtitle` varchar(255) default NULL,
  `linkto` varchar(255) default NULL,
  `lang` varchar(16) default NULL,
  `state` char(1) default 's',
  `authorName` varchar(60) default NULL,
  `topicId` int(14) default NULL,
  `topicName` varchar(40) default NULL,
  `size` int(12) default NULL,
  `useImage` char(1) default NULL,
  `image_name` varchar(80) default NULL,
  `image_caption` text,
  `image_type` varchar(80) default NULL,
  `image_size` int(14) default NULL,
  `image_x` int(4) default NULL,
  `image_y` int(4) default NULL,
  `image_data` longblob,
  `publishDate` int(14) default NULL,
  `expireDate` int(14) default NULL,
  `created` int(14) default NULL,
  `heading` text,
  `body` text,
  `hash` varchar(32) default NULL,
  `author` varchar(200) default NULL,
  `nbreads` int(14) default NULL,
  `votes` int(8) default NULL,
  `points` int(14) default NULL,
  `type` varchar(50) default NULL,
  `rating` decimal(3,2) default NULL,
  `isfloat` char(1) default NULL,
  PRIMARY KEY  (`articleId`),
  KEY `title` (`title`),
  KEY `heading` (`heading`(255)),
  KEY `body` (`body`(255)),
  KEY `author` (`author`(32)),
  KEY `nbreads` (`nbreads`),
  FULLTEXT KEY `ft` (`title`,`heading`,`body`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_articles`
--

LOCK TABLES `tiki_articles` WRITE;
/*!40000 ALTER TABLE `tiki_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_banners`
--

DROP TABLE IF EXISTS `tiki_banners`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_banners` (
  `bannerId` int(12) NOT NULL auto_increment,
  `client` varchar(200) NOT NULL default '',
  `url` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `alt` varchar(250) default NULL,
  `which` varchar(50) default NULL,
  `imageData` longblob,
  `imageType` varchar(200) default NULL,
  `imageName` varchar(100) default NULL,
  `HTMLData` text,
  `fixedURLData` varchar(255) default NULL,
  `textData` text,
  `fromDate` int(14) default NULL,
  `toDate` int(14) default NULL,
  `useDates` char(1) default NULL,
  `mon` char(1) default NULL,
  `tue` char(1) default NULL,
  `wed` char(1) default NULL,
  `thu` char(1) default NULL,
  `fri` char(1) default NULL,
  `sat` char(1) default NULL,
  `sun` char(1) default NULL,
  `hourFrom` varchar(4) default NULL,
  `hourTo` varchar(4) default NULL,
  `created` int(14) default NULL,
  `maxImpressions` int(8) default NULL,
  `impressions` int(8) default NULL,
  `clicks` int(8) default NULL,
  `zone` varchar(40) default NULL,
  PRIMARY KEY  (`bannerId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_banners`
--

LOCK TABLES `tiki_banners` WRITE;
/*!40000 ALTER TABLE `tiki_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_banning`
--

DROP TABLE IF EXISTS `tiki_banning`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_banning` (
  `banId` int(12) NOT NULL auto_increment,
  `mode` enum('user','ip') default NULL,
  `title` varchar(200) default NULL,
  `ip1` char(3) default NULL,
  `ip2` char(3) default NULL,
  `ip3` char(3) default NULL,
  `ip4` char(3) default NULL,
  `user` varchar(40) default NULL,
  `date_from` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `date_to` timestamp NOT NULL default '0000-00-00 00:00:00',
  `use_dates` char(1) default NULL,
  `created` int(14) default NULL,
  `message` text,
  PRIMARY KEY  (`banId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_banning`
--

LOCK TABLES `tiki_banning` WRITE;
/*!40000 ALTER TABLE `tiki_banning` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_banning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_banning_sections`
--

DROP TABLE IF EXISTS `tiki_banning_sections`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_banning_sections` (
  `banId` int(12) NOT NULL default '0',
  `section` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`banId`,`section`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_banning_sections`
--

LOCK TABLES `tiki_banning_sections` WRITE;
/*!40000 ALTER TABLE `tiki_banning_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_banning_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_blog_activity`
--

DROP TABLE IF EXISTS `tiki_blog_activity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_blog_activity` (
  `blogId` int(8) NOT NULL default '0',
  `day` int(14) NOT NULL default '0',
  `posts` int(8) default NULL,
  PRIMARY KEY  (`blogId`,`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_blog_activity`
--

LOCK TABLES `tiki_blog_activity` WRITE;
/*!40000 ALTER TABLE `tiki_blog_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_blog_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_blog_posts`
--

DROP TABLE IF EXISTS `tiki_blog_posts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_blog_posts` (
  `postId` int(8) NOT NULL auto_increment,
  `blogId` int(8) NOT NULL default '0',
  `data` text,
  `data_size` int(11) unsigned NOT NULL default '0',
  `created` int(14) default NULL,
  `user` varchar(40) default NULL,
  `trackbacks_to` text,
  `trackbacks_from` text,
  `title` varchar(80) default NULL,
  `priv` varchar(1) default NULL,
  PRIMARY KEY  (`postId`),
  KEY `data` (`data`(255)),
  KEY `blogId` (`blogId`),
  KEY `created` (`created`),
  FULLTEXT KEY `ft` (`data`,`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_blog_posts`
--

LOCK TABLES `tiki_blog_posts` WRITE;
/*!40000 ALTER TABLE `tiki_blog_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_blog_posts_images`
--

DROP TABLE IF EXISTS `tiki_blog_posts_images`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_blog_posts_images` (
  `imgId` int(14) NOT NULL auto_increment,
  `postId` int(14) NOT NULL default '0',
  `filename` varchar(80) default NULL,
  `filetype` varchar(80) default NULL,
  `filesize` int(14) default NULL,
  `data` longblob,
  PRIMARY KEY  (`imgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_blog_posts_images`
--

LOCK TABLES `tiki_blog_posts_images` WRITE;
/*!40000 ALTER TABLE `tiki_blog_posts_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_blog_posts_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_blogs`
--

DROP TABLE IF EXISTS `tiki_blogs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_blogs` (
  `blogId` int(8) NOT NULL auto_increment,
  `created` int(14) default NULL,
  `lastModif` int(14) default NULL,
  `title` varchar(200) default NULL,
  `description` text,
  `user` varchar(40) default NULL,
  `public` char(1) default NULL,
  `posts` int(8) default NULL,
  `maxPosts` int(8) default NULL,
  `hits` int(8) default NULL,
  `activity` decimal(4,2) default NULL,
  `heading` text,
  `use_find` char(1) default NULL,
  `use_title` char(1) default NULL,
  `add_date` char(1) default NULL,
  `add_poster` char(1) default NULL,
  `allow_comments` char(1) default NULL,
  `show_avatar` char(1) default NULL,
  PRIMARY KEY  (`blogId`),
  KEY `title` (`title`),
  KEY `description` (`description`(255)),
  KEY `hits` (`hits`),
  FULLTEXT KEY `ft` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_blogs`
--

LOCK TABLES `tiki_blogs` WRITE;
/*!40000 ALTER TABLE `tiki_blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_calendar_categories`
--

DROP TABLE IF EXISTS `tiki_calendar_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_calendar_categories` (
  `calcatId` int(11) NOT NULL auto_increment,
  `calendarId` int(14) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`calcatId`),
  UNIQUE KEY `catname` (`calendarId`,`name`(16))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_calendar_categories`
--

LOCK TABLES `tiki_calendar_categories` WRITE;
/*!40000 ALTER TABLE `tiki_calendar_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_calendar_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_calendar_items`
--

DROP TABLE IF EXISTS `tiki_calendar_items`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_calendar_items` (
  `calitemId` int(14) NOT NULL auto_increment,
  `calendarId` int(14) NOT NULL default '0',
  `start` int(14) NOT NULL default '0',
  `end` int(14) NOT NULL default '0',
  `locationId` int(14) default NULL,
  `categoryId` int(14) default NULL,
  `nlId` int(12) NOT NULL default '0',
  `priority` enum('1','2','3','4','5','6','7','8','9') NOT NULL default '1',
  `status` enum('0','1','2') NOT NULL default '0',
  `url` varchar(255) default NULL,
  `lang` char(16) NOT NULL default 'en',
  `name` varchar(255) NOT NULL default '',
  `description` blob,
  `user` varchar(40) default NULL,
  `created` int(14) NOT NULL default '0',
  `lastmodif` int(14) NOT NULL default '0',
  PRIMARY KEY  (`calitemId`),
  KEY `calendarId` (`calendarId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_calendar_items`
--

LOCK TABLES `tiki_calendar_items` WRITE;
/*!40000 ALTER TABLE `tiki_calendar_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_calendar_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_calendar_locations`
--

DROP TABLE IF EXISTS `tiki_calendar_locations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_calendar_locations` (
  `callocId` int(14) NOT NULL auto_increment,
  `calendarId` int(14) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` blob,
  PRIMARY KEY  (`callocId`),
  UNIQUE KEY `locname` (`calendarId`,`name`(16))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_calendar_locations`
--

LOCK TABLES `tiki_calendar_locations` WRITE;
/*!40000 ALTER TABLE `tiki_calendar_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_calendar_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_calendar_roles`
--

DROP TABLE IF EXISTS `tiki_calendar_roles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_calendar_roles` (
  `calitemId` int(14) NOT NULL default '0',
  `username` varchar(40) NOT NULL default '',
  `role` enum('0','1','2','3','6') NOT NULL default '0',
  PRIMARY KEY  (`calitemId`,`username`(16),`role`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_calendar_roles`
--

LOCK TABLES `tiki_calendar_roles` WRITE;
/*!40000 ALTER TABLE `tiki_calendar_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_calendar_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_calendars`
--

DROP TABLE IF EXISTS `tiki_calendars`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_calendars` (
  `calendarId` int(14) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `description` varchar(255) default NULL,
  `user` varchar(40) NOT NULL default '',
  `customlocations` enum('n','y') NOT NULL default 'n',
  `customcategories` enum('n','y') NOT NULL default 'n',
  `customlanguages` enum('n','y') NOT NULL default 'n',
  `custompriorities` enum('n','y') NOT NULL default 'n',
  `customparticipants` enum('n','y') NOT NULL default 'n',
  `customsubscription` enum('n','y') NOT NULL default 'n',
  `created` int(14) NOT NULL default '0',
  `lastmodif` int(14) NOT NULL default '0',
  `personal` enum('n','y') NOT NULL default 'n',
  PRIMARY KEY  (`calendarId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_calendars`
--

LOCK TABLES `tiki_calendars` WRITE;
/*!40000 ALTER TABLE `tiki_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_categories`
--

DROP TABLE IF EXISTS `tiki_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_categories` (
  `categId` int(12) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `description` varchar(250) default NULL,
  `parentId` int(12) default NULL,
  `hits` int(8) default NULL,
  PRIMARY KEY  (`categId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_categories`
--

LOCK TABLES `tiki_categories` WRITE;
/*!40000 ALTER TABLE `tiki_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_categorized_objects`
--

DROP TABLE IF EXISTS `tiki_categorized_objects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_categorized_objects` (
  `catObjectId` int(12) NOT NULL auto_increment,
  `type` varchar(50) default NULL,
  `objId` varchar(255) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `name` varchar(200) default NULL,
  `href` varchar(200) default NULL,
  `hits` int(8) default NULL,
  PRIMARY KEY  (`catObjectId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_categorized_objects`
--

LOCK TABLES `tiki_categorized_objects` WRITE;
/*!40000 ALTER TABLE `tiki_categorized_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_categorized_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_category_objects`
--

DROP TABLE IF EXISTS `tiki_category_objects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_category_objects` (
  `catObjectId` int(12) NOT NULL default '0',
  `categId` int(12) NOT NULL default '0',
  PRIMARY KEY  (`catObjectId`,`categId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_category_objects`
--

LOCK TABLES `tiki_category_objects` WRITE;
/*!40000 ALTER TABLE `tiki_category_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_category_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_category_sites`
--

DROP TABLE IF EXISTS `tiki_category_sites`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_category_sites` (
  `categId` int(10) NOT NULL default '0',
  `siteId` int(14) NOT NULL default '0',
  PRIMARY KEY  (`categId`,`siteId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_category_sites`
--

LOCK TABLES `tiki_category_sites` WRITE;
/*!40000 ALTER TABLE `tiki_category_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_category_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_chart_items`
--

DROP TABLE IF EXISTS `tiki_chart_items`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_chart_items` (
  `itemId` int(14) NOT NULL auto_increment,
  `title` varchar(250) default NULL,
  `description` text,
  `chartId` int(14) NOT NULL default '0',
  `created` int(14) default NULL,
  `URL` varchar(250) default NULL,
  `votes` int(14) default NULL,
  `points` int(14) default NULL,
  `average` decimal(4,2) default NULL,
  PRIMARY KEY  (`itemId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_chart_items`
--

LOCK TABLES `tiki_chart_items` WRITE;
/*!40000 ALTER TABLE `tiki_chart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_chart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_charts`
--

DROP TABLE IF EXISTS `tiki_charts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_charts` (
  `chartId` int(14) NOT NULL auto_increment,
  `title` varchar(250) default NULL,
  `description` text,
  `hits` int(14) default NULL,
  `singleItemVotes` char(1) default NULL,
  `singleChartVotes` char(1) default NULL,
  `suggestions` char(1) default NULL,
  `autoValidate` char(1) default NULL,
  `topN` int(6) default NULL,
  `maxVoteValue` int(4) default NULL,
  `frequency` int(14) default NULL,
  `showAverage` char(1) default NULL,
  `isActive` char(1) default NULL,
  `showVotes` char(1) default NULL,
  `useCookies` char(1) default NULL,
  `lastChart` int(14) default NULL,
  `voteAgainAfter` int(14) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`chartId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_charts`
--

LOCK TABLES `tiki_charts` WRITE;
/*!40000 ALTER TABLE `tiki_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_charts_rankings`
--

DROP TABLE IF EXISTS `tiki_charts_rankings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_charts_rankings` (
  `chartId` int(14) NOT NULL default '0',
  `itemId` int(14) NOT NULL default '0',
  `position` int(14) NOT NULL default '0',
  `timestamp` int(14) NOT NULL default '0',
  `lastPosition` int(14) NOT NULL default '0',
  `period` int(14) NOT NULL default '0',
  `rvotes` int(14) NOT NULL default '0',
  `raverage` decimal(4,2) NOT NULL default '0.00',
  PRIMARY KEY  (`chartId`,`itemId`,`period`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_charts_rankings`
--

LOCK TABLES `tiki_charts_rankings` WRITE;
/*!40000 ALTER TABLE `tiki_charts_rankings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_charts_rankings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_charts_votes`
--

DROP TABLE IF EXISTS `tiki_charts_votes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_charts_votes` (
  `user` varchar(40) NOT NULL default '',
  `itemId` int(14) NOT NULL default '0',
  `timestamp` int(14) default NULL,
  `chartId` int(14) default NULL,
  PRIMARY KEY  (`user`,`itemId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_charts_votes`
--

LOCK TABLES `tiki_charts_votes` WRITE;
/*!40000 ALTER TABLE `tiki_charts_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_charts_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_chat_channels`
--

DROP TABLE IF EXISTS `tiki_chat_channels`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_chat_channels` (
  `channelId` int(8) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `description` varchar(250) default NULL,
  `max_users` int(8) default NULL,
  `mode` char(1) default NULL,
  `moderator` varchar(200) default NULL,
  `active` char(1) default NULL,
  `refresh` int(6) default NULL,
  PRIMARY KEY  (`channelId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_chat_channels`
--

LOCK TABLES `tiki_chat_channels` WRITE;
/*!40000 ALTER TABLE `tiki_chat_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_chat_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_chat_messages`
--

DROP TABLE IF EXISTS `tiki_chat_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_chat_messages` (
  `messageId` int(8) NOT NULL auto_increment,
  `channelId` int(8) NOT NULL default '0',
  `data` varchar(255) default NULL,
  `poster` varchar(200) NOT NULL default 'anonymous',
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`messageId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_chat_messages`
--

LOCK TABLES `tiki_chat_messages` WRITE;
/*!40000 ALTER TABLE `tiki_chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_chat_users`
--

DROP TABLE IF EXISTS `tiki_chat_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_chat_users` (
  `nickname` varchar(200) NOT NULL default '',
  `channelId` int(8) NOT NULL default '0',
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`nickname`,`channelId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_chat_users`
--

LOCK TABLES `tiki_chat_users` WRITE;
/*!40000 ALTER TABLE `tiki_chat_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_chat_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_comments`
--

DROP TABLE IF EXISTS `tiki_comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_comments` (
  `threadId` int(14) NOT NULL auto_increment,
  `object` varchar(255) NOT NULL default '',
  `objectType` varchar(32) NOT NULL default '',
  `parentId` int(14) default NULL,
  `userName` varchar(40) default NULL,
  `commentDate` int(14) default NULL,
  `hits` int(8) default NULL,
  `type` char(1) default NULL,
  `points` decimal(8,2) default NULL,
  `votes` int(8) default NULL,
  `average` decimal(8,4) default NULL,
  `title` varchar(100) default NULL,
  `data` text,
  `hash` varchar(32) default NULL,
  `user_ip` varchar(15) default NULL,
  `summary` varchar(240) default NULL,
  `smiley` varchar(80) default NULL,
  `message_id` varchar(250) default NULL,
  `in_reply_to` varchar(250) default NULL,
  `comment_rating` tinyint(2) default NULL,
  PRIMARY KEY  (`threadId`),
  KEY `title` (`title`),
  KEY `data` (`data`(255)),
  KEY `object` (`object`),
  KEY `hits` (`hits`),
  KEY `tc_pi` (`parentId`),
  FULLTEXT KEY `ft` (`title`,`data`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_comments`
--

LOCK TABLES `tiki_comments` WRITE;
/*!40000 ALTER TABLE `tiki_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_content`
--

DROP TABLE IF EXISTS `tiki_content`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_content` (
  `contentId` int(8) NOT NULL auto_increment,
  `description` text,
  PRIMARY KEY  (`contentId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_content`
--

LOCK TABLES `tiki_content` WRITE;
/*!40000 ALTER TABLE `tiki_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_content_templates`
--

DROP TABLE IF EXISTS `tiki_content_templates`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_content_templates` (
  `templateId` int(10) NOT NULL auto_increment,
  `content` longblob,
  `name` varchar(200) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`templateId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_content_templates`
--

LOCK TABLES `tiki_content_templates` WRITE;
/*!40000 ALTER TABLE `tiki_content_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_content_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_content_templates_sections`
--

DROP TABLE IF EXISTS `tiki_content_templates_sections`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_content_templates_sections` (
  `templateId` int(10) NOT NULL default '0',
  `section` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`templateId`,`section`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_content_templates_sections`
--

LOCK TABLES `tiki_content_templates_sections` WRITE;
/*!40000 ALTER TABLE `tiki_content_templates_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_content_templates_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_cookies`
--

DROP TABLE IF EXISTS `tiki_cookies`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_cookies` (
  `cookieId` int(10) NOT NULL auto_increment,
  `cookie` text,
  PRIMARY KEY  (`cookieId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_cookies`
--

LOCK TABLES `tiki_cookies` WRITE;
/*!40000 ALTER TABLE `tiki_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_copyrights`
--

DROP TABLE IF EXISTS `tiki_copyrights`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_copyrights` (
  `copyrightId` int(12) NOT NULL auto_increment,
  `page` varchar(200) default NULL,
  `title` varchar(200) default NULL,
  `year` int(11) default NULL,
  `authors` varchar(200) default NULL,
  `copyright_order` int(11) default NULL,
  `userName` varchar(40) default NULL,
  PRIMARY KEY  (`copyrightId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_copyrights`
--

LOCK TABLES `tiki_copyrights` WRITE;
/*!40000 ALTER TABLE `tiki_copyrights` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_copyrights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_directory_categories`
--

DROP TABLE IF EXISTS `tiki_directory_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_directory_categories` (
  `categId` int(10) NOT NULL auto_increment,
  `parent` int(10) default NULL,
  `name` varchar(240) default NULL,
  `description` text,
  `childrenType` char(1) default NULL,
  `sites` int(10) default NULL,
  `viewableChildren` int(4) default NULL,
  `allowSites` char(1) default NULL,
  `showCount` char(1) default NULL,
  `editorGroup` varchar(200) default NULL,
  `hits` int(12) default NULL,
  PRIMARY KEY  (`categId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_directory_categories`
--

LOCK TABLES `tiki_directory_categories` WRITE;
/*!40000 ALTER TABLE `tiki_directory_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_directory_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_directory_search`
--

DROP TABLE IF EXISTS `tiki_directory_search`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_directory_search` (
  `term` varchar(250) NOT NULL default '',
  `hits` int(14) default NULL,
  PRIMARY KEY  (`term`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_directory_search`
--

LOCK TABLES `tiki_directory_search` WRITE;
/*!40000 ALTER TABLE `tiki_directory_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_directory_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_directory_sites`
--

DROP TABLE IF EXISTS `tiki_directory_sites`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_directory_sites` (
  `siteId` int(14) NOT NULL auto_increment,
  `name` varchar(240) default NULL,
  `description` text,
  `url` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  `hits` int(12) default NULL,
  `isValid` char(1) default NULL,
  `created` int(14) default NULL,
  `lastModif` int(14) default NULL,
  `cache` longblob,
  `cache_timestamp` int(14) default NULL,
  PRIMARY KEY  (`siteId`),
  FULLTEXT KEY `ft` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_directory_sites`
--

LOCK TABLES `tiki_directory_sites` WRITE;
/*!40000 ALTER TABLE `tiki_directory_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_directory_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_download`
--

DROP TABLE IF EXISTS `tiki_download`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_download` (
  `id` int(11) NOT NULL auto_increment,
  `object` varchar(255) NOT NULL default '',
  `userId` int(8) NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `date` int(14) NOT NULL default '0',
  `IP` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `object` (`object`,`userId`,`type`),
  KEY `userId` (`userId`),
  KEY `type` (`type`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_download`
--

LOCK TABLES `tiki_download` WRITE;
/*!40000 ALTER TABLE `tiki_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_drawings`
--

DROP TABLE IF EXISTS `tiki_drawings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_drawings` (
  `drawId` int(12) NOT NULL auto_increment,
  `version` int(8) default NULL,
  `name` varchar(250) default NULL,
  `filename_draw` varchar(250) default NULL,
  `filename_pad` varchar(250) default NULL,
  `timestamp` int(14) default NULL,
  `user` varchar(40) default NULL,
  PRIMARY KEY  (`drawId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_drawings`
--

LOCK TABLES `tiki_drawings` WRITE;
/*!40000 ALTER TABLE `tiki_drawings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_drawings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_dsn`
--

DROP TABLE IF EXISTS `tiki_dsn`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_dsn` (
  `dsnId` int(12) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `dsn` varchar(255) default NULL,
  PRIMARY KEY  (`dsnId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_dsn`
--

LOCK TABLES `tiki_dsn` WRITE;
/*!40000 ALTER TABLE `tiki_dsn` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_dsn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_dynamic_variables`
--

DROP TABLE IF EXISTS `tiki_dynamic_variables`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_dynamic_variables` (
  `name` varchar(40) NOT NULL,
  `data` text,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_dynamic_variables`
--

LOCK TABLES `tiki_dynamic_variables` WRITE;
/*!40000 ALTER TABLE `tiki_dynamic_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_dynamic_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_eph`
--

DROP TABLE IF EXISTS `tiki_eph`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_eph` (
  `ephId` int(12) NOT NULL auto_increment,
  `title` varchar(250) default NULL,
  `isFile` char(1) default NULL,
  `filename` varchar(250) default NULL,
  `filetype` varchar(250) default NULL,
  `filesize` varchar(250) default NULL,
  `data` longblob,
  `textdata` longblob,
  `publish` int(14) default NULL,
  `hits` int(10) default NULL,
  PRIMARY KEY  (`ephId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_eph`
--

LOCK TABLES `tiki_eph` WRITE;
/*!40000 ALTER TABLE `tiki_eph` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_eph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_extwiki`
--

DROP TABLE IF EXISTS `tiki_extwiki`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_extwiki` (
  `extwikiId` int(12) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `extwiki` varchar(255) default NULL,
  PRIMARY KEY  (`extwikiId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_extwiki`
--

LOCK TABLES `tiki_extwiki` WRITE;
/*!40000 ALTER TABLE `tiki_extwiki` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_extwiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_faq_questions`
--

DROP TABLE IF EXISTS `tiki_faq_questions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_faq_questions` (
  `questionId` int(10) NOT NULL auto_increment,
  `faqId` int(10) default NULL,
  `position` int(4) default NULL,
  `question` text,
  `answer` text,
  PRIMARY KEY  (`questionId`),
  KEY `faqId` (`faqId`),
  KEY `question` (`question`(255)),
  KEY `answer` (`answer`(255)),
  FULLTEXT KEY `ft` (`question`,`answer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_faq_questions`
--

LOCK TABLES `tiki_faq_questions` WRITE;
/*!40000 ALTER TABLE `tiki_faq_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_faq_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_faqs`
--

DROP TABLE IF EXISTS `tiki_faqs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_faqs` (
  `faqId` int(10) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `questions` int(5) default NULL,
  `hits` int(8) default NULL,
  `canSuggest` char(1) default NULL,
  PRIMARY KEY  (`faqId`),
  KEY `title` (`title`),
  KEY `description` (`description`(255)),
  KEY `hits` (`hits`),
  FULLTEXT KEY `ft` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_faqs`
--

LOCK TABLES `tiki_faqs` WRITE;
/*!40000 ALTER TABLE `tiki_faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_featured_links`
--

DROP TABLE IF EXISTS `tiki_featured_links`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_featured_links` (
  `url` varchar(200) NOT NULL default '',
  `title` varchar(200) default NULL,
  `description` text,
  `hits` int(8) default NULL,
  `position` int(6) default NULL,
  `type` char(1) default NULL,
  PRIMARY KEY  (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_featured_links`
--

LOCK TABLES `tiki_featured_links` WRITE;
/*!40000 ALTER TABLE `tiki_featured_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_featured_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_file_galleries`
--

DROP TABLE IF EXISTS `tiki_file_galleries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_file_galleries` (
  `galleryId` int(14) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `description` text,
  `created` int(14) default NULL,
  `visible` char(1) default NULL,
  `lastModif` int(14) default NULL,
  `user` varchar(40) default NULL,
  `hits` int(14) default NULL,
  `votes` int(8) default NULL,
  `points` decimal(8,2) default NULL,
  `maxRows` int(10) default NULL,
  `public` char(1) default NULL,
  `show_id` char(1) default NULL,
  `show_icon` char(1) default NULL,
  `show_name` char(1) default NULL,
  `show_size` char(1) default NULL,
  `show_description` char(1) default NULL,
  `max_desc` int(8) default NULL,
  `show_created` char(1) default NULL,
  `show_dl` char(1) default NULL,
  PRIMARY KEY  (`galleryId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_file_galleries`
--

LOCK TABLES `tiki_file_galleries` WRITE;
/*!40000 ALTER TABLE `tiki_file_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_file_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_file_handlers`
--

DROP TABLE IF EXISTS `tiki_file_handlers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_file_handlers` (
  `mime_type` varchar(64) default NULL,
  `cmd` varchar(238) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_file_handlers`
--

LOCK TABLES `tiki_file_handlers` WRITE;
/*!40000 ALTER TABLE `tiki_file_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_file_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_files`
--

DROP TABLE IF EXISTS `tiki_files`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_files` (
  `fileId` int(14) NOT NULL auto_increment,
  `galleryId` int(14) NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `description` text,
  `created` int(14) default NULL,
  `filename` varchar(80) default NULL,
  `filesize` int(14) default NULL,
  `filetype` varchar(250) default NULL,
  `data` longblob,
  `user` varchar(40) default NULL,
  `downloads` int(14) default NULL,
  `votes` int(8) default NULL,
  `points` decimal(8,2) default NULL,
  `path` varchar(255) default NULL,
  `reference_url` varchar(250) default NULL,
  `is_reference` char(1) default NULL,
  `hash` varchar(32) default NULL,
  `search_data` longtext,
  `lastModif` int(14) default NULL,
  `lastModifUser` varchar(200) default NULL,
  PRIMARY KEY  (`fileId`),
  KEY `name` (`name`),
  KEY `description` (`description`(255)),
  KEY `downloads` (`downloads`),
  FULLTEXT KEY `ft` (`name`,`description`,`search_data`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_files`
--

LOCK TABLES `tiki_files` WRITE;
/*!40000 ALTER TABLE `tiki_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_forum_attachments`
--

DROP TABLE IF EXISTS `tiki_forum_attachments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_forum_attachments` (
  `attId` int(14) NOT NULL auto_increment,
  `threadId` int(14) NOT NULL default '0',
  `qId` int(14) NOT NULL default '0',
  `forumId` int(14) default NULL,
  `filename` varchar(250) default NULL,
  `filetype` varchar(250) default NULL,
  `filesize` int(12) default NULL,
  `data` longblob,
  `dir` varchar(200) default NULL,
  `created` int(14) default NULL,
  `path` varchar(250) default NULL,
  PRIMARY KEY  (`attId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_forum_attachments`
--

LOCK TABLES `tiki_forum_attachments` WRITE;
/*!40000 ALTER TABLE `tiki_forum_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_forum_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_forum_reads`
--

DROP TABLE IF EXISTS `tiki_forum_reads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_forum_reads` (
  `user` varchar(40) NOT NULL default '',
  `threadId` int(14) NOT NULL default '0',
  `forumId` int(14) default NULL,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`user`,`threadId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_forum_reads`
--

LOCK TABLES `tiki_forum_reads` WRITE;
/*!40000 ALTER TABLE `tiki_forum_reads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_forum_reads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_forums`
--

DROP TABLE IF EXISTS `tiki_forums`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_forums` (
  `forumId` int(8) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `lastPost` int(14) default NULL,
  `threads` int(8) default NULL,
  `comments` int(8) default NULL,
  `controlFlood` char(1) default NULL,
  `floodInterval` int(8) default NULL,
  `moderator` varchar(200) default NULL,
  `hits` int(8) default NULL,
  `mail` varchar(200) default NULL,
  `useMail` char(1) default NULL,
  `section` varchar(200) default NULL,
  `usePruneUnreplied` char(1) default NULL,
  `pruneUnrepliedAge` int(8) default NULL,
  `usePruneOld` char(1) default NULL,
  `pruneMaxAge` int(8) default NULL,
  `topicsPerPage` int(6) default NULL,
  `topicOrdering` varchar(100) default NULL,
  `threadOrdering` varchar(100) default NULL,
  `att` varchar(80) default NULL,
  `att_store` varchar(4) default NULL,
  `att_store_dir` varchar(250) default NULL,
  `att_max_size` int(12) default NULL,
  `ui_level` char(1) default NULL,
  `forum_password` varchar(32) default NULL,
  `forum_use_password` char(1) default NULL,
  `moderator_group` varchar(200) default NULL,
  `approval_type` varchar(20) default NULL,
  `outbound_address` varchar(250) default NULL,
  `outbound_mails_for_inbound_mails` char(1) default NULL,
  `outbound_mails_reply_link` char(1) default NULL,
  `outbound_from` varchar(250) default NULL,
  `inbound_pop_server` varchar(250) default NULL,
  `inbound_pop_port` int(4) default NULL,
  `inbound_pop_user` varchar(200) default NULL,
  `inbound_pop_password` varchar(80) default NULL,
  `topic_smileys` char(1) default NULL,
  `ui_avatar` char(1) default NULL,
  `ui_flag` char(1) default NULL,
  `ui_posts` char(1) default NULL,
  `ui_email` char(1) default NULL,
  `ui_online` char(1) default NULL,
  `topic_summary` char(1) default NULL,
  `show_description` char(1) default NULL,
  `topics_list_replies` char(1) default NULL,
  `topics_list_reads` char(1) default NULL,
  `topics_list_pts` char(1) default NULL,
  `topics_list_lastpost` char(1) default NULL,
  `topics_list_author` char(1) default NULL,
  `vote_threads` char(1) default NULL,
  `forum_last_n` int(2) default '0',
  PRIMARY KEY  (`forumId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_forums`
--

LOCK TABLES `tiki_forums` WRITE;
/*!40000 ALTER TABLE `tiki_forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_forums_queue`
--

DROP TABLE IF EXISTS `tiki_forums_queue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_forums_queue` (
  `qId` int(14) NOT NULL auto_increment,
  `object` varchar(32) default NULL,
  `parentId` int(14) default NULL,
  `forumId` int(14) default NULL,
  `timestamp` int(14) default NULL,
  `user` varchar(40) default NULL,
  `title` varchar(240) default NULL,
  `data` text,
  `type` varchar(60) default NULL,
  `hash` varchar(32) default NULL,
  `topic_smiley` varchar(80) default NULL,
  `topic_title` varchar(240) default NULL,
  `summary` varchar(240) default NULL,
  PRIMARY KEY  (`qId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_forums_queue`
--

LOCK TABLES `tiki_forums_queue` WRITE;
/*!40000 ALTER TABLE `tiki_forums_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_forums_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_forums_reported`
--

DROP TABLE IF EXISTS `tiki_forums_reported`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_forums_reported` (
  `threadId` int(12) NOT NULL default '0',
  `forumId` int(12) NOT NULL default '0',
  `parentId` int(12) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `timestamp` int(14) default NULL,
  `reason` varchar(250) default NULL,
  PRIMARY KEY  (`threadId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_forums_reported`
--

LOCK TABLES `tiki_forums_reported` WRITE;
/*!40000 ALTER TABLE `tiki_forums_reported` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_forums_reported` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_friends`
--

DROP TABLE IF EXISTS `tiki_friends`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_friends` (
  `user` char(40) NOT NULL default '',
  `friend` char(40) NOT NULL default '',
  PRIMARY KEY  (`user`,`friend`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_friends`
--

LOCK TABLES `tiki_friends` WRITE;
/*!40000 ALTER TABLE `tiki_friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_friendship_requests`
--

DROP TABLE IF EXISTS `tiki_friendship_requests`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_friendship_requests` (
  `userFrom` char(40) NOT NULL default '',
  `userTo` char(40) NOT NULL default '',
  `tstamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`userFrom`,`userTo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_friendship_requests`
--

LOCK TABLES `tiki_friendship_requests` WRITE;
/*!40000 ALTER TABLE `tiki_friendship_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_friendship_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_galleries`
--

DROP TABLE IF EXISTS `tiki_galleries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_galleries` (
  `galleryId` int(14) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `description` text,
  `created` int(14) default NULL,
  `lastModif` int(14) default NULL,
  `visible` char(1) default NULL,
  `geographic` char(1) default NULL,
  `theme` varchar(60) default NULL,
  `user` varchar(40) default NULL,
  `hits` int(14) default NULL,
  `maxRows` int(10) default NULL,
  `rowImages` int(10) default NULL,
  `thumbSizeX` int(10) default NULL,
  `thumbSizeY` int(10) default NULL,
  `public` char(1) default NULL,
  `sortorder` varchar(20) NOT NULL default 'created',
  `sortdirection` varchar(4) NOT NULL default 'desc',
  `galleryimage` varchar(20) NOT NULL default 'first',
  `parentgallery` int(14) NOT NULL default '-1',
  `showname` char(1) NOT NULL default 'y',
  `showimageid` char(1) NOT NULL default 'n',
  `showdescription` char(1) NOT NULL default 'n',
  `showcreated` char(1) NOT NULL default 'n',
  `showuser` char(1) NOT NULL default 'n',
  `showhits` char(1) NOT NULL default 'y',
  `showxysize` char(1) NOT NULL default 'y',
  `showfilesize` char(1) NOT NULL default 'n',
  `showfilename` char(1) NOT NULL default 'n',
  `defaultscale` varchar(10) NOT NULL default 'o',
  PRIMARY KEY  (`galleryId`),
  KEY `name` (`name`),
  KEY `description` (`description`(255)),
  KEY `hits` (`hits`),
  FULLTEXT KEY `ft` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_galleries`
--

LOCK TABLES `tiki_galleries` WRITE;
/*!40000 ALTER TABLE `tiki_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_galleries_scales`
--

DROP TABLE IF EXISTS `tiki_galleries_scales`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_galleries_scales` (
  `galleryId` int(14) NOT NULL default '0',
  `scale` int(11) NOT NULL default '0',
  PRIMARY KEY  (`galleryId`,`scale`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_galleries_scales`
--

LOCK TABLES `tiki_galleries_scales` WRITE;
/*!40000 ALTER TABLE `tiki_galleries_scales` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_galleries_scales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_games`
--

DROP TABLE IF EXISTS `tiki_games`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_games` (
  `gameName` varchar(200) NOT NULL default '',
  `hits` int(8) default NULL,
  `votes` int(8) default NULL,
  `points` int(8) default NULL,
  PRIMARY KEY  (`gameName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_games`
--

LOCK TABLES `tiki_games` WRITE;
/*!40000 ALTER TABLE `tiki_games` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_group_inclusion`
--

DROP TABLE IF EXISTS `tiki_group_inclusion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_group_inclusion` (
  `groupName` varchar(255) NOT NULL default '',
  `includeGroup` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`groupName`(30),`includeGroup`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_group_inclusion`
--

LOCK TABLES `tiki_group_inclusion` WRITE;
/*!40000 ALTER TABLE `tiki_group_inclusion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_group_inclusion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_history`
--

DROP TABLE IF EXISTS `tiki_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_history` (
  `pageName` varchar(160) NOT NULL default '',
  `version` int(8) NOT NULL default '0',
  `version_minor` int(8) NOT NULL default '0',
  `lastModif` int(14) default NULL,
  `description` varchar(200) default NULL,
  `user` varchar(40) default NULL,
  `ip` varchar(15) default NULL,
  `comment` varchar(200) default NULL,
  `data` longblob,
  PRIMARY KEY  (`pageName`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_history`
--

LOCK TABLES `tiki_history` WRITE;
/*!40000 ALTER TABLE `tiki_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_hotwords`
--

DROP TABLE IF EXISTS `tiki_hotwords`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_hotwords` (
  `word` varchar(40) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_hotwords`
--

LOCK TABLES `tiki_hotwords` WRITE;
/*!40000 ALTER TABLE `tiki_hotwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_hotwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_html_pages`
--

DROP TABLE IF EXISTS `tiki_html_pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_html_pages` (
  `pageName` varchar(200) NOT NULL default '',
  `content` longblob,
  `refresh` int(10) default NULL,
  `type` char(1) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`pageName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_html_pages`
--

LOCK TABLES `tiki_html_pages` WRITE;
/*!40000 ALTER TABLE `tiki_html_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_html_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_html_pages_dynamic_zones`
--

DROP TABLE IF EXISTS `tiki_html_pages_dynamic_zones`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_html_pages_dynamic_zones` (
  `pageName` varchar(40) NOT NULL default '',
  `zone` varchar(80) NOT NULL default '',
  `type` char(2) default NULL,
  `content` text,
  PRIMARY KEY  (`pageName`,`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_html_pages_dynamic_zones`
--

LOCK TABLES `tiki_html_pages_dynamic_zones` WRITE;
/*!40000 ALTER TABLE `tiki_html_pages_dynamic_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_html_pages_dynamic_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_images`
--

DROP TABLE IF EXISTS `tiki_images`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_images` (
  `imageId` int(14) NOT NULL auto_increment,
  `galleryId` int(14) NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `description` text,
  `lon` float default NULL,
  `lat` float default NULL,
  `created` int(14) default NULL,
  `user` varchar(40) default NULL,
  `hits` int(14) default NULL,
  `path` varchar(255) default NULL,
  PRIMARY KEY  (`imageId`),
  KEY `name` (`name`),
  KEY `description` (`description`(255)),
  KEY `hits` (`hits`),
  KEY `ti_gId` (`galleryId`),
  KEY `ti_cr` (`created`),
  KEY `ti_us` (`user`),
  FULLTEXT KEY `ft` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_images`
--

LOCK TABLES `tiki_images` WRITE;
/*!40000 ALTER TABLE `tiki_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_images_data`
--

DROP TABLE IF EXISTS `tiki_images_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_images_data` (
  `imageId` int(14) NOT NULL default '0',
  `xsize` int(8) NOT NULL default '0',
  `ysize` int(8) NOT NULL default '0',
  `type` char(1) NOT NULL default '',
  `filesize` int(14) default NULL,
  `filetype` varchar(80) default NULL,
  `filename` varchar(80) default NULL,
  `data` longblob,
  `etag` varchar(32) default NULL,
  PRIMARY KEY  (`imageId`,`xsize`,`ysize`,`type`),
  KEY `t_i_d_it` (`imageId`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_images_data`
--

LOCK TABLES `tiki_images_data` WRITE;
/*!40000 ALTER TABLE `tiki_images_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_images_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_integrator_reps`
--

DROP TABLE IF EXISTS `tiki_integrator_reps`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_integrator_reps` (
  `repID` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `path` varchar(255) NOT NULL default '',
  `start_page` varchar(255) NOT NULL default '',
  `css_file` varchar(255) NOT NULL default '',
  `visibility` char(1) NOT NULL default 'y',
  `cacheable` char(1) NOT NULL default 'y',
  `expiration` int(11) NOT NULL default '0',
  `description` text NOT NULL,
  PRIMARY KEY  (`repID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_integrator_reps`
--

LOCK TABLES `tiki_integrator_reps` WRITE;
/*!40000 ALTER TABLE `tiki_integrator_reps` DISABLE KEYS */;
INSERT INTO `tiki_integrator_reps` VALUES (1,'Doxygened (1.3.4) Documentation','','index.html','doxygen.css','n','y',0,'Use this repository as rule source for all your repositories based on doxygened docs. To setup yours just add new repository and copy rules from this repository :)');
/*!40000 ALTER TABLE `tiki_integrator_reps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_integrator_rules`
--

DROP TABLE IF EXISTS `tiki_integrator_rules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_integrator_rules` (
  `ruleID` int(11) NOT NULL auto_increment,
  `repID` int(11) NOT NULL default '0',
  `ord` int(2) unsigned NOT NULL default '0',
  `srch` blob NOT NULL,
  `repl` blob NOT NULL,
  `type` char(1) NOT NULL default 'n',
  `casesense` char(1) NOT NULL default 'y',
  `rxmod` varchar(20) NOT NULL default '',
  `enabled` char(1) NOT NULL default 'n',
  `description` text NOT NULL,
  PRIMARY KEY  (`ruleID`),
  KEY `repID` (`repID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_integrator_rules`
--

LOCK TABLES `tiki_integrator_rules` WRITE;
/*!40000 ALTER TABLE `tiki_integrator_rules` DISABLE KEYS */;
INSERT INTO `tiki_integrator_rules` VALUES (1,1,1,'.*<body[^>]*?>(.*?)</body.*','1','y','n','i','y','Extract code between <BODY> tags'),(2,1,2,'img src=(\"|\')(?!http://)','img src=1{path}/','y','n','i','y','Fix images path'),(3,1,3,'href=(\"|\')(?!(#|(http|ftp)://))','href=1tiki-integrator.php?repID={repID}&file=','y','n','i','y','Relace internal links to integrator. Dont touch an external links.');
/*!40000 ALTER TABLE `tiki_integrator_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_language`
--

DROP TABLE IF EXISTS `tiki_language`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_language` (
  `source` tinyblob NOT NULL,
  `lang` char(16) NOT NULL default '',
  `tran` tinyblob,
  PRIMARY KEY  (`source`(255),`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_language`
--

LOCK TABLES `tiki_language` WRITE;
/*!40000 ALTER TABLE `tiki_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_languages`
--

DROP TABLE IF EXISTS `tiki_languages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_languages` (
  `lang` char(16) NOT NULL default '',
  `language` varchar(255) default NULL,
  PRIMARY KEY  (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_languages`
--

LOCK TABLES `tiki_languages` WRITE;
/*!40000 ALTER TABLE `tiki_languages` DISABLE KEYS */;
INSERT INTO `tiki_languages` VALUES ('en','English');
/*!40000 ALTER TABLE `tiki_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_link_cache`
--

DROP TABLE IF EXISTS `tiki_link_cache`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_link_cache` (
  `cacheId` int(14) NOT NULL auto_increment,
  `url` varchar(250) default NULL,
  `data` longblob,
  `refresh` int(14) default NULL,
  PRIMARY KEY  (`cacheId`),
  KEY `urlindex` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_link_cache`
--

LOCK TABLES `tiki_link_cache` WRITE;
/*!40000 ALTER TABLE `tiki_link_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_link_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_links`
--

DROP TABLE IF EXISTS `tiki_links`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_links` (
  `fromPage` varchar(160) NOT NULL default '',
  `toPage` varchar(160) NOT NULL default '',
  PRIMARY KEY  (`fromPage`,`toPage`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_links`
--

LOCK TABLES `tiki_links` WRITE;
/*!40000 ALTER TABLE `tiki_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_live_support_events`
--

DROP TABLE IF EXISTS `tiki_live_support_events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_live_support_events` (
  `eventId` int(14) NOT NULL auto_increment,
  `reqId` varchar(32) NOT NULL default '',
  `type` varchar(40) default NULL,
  `seqId` int(14) default NULL,
  `senderId` varchar(32) default NULL,
  `data` text,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`eventId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_live_support_events`
--

LOCK TABLES `tiki_live_support_events` WRITE;
/*!40000 ALTER TABLE `tiki_live_support_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_live_support_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_live_support_message_comments`
--

DROP TABLE IF EXISTS `tiki_live_support_message_comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_live_support_message_comments` (
  `cId` int(12) NOT NULL auto_increment,
  `msgId` int(12) default NULL,
  `data` text,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`cId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_live_support_message_comments`
--

LOCK TABLES `tiki_live_support_message_comments` WRITE;
/*!40000 ALTER TABLE `tiki_live_support_message_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_live_support_message_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_live_support_messages`
--

DROP TABLE IF EXISTS `tiki_live_support_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_live_support_messages` (
  `msgId` int(12) NOT NULL auto_increment,
  `data` text,
  `timestamp` int(14) default NULL,
  `user` varchar(40) default NULL,
  `username` varchar(200) default NULL,
  `priority` int(2) default NULL,
  `status` char(1) default NULL,
  `assigned_to` varchar(200) default NULL,
  `resolution` varchar(100) default NULL,
  `title` varchar(200) default NULL,
  `module` int(4) default NULL,
  `email` varchar(250) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_live_support_messages`
--

LOCK TABLES `tiki_live_support_messages` WRITE;
/*!40000 ALTER TABLE `tiki_live_support_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_live_support_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_live_support_modules`
--

DROP TABLE IF EXISTS `tiki_live_support_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_live_support_modules` (
  `modId` int(4) NOT NULL auto_increment,
  `name` varchar(90) default NULL,
  PRIMARY KEY  (`modId`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_live_support_modules`
--

LOCK TABLES `tiki_live_support_modules` WRITE;
/*!40000 ALTER TABLE `tiki_live_support_modules` DISABLE KEYS */;
INSERT INTO `tiki_live_support_modules` VALUES (1,'wiki'),(2,'forums'),(3,'image galleries'),(4,'file galleries'),(5,'directory'),(6,'workflow'),(7,'charts');
/*!40000 ALTER TABLE `tiki_live_support_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_live_support_operators`
--

DROP TABLE IF EXISTS `tiki_live_support_operators`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_live_support_operators` (
  `user` varchar(40) NOT NULL default '',
  `accepted_requests` int(10) default NULL,
  `status` varchar(20) default NULL,
  `longest_chat` int(10) default NULL,
  `shortest_chat` int(10) default NULL,
  `average_chat` int(10) default NULL,
  `last_chat` int(14) default NULL,
  `time_online` int(10) default NULL,
  `votes` int(10) default NULL,
  `points` int(10) default NULL,
  `status_since` int(14) default NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_live_support_operators`
--

LOCK TABLES `tiki_live_support_operators` WRITE;
/*!40000 ALTER TABLE `tiki_live_support_operators` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_live_support_operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_live_support_requests`
--

DROP TABLE IF EXISTS `tiki_live_support_requests`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_live_support_requests` (
  `reqId` varchar(32) NOT NULL default '',
  `user` varchar(40) default NULL,
  `tiki_user` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  `operator` varchar(200) default NULL,
  `operator_id` varchar(32) default NULL,
  `user_id` varchar(32) default NULL,
  `reason` text,
  `req_timestamp` int(14) default NULL,
  `timestamp` int(14) default NULL,
  `status` varchar(40) default NULL,
  `resolution` varchar(40) default NULL,
  `chat_started` int(14) default NULL,
  `chat_ended` int(14) default NULL,
  PRIMARY KEY  (`reqId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_live_support_requests`
--

LOCK TABLES `tiki_live_support_requests` WRITE;
/*!40000 ALTER TABLE `tiki_live_support_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_live_support_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_logs`
--

DROP TABLE IF EXISTS `tiki_logs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_logs` (
  `logId` int(8) NOT NULL auto_increment,
  `logtype` varchar(20) NOT NULL,
  `logmessage` text NOT NULL,
  `loguser` varchar(40) NOT NULL,
  `logip` varchar(200) NOT NULL,
  `logclient` text NOT NULL,
  `logtime` int(14) NOT NULL,
  PRIMARY KEY  (`logId`),
  KEY `logtype` (`logtype`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_logs`
--

LOCK TABLES `tiki_logs` WRITE;
/*!40000 ALTER TABLE `tiki_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_mail_events`
--

DROP TABLE IF EXISTS `tiki_mail_events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_mail_events` (
  `event` varchar(200) default NULL,
  `object` varchar(200) default NULL,
  `email` varchar(200) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_mail_events`
--

LOCK TABLES `tiki_mail_events` WRITE;
/*!40000 ALTER TABLE `tiki_mail_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_mail_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_mailin_accounts`
--

DROP TABLE IF EXISTS `tiki_mailin_accounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_mailin_accounts` (
  `accountId` int(12) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  `account` varchar(50) NOT NULL default '',
  `pop` varchar(255) default NULL,
  `port` int(4) default NULL,
  `username` varchar(100) default NULL,
  `pass` varchar(100) default NULL,
  `active` char(1) default NULL,
  `type` varchar(40) default NULL,
  `smtp` varchar(255) default NULL,
  `useAuth` char(1) default NULL,
  `smtpPort` int(4) default NULL,
  `anonymous` char(1) NOT NULL default 'y',
  `attachments` char(1) NOT NULL default 'n',
  `article_topicId` int(4) default NULL,
  `article_type` varchar(50) default NULL,
  `discard_after` varchar(255) default NULL,
  PRIMARY KEY  (`accountId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_mailin_accounts`
--

LOCK TABLES `tiki_mailin_accounts` WRITE;
/*!40000 ALTER TABLE `tiki_mailin_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_mailin_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_menu_languages`
--

DROP TABLE IF EXISTS `tiki_menu_languages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_menu_languages` (
  `menuId` int(8) NOT NULL auto_increment,
  `language` char(16) NOT NULL default '',
  PRIMARY KEY  (`menuId`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_menu_languages`
--

LOCK TABLES `tiki_menu_languages` WRITE;
/*!40000 ALTER TABLE `tiki_menu_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_menu_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_menu_options`
--

DROP TABLE IF EXISTS `tiki_menu_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_menu_options` (
  `optionId` int(8) NOT NULL auto_increment,
  `menuId` int(8) default NULL,
  `type` char(1) default NULL,
  `name` varchar(200) default NULL,
  `url` varchar(255) default NULL,
  `position` int(4) default NULL,
  `section` varchar(255) default NULL,
  `perm` varchar(255) default NULL,
  `groupname` varchar(255) default NULL,
  PRIMARY KEY  (`optionId`)
) ENGINE=MyISAM AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_menu_options`
--

LOCK TABLES `tiki_menu_options` WRITE;
/*!40000 ALTER TABLE `tiki_menu_options` DISABLE KEYS */;
INSERT INTO `tiki_menu_options` VALUES (1,42,'o','Home','tiki-index.php',10,'','',''),(2,42,'o','Chat','tiki-chat.php',15,'feature_chat','tiki_p_chat',''),(3,42,'o','Contact us','tiki-contact.php',20,'feature_contact','',''),(4,42,'o','Stats','tiki-stats.php',23,'feature_stats','tiki_p_view_stats',''),(5,42,'o','Categories','tiki-browse_categories.php',25,'feature_categories','tiki_p_view_categories',''),(6,42,'o','Games','tiki-list_games.php',30,'feature_games','tiki_p_play_games',''),(7,42,'o','Calendar','tiki-calendar.php',35,'feature_calendar','tiki_p_view_calendar',''),(8,42,'o','Mobile','tiki-mobile.php',37,'feature_mobile','',''),(9,42,'o','(debug)','javascript:toggle(\"debugconsole\")',40,'feature_debug_console','tiki_p_admin',''),(10,42,'s','MyTiki','tiki-my_tiki.php',50,'','','Registered'),(11,42,'o','MyTiki home','tiki-my_tiki.php',51,'','','Registered'),(12,42,'o','Preferences','tiki-user_preferences.php',55,'feature_userPreferences','','Registered'),(13,42,'o','Messages','messu-mailbox.php',60,'feature_messages','tiki_p_messages','Registered'),(14,42,'o','Tasks','tiki-user_tasks.php',65,'feature_tasks','tiki_p_tasks','Registered'),(15,42,'o','Bookmarks','tiki-user_bookmarks.php',70,'feature_user_bookmarks','tiki_p_create_bookmarks','Registered'),(16,42,'o','Modules','tiki-user_assigned_modules.php',75,'user_assigned_modules','tiki_p_configure_modules','Registered'),(17,42,'o','Newsreader','tiki-newsreader_servers.php',80,'feature_newsreader','tiki_p_newsreader','Registered'),(18,42,'o','Webmail','tiki-webmail.php',85,'feature_webmail','tiki_p_use_webmail','Registered'),(19,42,'o','Notepad','tiki-notepad_list.php',90,'feature_notepad','tiki_p_notepad','Registered'),(20,42,'o','My files','tiki-userfiles.php',95,'feature_userfiles','tiki_p_userfiles','Registered'),(21,42,'o','User menu','tiki-usermenu.php',100,'feature_usermenu','','Registered'),(22,42,'o','Mini calendar','tiki-minical.php',105,'feature_minical','','Registered'),(23,42,'o','My watches','tiki-user_watches.php',110,'feature_user_watches','','Registered'),(24,42,'s','Workflow','tiki-g-user_processes.php',150,'feature_workflow','tiki_p_use_workflow',''),(25,42,'o','Admin processes','tiki-g-admin_processes.php',155,'feature_workflow','tiki_p_admin_workflow',''),(26,42,'o','Monitor processes','tiki-g-monitor_processes.php',160,'feature_workflow','tiki_p_admin_workflow',''),(27,42,'o','Monitor activities','tiki-g-monitor_activities.php',165,'feature_workflow','tiki_p_admin_workflow',''),(28,42,'o','Monitor instances','tiki-g-monitor_instances.php',170,'feature_workflow','tiki_p_admin_workflow',''),(29,42,'o','User processes','tiki-g-user_processes.php',175,'feature_workflow','tiki_p_use_workflow',''),(30,42,'o','User activities','tiki-g-user_activities.php',180,'feature_workflow','tiki_p_use_workflow',''),(31,42,'o','User instances','tiki-g-user_instances.php',185,'feature_workflow','tiki_p_use_workflow',''),(32,42,'s','Community','tiki-list_users.php',187,'feature_friends','tiki_p_list_users',''),(33,42,'o','User list','tiki-list_users.php',188,'feature_friends','tiki_p_list_users',''),(34,42,'o','Friendship Network','tiki-friends.php',189,'feature_friends','',''),(35,42,'s','Wiki','tiki-index.php',200,'feature_wiki','tiki_p_view',''),(36,42,'o','Wiki Home','tiki-index.php',202,'feature_wiki','tiki_p_view',''),(37,42,'o','Last Changes','tiki-lastchanges.php',205,'feature_wiki,feature_lastChanges','tiki_p_view',''),(38,42,'o','Dump','dump/new.tar',210,'feature_wiki,feature_dump','tiki_p_view',''),(39,42,'o','Rankings','tiki-wiki_rankings.php',215,'feature_wiki,feature_wiki_rankings','tiki_p_view',''),(40,42,'o','List pages','tiki-listpages.php',220,'feature_wiki,feature_listPages','tiki_p_view',''),(41,42,'o','Orphan pages','tiki-orphan_pages.php',225,'feature_wiki,feature_listPages','tiki_p_view',''),(42,42,'o','Sandbox','tiki-editpage.php?page=sandbox',230,'feature_wiki,feature_sandbox','tiki_p_view',''),(43,42,'o','Print','tiki-print_pages.php',235,'feature_wiki,feature_wiki_multiprint','tiki_p_view',''),(44,42,'o','Send pages','tiki-send_objects.php',240,'feature_wiki,feature_comm','tiki_p_view,tiki_p_send_pages',''),(45,42,'o','Received pages','tiki-received_pages.php',245,'feature_wiki,feature_comm','tiki_p_view,tiki_p_admin_received_pages',''),(46,42,'o','Structures','tiki-admin_structures.php',250,'feature_wiki','tiki_p_edit_structures',''),(47,42,'s','Image Galleries','tiki-galleries.php',300,'feature_galleries','tiki_p_view_image_gallery',''),(48,42,'o','Galleries','tiki-galleries.php',305,'feature_galleries','tiki_p_view_image_gallery',''),(49,42,'o','Rankings','tiki-galleries_rankings.php',310,'feature_galleries,feature_gal_rankings','tiki_p_view_image_gallery',''),(50,42,'o','Upload image','tiki-upload_image.php',315,'feature_galleries','tiki_p_upload_images',''),(51,42,'o','Directory batch','tiki-batch_upload.php',318,'feature_galleries,feature_gal_batch','tiki_p_batch_upload',''),(52,42,'o','System gallery','tiki-list_gallery.php?galleryId=0',320,'feature_galleries','tiki_p_admin_galleries',''),(53,42,'s','Articles','tiki-view_articles.php',350,'feature_articles','tiki_p_read_article',''),(54,42,'o','Articles home','tiki-view_articles.php',355,'feature_articles','tiki_p_read_article',''),(55,42,'o','List articles','tiki-list_articles.php',360,'feature_articles','tiki_p_read_article',''),(56,42,'o','Rankings','tiki-cms_rankings.php',365,'feature_articles,feature_cms_rankings','tiki_p_read_article',''),(57,42,'o','Submit article','tiki-edit_submission.php',370,'feature_articles,feature_submissions','tiki_p_read_article,tiki_p_submit_article',''),(58,42,'o','View submissions','tiki-list_submissions.php',375,'feature_articles,feature_submissions','tiki_p_read_article,tiki_p_submit_article',''),(59,42,'o','View submissions','tiki-list_submissions.php',375,'feature_articles,feature_submissions','tiki_p_read_article,tiki_p_approve_submission',''),(60,42,'o','View submissions','tiki-list_submissions.php',375,'feature_articles,feature_submissions','tiki_p_read_article,tiki_p_remove_submission',''),(61,42,'o','Edit article','tiki-edit_article.php',380,'feature_articles','tiki_p_read_article,tiki_p_edit_article',''),(62,42,'o','Send articles','tiki-send_objects.php',385,'feature_articles,feature_comm','tiki_p_read_article,tiki_p_send_articles',''),(63,42,'o','Received articles','tiki-received_articles.php',385,'feature_articles,feature_comm','tiki_p_read_article,tiki_p_admin_received_articles',''),(64,42,'o','Admin topics','tiki-admin_topics.php',390,'feature_articles','tiki_p_read_article,tiki_p_admin_cms',''),(65,42,'o','Admin types','tiki-article_types.php',395,'feature_articles','tiki_p_read_article,tiki_p_admin_cms',''),(66,42,'s','Blogs','tiki-list_blogs.php',450,'feature_blogs','tiki_p_read_blog',''),(67,42,'o','List blogs','tiki-list_blogs.php',455,'feature_blogs','tiki_p_read_blog',''),(68,42,'o','Rankings','tiki-blog_rankings.php',460,'feature_blogs,feature_blog_rankings','tiki_p_read_blog',''),(69,42,'o','Create/Edit blog','tiki-edit_blog.php',465,'feature_blogs','tiki_p_read_blog,tiki_p_create_blogs',''),(70,42,'o','Post','tiki-blog_post.php',470,'feature_blogs','tiki_p_read_blog,tiki_p_blog_post',''),(71,42,'o','Admin posts','tiki-list_posts.php',475,'feature_blogs','tiki_p_read_blog,tiki_p_blog_admin',''),(72,42,'s','Forums','tiki-forums.php',500,'feature_forums','tiki_p_forum_read',''),(73,42,'o','List forums','tiki-forums.php',505,'feature_forums','tiki_p_forum_read',''),(74,42,'o','Rankings','tiki-forum_rankings.php',510,'feature_forums,feature_forum_rankings','tiki_p_forum_read',''),(75,42,'o','Admin forums','tiki-admin_forums.php',515,'feature_forums','tiki_p_forum_read,tiki_p_admin_forum',''),(76,42,'s','Directory','tiki-directory_browse.php',550,'feature_directory','tiki_p_view_directory',''),(77,42,'o','Submit a new link','tiki-directory_add_site.php',555,'feature_directory','tiki_p_submit_link',''),(78,42,'o','Browse directory','tiki-directory_browse.php',560,'feature_directory','tiki_p_view_directory',''),(79,42,'o','Admin directory','tiki-directory_admin.php',565,'feature_directory','tiki_p_view_directory,tiki_p_admin_directory_cats',''),(80,42,'o','Admin directory','tiki-directory_admin.php',565,'feature_directory','tiki_p_view_directory,tiki_p_admin_directory_sites',''),(81,42,'o','Admin directory','tiki-directory_admin.php',565,'feature_directory','tiki_p_view_directory,tiki_p_validate_links',''),(82,42,'s','File Galleries','tiki-file_galleries.php',600,'feature_file_galleries','tiki_p_view_file_gallery',''),(83,42,'o','List galleries','tiki-file_galleries.php',605,'feature_file_galleries','tiki_p_view_file_gallery',''),(84,42,'o','Rankings','tiki-file_galleries_rankings.php',610,'feature_file_galleries,feature_file_galleries_rankings','tiki_p_view_file_gallery',''),(85,42,'o','Upload file','tiki-upload_file.php',615,'feature_file_galleries','tiki_p_view_file_gallery,tiki_p_upload_files',''),(86,42,'s','FAQs','tiki-list_faqs.php',650,'feature_faqs','tiki_p_view_faqs',''),(87,42,'o','List FAQs','tiki-list_faqs.php',665,'feature_faqs','tiki_p_view_faqs',''),(88,42,'o','Admin FAQs','tiki-list_faqs.php',660,'feature_faqs','tiki_p_admin_faqs',''),(89,42,'s','Maps','tiki-map.phtml',700,'feature_maps','tiki_p_map_view',''),(90,42,'o','Mapfiles','tiki-map_edit.php',705,'feature_maps','tiki_p_map_view',''),(91,42,'o','Layer management','tiki-map_upload.php',710,'feature_maps','tiki_p_map_edit',''),(92,42,'s','Quizzes','tiki-list_quizzes.php',750,'feature_quizzes','',''),(93,42,'o','List quizzes','tiki-list_quizzes.php',755,'feature_quizzes','',''),(94,42,'o','Quiz stats','tiki-quiz_stats.php',760,'feature_quizzes','tiki_p_view_quiz_stats',''),(95,42,'o','Admin quiz','tiki-edit_quiz.php',765,'feature_quizzes','tiki_p_admin_quizzes',''),(96,42,'s','TikiSheet','tiki-sheets.php',780,'feature_sheet','',''),(97,42,'s','Trackers','tiki-list_trackers.php',800,'feature_trackers','tiki_p_view_trackers',''),(98,42,'o','List trackers','tiki-list_trackers.php',805,'feature_trackers','tiki_p_view_trackers',''),(99,42,'o','Admin trackers','tiki-admin_trackers.php',810,'feature_trackers','tiki_p_admin_trackers',''),(100,42,'s','Surveys','tiki-list_surveys.php',850,'feature_surveys','',''),(101,42,'o','List surveys','tiki-list_surveys.php',855,'feature_surveys','',''),(102,42,'o','Stats','tiki-survey_stats.php',860,'feature_surveys','tiki_p_view_survey_stats',''),(103,42,'o','Admin surveys','tiki-admin_surveys.php',865,'feature_surveys','tiki_p_admin_surveys',''),(104,42,'s','Newsletters','tiki-newsletters.php',900,'feature_newsletters','tiki_p_subscribe_newsletters',''),(105,42,'s','Newsletters','tiki-newsletters.php',900,'feature_newsletters','tiki_p_send_newsletters',''),(106,42,'s','Newsletters','tiki-newsletters.php',900,'feature_newsletters','tiki_p_admin_newsletters',''),(107,42,'o','Send newsletters','tiki-send_newsletters.php',905,'feature_newsletters','tiki_p_send_newsletters',''),(108,42,'o','Admin newsletters','tiki-admin_newsletters.php',910,'feature_newsletters','tiki_p_admin_newsletters',''),(109,42,'s','Ephemerides','tiki-eph.php',950,'feature_eph','',''),(110,42,'o','Admin ephemerides','tiki-eph_admin.php',955,'feature_eph','tiki_p_eph_admin',''),(111,42,'s','Charts','tiki-charts.php',1000,'feature_charts','',''),(112,42,'o','Admin charts','tiki-admin_charts.php',1005,'feature_charts','tiki_p_admin_charts',''),(113,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin',''),(114,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_chat',''),(115,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_categories',''),(116,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_banners',''),(117,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_edit_templates',''),(118,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_edit_cookies',''),(119,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_dynamic',''),(120,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_mailin',''),(121,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_edit_content_templates',''),(122,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_edit_html_pages',''),(123,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_view_referer_stats',''),(124,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_drawings',''),(125,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_admin_shoutbox',''),(126,42,'r','Admin','tiki-admin.php',1050,'','tiki_p_live_support_admin',''),(127,42,'r','Admin','tiki-admin.php',1050,'','user_is_operator',''),(128,42,'r','Admin','tiki-admin.php',1050,'feature_integrator','tiki_p_admin_integrator',''),(129,42,'o','Admin home','tiki-admin.php',1051,'','tiki_p_admin',''),(130,42,'o','Live support','tiki-live_support_admin.php',1055,'feature_live_support','tiki_p_live_support_admin',''),(131,42,'o','Live support','tiki-live_support_admin.php',1055,'feature_live_support','user_is_operator',''),(132,42,'o','Banning','tiki-admin_banning.php',1060,'feature_banning','tiki_p_admin_banning',''),(133,42,'o','Calendar','tiki-admin_calendars.php',1065,'feature_calendar','tiki_p_admin_calendar',''),(134,42,'o','Users','tiki-adminusers.php',1070,'','tiki_p_admin_users',''),(135,42,'o','Groups','tiki-admingroups.php',1075,'','tiki_p_admin',''),(136,42,'o','Cache','tiki-list_cache.php',1080,'','tiki_p_admin',''),(137,42,'o','Modules','tiki-admin_modules.php',1085,'','tiki_p_admin',''),(138,42,'o','Links','tiki-admin_links.php',1090,'feature_featuredLinks','tiki_p_admin',''),(139,42,'o','Hotwords','tiki-admin_hotwords.php',1095,'feature_hotwords','tiki_p_admin',''),(140,42,'o','RSS modules','tiki-admin_rssmodules.php',1100,'','tiki_p_admin',''),(141,42,'o','Menus','tiki-admin_menus.php',1105,'','tiki_p_admin',''),(142,42,'o','Polls','tiki-admin_polls.php',1110,'feature_polls','tiki_p_admin',''),(143,42,'o','Backups','tiki-backup.php',1115,'','tiki_p_admin',''),(144,42,'o','Mail notifications','tiki-admin_notifications.php',1120,'','tiki_p_admin',''),(145,42,'o','Search stats','tiki-search_stats.php',1125,'feature_search','tiki_p_admin',''),(146,42,'o','Theme control','tiki-theme_control.php',1130,'feature_theme_control','tiki_p_admin',''),(147,42,'o','QuickTags','tiki-admin_quicktags.php',1135,'','tiki_p_admin',''),(148,42,'o','Chat','tiki-admin_chat.php',1140,'feature_chat','tiki_p_admin_chat',''),(149,42,'o','Categories','tiki-admin_categories.php',1145,'feature_categories','tiki_p_admin_categories',''),(150,42,'o','Banners','tiki-list_banners.php',1150,'feature_banners','tiki_p_admin_banners',''),(151,42,'o','Edit templates','tiki-edit_templates.php',1155,'feature_edit_templates','tiki_p_edit_templates',''),(152,42,'o','Drawings','tiki-admin_drawings.php',1160,'feature_drawings','tiki_p_admin_drawings',''),(153,42,'o','Dynamic content','tiki-list_contents.php',1165,'feature_dynamic_content','tiki_p_admin_dynamic',''),(154,42,'o','Cookies','tiki-admin_cookies.php',1170,'','tiki_p_edit_cookies',''),(155,42,'o','Mail-in','tiki-admin_mailin.php',1175,'feature_mailin','tiki_p_admin_mailin',''),(156,42,'o','Content templates','tiki-admin_content_templates.php',1180,'','tiki_p_edit_content_templates',''),(157,42,'o','HTML pages','tiki-admin_html_pages.php',1185,'feature_html_pages','tiki_p_edit_html_pages',''),(158,42,'o','Shoutbox','tiki-shoutbox.php',1190,'feature_shoutbox','tiki_p_admin_shoutbox',''),(159,42,'o','Shoutbox Words','tiki-admin_shoutbox_words.php',1191,'feature_shoutbox','tiki_p_admin_shoutbox',''),(160,42,'o','Referer stats','tiki-referer_stats.php',1195,'feature_referer_stats','tiki_p_view_referer_stats',''),(161,42,'o','Edit languages','tiki-edit_languages.php',1200,'','tiki_p_edit_languages,lang_use_db',''),(162,42,'o','Integrator','tiki-admin_integrator.php',1205,'feature_integrator','tiki_p_admin_integrator',''),(163,42,'o','phpinfo','tiki-phpinfo.php',1215,'','tiki_p_admin',''),(164,42,'o','DSN','tiki-admin_dsn.php',1220,'','tiki_p_admin',''),(165,42,'o','External wikis','tiki-admin_external_wikis.php',1225,'','tiki_p_admin',''),(166,42,'o','System Admin','tiki-admin_system.php',1230,'','tiki_p_admin',''),(167,42,'o','Score','tiki-admin_score.php',1235,'feature_score','tiki_p_admin',''),(168,42,'o','Admin mods','tiki-mods.php',1240,'','tiki_p_admin',''),(169,42,'o','Tiki Logs','tiki-syslog.php',1245,'','tiki_p_admin',''),(170,42,'o','Security Admin','tiki-admin_security.php',1250,'','tiki_p_admin','');
/*!40000 ALTER TABLE `tiki_menu_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_menus`
--

DROP TABLE IF EXISTS `tiki_menus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_menus` (
  `menuId` int(8) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `description` text,
  `type` char(1) default NULL,
  PRIMARY KEY  (`menuId`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_menus`
--

LOCK TABLES `tiki_menus` WRITE;
/*!40000 ALTER TABLE `tiki_menus` DISABLE KEYS */;
INSERT INTO `tiki_menus` VALUES (42,'Application menu','Main extensive navigation menu','d');
/*!40000 ALTER TABLE `tiki_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_minical_events`
--

DROP TABLE IF EXISTS `tiki_minical_events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_minical_events` (
  `user` varchar(40) default NULL,
  `eventId` int(12) NOT NULL auto_increment,
  `title` varchar(250) default NULL,
  `description` text,
  `start` int(14) default NULL,
  `end` int(14) default NULL,
  `security` char(1) default NULL,
  `duration` int(3) default NULL,
  `topicId` int(12) default NULL,
  `reminded` char(1) default NULL,
  PRIMARY KEY  (`eventId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_minical_events`
--

LOCK TABLES `tiki_minical_events` WRITE;
/*!40000 ALTER TABLE `tiki_minical_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_minical_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_minical_topics`
--

DROP TABLE IF EXISTS `tiki_minical_topics`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_minical_topics` (
  `user` varchar(40) default NULL,
  `topicId` int(12) NOT NULL auto_increment,
  `name` varchar(250) default NULL,
  `filename` varchar(200) default NULL,
  `filetype` varchar(200) default NULL,
  `filesize` varchar(200) default NULL,
  `data` longblob,
  `path` varchar(250) default NULL,
  `isIcon` char(1) default NULL,
  PRIMARY KEY  (`topicId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_minical_topics`
--

LOCK TABLES `tiki_minical_topics` WRITE;
/*!40000 ALTER TABLE `tiki_minical_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_minical_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_modules`
--

DROP TABLE IF EXISTS `tiki_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_modules` (
  `name` varchar(200) NOT NULL default '',
  `position` char(1) default NULL,
  `ord` int(4) default NULL,
  `type` char(1) default NULL,
  `title` varchar(255) default NULL,
  `cache_time` int(14) default NULL,
  `rows` int(4) default NULL,
  `params` varchar(255) default NULL,
  `groups` text,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_modules`
--

LOCK TABLES `tiki_modules` WRITE;
/*!40000 ALTER TABLE `tiki_modules` DISABLE KEYS */;
INSERT INTO `tiki_modules` VALUES ('login_box','r',1,NULL,NULL,0,NULL,NULL,'a:2:{i:0;s:10:\"Registered\";i:1;s:9:\"Anonymous\";}'),('mnu_application_menu','l',1,NULL,NULL,0,NULL,'flip=y','a:2:{i:0;s:10:\"Registered\";i:1;s:9:\"Anonymous\";}'),('quick_edit','l',2,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:10:\"Registered\";}'),('assistant','l',10,NULL,NULL,0,NULL,NULL,'a:2:{i:0;s:10:\"Registered\";i:1;s:9:\"Anonymous\";}');
/*!40000 ALTER TABLE `tiki_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_newsletter_groups`
--

DROP TABLE IF EXISTS `tiki_newsletter_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_newsletter_groups` (
  `nlId` int(12) NOT NULL default '0',
  `groupName` varchar(255) NOT NULL default '',
  `code` varchar(32) default NULL,
  PRIMARY KEY  (`nlId`,`groupName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_newsletter_groups`
--

LOCK TABLES `tiki_newsletter_groups` WRITE;
/*!40000 ALTER TABLE `tiki_newsletter_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_newsletter_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_newsletter_subscriptions`
--

DROP TABLE IF EXISTS `tiki_newsletter_subscriptions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_newsletter_subscriptions` (
  `nlId` int(12) NOT NULL default '0',
  `email` varchar(255) NOT NULL default '',
  `code` varchar(32) default NULL,
  `valid` char(1) default NULL,
  `subscribed` int(14) default NULL,
  `isUser` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`nlId`,`email`,`isUser`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_newsletter_subscriptions`
--

LOCK TABLES `tiki_newsletter_subscriptions` WRITE;
/*!40000 ALTER TABLE `tiki_newsletter_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_newsletter_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_newsletters`
--

DROP TABLE IF EXISTS `tiki_newsletters`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_newsletters` (
  `nlId` int(12) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `lastSent` int(14) default NULL,
  `editions` int(10) default NULL,
  `users` int(10) default NULL,
  `allowUserSub` char(1) default 'y',
  `allowAnySub` char(1) default NULL,
  `unsubMsg` char(1) default 'y',
  `validateAddr` char(1) default 'y',
  `frequency` int(14) default NULL,
  PRIMARY KEY  (`nlId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_newsletters`
--

LOCK TABLES `tiki_newsletters` WRITE;
/*!40000 ALTER TABLE `tiki_newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_newsreader_marks`
--

DROP TABLE IF EXISTS `tiki_newsreader_marks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_newsreader_marks` (
  `user` varchar(40) NOT NULL default '',
  `serverId` int(12) NOT NULL default '0',
  `groupName` varchar(255) NOT NULL default '',
  `timestamp` int(14) NOT NULL default '0',
  PRIMARY KEY  (`user`,`serverId`,`groupName`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_newsreader_marks`
--

LOCK TABLES `tiki_newsreader_marks` WRITE;
/*!40000 ALTER TABLE `tiki_newsreader_marks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_newsreader_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_newsreader_servers`
--

DROP TABLE IF EXISTS `tiki_newsreader_servers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_newsreader_servers` (
  `user` varchar(40) NOT NULL default '',
  `serverId` int(12) NOT NULL auto_increment,
  `server` varchar(250) default NULL,
  `port` int(4) default NULL,
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  PRIMARY KEY  (`serverId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_newsreader_servers`
--

LOCK TABLES `tiki_newsreader_servers` WRITE;
/*!40000 ALTER TABLE `tiki_newsreader_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_newsreader_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_object_ratings`
--

DROP TABLE IF EXISTS `tiki_object_ratings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_object_ratings` (
  `catObjectId` int(12) NOT NULL default '0',
  `pollId` int(12) NOT NULL default '0',
  PRIMARY KEY  (`catObjectId`,`pollId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_object_ratings`
--

LOCK TABLES `tiki_object_ratings` WRITE;
/*!40000 ALTER TABLE `tiki_object_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_object_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_page_footnotes`
--

DROP TABLE IF EXISTS `tiki_page_footnotes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_page_footnotes` (
  `user` varchar(40) NOT NULL default '',
  `pageName` varchar(250) NOT NULL default '',
  `data` text,
  PRIMARY KEY  (`user`,`pageName`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_page_footnotes`
--

LOCK TABLES `tiki_page_footnotes` WRITE;
/*!40000 ALTER TABLE `tiki_page_footnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_page_footnotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_pages`
--

DROP TABLE IF EXISTS `tiki_pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_pages` (
  `page_id` int(14) NOT NULL auto_increment,
  `pageName` varchar(160) NOT NULL default '',
  `hits` int(8) default NULL,
  `data` text,
  `description` varchar(200) default NULL,
  `lastModif` int(14) default NULL,
  `comment` varchar(200) default NULL,
  `version` int(8) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `ip` varchar(15) default NULL,
  `flag` char(1) default NULL,
  `points` int(8) default NULL,
  `votes` int(8) default NULL,
  `cache` text,
  `wiki_cache` int(10) default NULL,
  `cache_timestamp` int(14) default NULL,
  `pageRank` decimal(4,3) default NULL,
  `creator` varchar(200) default NULL,
  `page_size` int(10) unsigned default '0',
  `lang` varchar(16) default NULL,
  `lockedby` varchar(200) default NULL,
  `is_html` tinyint(1) default '0',
  `created` int(14) default NULL,
  PRIMARY KEY  (`page_id`),
  UNIQUE KEY `pageName` (`pageName`),
  KEY `data` (`data`(255)),
  KEY `pageRank` (`pageRank`),
  FULLTEXT KEY `ft` (`pageName`,`description`,`data`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_pages`
--

LOCK TABLES `tiki_pages` WRITE;
/*!40000 ALTER TABLE `tiki_pages` DISABLE KEYS */;
INSERT INTO `tiki_pages` VALUES (1,'HomePage',19,'','',1271407536,'Tiki initialization',1,'admin','0.0.0.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',0,NULL,NULL,0,1271407536);
/*!40000 ALTER TABLE `tiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_pageviews`
--

DROP TABLE IF EXISTS `tiki_pageviews`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_pageviews` (
  `day` int(14) NOT NULL default '0',
  `pageviews` int(14) default NULL,
  PRIMARY KEY  (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_pageviews`
--

LOCK TABLES `tiki_pageviews` WRITE;
/*!40000 ALTER TABLE `tiki_pageviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_pageviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_poll_objects`
--

DROP TABLE IF EXISTS `tiki_poll_objects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_poll_objects` (
  `catObjectId` int(11) NOT NULL default '0',
  `pollId` int(11) NOT NULL default '0',
  `title` varchar(255) default NULL,
  PRIMARY KEY  (`catObjectId`,`pollId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_poll_objects`
--

LOCK TABLES `tiki_poll_objects` WRITE;
/*!40000 ALTER TABLE `tiki_poll_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_poll_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_poll_options`
--

DROP TABLE IF EXISTS `tiki_poll_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_poll_options` (
  `pollId` int(8) NOT NULL default '0',
  `optionId` int(8) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `position` int(4) NOT NULL default '0',
  `votes` int(8) default NULL,
  PRIMARY KEY  (`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_poll_options`
--

LOCK TABLES `tiki_poll_options` WRITE;
/*!40000 ALTER TABLE `tiki_poll_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_poll_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_polls`
--

DROP TABLE IF EXISTS `tiki_polls`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_polls` (
  `pollId` int(8) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `votes` int(8) default NULL,
  `active` char(1) default NULL,
  `publishDate` int(14) default NULL,
  PRIMARY KEY  (`pollId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_polls`
--

LOCK TABLES `tiki_polls` WRITE;
/*!40000 ALTER TABLE `tiki_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_preferences`
--

DROP TABLE IF EXISTS `tiki_preferences`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_preferences` (
  `name` varchar(40) NOT NULL default '',
  `value` varchar(250) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_preferences`
--

LOCK TABLES `tiki_preferences` WRITE;
/*!40000 ALTER TABLE `tiki_preferences` DISABLE KEYS */;
INSERT INTO `tiki_preferences` VALUES ('allowRegister','n'),('anonCanEdit','n'),('art_list_author','y'),('art_list_date','y'),('art_list_expire','y'),('art_list_img','y'),('art_list_reads','y'),('art_list_size','y'),('art_list_title','y'),('art_list_topic','y'),('art_list_type','y'),('art_list_visible','y'),('article_comments_default_ordering','points_desc'),('article_comments_per_page','10'),('auth_create_user_auth','n'),('auth_create_user_tiki','n'),('auth_ldap_adminpass',''),('auth_ldap_adminuser',''),('auth_ldap_basedn',''),('auth_ldap_groupattr','cn'),('auth_ldap_groupdn',''),('auth_ldap_groupoc','groupOfUniqueNames'),('auth_ldap_url',''),('auth_ldap_host','localhost'),('auth_ldap_memberattr','uniqueMember'),('auth_ldap_memberisdn','n'),('auth_ldap_port','389'),('auth_ldap_scope','sub'),('auth_ldap_userattr','uid'),('auth_ldap_userdn',''),('auth_ldap_useroc','inetOrgPerson'),('auth_method','tiki'),('auth_skip_admin','y'),('available_languages','a:0:{}'),('available_styles','a:0:{}'),('blog_comments_default_ordering','points_desc'),('blog_comments_per_page','10'),('blog_list_activity','y'),('blog_list_created','y'),('blog_list_description','y'),('blog_list_lastmodif','y'),('blog_list_order','created_desc'),('blog_list_posts','y'),('blog_list_title','y'),('blog_list_user','n'),('blog_list_visits','y'),('blog_spellcheck','n'),('feature_blogposts_pings','y'),('cacheimages','n'),('cachepages','n'),('calendar_sticky_popup','n'),('calendar_view_tab','n'),('change_language','y'),('change_password','y'),('change_theme','y'),('cms_bot_bar','y'),('cms_left_column','y'),('cms_right_column','y'),('cms_spellcheck','n'),('cms_top_bar','n'),('contact_anon','n'),('contact_user','admin'),('count_admin_pvs','y'),('default_map','pacific.map'),('direct_pagination','n'),('directory_columns','3'),('directory_links_per_page','20'),('directory_open_links','n'),('directory_validate_urls','n'),('directory_cool_sites','y'),('display_timezone','EST'),('eponymousGroups','n'),('faq_comments_default_ordering','points_desc'),('faq_comments_per_page','10'),('feature_article_comments','n'),('feature_articles','n'),('feature_autolinks','y'),('feature_babelfish','n'),('feature_babelfish_logo','n'),('feature_backlinks','y'),('feature_banners','n'),('feature_banning','n'),('feature_blog_comments','n'),('feature_blog_rankings','y'),('feature_blogposts_comments','n'),('feature_blogs','n'),('feature_bot_bar','y'),('feature_bot_bar_icons','y'),('feature_bot_bar_debug','y'),('feature_calendar','n'),('feature_categories','n'),('feature_categoryobjects','n'),('feature_categorypath','n'),('feature_challenge','n'),('feature_charts','n'),('feature_chat','n'),('feature_clear_passwords','n'),('feature_cms_print','y'),('feature_cms_rankings','y'),('feature_cms_templates','n'),('feature_comm','n'),('feature_contact','n'),('feature_custom_home','n'),('feature_debug_console','n'),('feature_debugger_console','n'),('feature_detect_language','n'),('feature_directory','n'),('feature_drawings','n'),('feature_dump','n'),('feature_dynamic_content','n'),('feature_edit_templates','n'),('feature_editcss','n'),('feature_eph','n'),('feature_faq_comments','y'),('feature_faqs','n'),('feature_featuredLinks','y'),('feature_file_galleries','n'),('feature_file_galleries_comments','n'),('feature_file_galleries_rankings','n'),('feature_forum_parse','n'),('feature_forum_quickjump','n'),('feature_forum_rankings','y'),('feature_forum_topicd','n'),('feature_forums','n'),('feature_friends','n'),('feature_gal_rankings','y'),('feature_gal_batch','n'),('feature_galleries','n'),('feature_gal_imgcache','n'),('feature_games','n'),('feature_help','n'),('feature_history','y'),('feature_hotwords','y'),('feature_hotwords_nw','n'),('feature_html_pages','n'),('feature_image_galleries_comments','n'),('feature_integrator','n'),('feature_jscalendar','n'),('feature_lastChanges','y'),('feature_left_column','y'),('feature_likePages','y'),('feature_listPages','y'),('feature_live_support','n'),('feature_maps','n'),('feature_menusfolderstyle','y'),('feature_messages','n'),('feature_minical','n'),('feature_mobile','n'),('feature_modulecontrols','n'),('feature_multilingual','n'),('feature_newsletters','n'),('feature_newsreader','n'),('feature_notepad','n'),('feature_obzip','n'),('feature_page_title','y'),('feature_phplayers','n'),('feature_phpopentracker','n'),('feature_poll_anonymous','n'),('feature_poll_comments','n'),('feature_polls','n'),('feature_quizzes','n'),('feature_referer_stats','n'),('feature_right_column','y'),('feature_sandbox','y'),('feature_score','n'),('feature_search','y'),('feature_search_fulltext','y'),('feature_search_stats','n'),('feature_sheet','n'),('feature_shoutbox','n'),('feature_smileys','y'),('feature_stats','n'),('feature_submissions','n'),('feature_surveys','n'),('feature_tabs','n'),('feature_tasks','n'),('feature_theme_control','n'),('feature_ticketlib','n'),('feature_ticketlib2','y'),('feature_top_bar','y'),('feature_trackers','n'),('feature_userPreferences','n'),('feature_userVersions','n'),('feature_user_bookmarks','n'),('feature_user_watches','n'),('feature_user_watches_translations','y'),('feature_userfiles','n'),('feature_usermenu','n'),('feature_view_tpl','n'),('feature_warn_on_edit','n'),('feature_webmail','n'),('feature_wiki','y'),('feature_wiki_allowhtml','n'),('feature_wiki_attachments','n'),('feature_wiki_comments','n'),('feature_wiki_description','n'),('feature_wiki_discuss','n'),('feature_wiki_export','n'),('feature_wiki_footnotes','n'),('feature_wiki_import_html','n'),('feature_wiki_monosp','y'),('feature_wiki_multiprint','n'),('feature_wiki_notepad','n'),('feature_wiki_open_as_structure','n'),('feature_wiki_pdf','n'),('feature_wiki_pictures','n'),('feature_wiki_rankings','y'),('feature_wiki_ratings','n'),('feature_wiki_tables','old'),('feature_wiki_templates','n'),('feature_wiki_undo','n'),('feature_wiki_userpage','y'),('feature_wiki_userpage_prefix','UserPage'),('feature_wiki_usrlock','n'),('feature_wikiwords','y'),('feature_workflow','n'),('feature_wysiwyg','no'),('feature_xmlrpc','n'),('fgal_allow_duplicates','n'),('fgal_list_created','y'),('fgal_list_description','n'),('fgal_list_files','y'),('fgal_list_hits','y'),('fgal_list_lastmodif','y'),('fgal_list_name','y'),('fgal_list_user','y'),('fgal_match_regex',''),('fgal_nmatch_regex',''),('fgal_use_db','y'),('fgal_use_dir',''),('file_galleries_comments_default_ordering','points_desc'),('file_galleries_comments_per_page','10'),('forgotPass','n'),('forum_list_desc','y'),('forum_list_lastpost','y'),('forum_list_posts','y'),('forum_list_ppd','y'),('forum_list_topics','y'),('forum_list_visits','y'),('forums_ordering','created_desc'),('gal_batch_dir',''),('gal_list_created','y'),('gal_list_description','y'),('gal_list_imgs','y'),('gal_list_lastmodif','y'),('gal_list_name','y'),('gal_list_user','y'),('gal_list_visits','y'),('gal_match_regex',''),('gal_nmatch_regex',''),('gal_use_db','y'),('gal_use_dir',''),('gal_use_lib','gd'),('gal_imgcache_dir','temp/cache'),('groupTracker','n'),('home_file_gallery',''),('http_domain',''),('http_port','80'),('http_prefix','/'),('https','auto'),('https_domain',''),('https_login','n'),('https_login_required','n'),('https_port','443'),('https_prefix','/'),('image_galleries_comments_default_order','points_desc'),('image_galleries_comments_per_page','10'),('keep_versions','1'),('lang_use_db','n'),('language','en'),('layout_section','n'),('long_date_format','%A %d of %B, %Y'),('long_time_format','%H:%M:%S %Z'),('mail_crlf','LF'),('map_path','/var/www/html/map/'),('maxArticles','10'),('maxRecords','10'),('maxVersions','0'),('max_rss_articles','10'),('max_rss_blog','10'),('max_rss_blogs','10'),('max_rss_directories','10'),('max_rss_file_galleries','10'),('max_rss_file_gallery','10'),('max_rss_forum','10'),('max_rss_forums','10'),('max_rss_image_galleries','10'),('max_rss_image_gallery','10'),('max_rss_mapfiles','10'),('max_rss_wiki','10'),('max_rss_tracker','10'),('min_pass_length','1'),('modallgroups','y'),('pass_chr_num','n'),('pass_due','999'),('poll_comments_default_ordering','points_desc'),('poll_comments_per_page','10'),('popupLinks','n'),('proxy_host',''),('proxy_port',''),('record_untranslated','n'),('registerPasscode',''),('rememberme','disabled'),('remembertime','7200'),('rnd_num_reg','n'),('rss_articles','y'),('rss_blog','n'),('rss_blogs','y'),('rss_directories','y'),('rss_file_galleries','y'),('rss_file_gallery','n'),('rss_forum','y'),('rss_forums','y'),('rss_image_galleries','y'),('rss_image_gallery','n'),('rss_mapfiles','y'),('rss_wiki','y'),('rss_tracker','n'),('rssfeed_default_version','2'),('rssfeed_editor',''),('rssfeed_language','en-us'),('rssfeed_webmaster',''),('search_lru_length','100'),('search_lru_purge_rate','5'),('search_max_syllwords','100'),('search_min_wordlength','3'),('search_refresh_rate','5'),('search_syll_age','48'),('sender_email',''),('short_date_format','%a %d of %b, %Y'),('short_time_format','%H:%M %Z'),('shoutbox_autolink','n'),('siteTitle',''),('slide_style','slidestyle.css'),('style','tikineat.css'),('system_os','unix'),('t_use_db','y'),('t_use_dir',''),('trk_with_mirror_tables','n'),('tikiIndex','tiki-index.php'),('tmpDir','temp'),('uf_use_db','y'),('uf_use_dir',''),('urlIndex',''),('useRegisterPasscode','n'),('useUrlIndex','n'),('use_proxy','n'),('userTracker','n'),('user_assigned_modules','n'),('user_list_order','score_desc'),('userfiles_quota','30'),('validateEmail','n'),('validateRegistration','n'),('validateUsers','n'),('w_use_db','y'),('w_use_dir',''),('warn_on_edit_time','2'),('webmail_max_attachment','1500000'),('webmail_view_html','y'),('webserverauth','n'),('wikiHomePage','HomePage'),('wikiLicensePage',''),('wikiSubmitNotice',''),('wiki_bot_bar','n'),('wiki_cache','0'),('wiki_comments_default_ordering','points_desc'),('wiki_comments_per_page','10'),('wiki_creator_admin','n'),('wiki_feature_copyrights','n'),('wiki_forum',''),('wiki_forum_id',''),('wiki_left_column','y'),('wiki_list_backlinks','y'),('wiki_list_comment','y'),('wiki_list_creator','y'),('wiki_list_hits','y'),('wiki_list_lastmodif','y'),('wiki_list_lastver','y'),('wiki_list_links','y'),('wiki_list_name','y'),('wiki_list_size','y'),('wiki_list_status','y'),('wiki_list_user','y'),('wiki_list_versions','y'),('wiki_page_regex','strict'),('wiki_right_column','y'),('wiki_spellcheck','n'),('wiki_top_bar','n'),('wiki_uses_slides','n'),('wiki_wikisyntax_in_html','full'),('default_wiki_diff_style','minsidediff'),('limitedGoGroupHome','y'),('feature_gal_slideshow','y'),('feature_ranking','n'),('feature_trackbackpings','y'),('rssfeed_creator',''),('rssfeed_css','y'),('rssfeed_publisher',''),('messu_mailbox_size','0'),('messu_archive_size','200'),('messu_sent_size','200'),('case_patched','y');
/*!40000 ALTER TABLE `tiki_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_private_messages`
--

DROP TABLE IF EXISTS `tiki_private_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_private_messages` (
  `messageId` int(8) NOT NULL auto_increment,
  `toNickname` varchar(200) NOT NULL default '',
  `data` varchar(255) default NULL,
  `poster` varchar(200) NOT NULL default 'anonymous',
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`messageId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_private_messages`
--

LOCK TABLES `tiki_private_messages` WRITE;
/*!40000 ALTER TABLE `tiki_private_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_private_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_programmed_content`
--

DROP TABLE IF EXISTS `tiki_programmed_content`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_programmed_content` (
  `pId` int(8) NOT NULL auto_increment,
  `contentId` int(8) NOT NULL default '0',
  `publishDate` int(14) NOT NULL default '0',
  `data` text,
  PRIMARY KEY  (`pId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_programmed_content`
--

LOCK TABLES `tiki_programmed_content` WRITE;
/*!40000 ALTER TABLE `tiki_programmed_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_programmed_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quicktags`
--

DROP TABLE IF EXISTS `tiki_quicktags`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quicktags` (
  `tagId` int(4) unsigned NOT NULL auto_increment,
  `taglabel` varchar(255) default NULL,
  `taginsert` text,
  `tagicon` varchar(255) default NULL,
  `tagcategory` varchar(255) default NULL,
  PRIMARY KEY  (`tagId`),
  KEY `tagcategory` (`tagcategory`),
  KEY `taglabel` (`taglabel`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quicktags`
--

LOCK TABLES `tiki_quicktags` WRITE;
/*!40000 ALTER TABLE `tiki_quicktags` DISABLE KEYS */;
INSERT INTO `tiki_quicktags` VALUES (1,'bold','__text__','images/ed_format_bold.gif','wiki'),(2,'italic','\'\'text\'\'','images/ed_format_italic.gif','wiki'),(3,'underline','===text===','images/ed_format_underline.gif','wiki'),(4,'table','||r1c1|r1c2||r2c1|r2c2||','images/insert_table.gif','wiki'),(5,'table new','||r1c1|r1c2\nr2c1|r2c2||','images/insert_table.gif','wiki'),(6,'external link','[http://example.com|text]','images/ed_link.gif','wiki'),(7,'wiki link','((text))','images/ed_copy.gif','wiki'),(8,'heading1','!text','images/ed_custom.gif','wiki'),(9,'title bar','-=text=-','images/fullscreen_maximize.gif','wiki'),(10,'box','^text^','images/ed_about.gif','wiki'),(11,'rss feed','{rss id= }','images/ico_link.gif','wiki'),(12,'dynamic content','{content id= }','images/book.gif','wiki'),(13,'tagline','{cookie}','images/footprint.gif','wiki'),(14,'hr','---','images/ed_hr.gif','wiki'),(15,'center text','::text::','images/ed_align_center.gif','wiki'),(16,'colored text','~~#FF0000:text~~','images/fontfamily.gif','wiki'),(17,'dynamic variable','%text%','images/book.gif','wiki'),(18,'image','{img src= width= height= align= desc= link= }','images/ed_image.gif','wiki'),(19,'New wms Metadata','METADATA\r\n		\"wms_name\" \"myname\"\r\n 	\"wms_srs\" \"EPSG:4326\"\r\n 	\"wms_server_version\" \" \"\r\n 	\"wms_layers\" \"mylayers\"\r\n 	\"wms_request\" \"myrequest\"\r\n 	\"wms_format\" \" \"\r\n 	\"wms_time\" \" \"\r\n END','img/icons/admin_metatags.png','maps'),(20,'New Class','CLASS\r\n EXPRESSION ()\r\n SYMBOL 0\r\n OUTLINECOLOR\r\n COLOR\r\n NAME \"myclass\" \r\nEND #end of class','img/icons/mini_triangle.gif','maps'),(21,'New Projection','PROJECTION\r\n \"init=epsg:4326\"\r\nEND','images/ico_mode.gif','maps'),(22,'New Query','#\r\n# Start of query definitions\r\n#\r\n QUERYMAP\r\n STATUS ON\r\n STYLE HILITE\r\nEND','img/icons/questions.gif','maps'),(23,'New Scalebar','#\r\n# Start of scalebar\r\n#\r\nSCALEBAR\r\n IMAGECOLOR 255 255 255\r\n STYLE 1\r\n SIZE 400 2\r\n COLOR 0 0 0\r\n UNITS KILOMETERS\r\n INTERVALS 5\r\n STATUS ON\r\nEND','img/icons/desc_length.gif','maps'),(24,'New Layer','LAYER\r\n NAME\r\n TYPE\r\n STATUS ON\r\n DATA \"mydata\"\r\nEND #end of layer','images/ed_copy.gif','maps'),(25,'New Label','LABEL\r\n COLOR\r\n ANGLE\r\n FONT arial\r\n TYPE TRUETYPE\r\n POSITION\r\n PARTIALS TRUE\r\n SIZE 6\r\n BUFFER 0\r\n OUTLINECOLOR \r\nEND #end of label','img/icons/fontfamily.gif','maps'),(26,'New Reference','#\r\n#start of reference\r\n#\r\n REFERENCE\r\n SIZE 120 60\r\n STATUS ON\r\n EXTENT -180 -90 182 88\r\n OUTLINECOLOR 255 0 0\r\n IMAGE \"myimagedata\"\r\n COLOR -1 -1 -1\r\nEND','images/ed_image.gif','maps'),(27,'New Legend','#\r\n#start of Legend\r\n#\r\n LEGEND\r\n KEYSIZE 18 12\r\n POSTLABELCACHE TRUE\r\n STATUS ON\r\nEND','images/ed_about.gif','maps'),(28,'New Web','#\r\n# Start of web interface definition\r\n#\r\nWEB\r\n TEMPLATE \"myfile/url\"\r\n MINSCALE 1000\r\n MAXSCALE 40000\r\n IMAGEPATH \"myimagepath\"\r\n IMAGEURL \"mypath\"\r\nEND','img/icons/ico_link.gif','maps'),(29,'New Outputformat','OUTPUTFORMAT\r\n NAME\r\n DRIVER \" \"\r\n MIMETYPE \"myimagetype\"\r\n IMAGEMODE RGB\r\n EXTENSION \"png\"\r\nEND','img/icons/opera.gif','maps'),(30,'New Mapfile','#\r\n# Start of mapfile\r\n#\r\nNAME MYMAPFLE\r\n STATUS ON\r\nSIZE \r\nEXTENT\r\nUNITS \r\nSHAPEPATH \" \"\r\nIMAGETYPE \" \"\r\nFONTSET \" \"\r\nIMAGECOLOR -1 -1 -1\r\n\r\n#remove this text and add objects here\r\n\r\nEND # end of mapfile','img/icons/global.gif','maps'),(31,'bold','__text__','images/ed_format_bold.gif','newsletters'),(32,'italic','\'\'text\'\'','images/ed_format_italic.gif','newsletters'),(33,'underline','===text===','images/ed_format_underline.gif','newsletters'),(34,'external link','[http://example.com|text|nocache]','images/ed_link.gif','newsletters'),(35,'heading1','!text','images/ed_custom.gif','newsletters'),(36,'hr','---','images/ed_hr.gif','newsletters'),(37,'center text','::text::','images/ed_align_center.gif','newsletters'),(38,'colored text','~~#FF0000:text~~','images/fontfamily.gif','newsletters'),(39,'image','{img src= width= height= align= desc= link= }','images/ed_image.gif','newsletters'),(40,'New wms Metadata','METADATA\r\n		\"wms_name\" \"myname\"\r\n		\"wms_srs\" \"EPSG:4326\"\r\n	\"wms_server_version\" \" \"\r\n	\"wms_layers\" \"mylayers\"\r\n	\"wms_request\" \"myrequest\"\r\n	\"wms_format\" \" \"\r\n	\"wms_time\" \" \"\r\n END','img/icons/admin_metatags.png','maps'),(41,'New Class','CLASS\r\n EXPRESSION ()\r\n SYMBOL 0\r\n OUTLINECOLOR\r\n COLOR\r\n  NAME \"myclass\"\r\nEND #end of class','img/icons/mini_triangle.gif','maps'),(42,'New Query','#\r\n#Start of query definitions\r\n QUERYMAP\r\n STATUS ON\r\n STYLE HILITE\r\nEND','img/icons/question.gif','maps'),(43,'New Scalebar','#\r\n#start of scalebar\r\nSCALEBAR\r\n IMAGECOLOR 255 255 255\r\n STYLE 1\r\n SIZE 400 2\r\n COLOR 0 0 0\r\n  UNITS KILOMETERS\r\n INTERVALS 5\r\n STATUS ON\r\nEND','img/icons/desc_lenght.gif','maps'),(44,'New Layer','LAYER\r\n NAME \"mylayer\"\r\n TYPE\r\n STATUS ON\r\n DATA \"mydata\"\r\nEND #end of layer','img/ed_copy.gif','maps'),(45,'New Label','LABEL\r\n  COLOR\r\n ANGLE\r\n FONT arial\r\n TYPE TRUETYPE\r\n  POSITION\r\n  PARTIALS TRUE\r\n  SIZE 6\r\n  BUFFER 0\r\n OUTLINECOLOR\r\nEND #end of label','img/icons/fontfamily.gif','maps'),(46,'New Reference','#\r\n#start of reference\r\nREFERENCE\r\n SIZE 120 60\r\n STATUS ON\r\n  EXTENT -180 -90 182 88\r\n OUTLINECOLOR 255 0 0\r\n IMAGE \"myimagedata\"\r\nCOLOR -1 -1 -1\r\nEND','images/ed_image.gif','maps'),(47,'New Legend','#\r\n#start of legend\r\n#\r\nLEGENDr\n KEYSIZE 18 12\r\n POSTLABELCACHE TRUE\r\n STATUS ON\r\nEND','images/ed_about.gif','maps'),(48,'New Web','#\r\n#Start of web interface definition\r\n#\r\nWEB\r\n TEMPLATE \"myfile/url\"\r\n MINSCALE 1000\r\n MAXSCALE 40000\r\n IMAGEPATH \"myimagepath\"\r\n IMAGEURL \"mypath\"\r\nEND','img/icons/ico_link.gif','maps'),(49,'New Mapfile','#\r\n#Start of mapfile\r\n#\r\nNAME MYMAPFILE\r\n STATUS ON\r\nSIZE \r\nEXTENT\r\n UNITS\r\nSHAPEPATH \" \"\r\nIMAGETYPE \" \"\r\nFONTSET \" \"\r\nIMAGECOLOR -1 -1 -1\r\n\r\n#remove this text and add objects here\r\n\r\nEND # end of mapfile','img/icons/global.gif','maps');
/*!40000 ALTER TABLE `tiki_quicktags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quiz_question_options`
--

DROP TABLE IF EXISTS `tiki_quiz_question_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quiz_question_options` (
  `optionId` int(10) NOT NULL auto_increment,
  `questionId` int(10) default NULL,
  `optionText` text,
  `points` int(4) default NULL,
  PRIMARY KEY  (`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quiz_question_options`
--

LOCK TABLES `tiki_quiz_question_options` WRITE;
/*!40000 ALTER TABLE `tiki_quiz_question_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_quiz_question_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quiz_questions`
--

DROP TABLE IF EXISTS `tiki_quiz_questions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quiz_questions` (
  `questionId` int(10) NOT NULL auto_increment,
  `quizId` int(10) default NULL,
  `question` text,
  `position` int(4) default NULL,
  `type` char(1) default NULL,
  `maxPoints` int(4) default NULL,
  PRIMARY KEY  (`questionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quiz_questions`
--

LOCK TABLES `tiki_quiz_questions` WRITE;
/*!40000 ALTER TABLE `tiki_quiz_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_quiz_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quiz_results`
--

DROP TABLE IF EXISTS `tiki_quiz_results`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quiz_results` (
  `resultId` int(10) NOT NULL auto_increment,
  `quizId` int(10) default NULL,
  `fromPoints` int(4) default NULL,
  `toPoints` int(4) default NULL,
  `answer` text,
  PRIMARY KEY  (`resultId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quiz_results`
--

LOCK TABLES `tiki_quiz_results` WRITE;
/*!40000 ALTER TABLE `tiki_quiz_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_quiz_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quiz_stats`
--

DROP TABLE IF EXISTS `tiki_quiz_stats`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quiz_stats` (
  `quizId` int(10) NOT NULL default '0',
  `questionId` int(10) NOT NULL default '0',
  `optionId` int(10) NOT NULL default '0',
  `votes` int(10) default NULL,
  PRIMARY KEY  (`quizId`,`questionId`,`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quiz_stats`
--

LOCK TABLES `tiki_quiz_stats` WRITE;
/*!40000 ALTER TABLE `tiki_quiz_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_quiz_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quiz_stats_sum`
--

DROP TABLE IF EXISTS `tiki_quiz_stats_sum`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quiz_stats_sum` (
  `quizId` int(10) NOT NULL default '0',
  `quizName` varchar(255) default NULL,
  `timesTaken` int(10) default NULL,
  `avgpoints` decimal(5,2) default NULL,
  `avgavg` decimal(5,2) default NULL,
  `avgtime` decimal(5,2) default NULL,
  PRIMARY KEY  (`quizId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quiz_stats_sum`
--

LOCK TABLES `tiki_quiz_stats_sum` WRITE;
/*!40000 ALTER TABLE `tiki_quiz_stats_sum` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_quiz_stats_sum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_quizzes`
--

DROP TABLE IF EXISTS `tiki_quizzes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_quizzes` (
  `quizId` int(10) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `canRepeat` char(1) default NULL,
  `storeResults` char(1) default NULL,
  `questionsPerPage` int(4) default NULL,
  `timeLimited` char(1) default NULL,
  `timeLimit` int(14) default NULL,
  `created` int(14) default NULL,
  `taken` int(10) default NULL,
  `immediateFeedback` char(1) default NULL,
  `showAnswers` char(1) default NULL,
  `shuffleQuestions` char(1) default NULL,
  `shuffleAnswers` char(1) default NULL,
  `publishDate` int(14) default NULL,
  `expireDate` int(14) default NULL,
  `bDeleted` char(1) default NULL,
  `nVersion` int(4) NOT NULL,
  `nAuthor` int(4) default NULL,
  `bOnline` char(1) default NULL,
  `bRandomQuestions` char(1) default NULL,
  `nRandomQuestions` tinyint(4) default NULL,
  `bLimitQuestionsPerPage` char(1) default NULL,
  `nLimitQuestionsPerPage` tinyint(4) default NULL,
  `bMultiSession` char(1) default NULL,
  `nCanRepeat` tinyint(4) default NULL,
  `sGradingMethod` varchar(80) default NULL,
  `sShowScore` varchar(80) default NULL,
  `sShowCorrectAnswers` varchar(80) default NULL,
  `sPublishStats` varchar(80) default NULL,
  `bAdditionalQuestions` char(1) default NULL,
  `bForum` char(1) default NULL,
  `sForum` varchar(80) default NULL,
  `sPrologue` text,
  `sData` text,
  `sEpilogue` text,
  `passingperct` int(4) default '0',
  PRIMARY KEY  (`quizId`,`nVersion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_quizzes`
--

LOCK TABLES `tiki_quizzes` WRITE;
/*!40000 ALTER TABLE `tiki_quizzes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_received_articles`
--

DROP TABLE IF EXISTS `tiki_received_articles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_received_articles` (
  `receivedArticleId` int(14) NOT NULL auto_increment,
  `receivedFromSite` varchar(200) default NULL,
  `receivedFromUser` varchar(200) default NULL,
  `receivedDate` int(14) default NULL,
  `title` varchar(80) default NULL,
  `authorName` varchar(60) default NULL,
  `size` int(12) default NULL,
  `useImage` char(1) default NULL,
  `image_name` varchar(80) default NULL,
  `image_type` varchar(80) default NULL,
  `image_size` int(14) default NULL,
  `image_x` int(4) default NULL,
  `image_y` int(4) default NULL,
  `image_data` longblob,
  `publishDate` int(14) default NULL,
  `expireDate` int(14) default NULL,
  `created` int(14) default NULL,
  `heading` text,
  `body` longblob,
  `hash` varchar(32) default NULL,
  `author` varchar(200) default NULL,
  `type` varchar(50) default NULL,
  `rating` decimal(3,2) default NULL,
  PRIMARY KEY  (`receivedArticleId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_received_articles`
--

LOCK TABLES `tiki_received_articles` WRITE;
/*!40000 ALTER TABLE `tiki_received_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_received_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_received_pages`
--

DROP TABLE IF EXISTS `tiki_received_pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_received_pages` (
  `receivedPageId` int(14) NOT NULL auto_increment,
  `pageName` varchar(160) NOT NULL default '',
  `data` longblob,
  `description` varchar(200) default NULL,
  `comment` varchar(200) default NULL,
  `receivedFromSite` varchar(200) default NULL,
  `receivedFromUser` varchar(200) default NULL,
  `receivedDate` int(14) default NULL,
  PRIMARY KEY  (`receivedPageId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_received_pages`
--

LOCK TABLES `tiki_received_pages` WRITE;
/*!40000 ALTER TABLE `tiki_received_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_received_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_referer_stats`
--

DROP TABLE IF EXISTS `tiki_referer_stats`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_referer_stats` (
  `referer` varchar(255) NOT NULL default '',
  `hits` int(10) default NULL,
  `last` int(14) default NULL,
  PRIMARY KEY  (`referer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_referer_stats`
--

LOCK TABLES `tiki_referer_stats` WRITE;
/*!40000 ALTER TABLE `tiki_referer_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_referer_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_related_categories`
--

DROP TABLE IF EXISTS `tiki_related_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_related_categories` (
  `categId` int(10) NOT NULL default '0',
  `relatedTo` int(10) NOT NULL default '0',
  PRIMARY KEY  (`categId`,`relatedTo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_related_categories`
--

LOCK TABLES `tiki_related_categories` WRITE;
/*!40000 ALTER TABLE `tiki_related_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_related_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_rss_feeds`
--

DROP TABLE IF EXISTS `tiki_rss_feeds`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_rss_feeds` (
  `name` varchar(30) NOT NULL default '',
  `rssVer` char(1) NOT NULL default '1',
  `refresh` int(8) default '300',
  `lastUpdated` int(14) default NULL,
  `cache` longblob,
  PRIMARY KEY  (`name`,`rssVer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_rss_feeds`
--

LOCK TABLES `tiki_rss_feeds` WRITE;
/*!40000 ALTER TABLE `tiki_rss_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_rss_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_rss_modules`
--

DROP TABLE IF EXISTS `tiki_rss_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_rss_modules` (
  `rssId` int(8) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL default '',
  `description` text,
  `url` varchar(255) NOT NULL default '',
  `refresh` int(8) default NULL,
  `lastUpdated` int(14) default NULL,
  `showTitle` char(1) default 'n',
  `showPubDate` char(1) default 'n',
  `content` longblob,
  PRIMARY KEY  (`rssId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_rss_modules`
--

LOCK TABLES `tiki_rss_modules` WRITE;
/*!40000 ALTER TABLE `tiki_rss_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_rss_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_score`
--

DROP TABLE IF EXISTS `tiki_score`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_score` (
  `event` varchar(40) NOT NULL default '',
  `score` int(11) NOT NULL default '0',
  `expiration` int(11) NOT NULL default '0',
  PRIMARY KEY  (`event`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_score`
--

LOCK TABLES `tiki_score` WRITE;
/*!40000 ALTER TABLE `tiki_score` DISABLE KEYS */;
INSERT INTO `tiki_score` VALUES ('login',1,0),('login_remain',2,60),('profile_fill',10,0),('profile_see',2,0),('profile_is_seen',1,0),('friend_new',10,0),('message_receive',1,0),('message_send',2,0),('article_read',2,0),('article_comment',5,0),('article_new',20,0),('article_is_read',1,0),('article_is_commented',2,0),('fgallery_new',10,0),('fgallery_new_file',10,0),('fgallery_download',5,0),('fgallery_is_downloaded',5,0),('igallery_new',10,0),('igallery_new_img',6,0),('igallery_see_img',3,0),('igallery_img_seen',1,0),('blog_new',20,0),('blog_post',5,0),('blog_read',2,0),('blog_comment',2,0),('blog_is_read',3,0),('blog_is_commented',3,0),('wiki_new',10,0),('wiki_edit',5,0),('wiki_attach_file',3,0);
/*!40000 ALTER TABLE `tiki_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_search_stats`
--

DROP TABLE IF EXISTS `tiki_search_stats`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_search_stats` (
  `term` varchar(50) NOT NULL default '',
  `hits` int(10) default NULL,
  PRIMARY KEY  (`term`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_search_stats`
--

LOCK TABLES `tiki_search_stats` WRITE;
/*!40000 ALTER TABLE `tiki_search_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_search_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_searchindex`
--

DROP TABLE IF EXISTS `tiki_searchindex`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_searchindex` (
  `searchword` varchar(80) NOT NULL default '',
  `location` varchar(80) NOT NULL default '',
  `page` varchar(255) NOT NULL default '',
  `count` int(11) NOT NULL default '1',
  `last_update` int(11) NOT NULL default '0',
  PRIMARY KEY  (`searchword`,`location`,`page`(80)),
  KEY `last_update` (`last_update`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_searchindex`
--

LOCK TABLES `tiki_searchindex` WRITE;
/*!40000 ALTER TABLE `tiki_searchindex` DISABLE KEYS */;
INSERT INTO `tiki_searchindex` VALUES ('homepage','wiki','HomePage',1,1273381367);
/*!40000 ALTER TABLE `tiki_searchindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_searchsyllable`
--

DROP TABLE IF EXISTS `tiki_searchsyllable`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_searchsyllable` (
  `syllable` varchar(80) NOT NULL default '',
  `lastUsed` int(11) NOT NULL default '0',
  `lastUpdated` int(11) NOT NULL default '0',
  PRIMARY KEY  (`syllable`),
  KEY `lastUsed` (`lastUsed`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_searchsyllable`
--

LOCK TABLES `tiki_searchsyllable` WRITE;
/*!40000 ALTER TABLE `tiki_searchsyllable` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_searchsyllable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_searchwords`
--

DROP TABLE IF EXISTS `tiki_searchwords`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_searchwords` (
  `syllable` varchar(80) NOT NULL default '',
  `searchword` varchar(80) NOT NULL default '',
  PRIMARY KEY  (`syllable`,`searchword`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_searchwords`
--

LOCK TABLES `tiki_searchwords` WRITE;
/*!40000 ALTER TABLE `tiki_searchwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_searchwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_secdb`
--

DROP TABLE IF EXISTS `tiki_secdb`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_secdb` (
  `md5_value` varchar(32) NOT NULL,
  `filename` varchar(250) NOT NULL,
  `tiki_version` varchar(60) NOT NULL,
  `severity` int(4) NOT NULL default '0',
  PRIMARY KEY  (`md5_value`,`filename`(100),`tiki_version`),
  KEY `sdb_fn` (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_secdb`
--

LOCK TABLES `tiki_secdb` WRITE;
/*!40000 ALTER TABLE `tiki_secdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_secdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_semaphores`
--

DROP TABLE IF EXISTS `tiki_semaphores`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_semaphores` (
  `semName` varchar(250) NOT NULL default '',
  `user` varchar(40) default NULL,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`semName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_semaphores`
--

LOCK TABLES `tiki_semaphores` WRITE;
/*!40000 ALTER TABLE `tiki_semaphores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_semaphores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_sent_newsletters`
--

DROP TABLE IF EXISTS `tiki_sent_newsletters`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_sent_newsletters` (
  `editionId` int(12) NOT NULL auto_increment,
  `nlId` int(12) NOT NULL default '0',
  `users` int(10) default NULL,
  `sent` int(14) default NULL,
  `subject` varchar(200) default NULL,
  `data` longblob,
  PRIMARY KEY  (`editionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_sent_newsletters`
--

LOCK TABLES `tiki_sent_newsletters` WRITE;
/*!40000 ALTER TABLE `tiki_sent_newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_sent_newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_sessions`
--

DROP TABLE IF EXISTS `tiki_sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_sessions` (
  `sessionId` varchar(32) NOT NULL default '',
  `user` varchar(40) default NULL,
  `timestamp` int(14) default NULL,
  `tikihost` varchar(200) default NULL,
  PRIMARY KEY  (`sessionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_sessions`
--

LOCK TABLES `tiki_sessions` WRITE;
/*!40000 ALTER TABLE `tiki_sessions` DISABLE KEYS */;
INSERT INTO `tiki_sessions` VALUES ('ad513d86d7caef88275b773ed9dfb9e9',NULL,1336968842,'192.168.0.238'),('5a8c0c6da5d8e7d04bdc90d7508c2379',NULL,1336968841,'192.168.0.238'),('db0d078902e4370a003d644f475677b2',NULL,1336968837,'192.168.0.238');
/*!40000 ALTER TABLE `tiki_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_sheet_layout`
--

DROP TABLE IF EXISTS `tiki_sheet_layout`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_sheet_layout` (
  `sheetId` int(8) NOT NULL default '0',
  `begin` int(10) NOT NULL default '0',
  `end` int(10) default NULL,
  `headerRow` int(4) NOT NULL default '0',
  `footerRow` int(4) NOT NULL default '0',
  `className` varchar(64) default NULL,
  UNIQUE KEY `sheetId` (`sheetId`,`begin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_sheet_layout`
--

LOCK TABLES `tiki_sheet_layout` WRITE;
/*!40000 ALTER TABLE `tiki_sheet_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_sheet_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_sheet_values`
--

DROP TABLE IF EXISTS `tiki_sheet_values`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_sheet_values` (
  `sheetId` int(8) NOT NULL default '0',
  `begin` int(10) NOT NULL default '0',
  `end` int(10) default NULL,
  `rowIndex` int(4) NOT NULL default '0',
  `columnIndex` int(4) NOT NULL default '0',
  `value` varchar(255) default NULL,
  `calculation` varchar(255) default NULL,
  `width` int(4) NOT NULL default '1',
  `height` int(4) NOT NULL default '1',
  `format` varchar(255) default NULL,
  UNIQUE KEY `sheetId` (`sheetId`,`begin`,`rowIndex`,`columnIndex`),
  KEY `sheetId_2` (`sheetId`,`rowIndex`,`columnIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_sheet_values`
--

LOCK TABLES `tiki_sheet_values` WRITE;
/*!40000 ALTER TABLE `tiki_sheet_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_sheet_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_sheets`
--

DROP TABLE IF EXISTS `tiki_sheets`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_sheets` (
  `sheetId` int(8) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL default '',
  `description` text,
  `author` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`sheetId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_sheets`
--

LOCK TABLES `tiki_sheets` WRITE;
/*!40000 ALTER TABLE `tiki_sheets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_sheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_shoutbox`
--

DROP TABLE IF EXISTS `tiki_shoutbox`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_shoutbox` (
  `msgId` int(10) NOT NULL auto_increment,
  `message` varchar(255) default NULL,
  `timestamp` int(14) default NULL,
  `user` varchar(40) default NULL,
  `hash` varchar(32) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_shoutbox`
--

LOCK TABLES `tiki_shoutbox` WRITE;
/*!40000 ALTER TABLE `tiki_shoutbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_shoutbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_shoutbox_words`
--

DROP TABLE IF EXISTS `tiki_shoutbox_words`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_shoutbox_words` (
  `word` varchar(40) NOT NULL,
  `qty` int(11) NOT NULL default '0',
  PRIMARY KEY  (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_shoutbox_words`
--

LOCK TABLES `tiki_shoutbox_words` WRITE;
/*!40000 ALTER TABLE `tiki_shoutbox_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_shoutbox_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_stats`
--

DROP TABLE IF EXISTS `tiki_stats`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_stats` (
  `object` varchar(255) NOT NULL default '',
  `type` varchar(20) NOT NULL default '',
  `day` int(14) NOT NULL default '0',
  `hits` int(14) NOT NULL default '0',
  PRIMARY KEY  (`object`,`type`,`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_stats`
--

LOCK TABLES `tiki_stats` WRITE;
/*!40000 ALTER TABLE `tiki_stats` DISABLE KEYS */;
INSERT INTO `tiki_stats` VALUES ('HomePage','wiki',1271390400,3),('HomePage','wiki',1271649600,16);
/*!40000 ALTER TABLE `tiki_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_structure_versions`
--

DROP TABLE IF EXISTS `tiki_structure_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_structure_versions` (
  `structure_id` int(14) NOT NULL auto_increment,
  `version` int(14) default NULL,
  PRIMARY KEY  (`structure_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_structure_versions`
--

LOCK TABLES `tiki_structure_versions` WRITE;
/*!40000 ALTER TABLE `tiki_structure_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_structure_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_structures`
--

DROP TABLE IF EXISTS `tiki_structures`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_structures` (
  `page_ref_id` int(14) NOT NULL auto_increment,
  `structure_id` int(14) NOT NULL,
  `parent_id` int(14) default NULL,
  `page_id` int(14) NOT NULL,
  `page_version` int(8) default NULL,
  `page_alias` varchar(240) NOT NULL default '',
  `pos` int(4) default NULL,
  PRIMARY KEY  (`page_ref_id`),
  KEY `pidpaid` (`page_id`,`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_structures`
--

LOCK TABLES `tiki_structures` WRITE;
/*!40000 ALTER TABLE `tiki_structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_submissions`
--

DROP TABLE IF EXISTS `tiki_submissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_submissions` (
  `subId` int(8) NOT NULL auto_increment,
  `topline` varchar(255) default NULL,
  `title` varchar(80) default NULL,
  `subtitle` varchar(255) default NULL,
  `linkto` varchar(255) default NULL,
  `lang` varchar(16) default NULL,
  `authorName` varchar(60) default NULL,
  `topicId` int(14) default NULL,
  `topicName` varchar(40) default NULL,
  `size` int(12) default NULL,
  `useImage` char(1) default NULL,
  `image_name` varchar(80) default NULL,
  `image_caption` text,
  `image_type` varchar(80) default NULL,
  `image_size` int(14) default NULL,
  `image_x` int(4) default NULL,
  `image_y` int(4) default NULL,
  `image_data` longblob,
  `publishDate` int(14) default NULL,
  `expireDate` int(14) default NULL,
  `created` int(14) default NULL,
  `bibliographical_references` text,
  `resume` text,
  `heading` text,
  `body` text,
  `hash` varchar(32) default NULL,
  `author` varchar(200) default NULL,
  `nbreads` int(14) default NULL,
  `votes` int(8) default NULL,
  `points` int(14) default NULL,
  `type` varchar(50) default NULL,
  `rating` decimal(3,2) default NULL,
  `isfloat` char(1) default NULL,
  PRIMARY KEY  (`subId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_submissions`
--

LOCK TABLES `tiki_submissions` WRITE;
/*!40000 ALTER TABLE `tiki_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_suggested_faq_questions`
--

DROP TABLE IF EXISTS `tiki_suggested_faq_questions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_suggested_faq_questions` (
  `sfqId` int(10) NOT NULL auto_increment,
  `faqId` int(10) NOT NULL default '0',
  `question` text,
  `answer` text,
  `created` int(14) default NULL,
  `user` varchar(40) default NULL,
  PRIMARY KEY  (`sfqId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_suggested_faq_questions`
--

LOCK TABLES `tiki_suggested_faq_questions` WRITE;
/*!40000 ALTER TABLE `tiki_suggested_faq_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_suggested_faq_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_survey_question_options`
--

DROP TABLE IF EXISTS `tiki_survey_question_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_survey_question_options` (
  `optionId` int(12) NOT NULL auto_increment,
  `questionId` int(12) NOT NULL default '0',
  `qoption` text,
  `votes` int(10) default NULL,
  PRIMARY KEY  (`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_survey_question_options`
--

LOCK TABLES `tiki_survey_question_options` WRITE;
/*!40000 ALTER TABLE `tiki_survey_question_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_survey_question_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_survey_questions`
--

DROP TABLE IF EXISTS `tiki_survey_questions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_survey_questions` (
  `questionId` int(12) NOT NULL auto_increment,
  `surveyId` int(12) NOT NULL default '0',
  `question` text,
  `options` text,
  `type` char(1) default NULL,
  `position` int(5) default NULL,
  `votes` int(10) default NULL,
  `value` int(10) default NULL,
  `average` decimal(4,2) default NULL,
  PRIMARY KEY  (`questionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_survey_questions`
--

LOCK TABLES `tiki_survey_questions` WRITE;
/*!40000 ALTER TABLE `tiki_survey_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_surveys`
--

DROP TABLE IF EXISTS `tiki_surveys`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_surveys` (
  `surveyId` int(12) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `description` text,
  `taken` int(10) default NULL,
  `lastTaken` int(14) default NULL,
  `created` int(14) default NULL,
  `status` char(1) default NULL,
  PRIMARY KEY  (`surveyId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_surveys`
--

LOCK TABLES `tiki_surveys` WRITE;
/*!40000 ALTER TABLE `tiki_surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tags`
--

DROP TABLE IF EXISTS `tiki_tags`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tags` (
  `tagName` varchar(80) NOT NULL default '',
  `pageName` varchar(160) NOT NULL default '',
  `hits` int(8) default NULL,
  `description` varchar(200) default NULL,
  `data` longblob,
  `lastModif` int(14) default NULL,
  `comment` varchar(200) default NULL,
  `version` int(8) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `ip` varchar(15) default NULL,
  `flag` char(1) default NULL,
  PRIMARY KEY  (`tagName`,`pageName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tags`
--

LOCK TABLES `tiki_tags` WRITE;
/*!40000 ALTER TABLE `tiki_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_theme_control_categs`
--

DROP TABLE IF EXISTS `tiki_theme_control_categs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_theme_control_categs` (
  `categId` int(12) NOT NULL default '0',
  `theme` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`categId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_theme_control_categs`
--

LOCK TABLES `tiki_theme_control_categs` WRITE;
/*!40000 ALTER TABLE `tiki_theme_control_categs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_theme_control_categs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_theme_control_objects`
--

DROP TABLE IF EXISTS `tiki_theme_control_objects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_theme_control_objects` (
  `objId` varchar(250) NOT NULL default '',
  `type` varchar(250) NOT NULL default '',
  `name` varchar(250) NOT NULL default '',
  `theme` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`objId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_theme_control_objects`
--

LOCK TABLES `tiki_theme_control_objects` WRITE;
/*!40000 ALTER TABLE `tiki_theme_control_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_theme_control_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_theme_control_sections`
--

DROP TABLE IF EXISTS `tiki_theme_control_sections`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_theme_control_sections` (
  `section` varchar(250) NOT NULL default '',
  `theme` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`section`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_theme_control_sections`
--

LOCK TABLES `tiki_theme_control_sections` WRITE;
/*!40000 ALTER TABLE `tiki_theme_control_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_theme_control_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_topics`
--

DROP TABLE IF EXISTS `tiki_topics`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_topics` (
  `topicId` int(14) NOT NULL auto_increment,
  `name` varchar(40) default NULL,
  `image_name` varchar(80) default NULL,
  `image_type` varchar(80) default NULL,
  `image_size` int(14) default NULL,
  `image_data` longblob,
  `active` char(1) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`topicId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_topics`
--

LOCK TABLES `tiki_topics` WRITE;
/*!40000 ALTER TABLE `tiki_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tracker_fields`
--

DROP TABLE IF EXISTS `tiki_tracker_fields`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tracker_fields` (
  `fieldId` int(12) NOT NULL auto_increment,
  `trackerId` int(12) NOT NULL default '0',
  `name` varchar(255) default NULL,
  `options` text,
  `type` char(1) default NULL,
  `isMain` char(1) default NULL,
  `isTblVisible` char(1) default NULL,
  `position` int(4) default NULL,
  `isSearchable` char(1) NOT NULL default 'y',
  `isPublic` char(1) NOT NULL default 'n',
  `isHidden` char(1) NOT NULL default 'n',
  `isMandatory` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`fieldId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tracker_fields`
--

LOCK TABLES `tiki_tracker_fields` WRITE;
/*!40000 ALTER TABLE `tiki_tracker_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tracker_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tracker_item_attachments`
--

DROP TABLE IF EXISTS `tiki_tracker_item_attachments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tracker_item_attachments` (
  `attId` int(12) NOT NULL auto_increment,
  `itemId` int(12) NOT NULL default '0',
  `filename` varchar(80) default NULL,
  `filetype` varchar(80) default NULL,
  `filesize` int(14) default NULL,
  `user` varchar(40) default NULL,
  `data` longblob,
  `path` varchar(255) default NULL,
  `downloads` int(10) default NULL,
  `created` int(14) default NULL,
  `comment` varchar(250) default NULL,
  `longdesc` blob,
  `version` varchar(40) default NULL,
  PRIMARY KEY  (`attId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tracker_item_attachments`
--

LOCK TABLES `tiki_tracker_item_attachments` WRITE;
/*!40000 ALTER TABLE `tiki_tracker_item_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tracker_item_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tracker_item_comments`
--

DROP TABLE IF EXISTS `tiki_tracker_item_comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tracker_item_comments` (
  `commentId` int(12) NOT NULL auto_increment,
  `itemId` int(12) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `data` text,
  `title` varchar(200) default NULL,
  `posted` int(14) default NULL,
  PRIMARY KEY  (`commentId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tracker_item_comments`
--

LOCK TABLES `tiki_tracker_item_comments` WRITE;
/*!40000 ALTER TABLE `tiki_tracker_item_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tracker_item_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tracker_item_fields`
--

DROP TABLE IF EXISTS `tiki_tracker_item_fields`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tracker_item_fields` (
  `itemId` int(12) NOT NULL default '0',
  `fieldId` int(12) NOT NULL default '0',
  `value` text,
  PRIMARY KEY  (`itemId`,`fieldId`),
  FULLTEXT KEY `ft` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tracker_item_fields`
--

LOCK TABLES `tiki_tracker_item_fields` WRITE;
/*!40000 ALTER TABLE `tiki_tracker_item_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tracker_item_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tracker_items`
--

DROP TABLE IF EXISTS `tiki_tracker_items`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tracker_items` (
  `itemId` int(12) NOT NULL auto_increment,
  `trackerId` int(12) NOT NULL default '0',
  `created` int(14) default NULL,
  `status` char(1) default NULL,
  `lastModif` int(14) default NULL,
  PRIMARY KEY  (`itemId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tracker_items`
--

LOCK TABLES `tiki_tracker_items` WRITE;
/*!40000 ALTER TABLE `tiki_tracker_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tracker_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_tracker_options`
--

DROP TABLE IF EXISTS `tiki_tracker_options`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_tracker_options` (
  `trackerId` int(12) NOT NULL default '0',
  `name` varchar(80) NOT NULL default '',
  `value` text,
  PRIMARY KEY  (`trackerId`,`name`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_tracker_options`
--

LOCK TABLES `tiki_tracker_options` WRITE;
/*!40000 ALTER TABLE `tiki_tracker_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_tracker_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_trackers`
--

DROP TABLE IF EXISTS `tiki_trackers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_trackers` (
  `trackerId` int(12) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `lastModif` int(14) default NULL,
  `showCreated` char(1) default NULL,
  `showStatus` char(1) default NULL,
  `showLastModif` char(1) default NULL,
  `useComments` char(1) default NULL,
  `useAttachments` char(1) default NULL,
  `items` int(10) default NULL,
  `showComments` char(1) default NULL,
  `showAttachments` char(1) default NULL,
  `orderAttachments` varchar(255) NOT NULL default 'filename,created,filesize,downloads,desc',
  PRIMARY KEY  (`trackerId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_trackers`
--

LOCK TABLES `tiki_trackers` WRITE;
/*!40000 ALTER TABLE `tiki_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_translated_objects`
--

DROP TABLE IF EXISTS `tiki_translated_objects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_translated_objects` (
  `traId` int(14) NOT NULL auto_increment,
  `type` varchar(50) NOT NULL,
  `objId` varchar(255) NOT NULL,
  `lang` varchar(16) default NULL,
  PRIMARY KEY  (`type`,`objId`),
  KEY `traId` (`traId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_translated_objects`
--

LOCK TABLES `tiki_translated_objects` WRITE;
/*!40000 ALTER TABLE `tiki_translated_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_translated_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_untranslated`
--

DROP TABLE IF EXISTS `tiki_untranslated`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_untranslated` (
  `id` int(14) NOT NULL auto_increment,
  `source` tinyblob NOT NULL,
  `lang` char(16) NOT NULL default '',
  PRIMARY KEY  (`source`(255),`lang`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_untranslated`
--

LOCK TABLES `tiki_untranslated` WRITE;
/*!40000 ALTER TABLE `tiki_untranslated` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_untranslated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_answers`
--

DROP TABLE IF EXISTS `tiki_user_answers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_answers` (
  `userResultId` int(10) NOT NULL default '0',
  `quizId` int(10) NOT NULL default '0',
  `questionId` int(10) NOT NULL default '0',
  `optionId` int(10) NOT NULL default '0',
  PRIMARY KEY  (`userResultId`,`quizId`,`questionId`,`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_answers`
--

LOCK TABLES `tiki_user_answers` WRITE;
/*!40000 ALTER TABLE `tiki_user_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_answers_uploads`
--

DROP TABLE IF EXISTS `tiki_user_answers_uploads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_answers_uploads` (
  `answerUploadId` int(4) NOT NULL auto_increment,
  `userResultId` int(11) NOT NULL default '0',
  `questionId` int(11) NOT NULL default '0',
  `filename` varchar(255) NOT NULL default '',
  `filetype` varchar(64) NOT NULL default '',
  `filesize` varchar(255) NOT NULL default '',
  `filecontent` longblob NOT NULL,
  PRIMARY KEY  (`answerUploadId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_answers_uploads`
--

LOCK TABLES `tiki_user_answers_uploads` WRITE;
/*!40000 ALTER TABLE `tiki_user_answers_uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_answers_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_assigned_modules`
--

DROP TABLE IF EXISTS `tiki_user_assigned_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_assigned_modules` (
  `name` varchar(200) NOT NULL default '',
  `position` char(1) default NULL,
  `ord` int(4) default NULL,
  `type` char(1) default NULL,
  `user` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`name`,`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_assigned_modules`
--

LOCK TABLES `tiki_user_assigned_modules` WRITE;
/*!40000 ALTER TABLE `tiki_user_assigned_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_assigned_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_bookmarks_folders`
--

DROP TABLE IF EXISTS `tiki_user_bookmarks_folders`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_bookmarks_folders` (
  `folderId` int(12) NOT NULL auto_increment,
  `parentId` int(12) default NULL,
  `user` varchar(40) NOT NULL default '',
  `name` varchar(30) default NULL,
  PRIMARY KEY  (`user`,`folderId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_bookmarks_folders`
--

LOCK TABLES `tiki_user_bookmarks_folders` WRITE;
/*!40000 ALTER TABLE `tiki_user_bookmarks_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_bookmarks_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_bookmarks_urls`
--

DROP TABLE IF EXISTS `tiki_user_bookmarks_urls`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_bookmarks_urls` (
  `urlId` int(12) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `url` varchar(250) default NULL,
  `data` longblob,
  `lastUpdated` int(14) default NULL,
  `folderId` int(12) NOT NULL default '0',
  `user` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`urlId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_bookmarks_urls`
--

LOCK TABLES `tiki_user_bookmarks_urls` WRITE;
/*!40000 ALTER TABLE `tiki_user_bookmarks_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_bookmarks_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_mail_accounts`
--

DROP TABLE IF EXISTS `tiki_user_mail_accounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_mail_accounts` (
  `accountId` int(12) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  `account` varchar(50) NOT NULL default '',
  `pop` varchar(255) default NULL,
  `current` char(1) default NULL,
  `port` int(4) default NULL,
  `username` varchar(100) default NULL,
  `pass` varchar(100) default NULL,
  `msgs` int(4) default NULL,
  `smtp` varchar(255) default NULL,
  `useAuth` char(1) default NULL,
  `smtpPort` int(4) default NULL,
  PRIMARY KEY  (`accountId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_mail_accounts`
--

LOCK TABLES `tiki_user_mail_accounts` WRITE;
/*!40000 ALTER TABLE `tiki_user_mail_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_mail_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_menus`
--

DROP TABLE IF EXISTS `tiki_user_menus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_menus` (
  `user` varchar(40) NOT NULL default '',
  `menuId` int(12) NOT NULL auto_increment,
  `url` varchar(250) default NULL,
  `name` varchar(40) default NULL,
  `position` int(4) default NULL,
  `mode` char(1) default NULL,
  PRIMARY KEY  (`menuId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_menus`
--

LOCK TABLES `tiki_user_menus` WRITE;
/*!40000 ALTER TABLE `tiki_user_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_modules`
--

DROP TABLE IF EXISTS `tiki_user_modules`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_modules` (
  `name` varchar(200) NOT NULL default '',
  `title` varchar(40) default NULL,
  `data` longblob,
  `parse` char(1) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_modules`
--

LOCK TABLES `tiki_user_modules` WRITE;
/*!40000 ALTER TABLE `tiki_user_modules` DISABLE KEYS */;
INSERT INTO `tiki_user_modules` VALUES ('mnu_application_menu','Menu','{menu id=42}','n');
/*!40000 ALTER TABLE `tiki_user_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_notes`
--

DROP TABLE IF EXISTS `tiki_user_notes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_notes` (
  `user` varchar(40) NOT NULL default '',
  `noteId` int(12) NOT NULL auto_increment,
  `created` int(14) default NULL,
  `name` varchar(255) default NULL,
  `lastModif` int(14) default NULL,
  `data` text,
  `size` int(14) default NULL,
  `parse_mode` varchar(20) default NULL,
  PRIMARY KEY  (`noteId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_notes`
--

LOCK TABLES `tiki_user_notes` WRITE;
/*!40000 ALTER TABLE `tiki_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_postings`
--

DROP TABLE IF EXISTS `tiki_user_postings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_postings` (
  `user` varchar(40) NOT NULL default '',
  `posts` int(12) default NULL,
  `last` int(14) default NULL,
  `first` int(14) default NULL,
  `level` int(8) default NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_postings`
--

LOCK TABLES `tiki_user_postings` WRITE;
/*!40000 ALTER TABLE `tiki_user_postings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_postings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_preferences`
--

DROP TABLE IF EXISTS `tiki_user_preferences`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_preferences` (
  `user` varchar(40) NOT NULL default '',
  `prefName` varchar(40) NOT NULL default '',
  `value` varchar(250) default NULL,
  PRIMARY KEY  (`user`,`prefName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_preferences`
--

LOCK TABLES `tiki_user_preferences` WRITE;
/*!40000 ALTER TABLE `tiki_user_preferences` DISABLE KEYS */;
INSERT INTO `tiki_user_preferences` VALUES ('admin','realName','System Administrator');
/*!40000 ALTER TABLE `tiki_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_quizzes`
--

DROP TABLE IF EXISTS `tiki_user_quizzes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_quizzes` (
  `user` varchar(40) default NULL,
  `quizId` int(10) default NULL,
  `timestamp` int(14) default NULL,
  `timeTaken` int(14) default NULL,
  `points` int(12) default NULL,
  `maxPoints` int(12) default NULL,
  `resultId` int(10) default NULL,
  `userResultId` int(10) NOT NULL auto_increment,
  PRIMARY KEY  (`userResultId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_quizzes`
--

LOCK TABLES `tiki_user_quizzes` WRITE;
/*!40000 ALTER TABLE `tiki_user_quizzes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_taken_quizzes`
--

DROP TABLE IF EXISTS `tiki_user_taken_quizzes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_taken_quizzes` (
  `user` varchar(40) NOT NULL default '',
  `quizId` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`user`,`quizId`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_taken_quizzes`
--

LOCK TABLES `tiki_user_taken_quizzes` WRITE;
/*!40000 ALTER TABLE `tiki_user_taken_quizzes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_taken_quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_tasks`
--

DROP TABLE IF EXISTS `tiki_user_tasks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_tasks` (
  `taskId` int(14) NOT NULL auto_increment,
  `last_version` int(4) NOT NULL default '0',
  `user` varchar(40) NOT NULL default '',
  `creator` varchar(200) NOT NULL,
  `public_for_group` varchar(30) default NULL,
  `rights_by_creator` char(1) default NULL,
  `created` int(14) NOT NULL,
  `status` char(1) default NULL,
  `priority` int(2) default NULL,
  `completed` int(14) default NULL,
  `percentage` int(4) default NULL,
  PRIMARY KEY  (`taskId`),
  UNIQUE KEY `creator` (`creator`,`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_tasks`
--

LOCK TABLES `tiki_user_tasks` WRITE;
/*!40000 ALTER TABLE `tiki_user_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_tasks_history`
--

DROP TABLE IF EXISTS `tiki_user_tasks_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_tasks_history` (
  `belongs_to` int(14) NOT NULL,
  `task_version` int(4) NOT NULL default '0',
  `title` varchar(250) NOT NULL,
  `description` text,
  `start` int(14) default NULL,
  `end` int(14) default NULL,
  `lasteditor` varchar(200) NOT NULL,
  `lastchanges` int(14) NOT NULL,
  `priority` int(2) NOT NULL default '3',
  `completed` int(14) default NULL,
  `deleted` int(14) default NULL,
  `status` char(1) default NULL,
  `percentage` int(4) default NULL,
  `accepted_creator` char(1) default NULL,
  `accepted_user` char(1) default NULL,
  PRIMARY KEY  (`belongs_to`,`task_version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_tasks_history`
--

LOCK TABLES `tiki_user_tasks_history` WRITE;
/*!40000 ALTER TABLE `tiki_user_tasks_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_tasks_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_votings`
--

DROP TABLE IF EXISTS `tiki_user_votings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_votings` (
  `user` varchar(40) NOT NULL default '',
  `id` varchar(255) NOT NULL default '',
  `optionId` int(10) NOT NULL default '0',
  PRIMARY KEY  (`user`,`id`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_votings`
--

LOCK TABLES `tiki_user_votings` WRITE;
/*!40000 ALTER TABLE `tiki_user_votings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_votings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_user_watches`
--

DROP TABLE IF EXISTS `tiki_user_watches`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_user_watches` (
  `user` varchar(40) NOT NULL default '',
  `event` varchar(40) NOT NULL default '',
  `object` varchar(200) NOT NULL default '',
  `hash` varchar(32) default NULL,
  `title` varchar(250) default NULL,
  `type` varchar(200) default NULL,
  `url` varchar(250) default NULL,
  `email` varchar(200) default NULL,
  PRIMARY KEY  (`user`,`event`,`object`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_user_watches`
--

LOCK TABLES `tiki_user_watches` WRITE;
/*!40000 ALTER TABLE `tiki_user_watches` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_user_watches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_userfiles`
--

DROP TABLE IF EXISTS `tiki_userfiles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_userfiles` (
  `user` varchar(40) NOT NULL default '',
  `fileId` int(12) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `filename` varchar(200) default NULL,
  `filetype` varchar(200) default NULL,
  `filesize` varchar(200) default NULL,
  `data` longblob,
  `hits` int(8) default NULL,
  `isFile` char(1) default NULL,
  `path` varchar(255) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`fileId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_userfiles`
--

LOCK TABLES `tiki_userfiles` WRITE;
/*!40000 ALTER TABLE `tiki_userfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_userfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_userpoints`
--

DROP TABLE IF EXISTS `tiki_userpoints`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_userpoints` (
  `user` varchar(40) default NULL,
  `points` decimal(8,2) default NULL,
  `voted` int(8) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_userpoints`
--

LOCK TABLES `tiki_userpoints` WRITE;
/*!40000 ALTER TABLE `tiki_userpoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_userpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_users`
--

DROP TABLE IF EXISTS `tiki_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_users` (
  `user` varchar(40) NOT NULL default '',
  `password` varchar(40) default NULL,
  `email` varchar(200) default NULL,
  `lastLogin` int(14) default NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_users`
--

LOCK TABLES `tiki_users` WRITE;
/*!40000 ALTER TABLE `tiki_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_users_score`
--

DROP TABLE IF EXISTS `tiki_users_score`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_users_score` (
  `user` char(40) NOT NULL default '',
  `event_id` char(40) NOT NULL default '',
  `expire` int(14) NOT NULL default '0',
  `tstamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user`,`event_id`),
  KEY `user` (`user`,`event_id`,`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_users_score`
--

LOCK TABLES `tiki_users_score` WRITE;
/*!40000 ALTER TABLE `tiki_users_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_users_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_webmail_contacts`
--

DROP TABLE IF EXISTS `tiki_webmail_contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_webmail_contacts` (
  `contactId` int(12) NOT NULL auto_increment,
  `firstName` varchar(80) default NULL,
  `lastName` varchar(80) default NULL,
  `email` varchar(250) default NULL,
  `nickname` varchar(200) default NULL,
  `user` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`contactId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_webmail_contacts`
--

LOCK TABLES `tiki_webmail_contacts` WRITE;
/*!40000 ALTER TABLE `tiki_webmail_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_webmail_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_webmail_messages`
--

DROP TABLE IF EXISTS `tiki_webmail_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_webmail_messages` (
  `accountId` int(12) NOT NULL default '0',
  `mailId` varchar(255) NOT NULL default '',
  `user` varchar(40) NOT NULL default '',
  `isRead` char(1) default NULL,
  `isReplied` char(1) default NULL,
  `isFlagged` char(1) default NULL,
  PRIMARY KEY  (`accountId`,`mailId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_webmail_messages`
--

LOCK TABLES `tiki_webmail_messages` WRITE;
/*!40000 ALTER TABLE `tiki_webmail_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_webmail_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_wiki_attachments`
--

DROP TABLE IF EXISTS `tiki_wiki_attachments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_wiki_attachments` (
  `attId` int(12) NOT NULL auto_increment,
  `page` varchar(200) NOT NULL default '',
  `filename` varchar(80) default NULL,
  `filetype` varchar(80) default NULL,
  `filesize` int(14) default NULL,
  `user` varchar(40) default NULL,
  `data` longblob,
  `path` varchar(255) default NULL,
  `downloads` int(10) default NULL,
  `created` int(14) default NULL,
  `comment` varchar(250) default NULL,
  PRIMARY KEY  (`attId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_wiki_attachments`
--

LOCK TABLES `tiki_wiki_attachments` WRITE;
/*!40000 ALTER TABLE `tiki_wiki_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_wiki_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiki_zones`
--

DROP TABLE IF EXISTS `tiki_zones`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tiki_zones` (
  `zone` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tiki_zones`
--

LOCK TABLES `tiki_zones` WRITE;
/*!40000 ALTER TABLE `tiki_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiki_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_grouppermissions`
--

DROP TABLE IF EXISTS `users_grouppermissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_grouppermissions` (
  `groupName` varchar(255) NOT NULL default '',
  `permName` varchar(30) NOT NULL default '',
  `value` char(1) default '',
  PRIMARY KEY  (`groupName`(30),`permName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_grouppermissions`
--

LOCK TABLES `users_grouppermissions` WRITE;
/*!40000 ALTER TABLE `users_grouppermissions` DISABLE KEYS */;
INSERT INTO `users_grouppermissions` VALUES ('Anonymous','tiki_p_view',''),('Anonymous','tiki_p_wiki_view_history',''),('Anonymous','tiki_p_wiki_view_comments','');
/*!40000 ALTER TABLE `users_grouppermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_groups` (
  `groupName` varchar(255) NOT NULL default '',
  `groupDesc` varchar(255) default NULL,
  `groupHome` varchar(255) default NULL,
  `usersTrackerId` int(11) default NULL,
  `groupTrackerId` int(11) default NULL,
  `usersFieldId` int(11) default NULL,
  `groupFieldId` int(11) default NULL,
  PRIMARY KEY  (`groupName`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES ('Anonymous','Public users not logged',NULL,NULL,NULL,NULL,NULL),('Registered','Users logged into the system',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_objectpermissions`
--

DROP TABLE IF EXISTS `users_objectpermissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_objectpermissions` (
  `groupName` varchar(255) NOT NULL default '',
  `permName` varchar(30) NOT NULL default '',
  `objectType` varchar(20) NOT NULL default '',
  `objectId` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`objectId`,`objectType`,`groupName`(30),`permName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_objectpermissions`
--

LOCK TABLES `users_objectpermissions` WRITE;
/*!40000 ALTER TABLE `users_objectpermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_objectpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permissions`
--

DROP TABLE IF EXISTS `users_permissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_permissions` (
  `permName` varchar(30) NOT NULL default '',
  `permDesc` varchar(250) default NULL,
  `level` varchar(80) default NULL,
  `type` varchar(20) default NULL,
  PRIMARY KEY  (`permName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_permissions`
--

LOCK TABLES `users_permissions` WRITE;
/*!40000 ALTER TABLE `users_permissions` DISABLE KEYS */;
INSERT INTO `users_permissions` VALUES ('tiki_p_abort_instance','Can abort a process instance','editors','workflow'),('tiki_p_access_closed_site','Can access site when closed','admin','tiki'),('tiki_p_add_events','Can add events in the calendar','registered','calendar'),('tiki_p_admin','Administrator, can manage users groups and permissions, Hotwords and all the weblog features','admin','tiki'),('tiki_p_admin_banners','Administrator, can admin banners','admin','tiki'),('tiki_p_admin_banning','Can ban users or ips','admin','tiki'),('tiki_p_admin_calendar','Can create/admin calendars','admin','calendar'),('tiki_p_admin_categories','Can admin categories','editors','tiki'),('tiki_p_admin_charts','Can admin charts','admin','charts'),('tiki_p_admin_chat','Administrator, can create channels remove channels etc','editors','chat'),('tiki_p_admin_cms','Can admin the cms','editors','cms'),('tiki_p_admin_directory','Can admin the directory','editors','directory'),('tiki_p_admin_directory_cats','Can admin directory categories','editors','directory'),('tiki_p_admin_directory_sites','Can admin directory sites','editors','directory'),('tiki_p_admin_drawings','Can admin drawings','editors','drawings'),('tiki_p_admin_dynamic','Can admin the dynamic content system','editors','tiki'),('tiki_p_admin_faqs','Can admin faqs','editors','faqs'),('tiki_p_admin_file_galleries','Can admin file galleries','editors','file galleries'),('tiki_p_admin_forum','Can admin forums','editors','forums'),('tiki_p_admin_galleries','Can admin Image Galleries','editors','image galleries'),('tiki_p_admin_games','Can admin games','editors','games'),('tiki_p_admin_mailin','Can admin mail-in accounts','admin','tiki'),('tiki_p_admin_newsletters','Can admin newsletters','admin','newsletters'),('tiki_p_admin_quizzes','Can admin quizzes','editors','quizzes'),('tiki_p_admin_received_articles','Can admin received articles','editors','comm'),('tiki_p_admin_received_pages','Can admin received pages','editors','comm'),('tiki_p_admin_sheet','Can admin sheet','admin','sheet'),('tiki_p_admin_shoutbox','Can admin shoutbox (Edit/remove msgs)','editors','shoutbox'),('tiki_p_admin_surveys','Can admin surveys','editors','surveys'),('tiki_p_admin_trackers','Can admin trackers','editors','trackers'),('tiki_p_admin_wiki','Can admin the wiki','editors','wiki'),('tiki_p_admin_workflow','Can admin workflow processes','admin','workflow'),('tiki_p_approve_submission','Can approve submissions','editors','cms'),('tiki_p_attach_trackers','Can attach files to tracker items','registered','trackers'),('tiki_p_autoapprove_submission','Submited articles automatically approved','editors','cms'),('tiki_p_autosubmit_link','Submited links are valid','editors','directory'),('tiki_p_autoval_chart_suggestio','Autovalidate suggestions','editors','charts'),('tiki_p_batch_upload_files','Can upload zip files with files','editors','file galleries'),('tiki_p_batch_upload_images','Can upload zip files with images','editors','image galleries'),('tiki_p_batch_upload_image_dir','Can use Directory Batch Load','editors','image galleries'),('tiki_p_blog_admin','Can admin blogs','editors','blogs'),('tiki_p_blog_post','Can post to a blog','registered','blogs'),('tiki_p_broadcast','Can broadcast messages to groups','admin','messu'),('tiki_p_broadcast_all','Can broadcast messages to all user','admin','messu'),('tiki_p_cache_bookmarks','Can cache user bookmarks','admin','user'),('tiki_p_change_events','Can change events in the calendar','registered','calendar'),('tiki_p_chat','Can use the chat system','registered','chat'),('tiki_p_comment_tracker_items','Can insert comments for tracker items','basic','trackers'),('tiki_p_configure_modules','Can configure modules','registered','user'),('tiki_p_create_blogs','Can create a blog','editors','blogs'),('tiki_p_create_bookmarks','Can create user bookmarks','registered','user'),('tiki_p_create_css','Can create new css suffixed with -user','registered','tiki'),('tiki_p_create_file_galleries','Can create file galleries','editors','file galleries'),('tiki_p_create_galleries','Can create image galleries','editors','image galleries'),('tiki_p_create_tracker_items','Can create new items for trackers','registered','trackers'),('tiki_p_download_files','Can download files','basic','file galleries'),('tiki_p_edit','Can edit pages','registered','wiki'),('tiki_p_edit_article','Can edit articles','editors','cms'),('tiki_p_edit_comments','Can edit all comments','editors','comments'),('tiki_p_edit_content_templates','Can edit content templates','editors','content templates'),('tiki_p_edit_cookies','Can admin cookies','editors','tiki'),('tiki_p_edit_copyrights','Can edit copyright notices','editors','wiki'),('tiki_p_edit_drawings','Can edit drawings','basic','drawings'),('tiki_p_edit_html_pages','Can edit HTML pages','editors','html pages'),('tiki_p_edit_languages','Can edit translations and create new languages','editors','tiki'),('tiki_p_edit_sheet','Can create and edit sheets','editors','sheet'),('tiki_p_edit_structures','Can create and edit structures','editors','wiki'),('tiki_p_edit_submission','Can edit submissions','editors','cms'),('tiki_p_edit_templates','Can edit site templates','admin','tiki'),('tiki_p_view_templates','Can view site templates','admin','tiki'),('tiki_p_eph_admin','Can admin ephemerides','editors','tiki'),('tiki_p_exception_instance','Can declare an instance as exception','registered','workflow'),('tiki_p_forum_attach','Can attach to forum posts','registered','forums'),('tiki_p_forum_autoapp','Auto approve forum posts','editors','forums'),('tiki_p_forum_post','Can post in forums','registered','forums'),('tiki_p_forum_post_topic','Can start threads in forums','registered','forums'),('tiki_p_forum_read','Can read forums','basic','forums'),('tiki_p_forum_vote','Can vote comments in forums','registered','forums'),('tiki_p_forums_report','Can report msgs to moderator','registered','forums'),('tiki_p_list_users','Can list registered users','registered','community'),('tiki_p_live_support','Can use live support system','basic','support'),('tiki_p_live_support_admin','Admin live support system','admin','support'),('tiki_p_lock','Can lock pages','editors','wiki'),('tiki_p_map_create','Can create new mapfile','admin','maps'),('tiki_p_map_delete','Can delete mapfiles','admin','maps'),('tiki_p_map_edit','Can edit mapfiles','editors','maps'),('tiki_p_map_view','Can view mapfiles','basic','maps'),('tiki_p_map_view_mapfiles','Can view contents of mapfiles','registered','maps'),('tiki_p_messages','Can use the messaging system','registered','messu'),('tiki_p_minical','Can use the mini event calendar','registered','user'),('tiki_p_minor','Can save as minor edit','registered','wiki'),('tiki_p_modify_tracker_items','Can change tracker items','registered','trackers'),('tiki_p_newsreader','Can use the newsreader','registered','user'),('tiki_p_notepad','Can use the notepad','registered','user'),('tiki_p_play_games','Can play games','basic','games'),('tiki_p_post_comments','Can post new comments','registered','comments'),('tiki_p_post_shoutbox','Can post messages in shoutbox','basic','shoutbox'),('tiki_p_read_article','Can read articles','basic','cms'),('tiki_p_read_blog','Can read blogs','basic','blogs'),('tiki_p_read_comments','Can read comments','basic','comments'),('tiki_p_remove','Can remove','editors','wiki'),('tiki_p_remove_article','Can remove articles','editors','cms'),('tiki_p_remove_comments','Can delete comments','editors','comments'),('tiki_p_remove_submission','Can remove submissions','editors','cms'),('tiki_p_rename','Can rename pages','editors','wiki'),('tiki_p_rollback','Can rollback pages','editors','wiki'),('tiki_p_send_articles','Can send articles to other sites','editors','comm'),('tiki_p_send_instance','Can send instances after completion','registered','workflow'),('tiki_p_send_newsletters','Can send newsletters','editors','newsletters'),('tiki_p_send_pages','Can send pages to other sites','registered','comm'),('tiki_p_sendme_articles','Can send articles to this site','registered','comm'),('tiki_p_sendme_pages','Can send pages to this site','registered','comm'),('tiki_p_submit_article','Can submit articles','basic','cms'),('tiki_p_submit_link','Can submit sites to the directory','basic','directory'),('tiki_p_subscribe_email','Can subscribe any email to newsletters','editors','newsletters'),('tiki_p_subscribe_newsletters','Can subscribe to newsletters','basic','newsletters'),('tiki_p_suggest_chart_item','Can suggest items','basic','charts'),('tiki_p_suggest_faq','Can suggest faq questions','basic','faqs'),('tiki_p_take_quiz','Can take quizzes','basic','quizzes'),('tiki_p_take_survey','Can take surveys','basic','surveys'),('tiki_p_tasks','Can use tasks','registered','user'),('tiki_p_topic_read','Can read a topic (Applies only to individual topic perms)','basic','topics'),('tiki_p_tracker_view_ratings','Can view rating result for tracker items','basic','trackers'),('tiki_p_tracker_vote_ratings','Can vote a rating for tracker items','registered','trackers'),('tiki_p_upload_files','Can upload files','registered','file galleries'),('tiki_p_upload_images','Can upload images','registered','image galleries'),('tiki_p_upload_picture','Can upload pictures to wiki pages','registered','wiki'),('tiki_p_use_HTML','Can use HTML in pages','editors','tiki'),('tiki_p_use_content_templates','Can use content templates','registered','content templates'),('tiki_p_use_webmail','Can use webmail','registered','webmail'),('tiki_p_use_workflow','Can execute workflow activities','registered','workflow'),('tiki_p_userfiles','Can upload personal files','registered','user'),('tiki_p_usermenu','Can create items in personal menu','registered','user'),('tiki_p_validate_links','Can validate submited links','editors','directory'),('tiki_p_view','Can view page/pages','basic','wiki'),('tiki_p_view_calendar','Can browse the calendar','basic','calendar'),('tiki_p_view_categories','Can browse categories','basic','tiki'),('tiki_p_view_chart','Can view charts','basic','charts'),('tiki_p_view_directory','Can use the directory','basic','directory'),('tiki_p_view_eph','Can view ephemerides','registered','tiki'),('tiki_p_view_faqs','Can view faqs','basic','faqs'),('tiki_p_view_file_gallery','Can view file galleries','basic','file galleries'),('tiki_p_view_html_pages','Can view HTML pages','basic','html pages'),('tiki_p_view_image_gallery','Can view image galleries','basic','image galleries'),('tiki_p_view_quiz_stats','Can view quiz stats','basic','quizzes'),('tiki_p_view_referer_stats','Can view referer stats','editors','tiki'),('tiki_p_view_sheet','Can view sheet','basic','sheet'),('tiki_p_view_sheet_history','Can view sheet history','admin','sheet'),('tiki_p_view_shoutbox','Can view shoutbox','basic','shoutbox'),('tiki_p_view_stats','Can view site stats','basic','tiki'),('tiki_p_view_survey_stats','Can view survey stats','basic','surveys'),('tiki_p_view_trackers','Can view trackers','basic','trackers'),('tiki_p_view_trackers_closed','Can view trackers closed items','registered','trackers'),('tiki_p_view_trackers_pending','Can view trackers pending items','editors','trackers'),('tiki_p_view_tiki_calendar','Can view TikiWiki tools calendar','basic','calendar'),('tiki_p_view_user_results','Can view user quiz results','editors','quizzes'),('tiki_p_vote_chart','Can vote','basic','charts'),('tiki_p_vote_comments','Can vote comments','registered','comments'),('tiki_p_vote_poll','Can vote polls','basic','tiki'),('tiki_p_wiki_admin_attachments','Can admin attachments to wiki pages','editors','wiki'),('tiki_p_wiki_attach_files','Can attach files to wiki pages','registered','wiki'),('tiki_p_wiki_view_attachments','Can view wiki attachments and download','registered','wiki'),('tiki_p_wiki_view_comments','Can view wiki comments','basic','wiki'),('tiki_p_wiki_view_history','Can view wiki history','basic','wiki'),('tiki_p_wiki_view_ratings','Can view rating of wiki pages','basic','wiki'),('tiki_p_wiki_vote_ratings','Can participate to rating of wiki pages','registered','wiki'),('tiki_p_wiki_admin_ratings','Can add and change ratings on wiki pages','admin','wiki'),('tiki_p_admin_users','Can admin users','admin','user'),('tiki_p_tasks_send','Can send tasks to other users','registered','user'),('tiki_p_tasks_receive','Can  receive tasks from other users','registered','user'),('tiki_p_tasks_admin','Can admin public tasks','admin','user'),('tiki_p_admin_rssmodules','Can admin rss modules','admin','tiki'),('tiki_p_admin_polls','Can admin polls','admin','tiki'),('tiki_p_admin_objects','Can edit object permissions','admin','tiki'),('tiki_p_edit_dynvar','Can edit dynamic variables','editors','wiki'),('tiki_p_admin_integrator','Can admin integrator repositories and rules','admin','tiki'),('tiki_p_view_integrator','Can view integrated repositories','basic','tiki');
/*!40000 ALTER TABLE `users_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_usergroups`
--

DROP TABLE IF EXISTS `users_usergroups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_usergroups` (
  `userId` int(8) NOT NULL default '0',
  `groupName` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`userId`,`groupName`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_usergroups`
--

LOCK TABLES `users_usergroups` WRITE;
/*!40000 ALTER TABLE `users_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_users`
--

DROP TABLE IF EXISTS `users_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users_users` (
  `userId` int(8) NOT NULL auto_increment,
  `email` varchar(200) default NULL,
  `login` varchar(40) NOT NULL default '',
  `password` varchar(30) default '',
  `provpass` varchar(30) default NULL,
  `default_group` varchar(255) default NULL,
  `lastLogin` int(14) default NULL,
  `currentLogin` int(14) default NULL,
  `registrationDate` int(14) default NULL,
  `challenge` varchar(32) default NULL,
  `pass_due` int(14) default NULL,
  `hash` varchar(32) default NULL,
  `created` int(14) default NULL,
  `avatarName` varchar(80) default NULL,
  `avatarSize` int(14) default NULL,
  `avatarFileType` varchar(250) default NULL,
  `avatarData` longblob,
  `avatarLibName` varchar(200) default NULL,
  `avatarType` char(1) default NULL,
  `score` int(11) NOT NULL default '0',
  PRIMARY KEY  (`userId`),
  KEY `score` (`score`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users_users`
--

LOCK TABLES `users_users` WRITE;
/*!40000 ALTER TABLE `users_users` DISABLE KEYS */;
INSERT INTO `users_users` VALUES (1,'','admin','admin',NULL,NULL,1271712540,1271712540,NULL,NULL,NULL,'f6fdffe48c908deb0f4c3bd36c032e72',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `users_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-11 13:37:25
