-- MySQL dump 10.17  Distrib 10.3.18-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: sherlock
-- ------------------------------------------------------
-- Server version	10.3.18-MariaDB-log

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
-- Table structure for table `sherlock_cmd`
--

DROP TABLE IF EXISTS `sherlock_cmd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sherlock_cmd` (
  `ID` varchar(8) NOT NULL,
  `TYPE` char(3) DEFAULT NULL,
  `USER_TYPE` char(3) DEFAULT NULL,
  `COMMAND` varchar(4096) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sherlock_cmd`
--

LOCK TABLES `sherlock_cmd` WRITE;
/*!40000 ALTER TABLE `sherlock_cmd` DISABLE KEYS */;
INSERT INTO `sherlock_cmd` VALUES ('l1','lin','u','df -h','Free disk space'),('l10','lin','u','cat /proc/cpuinfo','CPU info'),('l11','lin','u','cat /proc/mounts','Server mounts'),('l12','lin','u','ifconfig -a','Server network cards'),('l13','lin','u','ipcs -l','Shared memory'),('l14','lin','u','df -h','Disk usage'),('l15','lin','u','ps -ef | egrep -i \"maria|mysql|galera|percona|sst\"','Check relevant processes'),('l2','lin','u','ps -ef | egrep \'mysql|sst\'','Processes'),('l3','lin','u','iostat -dx 1 -c 10','IO Stats'),('l4','lin','u','vmstat 1 10','VM Stats'),('l5','lin','h','gdb --batch -ex \'set height 0\' -ex \'set print frame-arguments all\' -ex \'thread apply all backtrace full\' -ex \'print trx_sys->mutex\' -ex \'print *trx_sys->mutex->m_impl->m_event\' -ex \'print lock_sys->mutex\' -ex \'print *lock_sys->mutex->m_impl->m_event\' -ex \'print dict_sys->mutex\' -ex \'print *dict_sys->mutex->m_impl->m_event\' -ex \'print fil_system->mutex\' -ex \'print *fil_system->mutex->m_impl->m_event\' -ex \'print rw_lock_list_mutex\' -ex \'print *rw_lock_list_mutex->m_impl->m_event\' -ex \'print dict_operation_lock\' $(path to mysqld) $(path to core dump) > gdb-output-$(date +%Y%m%d_%H%M%S).txt','GDB Core Dump stack'),('l6','lin','u','cat /etc/fstab','fstab configuration'),('l7','lin','u','top -b -n 1','Server Processes with resource usage'),('l8','lin','u','cat /proc/version; cat /etc/issue; cat /etc/redhat-release','Linux Distro Version'),('l9','lin','u','cat /proc/meminfo','Memory info'),('m1','mdb','u','SHOW GLOBAL VARIABLES;','Global settings'),('m2','mdb','u','SHOW GLOBAL STATUS;','Status variables'),('m3','mdb','u','SELECT VERSION();','Database version'),('m4','mdb','u','SHOW ENGINE INNODB STATUS\\G','InnoDB engine status'),('m5','mdb','u','SHOW GLOBAL VARIABLES LIKE \'gtid%\';','GTID Variables');
/*!40000 ALTER TABLE `sherlock_cmd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-25 17:57:07
