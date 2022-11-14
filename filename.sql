-- MySQL dump 10.13  Distrib 5.7.40, for Linux (x86_64)
--
-- Host: localhost    Database: xtream_iptvpro
-- ------------------------------------------------------
-- Server version	5.7.40-0ubuntu0.18.04.1

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
-- Table structure for table `access_output`
--

DROP TABLE IF EXISTS `access_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_output` (
  `access_output_id` int(11) NOT NULL AUTO_INCREMENT,
  `output_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `output_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `output_ext` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`access_output_id`),
  KEY `output_key` (`output_key`),
  KEY `output_ext` (`output_ext`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_output`
--

LOCK TABLES `access_output` WRITE;
/*!40000 ALTER TABLE `access_output` DISABLE KEYS */;
INSERT INTO `access_output` (`access_output_id`, `output_name`, `output_key`, `output_ext`) VALUES (1,'HLS','m3u8','m3u8'),(2,'MPEGTS','ts','ts'),(3,'RTMP','rtmp','');
/*!40000 ALTER TABLE `access_output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_settings`
--

DROP TABLE IF EXISTS `admin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_settings` (
  `type` varchar(128) NOT NULL DEFAULT '',
  `value` varchar(4096) NOT NULL DEFAULT '',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_settings`
--

LOCK TABLES `admin_settings` WRITE;
/*!40000 ALTER TABLE `admin_settings` DISABLE KEYS */;
INSERT INTO `admin_settings` (`type`, `value`) VALUES ('admin_password',''),('admin_username',''),('alternate_scandir',''),('automatic_backups','off'),('auto_refresh','1'),('backups_to_keep','0'),('cc_time','1668418683'),('change_own_dns',''),('change_own_email',''),('change_own_password',''),('change_usernames',''),('dark_mode','0'),('dark_mode_login',''),('dashboard_stats',''),('dashboard_stats_frequency','600'),('default_entries','10'),('disable_trial',''),('download_images',''),('expanded_sidebar','0'),('google_2factor',''),('ip_logout',''),('local_api',''),('login_flood','0'),('pass_length','0'),('recaptcha_enable',''),('recaptcha_v2_secret_key',''),('recaptcha_v2_site_key',''),('release_parser','python'),('reseller_restrictions',''),('stats_pid','10181'),('tmdb_language',''),('tmdb_pid','10184'),('watch_pid','10195');
/*!40000 ALTER TABLE `admin_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocked_ips`
--

DROP TABLE IF EXISTS `blocked_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocked_ips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `attempts_blocked` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip_2` (`ip`),
  UNIQUE KEY `ip_3` (`ip`),
  KEY `ip` (`ip`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked_ips`
--

LOCK TABLES `blocked_ips` WRITE;
/*!40000 ALTER TABLE `blocked_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocked_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocked_user_agents`
--

DROP TABLE IF EXISTS `blocked_user_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocked_user_agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exact_match` int(11) NOT NULL DEFAULT '0',
  `attempts_blocked` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `exact_match` (`exact_match`),
  KEY `user_agent` (`user_agent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked_user_agents`
--

LOCK TABLES `blocked_user_agents` WRITE;
/*!40000 ALTER TABLE `blocked_user_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocked_user_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bouquets`
--

DROP TABLE IF EXISTS `bouquets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bouquets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bouquet_name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `bouquet_channels` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `bouquet_series` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `bouquet_order` int(16) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bouquets`
--

LOCK TABLES `bouquets` WRITE;
/*!40000 ALTER TABLE `bouquets` DISABLE KEYS */;
INSERT INTO `bouquets` (`id`, `bouquet_name`, `bouquet_channels`, `bouquet_series`, `bouquet_order`) VALUES (5,'all channels','[419,421,1360,1361,1362,1363,1364]','[]',2),(6,'buy iptv','[]','[]',0);
/*!40000 ALTER TABLE `bouquets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_logs`
--

DROP TABLE IF EXISTS `client_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query_string` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extra_data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stream_id` (`stream_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_logs`
--

LOCK TABLES `client_logs` WRITE;
/*!40000 ALTER TABLE `client_logs` DISABLE KEYS */;
INSERT INTO `client_logs` (`id`, `stream_id`, `user_id`, `client_status`, `query_string`, `user_agent`, `ip`, `extra_data`, `date`) VALUES (1,409,2,'NOT_IN_BOUQUET','username=12345678&amp;password=12345678&amp;stream=409&amp;extension=ts','VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','',1667813376),(2,409,2,'NOT_IN_BOUQUET','username=12345678&amp;password=12345678&amp;stream=409&amp;extension=ts','VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','',1667813376),(3,409,2,'NOT_IN_BOUQUET','username=12345678&amp;password=12345678&amp;stream=409&amp;extension=ts','VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','',1667813376);
/*!40000 ALTER TABLE `client_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `created`
--

DROP TABLE IF EXISTS `created`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `created` (
  `id` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `category_id` tinyint(4) NOT NULL,
  `stream_display_name` tinyint(4) NOT NULL,
  `stream_source` tinyint(4) NOT NULL,
  `stream_icon` tinyint(4) NOT NULL,
  `notes` tinyint(4) NOT NULL,
  `created_channel_location` tinyint(4) NOT NULL,
  `enable_transcode` tinyint(4) NOT NULL,
  `transcode_attributes` tinyint(4) NOT NULL,
  `custom_ffmpeg` tinyint(4) NOT NULL,
  `movie_propeties` tinyint(4) NOT NULL,
  `movie_subtitles` tinyint(4) NOT NULL,
  `read_native` tinyint(4) NOT NULL,
  `target_container` tinyint(4) NOT NULL,
  `stream_all` tinyint(4) NOT NULL,
  `remove_subtitles` tinyint(4) NOT NULL,
  `custom_sid` tinyint(4) NOT NULL,
  `epg_id` tinyint(4) NOT NULL,
  `channel_id` tinyint(4) NOT NULL,
  `epg_lang` tinyint(4) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `auto_restart` tinyint(4) NOT NULL,
  `transcode_profile_id` tinyint(4) NOT NULL,
  `pids_create_channel` tinyint(4) NOT NULL,
  `cchannel_rsources` tinyint(4) NOT NULL,
  `gen_timestamps` tinyint(4) NOT NULL,
  `added` tinyint(4) NOT NULL,
  `series_no` tinyint(4) NOT NULL,
  `direct_source` tinyint(4) NOT NULL,
  `tv_archive_duration` tinyint(4) NOT NULL,
  `tv_archive_server_id` tinyint(4) NOT NULL,
  `tv_archive_pid` tinyint(4) NOT NULL,
  `movie_symlink` tinyint(4) NOT NULL,
  `redirect_stream` tinyint(4) NOT NULL,
  `rtmp_output` tinyint(4) NOT NULL,
  `number` tinyint(4) NOT NULL,
  `allow_record` tinyint(4) NOT NULL,
  `probesize_ondemand` tinyint(4) NOT NULL,
  `custom_map` tinyint(4) NOT NULL,
  `external_push` tinyint(4) NOT NULL,
  `delay_minutes` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `created`
--

LOCK TABLES `created` WRITE;
/*!40000 ALTER TABLE `created` DISABLE KEYS */;
/*!40000 ALTER TABLE `created` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credits_log`
--

DROP TABLE IF EXISTS `credits_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credits_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `date` int(11) NOT NULL,
  `reason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `target_id` (`target_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credits_log`
--

LOCK TABLES `credits_log` WRITE;
/*!40000 ALTER TABLE `credits_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `credits_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronjobs`
--

DROP TABLE IF EXISTS `cronjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronjobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `run_per_mins` int(11) NOT NULL DEFAULT '1',
  `run_per_hours` int(11) NOT NULL DEFAULT '0',
  `enabled` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled` (`enabled`),
  KEY `filename` (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronjobs`
--

LOCK TABLES `cronjobs` WRITE;
/*!40000 ALTER TABLE `cronjobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_statistics`
--

DROP TABLE IF EXISTS `dashboard_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL DEFAULT '',
  `time` int(16) NOT NULL DEFAULT '0',
  `count` int(16) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_statistics`
--

LOCK TABLES `dashboard_statistics` WRITE;
/*!40000 ALTER TABLE `dashboard_statistics` DISABLE KEYS */;
INSERT INTO `dashboard_statistics` (`id`, `type`, `time`, `count`) VALUES (1,'conns',1667202818,0),(2,'users',1667202818,0);
/*!40000 ALTER TABLE `dashboard_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_header` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `device_conf` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `device_footer` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `default_output` int(11) NOT NULL DEFAULT '0',
  `copy_text` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`device_id`),
  KEY `device_key` (`device_key`),
  KEY `default_output` (`default_output`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` (`device_id`, `device_name`, `device_key`, `device_filename`, `device_header`, `device_conf`, `device_footer`, `default_output`, `copy_text`) VALUES (1,'GigaBlue','gigablue','userbouquet.favourites.tv','#NAME {BOUQUET_NAME}','#SERVICE 4097:0:1:0:0:0:0:0:0:0:{URL#:}\r\n#DESCRIPTION {CHANNEL_NAME}','',2,NULL),(2,'Enigma 2 OE 1.6','enigma16','userbouquet.favourites.tv','#NAME {BOUQUET_NAME}','#SERVICE 4097{SID}{URL#:}\r\n#DESCRIPTION {CHANNEL_NAME}','',2,NULL),(3,'DreamBox OE 2.0','dreambox','userbouquet.favourites.tv','#NAME {BOUQUET_NAME}','#SERVICE {ESR_ID}{SID}{URL#:}\r\n#DESCRIPTION {CHANNEL_NAME}','',2,NULL),(4,'m3u','m3u','tv_channels_{USERNAME}.m3u','#EXTM3U','#EXTINF:-1,{CHANNEL_NAME}\r\n{URL}','',2,NULL),(5,'Simple List','simple','simple_{USERNAME}.txt','','{URL} #Name: {CHANNEL_NAME}','',2,NULL),(6,'Octagon','octagon','internettv.feed','','[TITLE]\r\n{CHANNEL_NAME}\r\n[URL]\r\n{URL}\r\n[DESCRIPTION]\r\nIPTV\r\n[TYPE]\r\nLive','',2,NULL),(7,'Starlive v3/StarSat HD6060/AZclass','starlivev3','iptvlist.txt','','{CHANNEL_NAME},{URL}','',2,NULL),(8,'MediaStar / StarLive v4','mediastar','tvlist.txt','','{CHANNEL_NAME} {URL}','',2,NULL),(9,'Enigma 2 OE 1.6 Auto Script','enigma216_script','iptv.sh','USERNAME=\"{USERNAME}\";PASSWORD=\"{PASSWORD}\";bouquet=\"{BOUQUET_NAME}\";directory=\"/etc/enigma2/iptv.sh\";url=\"{SERVER_URL}get.php?username=$USERNAME&password=$PASSWORD&type=enigma16&output={OUTPUT_KEY}\";rm /etc/enigma2/userbouquet.\"$bouquet\"__tv_.tv;wget -O /etc/enigma2/userbouquet.\"$bouquet\"__tv_.tv $url;if ! cat /etc/enigma2/bouquets.tv | grep -v grep | grep -c $bouquet > /dev/null;then echo \"[+]Creating Folder for iptv and rehashing...\";cat /etc/enigma2/bouquets.tv | sed -n 1p > /etc/enigma2/new_bouquets.tv;echo \'#SERVICE 1:7:1:0:0:0:0:0:0:0:FROM BOUQUET \"userbouquet.\'$bouquet\'__tv_.tv\" ORDER BY bouquet\' >> /etc/enigma2/new_bouquets.tv; cat /etc/enigma2/bouquets.tv | sed -n \'2,$p\' >> /etc/enigma2/new_bouquets.tv;rm /etc/enigma2/bouquets.tv;mv /etc/enigma2/new_bouquets.tv /etc/enigma2/bouquets.tv;fi;rm /usr/bin/enigma2_pre_start.sh;echo \"writing to the file.. NO NEED FOR REBOOT\";echo \"/bin/sh \"$directory\" > /dev/null 2>&1 &\" > /usr/bin/enigma2_pre_start.sh;chmod 777 /usr/bin/enigma2_pre_start.sh;wget -qO - \"http://127.0.0.1/web/servicelistreload?mode=2\";wget -qO - \"http://127.0.0.1/web/servicelistreload?mode=2\";','','',2,'wget -O /etc/enigma2/iptv.sh {DEVICE_LINK} && chmod 777 /etc/enigma2/iptv.sh && /etc/enigma2/iptv.sh'),(10,'Enigma 2 OE 2.0 Auto Script','enigma22_script','iptv.sh','USERNAME=\"{USERNAME}\";PASSWORD=\"{PASSWORD}\";bouquet=\"{BOUQUET_NAME}\";directory=\"/etc/enigma2/iptv.sh\";url=\"{SERVER_URL}get.php?username=$USERNAME&password=$PASSWORD&type=dreambox&output={OUTPUT_KEY}\";rm /etc/enigma2/userbouquet.\"$bouquet\"__tv_.tv;wget -O /etc/enigma2/userbouquet.\"$bouquet\"__tv_.tv $url;if ! cat /etc/enigma2/bouquets.tv | grep -v grep | grep -c $bouquet > /dev/null;then echo \"[+]Creating Folder for iptv and rehashing...\";cat /etc/enigma2/bouquets.tv | sed -n 1p > /etc/enigma2/new_bouquets.tv;echo \'#SERVICE 1:7:1:0:0:0:0:0:0:0:FROM BOUQUET \"userbouquet.\'$bouquet\'__tv_.tv\" ORDER BY bouquet\' >> /etc/enigma2/new_bouquets.tv; cat /etc/enigma2/bouquets.tv | sed -n \'2,$p\' >> /etc/enigma2/new_bouquets.tv;rm /etc/enigma2/bouquets.tv;mv /etc/enigma2/new_bouquets.tv /etc/enigma2/bouquets.tv;fi;rm /usr/bin/enigma2_pre_start.sh;echo \"writing to the file.. NO NEED FOR REBOOT\";echo \"/bin/sh \"$directory\" > /dev/null 2>&1 &\" > /usr/bin/enigma2_pre_start.sh;chmod 777 /usr/bin/enigma2_pre_start.sh;wget -qO - \"http://127.0.0.1/web/servicelistreload?mode=2\";wget -qO - \"http://127.0.0.1/web/servicelistreload?mode=2\";','','',2,'wget -O /etc/enigma2/iptv.sh {DEVICE_LINK} && chmod 777 /etc/enigma2/iptv.sh && /etc/enigma2/iptv.sh'),(13,'m3u With Options','m3u_plus','tv_channels_{USERNAME}_plus.m3u','#EXTM3U','#EXTINF:-1 tvg-id=\"{CHANNEL_ID}\" tvg-name=\"{CHANNEL_NAME}\" tvg-logo=\"{CHANNEL_ICON}\" group-title=\"{CATEGORY}\",{CHANNEL_NAME}\r\n{URL}','',2,NULL),(14,'StarLive v5','starlivev5','channel.jason','','','',2,NULL),(15,'WebTV List','webtvlist','webtv list.txt','','Channel name:{CHANNEL_NAME}\r\nURL:{URL}','[Webtv channel END]',2,NULL),(16,'Octagon Auto Script','octagon_script','iptv','USERNAME=\"{USERNAME}\";PASSWORD=\"{PASSWORD}\";url=\"{SERVER_URL}get.php?username=$USERNAME&password=$PASSWORD&type=octagon&output={OUTPUT_KEY}\";rm /var/freetvplus/internettv.feed;wget -O /var/freetvplus/internettv.feed1 $url;chmod 777 /var/freetvplus/internettv.feed1;awk -v BINMODE=3 -v RS=\'(\\r\\n|\\n)\' -v ORS=\'\\n\' \'{ print }\' /var/freetvplus/internettv.feed1 > /var/freetvplus/internettv.feed;rm /var/freetvplus/internettv.feed1','','',2,'wget -qO /var/bin/iptv {DEVICE_LINK}'),(18,'Ariva','ariva','ariva_{USERNAME}.txt','','{CHANNEL_NAME},{URL}','',2,NULL),(19,'Spark','spark','webtv_usr.xml','<?xml version=\"1.0\"?>\r\n<webtvs>','<webtv title=\"{CHANNEL_NAME}\" urlkey=\"0\" url=\"{URL}\" description=\"\" iconsrc=\"{CHANNEL_ICON}\" iconsrc_b=\"\" group=\"0\" type=\"0\" />','</webtvs>',2,NULL),(20,'Geant/Starsat/Tiger/Qmax/Hyper/Royal','gst','{USERNAME}_list.txt','','I: {URL} {CHANNEL_NAME}','',2,NULL),(21,'Fortec999/Prifix9400/Starport','fps','Royal.cfg','','IPTV: { {CHANNEL_NAME} } { {URL} }','',2,NULL),(22,'Revolution 60/60 | Sunplus','revosun','network_iptv.cfg','','IPTV: { {CHANNEL_NAME} } { {URL} }','',2,NULL),(23,'Zorro','zorro','iptv.cfg','<NETDBS_TXT_VER_1>','IPTV: { {CHANNEL_NAME} } { {URL} } -HIDE_URL','',2,NULL);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enigma2_actions`
--

DROP TABLE IF EXISTS `enigma2_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enigma2_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NOT NULL,
  `type` text NOT NULL,
  `key` text NOT NULL,
  `command` text NOT NULL,
  `command2` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enigma2_actions`
--

LOCK TABLES `enigma2_actions` WRITE;
/*!40000 ALTER TABLE `enigma2_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `enigma2_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enigma2_devices`
--

DROP TABLE IF EXISTS `enigma2_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enigma2_devices` (
  `device_id` int(12) NOT NULL AUTO_INCREMENT,
  `mac` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `modem_mac` varchar(255) NOT NULL,
  `local_ip` varchar(255) NOT NULL,
  `public_ip` varchar(255) NOT NULL,
  `key_auth` varchar(255) NOT NULL,
  `enigma_version` varchar(255) NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `lversion` text NOT NULL,
  `token` varchar(32) NOT NULL,
  `last_updated` int(11) NOT NULL,
  `watchdog_timeout` int(11) NOT NULL,
  `lock_device` tinyint(4) NOT NULL DEFAULT '0',
  `telnet_enable` tinyint(4) NOT NULL DEFAULT '1',
  `ftp_enable` tinyint(4) NOT NULL DEFAULT '1',
  `ssh_enable` tinyint(4) NOT NULL DEFAULT '1',
  `dns` varchar(255) NOT NULL,
  `original_mac` varchar(255) NOT NULL,
  `rc` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`device_id`),
  KEY `mac` (`mac`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enigma2_devices`
--

LOCK TABLES `enigma2_devices` WRITE;
/*!40000 ALTER TABLE `enigma2_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `enigma2_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enigma2_failed`
--

DROP TABLE IF EXISTS `enigma2_failed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enigma2_failed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original_mac` varchar(255) NOT NULL,
  `virtual_mac` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `original_mac` (`original_mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enigma2_failed`
--

LOCK TABLES `enigma2_failed` WRITE;
/*!40000 ALTER TABLE `enigma2_failed` DISABLE KEYS */;
/*!40000 ALTER TABLE `enigma2_failed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epg`
--

DROP TABLE IF EXISTS `epg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epg_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `epg_file` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `integrity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_updated` int(11) DEFAULT NULL,
  `days_keep` int(11) NOT NULL DEFAULT '7',
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epg`
--

LOCK TABLES `epg` WRITE;
/*!40000 ALTER TABLE `epg` DISABLE KEYS */;
/*!40000 ALTER TABLE `epg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epg_data`
--

DROP TABLE IF EXISTS `epg_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epg_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epg_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `channel_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `epg_id` (`epg_id`),
  KEY `start` (`start`),
  KEY `end` (`end`),
  KEY `lang` (`lang`),
  KEY `channel_id` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epg_data`
--

LOCK TABLES `epg_data` WRITE;
/*!40000 ALTER TABLE `epg_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `epg_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isp_addon`
--

DROP TABLE IF EXISTS `isp_addon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isp_addon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isp` text NOT NULL,
  `blocked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isp_addon`
--

LOCK TABLES `isp_addon` WRITE;
/*!40000 ALTER TABLE `isp_addon` DISABLE KEYS */;
/*!40000 ALTER TABLE `isp_addon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licence`
--

DROP TABLE IF EXISTS `licence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `licence_key` varchar(29) COLLATE utf8_unicode_ci NOT NULL,
  `show_message` tinyint(4) NOT NULL,
  `update_available` int(11) NOT NULL DEFAULT '0',
  `reshare_deny_addon` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licence`
--

LOCK TABLES `licence` WRITE;
/*!40000 ALTER TABLE `licence` DISABLE KEYS */;
/*!40000 ALTER TABLE `licence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_flood`
--

DROP TABLE IF EXISTS `login_flood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_flood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_flood`
--

LOCK TABLES `login_flood` WRITE;
/*!40000 ALTER TABLE `login_flood` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_flood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_logs`
--

DROP TABLE IF EXISTS `login_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `login_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_logs`
--

LOCK TABLES `login_logs` WRITE;
/*!40000 ALTER TABLE `login_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mag_claims`
--

DROP TABLE IF EXISTS `mag_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mag_claims` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mag_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `real_type` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mag_id` (`mag_id`),
  KEY `stream_id` (`stream_id`),
  KEY `real_type` (`real_type`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mag_claims`
--

LOCK TABLES `mag_claims` WRITE;
/*!40000 ALTER TABLE `mag_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `mag_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mag_devices`
--

DROP TABLE IF EXISTS `mag_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mag_devices` (
  `mag_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bright` int(10) NOT NULL DEFAULT '200',
  `contrast` int(10) NOT NULL DEFAULT '127',
  `saturation` int(10) NOT NULL DEFAULT '127',
  `aspect` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `video_out` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'rca',
  `volume` int(5) NOT NULL DEFAULT '50',
  `playback_buffer_bytes` int(50) NOT NULL DEFAULT '0',
  `playback_buffer_size` int(50) NOT NULL DEFAULT '0',
  `audio_out` int(5) NOT NULL DEFAULT '1',
  `mac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ls` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ver` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en_GB.utf8',
  `city_id` int(11) DEFAULT '0',
  `hd` int(10) NOT NULL DEFAULT '1',
  `main_notify` int(5) NOT NULL DEFAULT '1',
  `fav_itv_on` int(5) NOT NULL DEFAULT '0',
  `now_playing_start` int(50) DEFAULT NULL,
  `now_playing_type` int(11) NOT NULL DEFAULT '0',
  `now_playing_content` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_last_play_tv` int(50) DEFAULT NULL,
  `time_last_play_video` int(50) DEFAULT NULL,
  `hd_content` int(11) NOT NULL DEFAULT '1',
  `image_version` varchar(350) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_change_status` int(11) DEFAULT NULL,
  `last_start` int(11) DEFAULT NULL,
  `last_active` int(11) DEFAULT NULL,
  `keep_alive` int(11) DEFAULT NULL,
  `playback_limit` int(11) NOT NULL DEFAULT '3',
  `screensaver_delay` int(11) NOT NULL DEFAULT '10',
  `stb_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_watchdog` int(50) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `country` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plasma_saving` int(11) NOT NULL DEFAULT '0',
  `ts_enabled` int(11) DEFAULT '0',
  `ts_enable_icon` int(11) NOT NULL DEFAULT '1',
  `ts_path` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ts_max_length` int(11) NOT NULL DEFAULT '3600',
  `ts_buffer_use` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'cyclic',
  `ts_action_on_exit` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no_save',
  `ts_delay` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on_pause',
  `video_clock` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Off',
  `rtsp_type` int(11) NOT NULL DEFAULT '4',
  `rtsp_flags` int(11) NOT NULL DEFAULT '0',
  `stb_lang` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `display_menu_after_loading` int(11) NOT NULL DEFAULT '1',
  `record_max_length` int(11) NOT NULL DEFAULT '180',
  `plasma_saving_timeout` int(11) NOT NULL DEFAULT '600',
  `now_playing_link_id` int(11) DEFAULT NULL,
  `now_playing_streamer_id` int(11) DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hw_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0000',
  `spdif_mode` int(11) NOT NULL DEFAULT '1',
  `show_after_loading` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'main_menu',
  `play_in_preview_by_ok` int(11) NOT NULL DEFAULT '1',
  `hdmi_event_reaction` int(11) NOT NULL DEFAULT '1',
  `mag_player` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'ffmpeg',
  `play_in_preview_only_by_ok` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'true',
  `watchdog_timeout` int(11) NOT NULL,
  `fav_channels` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `tv_archive_continued` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `tv_channel_default_aspect` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fit',
  `last_itv_id` int(11) NOT NULL DEFAULT '0',
  `units` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'metric',
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `lock_device` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mag_id`),
  KEY `user_id` (`user_id`),
  KEY `mac` (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mag_devices`
--

LOCK TABLES `mag_devices` WRITE;
/*!40000 ALTER TABLE `mag_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mag_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mag_events`
--

DROP TABLE IF EXISTS `mag_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mag_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `mag_device_id` int(11) NOT NULL,
  `event` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `need_confirm` tinyint(3) NOT NULL DEFAULT '0',
  `msg` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `reboot_after_ok` tinyint(3) NOT NULL DEFAULT '0',
  `auto_hide_timeout` tinyint(3) DEFAULT '0',
  `send_time` int(50) NOT NULL,
  `additional_services_on` tinyint(3) NOT NULL DEFAULT '1',
  `anec` tinyint(3) NOT NULL DEFAULT '0',
  `vclub` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `mag_device_id` (`mag_device_id`),
  KEY `event` (`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mag_events`
--

LOCK TABLES `mag_events` WRITE;
/*!40000 ALTER TABLE `mag_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `mag_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mag_logs`
--

DROP TABLE IF EXISTS `mag_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mag_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mag_id` int(11) DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mag_id` (`mag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mag_logs`
--

LOCK TABLES `mag_logs` WRITE;
/*!40000 ALTER TABLE `mag_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mag_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_groups`
--

DROP TABLE IF EXISTS `member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `group_color` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000',
  `is_banned` tinyint(4) NOT NULL DEFAULT '0',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `is_reseller` tinyint(4) NOT NULL,
  `total_allowed_gen_trials` int(11) NOT NULL DEFAULT '0',
  `total_allowed_gen_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delete_users` tinyint(4) NOT NULL DEFAULT '0',
  `allowed_pages` text COLLATE utf8_unicode_ci NOT NULL,
  `can_delete` tinyint(4) NOT NULL DEFAULT '1',
  `reseller_force_server` tinyint(4) NOT NULL DEFAULT '0',
  `create_sub_resellers_price` float NOT NULL DEFAULT '0',
  `create_sub_resellers` tinyint(4) NOT NULL DEFAULT '0',
  `alter_packages_ids` tinyint(4) NOT NULL DEFAULT '0',
  `alter_packages_prices` tinyint(4) NOT NULL DEFAULT '0',
  `reseller_client_connection_logs` tinyint(4) NOT NULL DEFAULT '0',
  `reseller_assign_pass` tinyint(4) NOT NULL DEFAULT '0',
  `allow_change_pass` tinyint(4) NOT NULL DEFAULT '0',
  `allow_import` tinyint(4) NOT NULL DEFAULT '0',
  `allow_export` tinyint(4) NOT NULL DEFAULT '0',
  `reseller_trial_credit_allow` int(11) NOT NULL DEFAULT '0',
  `edit_mac` tinyint(4) NOT NULL DEFAULT '0',
  `edit_isplock` tinyint(4) NOT NULL DEFAULT '0',
  `reset_stb_data` tinyint(4) NOT NULL DEFAULT '0',
  `reseller_bonus_package_inc` tinyint(4) NOT NULL DEFAULT '0',
  `allow_download` tinyint(4) NOT NULL DEFAULT '1',
  `minimum_trial_credits` int(16) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `is_admin` (`is_admin`),
  KEY `is_banned` (`is_banned`),
  KEY `is_reseller` (`is_reseller`),
  KEY `can_delete` (`can_delete`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_groups`
--

LOCK TABLES `member_groups` WRITE;
/*!40000 ALTER TABLE `member_groups` DISABLE KEYS */;
INSERT INTO `member_groups` (`group_id`, `group_name`, `group_color`, `is_banned`, `is_admin`, `is_reseller`, `total_allowed_gen_trials`, `total_allowed_gen_in`, `delete_users`, `allowed_pages`, `can_delete`, `reseller_force_server`, `create_sub_resellers_price`, `create_sub_resellers`, `alter_packages_ids`, `alter_packages_prices`, `reseller_client_connection_logs`, `reseller_assign_pass`, `allow_change_pass`, `allow_import`, `allow_export`, `reseller_trial_credit_allow`, `edit_mac`, `edit_isplock`, `reset_stb_data`, `reseller_bonus_package_inc`, `allow_download`, `minimum_trial_credits`) VALUES (1,'Channel Admin','#FF0000',0,1,0,0,'day',0,'[\"add_stream\",\"edit_stream\",\"streams\",\"archive\",\"add_movie\",\"edit_movie\",\"import_movies\",\"filexplorer\",\"movies\",\"add_series\",\"series_list\",\"edit_series\",\"add_episode\",\"edit_episode\",\"import_episodes\",\"series\",\"add_radio\",\"edit_radio\",\"radio\",\"create_channel\",\"edit_cchannel\",\"manage_cchannels\",\"mass_sedits\",\"mass_sedits_vod\",\"epg\",\"epg_edit\",\"tprofiles\",\"categories\",\"edit_cat\",\"stream_tools\",\"add_bouquet\",\"edit_bouquet\",\"bouquets\"]',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0),(2,'Registered Users','#66FF66',0,0,0,0,'',0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0),(3,'Banned','#194775',1,0,0,0,'',0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0),(4,'Resellers','#FF9933',0,0,1,100000,'month',0,'[]',0,0,0,1,1,0,1,1,1,1,0,1,1,1,1,0,1,0);
/*!40000 ALTER TABLE `member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_containers`
--

DROP TABLE IF EXISTS `movie_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_containers` (
  `container_id` int(11) NOT NULL AUTO_INCREMENT,
  `container_extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `container_header` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`container_id`),
  KEY `container_extension` (`container_extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_containers`
--

LOCK TABLES `movie_containers` WRITE;
/*!40000 ALTER TABLE `movie_containers` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_trial` tinyint(4) NOT NULL,
  `is_official` tinyint(4) NOT NULL,
  `trial_credits` float NOT NULL,
  `official_credits` float NOT NULL,
  `trial_duration` int(11) NOT NULL,
  `trial_duration_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `official_duration` int(11) NOT NULL,
  `official_duration_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groups` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `bouquets` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `can_gen_mag` tinyint(4) NOT NULL DEFAULT '0',
  `only_mag` tinyint(4) NOT NULL DEFAULT '0',
  `output_formats` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_isplock` tinyint(4) NOT NULL DEFAULT '0',
  `max_connections` int(11) NOT NULL DEFAULT '1',
  `is_restreamer` tinyint(4) NOT NULL DEFAULT '0',
  `force_server_id` int(11) NOT NULL DEFAULT '0',
  `can_gen_e2` tinyint(4) NOT NULL DEFAULT '0',
  `only_e2` tinyint(4) NOT NULL DEFAULT '0',
  `forced_country` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `lock_device` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `is_trial` (`is_trial`),
  KEY `is_official` (`is_official`),
  KEY `can_gen_mag` (`can_gen_mag`),
  KEY `can_gen_e2` (`can_gen_e2`),
  KEY `only_e2` (`only_e2`),
  KEY `only_mag` (`only_mag`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` (`id`, `package_name`, `is_trial`, `is_official`, `trial_credits`, `official_credits`, `trial_duration`, `trial_duration_in`, `official_duration`, `official_duration_in`, `groups`, `bouquets`, `can_gen_mag`, `only_mag`, `output_formats`, `is_isplock`, `max_connections`, `is_restreamer`, `force_server_id`, `can_gen_e2`, `only_e2`, `forced_country`, `lock_device`) VALUES (1,'package',0,1,0,0,0,'hours',0,'hours','[1,2,4]','[5]',1,0,'[1,2,3]',0,1,0,0,1,0,'',0),(2,'iptv buy',0,1,0,0,0,'hours',0,'hours','[1,2,4]','[]',1,0,'[1,2,3]',0,1,0,0,1,0,'',0);
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panel_logs`
--

DROP TABLE IF EXISTS `panel_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panel_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panel_logs`
--

LOCK TABLES `panel_logs` WRITE;
/*!40000 ALTER TABLE `panel_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `panel_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_userlog`
--

DROP TABLE IF EXISTS `reg_userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `username` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `password` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` int(30) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_userlog`
--

LOCK TABLES `reg_userlog` WRITE;
/*!40000 ALTER TABLE `reg_userlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_users`
--

DROP TABLE IF EXISTS `reg_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_registered` int(11) NOT NULL,
  `verify_key` mediumtext COLLATE utf8_unicode_ci,
  `last_login` int(11) DEFAULT NULL,
  `member_group_id` int(11) NOT NULL,
  `verified` int(11) NOT NULL DEFAULT '0',
  `credits` float NOT NULL DEFAULT '0',
  `notes` mediumtext COLLATE utf8_unicode_ci,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `default_lang` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `reseller_dns` text COLLATE utf8_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `override_packages` text COLLATE utf8_unicode_ci,
  `google_2fa_sec` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dark_mode` int(1) NOT NULL DEFAULT '0',
  `sidebar` int(1) NOT NULL DEFAULT '0',
  `expanded_sidebar` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `member_group_id` (`member_group_id`),
  KEY `username` (`username`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_users`
--

LOCK TABLES `reg_users` WRITE;
/*!40000 ALTER TABLE `reg_users` DISABLE KEYS */;
INSERT INTO `reg_users` (`id`, `username`, `password`, `email`, `ip`, `date_registered`, `verify_key`, `last_login`, `member_group_id`, `verified`, `credits`, `notes`, `status`, `default_lang`, `reseller_dns`, `owner_id`, `override_packages`, `google_2fa_sec`, `dark_mode`, `sidebar`, `expanded_sidebar`) VALUES (1,'admin','$6$rounds=20000$xtreamcodes$3AREVSYaTEbJ2paMWxZGc7vBLbTx.3gy4ZmZUmgbf1E6pwxcgwKGKYknoD.zQJBdaRWiVdJavWwsirhPyp530.','admin@website.com','185.108.106.241',0,NULL,1668328250,1,1,0,NULL,1,'','',0,NULL,'',0,0,0);
/*!40000 ALTER TABLE `reg_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reseller_imex`
--

DROP TABLE IF EXISTS `reseller_imex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reseller_imex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_id` int(11) NOT NULL,
  `header` longtext NOT NULL,
  `data` longtext NOT NULL,
  `accepted` tinyint(4) NOT NULL DEFAULT '0',
  `finished` tinyint(4) NOT NULL DEFAULT '0',
  `bouquet_ids` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reg_id` (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reseller_imex`
--

LOCK TABLES `reseller_imex` WRITE;
/*!40000 ALTER TABLE `reseller_imex` DISABLE KEYS */;
/*!40000 ALTER TABLE `reseller_imex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rtmp_ips`
--

DROP TABLE IF EXISTS `rtmp_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rtmp_ips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rtmp_ips`
--

LOCK TABLES `rtmp_ips` WRITE;
/*!40000 ALTER TABLE `rtmp_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtmp_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `cover` varchar(255) NOT NULL,
  `cover_big` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `plot` text NOT NULL,
  `cast` text NOT NULL,
  `rating` int(11) NOT NULL,
  `director` varchar(255) NOT NULL,
  `releaseDate` varchar(255) NOT NULL,
  `last_modified` int(11) NOT NULL,
  `tmdb_id` int(11) NOT NULL,
  `seasons` mediumtext NOT NULL,
  `episode_run_time` int(11) NOT NULL DEFAULT '0',
  `backdrop_path` text NOT NULL,
  `youtube_trailer` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `last_modified` (`last_modified`),
  KEY `tmdb_id` (`tmdb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series_episodes`
--

DROP TABLE IF EXISTS `series_episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series_episodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `season_num` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `season_num` (`season_num`),
  KEY `series_id` (`series_id`),
  KEY `stream_id` (`stream_id`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series_episodes`
--

LOCK TABLES `series_episodes` WRITE;
/*!40000 ALTER TABLE `series_episodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `series_episodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_activity`
--

DROP TABLE IF EXISTS `server_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_server_id` int(11) NOT NULL,
  `dest_server_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `bandwidth` int(11) NOT NULL DEFAULT '0',
  `date_start` int(11) NOT NULL,
  `date_end` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `source_server_id` (`source_server_id`),
  KEY `dest_server_id` (`dest_server_id`),
  KEY `stream_id` (`stream_id`),
  KEY `pid` (`pid`),
  KEY `date_end` (`date_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_activity`
--

LOCK TABLES `server_activity` WRITE;
/*!40000 ALTER TABLE `server_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `bouquet_name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `live_streaming_pass` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_verify_sub` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_verify_cont` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_forgot_sub` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_forgot_cont` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `mail_from` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `smtp_host` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `min_password` int(11) NOT NULL DEFAULT '5',
  `username_strlen` int(11) NOT NULL DEFAULT '15',
  `username_alpha` int(11) NOT NULL DEFAULT '1',
  `allow_multiple_accs` int(11) NOT NULL DEFAULT '0',
  `allow_registrations` int(11) NOT NULL DEFAULT '0',
  `server_name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `smtp_username` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_new_pass_sub` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `logo_url` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_new_pass_cont` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `smtp_from_name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_email` int(11) NOT NULL,
  `smtp_encryption` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `unique_id` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `copyrights_removed` tinyint(4) NOT NULL,
  `copyrights_text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `default_timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Europe/Athens',
  `default_locale` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en_GB.utf8',
  `allowed_stb_types` text COLLATE utf8_unicode_ci NOT NULL,
  `client_prebuffer` int(11) NOT NULL,
  `split_clients` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stream_max_analyze` int(11) NOT NULL DEFAULT '30',
  `show_not_on_air_video` tinyint(4) NOT NULL,
  `not_on_air_video_path` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `show_banned_video` tinyint(4) NOT NULL,
  `banned_video_path` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `show_expired_video` tinyint(4) NOT NULL,
  `expired_video_path` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `mag_container` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `probesize` int(11) NOT NULL DEFAULT '5000000',
  `allowed_ips_admin` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `block_svp` tinyint(4) NOT NULL DEFAULT '0',
  `allow_countries` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `user_auto_kick_hours` int(11) NOT NULL DEFAULT '0',
  `show_in_red_online` int(11) NOT NULL DEFAULT '0',
  `disallow_empty_user_agents` tinyint(4) DEFAULT '0',
  `show_all_category_mag` tinyint(4) NOT NULL DEFAULT '1',
  `default_lang` mediumtext COLLATE utf8_unicode_ci,
  `autobackup_status` int(11) NOT NULL DEFAULT '0',
  `autobackup_pass` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `flood_limit` int(11) NOT NULL DEFAULT '0',
  `flood_ips_exclude` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `reshare_deny_addon` tinyint(4) NOT NULL DEFAULT '0',
  `restart_http` tinyint(4) NOT NULL DEFAULT '0',
  `css_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flood_seconds` int(11) NOT NULL DEFAULT '5',
  `flood_max_attempts` int(11) NOT NULL DEFAULT '1',
  `flood_apply_clients` int(11) NOT NULL DEFAULT '1',
  `flood_apply_restreamers` int(11) NOT NULL DEFAULT '0',
  `backup_source_all` int(11) NOT NULL DEFAULT '0',
  `flood_get_block` int(11) NOT NULL DEFAULT '0',
  `portal_block` int(11) NOT NULL DEFAULT '0',
  `streaming_block` int(11) NOT NULL DEFAULT '0',
  `stream_start_delay` int(11) NOT NULL DEFAULT '20000',
  `hash_lb` tinyint(4) NOT NULL DEFAULT '1',
  `vod_bitrate_plus` int(11) NOT NULL DEFAULT '60',
  `read_buffer_size` int(11) NOT NULL DEFAULT '8192',
  `tv_channel_default_aspect` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fit',
  `playback_limit` int(11) NOT NULL DEFAULT '3',
  `show_tv_channel_logo` tinyint(4) NOT NULL DEFAULT '1',
  `show_channel_logo_in_preview` tinyint(4) NOT NULL DEFAULT '1',
  `enable_connection_problem_indication` tinyint(4) NOT NULL DEFAULT '1',
  `enable_pseudo_hls` tinyint(4) NOT NULL DEFAULT '1',
  `vod_limit_at` int(11) NOT NULL DEFAULT '0',
  `client_area_plugin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'flow',
  `persistent_connections` tinyint(4) NOT NULL DEFAULT '0',
  `record_max_length` int(11) NOT NULL DEFAULT '180',
  `total_records_length` int(11) NOT NULL DEFAULT '600',
  `max_local_recordings` int(11) NOT NULL DEFAULT '10',
  `allowed_stb_types_for_local_recording` text COLLATE utf8_unicode_ci NOT NULL,
  `allowed_stb_types_rec` text COLLATE utf8_unicode_ci NOT NULL,
  `show_captcha` int(11) NOT NULL DEFAULT '1',
  `dynamic_timezone` tinyint(4) NOT NULL DEFAULT '1',
  `stalker_theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'digital',
  `rtmp_random` tinyint(4) NOT NULL DEFAULT '1',
  `api_ips` text COLLATE utf8_unicode_ci NOT NULL,
  `crypt_load_balancing` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `use_buffer` tinyint(4) NOT NULL DEFAULT '0',
  `restreamer_prebuffer` tinyint(4) NOT NULL DEFAULT '0',
  `audio_restart_loss` tinyint(4) NOT NULL DEFAULT '0',
  `stalker_lock_images` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `channel_number_type` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'bouquet',
  `stb_change_pass` tinyint(4) NOT NULL DEFAULT '0',
  `enable_debug_stalker` tinyint(4) NOT NULL DEFAULT '0',
  `online_capacity_interval` smallint(6) NOT NULL DEFAULT '10',
  `always_enabled_subtitles` tinyint(4) NOT NULL DEFAULT '1',
  `test_download_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xc_support_allow` tinyint(4) NOT NULL DEFAULT '1',
  `e2_arm7a` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `e2_mipsel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `e2_mips32el` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `e2_sh4` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `e2_arm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `api_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message_of_day` text COLLATE utf8_unicode_ci NOT NULL,
  `double_auth` tinyint(4) NOT NULL DEFAULT '0',
  `mysql_remote_sec` tinyint(4) NOT NULL DEFAULT '0',
  `enable_isp_lock` tinyint(4) NOT NULL DEFAULT '0',
  `show_isps` tinyint(4) NOT NULL DEFAULT '1',
  `userpanel_mainpage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `save_closed_connection` tinyint(4) NOT NULL DEFAULT '1',
  `client_logs_save` tinyint(4) NOT NULL DEFAULT '1',
  `get_real_ip_client` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `case_sensitive_line` tinyint(4) NOT NULL DEFAULT '1',
  `county_override_1st` tinyint(4) NOT NULL DEFAULT '0',
  `disallow_2nd_ip_con` tinyint(4) NOT NULL DEFAULT '0',
  `firewall` tinyint(4) NOT NULL DEFAULT '0',
  `new_sorting_bouquet` tinyint(4) NOT NULL DEFAULT '1',
  `split_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'con',
  `use_mdomain_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `use_https` text COLLATE utf8_unicode_ci NOT NULL,
  `priority_backup` tinyint(4) NOT NULL DEFAULT '0',
  `use_buffer_table` tinyint(4) NOT NULL DEFAULT '0',
  `tmdb_api_key` text COLLATE utf8_unicode_ci NOT NULL,
  `toggle_menu` tinyint(4) NOT NULL DEFAULT '0',
  `mobile_apps` tinyint(4) NOT NULL DEFAULT '0',
  `stalker_container_priority` text COLLATE utf8_unicode_ci NOT NULL,
  `gen_container_priority` text COLLATE utf8_unicode_ci NOT NULL,
  `tmdb_default` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `series_custom_name` tinyint(4) NOT NULL DEFAULT '0',
  `mag_security` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `bouquet_name`, `live_streaming_pass`, `email_verify_sub`, `email_verify_cont`, `email_forgot_sub`, `email_forgot_cont`, `mail_from`, `smtp_host`, `smtp_port`, `min_password`, `username_strlen`, `username_alpha`, `allow_multiple_accs`, `allow_registrations`, `server_name`, `smtp_username`, `smtp_password`, `email_new_pass_sub`, `logo_url`, `email_new_pass_cont`, `smtp_from_name`, `confirmation_email`, `smtp_encryption`, `unique_id`, `copyrights_removed`, `copyrights_text`, `default_timezone`, `default_locale`, `allowed_stb_types`, `client_prebuffer`, `split_clients`, `stream_max_analyze`, `show_not_on_air_video`, `not_on_air_video_path`, `show_banned_video`, `banned_video_path`, `show_expired_video`, `expired_video_path`, `mag_container`, `probesize`, `allowed_ips_admin`, `block_svp`, `allow_countries`, `user_auto_kick_hours`, `show_in_red_online`, `disallow_empty_user_agents`, `show_all_category_mag`, `default_lang`, `autobackup_status`, `autobackup_pass`, `flood_limit`, `flood_ips_exclude`, `reshare_deny_addon`, `restart_http`, `css_layout`, `flood_seconds`, `flood_max_attempts`, `flood_apply_clients`, `flood_apply_restreamers`, `backup_source_all`, `flood_get_block`, `portal_block`, `streaming_block`, `stream_start_delay`, `hash_lb`, `vod_bitrate_plus`, `read_buffer_size`, `tv_channel_default_aspect`, `playback_limit`, `show_tv_channel_logo`, `show_channel_logo_in_preview`, `enable_connection_problem_indication`, `enable_pseudo_hls`, `vod_limit_at`, `client_area_plugin`, `persistent_connections`, `record_max_length`, `total_records_length`, `max_local_recordings`, `allowed_stb_types_for_local_recording`, `allowed_stb_types_rec`, `show_captcha`, `dynamic_timezone`, `stalker_theme`, `rtmp_random`, `api_ips`, `crypt_load_balancing`, `use_buffer`, `restreamer_prebuffer`, `audio_restart_loss`, `stalker_lock_images`, `channel_number_type`, `stb_change_pass`, `enable_debug_stalker`, `online_capacity_interval`, `always_enabled_subtitles`, `test_download_url`, `xc_support_allow`, `e2_arm7a`, `e2_mipsel`, `e2_mips32el`, `e2_sh4`, `e2_arm`, `api_pass`, `message_of_day`, `double_auth`, `mysql_remote_sec`, `enable_isp_lock`, `show_isps`, `userpanel_mainpage`, `save_closed_connection`, `client_logs_save`, `get_real_ip_client`, `case_sensitive_line`, `county_override_1st`, `disallow_2nd_ip_con`, `firewall`, `new_sorting_bouquet`, `split_by`, `use_mdomain_in_lists`, `use_https`, `priority_backup`, `use_buffer_table`, `tmdb_api_key`, `toggle_menu`, `mobile_apps`, `stalker_container_priority`, `gen_container_priority`, `tmdb_default`, `series_custom_name`, `mag_security`) VALUES (1,'Xtream Codes','ajLJkUZyBRhPAgdStBxb','Verify Registration @ {SERVER_NAME}','Hello,<p><br /></p><p>Please Click at the following URL to activate your account {VERIFY_LINK}</p><p><br /></p><p>{SERVER_NAME} Team</p><p>Thank you</p>','Forgot Password @ {SERVER_NAME}','Hello,<p><br /></p><p>Someone requested new password @  {SERVER_NAME} . To verify this request please click at the following link: {FORGOT_LINK}<br /></p><p><br /></p><p>{SERVER_NAME} Team</p><p>Thank you</p>','support@website.com','mail.website.com',0,5,15,0,1,0,'Xtream Codes','support@website.com','','Your New Password @ {SERVER_NAME}','','Hello,<p><br /></p><p>Your New Password is: {NEW_PASSWORD}<br /></p><p><br /></p><p>{SERVER_NAME} Team</p><p>Thank you</p>','Support',0,'no','v5ZmLzhuRv',0,'Xtream Codes','Europe/London','en_GB.utf8','[\"AuraHD\",\"AuraHD2\",\"AuraHD3\",\"AuraHD4\",\"AuraHD5\",\"AuraHD6\",\"AuraHD7\",\"AuraHD8\",\"AuraHD9\",\"MAG200\",\"MAG245\",\"MAG245D\",\"MAG250\",\"MAG254\",\"MAG255\",\"MAG256\",\"MAG257\",\"MAG260\",\"MAG270\",\"MAG275\",\"MAG322\",\"MAG323\",\"MAG324\",\"MAG325\",\"MAG349\",\"MAG350\",\"MAG351\",\"MAG352\",\"WR320\"]',30,'equal',5000000,0,'',0,'',0,'','ts',5000000,'',0,'[\"ALL\",\"A1\",\"A2\",\"O1\",\"AF\",\"AX\",\"AL\",\"DZ\",\"AS\",\"AD\",\"AO\",\"AI\",\"AQ\",\"AG\",\"AR\",\"AM\",\"AW\",\"AU\",\"AT\",\"AZ\",\"BS\",\"BH\",\"BD\",\"BB\",\"BY\",\"BE\",\"BZ\",\"BJ\",\"BM\",\"BT\",\"BO\",\"BA\",\"BW\",\"BV\",\"BQ\",\"BR\",\"IO\",\"BN\",\"BG\",\"BF\",\"BI\",\"KH\",\"CM\",\"CA\",\"CV\",\"KY\",\"CF\",\"TD\",\"CL\",\"CN\",\"CX\",\"CC\",\"CO\",\"KM\",\"CG\",\"CD\",\"CK\",\"CR\",\"CI\",\"HR\",\"CU\",\"CW\",\"CY\",\"CZ\",\"DK\",\"DJ\",\"DM\",\"DO\",\"EC\",\"EG\",\"SV\",\"GQ\",\"ER\",\"EE\",\"ET\",\"EU\",\"FK\",\"FO\",\"FJ\",\"FI\",\"FR\",\"GF\",\"PF\",\"TF\",\"MK\",\"GA\",\"GM\",\"GE\",\"DE\",\"GH\",\"GI\",\"GR\",\"GL\",\"GD\",\"GP\",\"GU\",\"GT\",\"GG\",\"GN\",\"GW\",\"GY\",\"HT\",\"HM\",\"VA\",\"HN\",\"HK\",\"HU\",\"IS\",\"IN\",\"ID\",\"IR\",\"IQ\",\"IE\",\"IM\",\"IL\",\"IT\",\"JM\",\"JP\",\"JE\",\"JO\",\"KZ\",\"KE\",\"KI\",\"KR\",\"KV\",\"KW\",\"KG\",\"LA\",\"LV\",\"LB\",\"LS\",\"LR\",\"LY\",\"LI\",\"LT\",\"LU\",\"MO\",\"MG\",\"MW\",\"MY\",\"MV\",\"ML\",\"MT\",\"MH\",\"MQ\",\"MR\",\"MU\",\"YT\",\"MX\",\"FM\",\"MD\",\"MC\",\"MN\",\"ME\",\"MS\",\"MA\",\"MZ\",\"MM\",\"NA\",\"NR\",\"NP\",\"NL\",\"AN\",\"NC\",\"NZ\",\"NI\",\"NE\",\"NG\",\"NU\",\"NF\",\"MP\",\"NO\",\"OM\",\"PK\",\"PW\",\"PS\",\"PA\",\"PG\",\"PY\",\"PE\",\"PH\",\"PN\",\"PL\",\"PT\",\"PR\",\"QA\",\"RE\",\"RO\",\"RU\",\"RW\",\"BL\",\"SH\",\"KN\",\"LC\",\"MF\",\"PM\",\"VC\",\"WS\",\"SM\",\"ST\",\"SA\",\"SN\",\"RS\",\"SC\",\"SL\",\"SG\",\"SK\",\"SI\",\"SB\",\"SO\",\"ZA\",\"GS\",\"ES\",\"LK\",\"SD\",\"SR\",\"SJ\",\"SZ\",\"SE\",\"SX\",\"CH\",\"SY\",\"TW\",\"TJ\",\"TZ\",\"TH\",\"TL\",\"TG\",\"TK\",\"TO\",\"TT\",\"TN\",\"TR\",\"TM\",\"TC\",\"TV\",\"UG\",\"UA\",\"AE\",\"GB\",\"US\",\"UM\",\"UY\",\"UZ\",\"VU\",\"VE\",\"VN\",\"VG\",\"VI\",\"WF\",\"EH\",\"YE\",\"ZM\",\"ZW\"]',3,2,0,1,'English',0,'',40,'',0,0,'light',2,3,0,0,0,0,0,0,0,0,200,8192,'fit',3,1,1,1,1,0,'flow',1,180,600,10,'[\"MAG255\",\"MAG256\",\"MAG257\"]','',1,1,'default',1,'','w6lJPUek8TV0KWkRVMQz',0,0,0,'','manual',1,0,10,0,'',0,'','','','','','','Welcome to Xtream Codes Reborn',1,0,0,1,'[]',1,1,'',1,0,0,1,1,'conn',0,'',0,0,'',0,0,'[\"mp4\",\"mkv\",\"avi\"]','[\"mp4\",\"mkv\",\"avi\"]','en',0,1);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signals`
--

DROP TABLE IF EXISTS `signals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signals` (
  `signal_id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `rtmp` tinyint(4) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`signal_id`),
  KEY `server_id` (`server_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signals`
--

LOCK TABLES `signals` WRITE;
/*!40000 ALTER TABLE `signals` DISABLE KEYS */;
/*!40000 ALTER TABLE `signals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stream_categories`
--

DROP TABLE IF EXISTS `stream_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stream_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `category_type` (`category_type`),
  KEY `cat_order` (`cat_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stream_categories`
--

LOCK TABLES `stream_categories` WRITE;
/*!40000 ALTER TABLE `stream_categories` DISABLE KEYS */;
INSERT INTO `stream_categories` (`id`, `category_type`, `category_name`, `parent_id`, `cat_order`) VALUES (1,'live','test',0,1),(2,'movie','test movie',0,99);
/*!40000 ALTER TABLE `stream_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stream_logs`
--

DROP TABLE IF EXISTS `stream_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stream_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `error` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stream_id` (`stream_id`),
  KEY `server_id` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stream_logs`
--

LOCK TABLES `stream_logs` WRITE;
/*!40000 ALTER TABLE `stream_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `stream_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stream_subcategories`
--

DROP TABLE IF EXISTS `stream_subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stream_subcategories` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sub_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stream_subcategories`
--

LOCK TABLES `stream_subcategories` WRITE;
/*!40000 ALTER TABLE `stream_subcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `stream_subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streaming_servers`
--

DROP TABLE IF EXISTS `streaming_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streaming_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `server_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vpn_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ssh_password` mediumtext COLLATE utf8_unicode_ci,
  `ssh_port` int(11) DEFAULT NULL,
  `diff_time_main` int(11) NOT NULL DEFAULT '0',
  `http_broadcast_port` int(11) NOT NULL,
  `total_clients` int(11) NOT NULL DEFAULT '0',
  `system_os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `network_interface` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latency` float NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '-1',
  `enable_geoip` int(11) NOT NULL DEFAULT '0',
  `geoip_countries` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `last_check_ago` int(11) NOT NULL DEFAULT '0',
  `can_delete` tinyint(4) NOT NULL DEFAULT '1',
  `server_hardware` text COLLATE utf8_unicode_ci NOT NULL,
  `total_services` int(11) NOT NULL DEFAULT '3',
  `persistent_connections` tinyint(4) NOT NULL DEFAULT '0',
  `rtmp_port` int(11) NOT NULL DEFAULT '8001',
  `geoip_type` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'low_priority',
  `isp_names` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `isp_type` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'low_priority',
  `enable_isp` tinyint(4) NOT NULL DEFAULT '0',
  `boost_fpm` tinyint(4) NOT NULL DEFAULT '0',
  `http_ports_add` text COLLATE utf8_unicode_ci NOT NULL,
  `network_guaranteed_speed` int(11) NOT NULL DEFAULT '0',
  `https_broadcast_port` int(11) NOT NULL DEFAULT '25463',
  `https_ports_add` text COLLATE utf8_unicode_ci NOT NULL,
  `whitelist_ips` text COLLATE utf8_unicode_ci NOT NULL,
  `watchdog_data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `timeshift_only` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `server_ip` (`server_ip`,`http_broadcast_port`),
  KEY `total_clients` (`total_clients`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streaming_servers`
--

LOCK TABLES `streaming_servers` WRITE;
/*!40000 ALTER TABLE `streaming_servers` DISABLE KEYS */;
INSERT INTO `streaming_servers` (`id`, `server_name`, `domain_name`, `server_ip`, `vpn_ip`, `ssh_password`, `ssh_port`, `diff_time_main`, `http_broadcast_port`, `total_clients`, `system_os`, `network_interface`, `latency`, `status`, `enable_geoip`, `geoip_countries`, `last_check_ago`, `can_delete`, `server_hardware`, `total_services`, `persistent_connections`, `rtmp_port`, `geoip_type`, `isp_names`, `isp_type`, `enable_isp`, `boost_fpm`, `http_ports_add`, `network_guaranteed_speed`, `https_broadcast_port`, `https_ports_add`, `whitelist_ips`, `watchdog_data`, `timeshift_only`) VALUES (1,'Main Server','','51.79.254.211','',NULL,NULL,0,25461,1000,'Ubuntu 18.04.6 LTS','eth0',0.008,1,0,'',1667804402,0,'{\"total_ram\":1991688,\"total_used\":1374992,\"cores\":0,\"threads\":1,\"kernel\":\"4.15.0-196-generic\",\"total_running_streams\":\"0\\n\",\"cpu_name\":\"Intel Core Processor (Haswell, no TSX)\",\"cpu_usage\":11,\"network_speed\":false,\"bytes_sent\":0,\"bytes_received\":0}',3,0,25462,'low_priority','','low_priority',0,1,'',1000,25463,'','[\"127.0.0.1\",\"51.79.254.211\",\"\"]','{\"cpu\":6,\"cpu_cores\":1,\"cpu_avg\":100,\"total_mem\":1991688,\"total_mem_free\":665984,\"total_mem_used\":1325704,\"total_mem_used_percent\":66.56183096950929,\"total_disk_space\":41429692416,\"uptime\":\"10m 40s\",\"total_running_streams\":\"0\\n\",\"bytes_sent\":0,\"bytes_received\":0,\"cpu_load_average\":1.61}',0),(6,'load bal','','51.79.248.98','',NULL,NULL,0,25461,1000,'','eth0',0.005,1,0,'[]',1668420422,1,'{\"total_ram\":7972064,\"total_used\":678228,\"cores\":0,\"threads\":8,\"kernel\":\"4.15.0-196-generic\",\"cpu_name\":\"Intel Core Processor (Haswell, no TSX)\",\"total_running_streams\":\"0\\n\",\"cpu_usage\":1.375,\"network_speed\":false,\"bytes_sent\":0,\"bytes_received\":0}',3,0,25462,'high_priority','','low_priority',0,0,'',1000,25463,'','[\"127.0.0.1\",\"51.79.248.98\",\"\"]','{\"cpu\":0,\"cpu_cores\":8,\"cpu_avg\":1,\"total_mem\":7972064,\"total_mem_free\":7308516,\"total_mem_used\":663548,\"total_mem_used_percent\":8.323415366459678,\"total_disk_space\":166304071680,\"uptime\":\"6d 21h 28m 40s\",\"total_running_streams\":\"0\\n\",\"bytes_sent\":0,\"bytes_received\":0,\"cpu_load_average\":0.15}',0);
/*!40000 ALTER TABLE `streaming_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams`
--

DROP TABLE IF EXISTS `streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `stream_display_name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `stream_source` mediumtext COLLATE utf8_unicode_ci,
  `stream_icon` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `notes` mediumtext COLLATE utf8_unicode_ci,
  `created_channel_location` int(11) DEFAULT NULL,
  `enable_transcode` tinyint(4) NOT NULL DEFAULT '0',
  `transcode_attributes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom_ffmpeg` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `movie_propeties` mediumtext COLLATE utf8_unicode_ci,
  `movie_subtitles` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `read_native` tinyint(4) NOT NULL DEFAULT '1',
  `target_container` text COLLATE utf8_unicode_ci,
  `stream_all` tinyint(4) NOT NULL DEFAULT '0',
  `remove_subtitles` tinyint(4) NOT NULL DEFAULT '0',
  `custom_sid` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `epg_id` int(11) DEFAULT NULL,
  `channel_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `epg_lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `auto_restart` text COLLATE utf8_unicode_ci NOT NULL,
  `transcode_profile_id` int(11) NOT NULL DEFAULT '0',
  `pids_create_channel` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `cchannel_rsources` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `gen_timestamps` tinyint(4) NOT NULL DEFAULT '1',
  `added` int(11) NOT NULL,
  `series_no` int(11) NOT NULL DEFAULT '0',
  `direct_source` tinyint(4) NOT NULL DEFAULT '0',
  `tv_archive_duration` int(11) NOT NULL DEFAULT '0',
  `tv_archive_server_id` int(11) NOT NULL DEFAULT '0',
  `tv_archive_pid` int(11) NOT NULL DEFAULT '0',
  `movie_symlink` tinyint(4) NOT NULL DEFAULT '0',
  `redirect_stream` tinyint(4) NOT NULL DEFAULT '0',
  `rtmp_output` tinyint(4) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `allow_record` tinyint(4) NOT NULL DEFAULT '0',
  `probesize_ondemand` int(11) NOT NULL DEFAULT '128000',
  `custom_map` text COLLATE utf8_unicode_ci NOT NULL,
  `external_push` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `delay_minutes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `category_id` (`category_id`),
  KEY `created_channel_location` (`created_channel_location`),
  KEY `enable_transcode` (`enable_transcode`),
  KEY `read_native` (`read_native`),
  KEY `epg_id` (`epg_id`),
  KEY `channel_id` (`channel_id`),
  KEY `transcode_profile_id` (`transcode_profile_id`),
  KEY `order` (`order`),
  KEY `direct_source` (`direct_source`),
  KEY `rtmp_output` (`rtmp_output`)
) ENGINE=InnoDB AUTO_INCREMENT=1365 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams`
--

LOCK TABLES `streams` WRITE;
/*!40000 ALTER TABLE `streams` DISABLE KEYS */;
INSERT INTO `streams` (`id`, `type`, `category_id`, `stream_display_name`, `stream_source`, `stream_icon`, `notes`, `created_channel_location`, `enable_transcode`, `transcode_attributes`, `custom_ffmpeg`, `movie_propeties`, `movie_subtitles`, `read_native`, `target_container`, `stream_all`, `remove_subtitles`, `custom_sid`, `epg_id`, `channel_id`, `epg_lang`, `order`, `auto_restart`, `transcode_profile_id`, `pids_create_channel`, `cchannel_rsources`, `gen_timestamps`, `added`, `series_no`, `direct_source`, `tv_archive_duration`, `tv_archive_server_id`, `tv_archive_pid`, `movie_symlink`, `redirect_stream`, `rtmp_output`, `number`, `allow_record`, `probesize_ondemand`, `custom_map`, `external_push`, `delay_minutes`) VALUES (419,2,2,'Prince','[\"s:6:\\/home\\/ubuntu\\/movies\\/Prince_Tamil_HQ_HDRip_400MB.mkv\"]','','',NULL,1,'[]','','{\"kinopoisk_url\":\"\",\"tmdb_id\":\"\",\"name\":\"Prince\",\"o_name\":\"Prince\",\"cover_big\":\"\",\"movie_image\":\"\",\"releasedate\":\"\",\"episode_run_time\":\"\",\"youtube_trailer\":\"\",\"director\":\"\",\"actors\":\"\",\"cast\":\"\",\"description\":\"\",\"plot\":\"\",\"age\":\"\",\"mpaa_rating\":\"\",\"rating_count_kinopoisk\":0,\"country\":\"\",\"genre\":\"\",\"duration_secs\":7739,\"duration\":\"02:08:59\",\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/48\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":640,\"height\":264,\"coded_width\":640,\"coded_height\":272,\"has_b_frames\":2,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"80:33\",\"pix_fmt\":\"yuv420p\",\"level\":21,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"24\\/1\",\"avg_frame_rate\":\"24\\/1\",\"time_base\":\"1\\/1000\",\"start_pts\":0,\"start_time\":\"0.000000\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":1,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0},\"tags\":{\"language\":\"tam\",\"title\":\"www.1TamilMV.cfd\",\"BPS\":\"372875\",\"BPS-eng\":\"372875\",\"DURATION-eng\":\"02:08:59.042000000\",\"NUMBER_OF_FRAMES\":\"185737\",\"NUMBER_OF_FRAMES-eng\":\"185737\",\"NUMBER_OF_BYTES\":\"360712832\",\"NUMBER_OF_BYTES-eng\":\"360712832\",\"_STATISTICS_WRITING_APP\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_APP-eng\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_DATE_UTC\":\"2022-11-03 20:22:24\",\"_STATISTICS_WRITING_DATE_UTC-eng\":\"2022-11-03 20:22:24\",\"_STATISTICS_TAGS\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"_STATISTICS_TAGS-eng\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"ENCODER\":\"Lavc58.39.100 libx264\",\"DURATION\":\"02:08:59.063000000\"}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":0,\"start_time\":\"0.000000\",\"disposition\":{\"default\":1,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0},\"tags\":{\"language\":\"tam\",\"title\":\"www.1TamilMV.cfd\",\"BPS\":\"61375\",\"BPS-eng\":\"61375\",\"DURATION-eng\":\"02:08:59.008000000\",\"NUMBER_OF_FRAMES\":\"362766\",\"NUMBER_OF_FRAMES-eng\":\"362766\",\"NUMBER_OF_BYTES\":\"59373334\",\"NUMBER_OF_BYTES-eng\":\"59373334\",\"_STATISTICS_WRITING_APP\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_APP-eng\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_DATE_UTC\":\"2022-11-03 20:22:24\",\"_STATISTICS_WRITING_DATE_UTC-eng\":\"2022-11-03 20:22:24\",\"_STATISTICS_TAGS\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"_STATISTICS_TAGS-eng\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"ENCODER\":\"Lavc58.39.100 aac\",\"DURATION\":\"02:08:59.029000000\"}},\"bitrate\":576,\"rating\":\"\"}','[]',0,'[\"mkv\"]',0,0,'',NULL,NULL,NULL,7,'[]',1,'','',1,1667834981,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(421,2,2,'Prince 2','[\"s:6:\\/home\\/ubuntu\\/movies\\/Prince_Tamil_HQ_HDRip_400MB.mkv\"]','','',NULL,0,'[]','','{\"kinopoisk_url\":\"\",\"tmdb_id\":\"\",\"name\":\"Prince 2\",\"o_name\":\"Prince 2\",\"cover_big\":\"\",\"movie_image\":\"\",\"releasedate\":\"\",\"episode_run_time\":\"\",\"youtube_trailer\":\"\",\"director\":\"\",\"actors\":\"\",\"cast\":\"\",\"description\":\"\",\"plot\":\"\",\"age\":\"\",\"mpaa_rating\":\"\",\"rating_count_kinopoisk\":0,\"country\":\"\",\"genre\":\"\",\"duration_secs\":7739,\"duration\":\"02:08:59\",\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/48\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":640,\"height\":264,\"coded_width\":640,\"coded_height\":272,\"has_b_frames\":2,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"80:33\",\"pix_fmt\":\"yuv420p\",\"level\":21,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"24\\/1\",\"avg_frame_rate\":\"24\\/1\",\"time_base\":\"1\\/1000\",\"start_pts\":0,\"start_time\":\"0.000000\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":1,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0},\"tags\":{\"language\":\"tam\",\"title\":\"www.1TamilMV.cfd\",\"BPS\":\"372875\",\"BPS-eng\":\"372875\",\"DURATION-eng\":\"02:08:59.042000000\",\"NUMBER_OF_FRAMES\":\"185737\",\"NUMBER_OF_FRAMES-eng\":\"185737\",\"NUMBER_OF_BYTES\":\"360712832\",\"NUMBER_OF_BYTES-eng\":\"360712832\",\"_STATISTICS_WRITING_APP\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_APP-eng\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_DATE_UTC\":\"2022-11-03 20:22:24\",\"_STATISTICS_WRITING_DATE_UTC-eng\":\"2022-11-03 20:22:24\",\"_STATISTICS_TAGS\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"_STATISTICS_TAGS-eng\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"DURATION\":\"02:08:59.041000000\"}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":0,\"start_time\":\"0.000000\",\"disposition\":{\"default\":1,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0},\"tags\":{\"language\":\"tam\",\"title\":\"www.1TamilMV.cfd\",\"BPS\":\"61375\",\"BPS-eng\":\"61375\",\"DURATION-eng\":\"02:08:59.008000000\",\"NUMBER_OF_FRAMES\":\"362766\",\"NUMBER_OF_FRAMES-eng\":\"362766\",\"NUMBER_OF_BYTES\":\"59373334\",\"NUMBER_OF_BYTES-eng\":\"59373334\",\"_STATISTICS_WRITING_APP\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_APP-eng\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_DATE_UTC\":\"2022-11-03 20:22:24\",\"_STATISTICS_WRITING_DATE_UTC-eng\":\"2022-11-03 20:22:24\",\"_STATISTICS_TAGS\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"_STATISTICS_TAGS-eng\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"DURATION\":\"02:08:59.008000000\"}},\"bitrate\":438,\"rating\":\"\"}','[]',0,'[\"mkv\"]',0,0,'',NULL,NULL,NULL,9,'[]',0,'','',1,1667835988,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(1360,1,1,'BR: PREMIERE 3 HD','[\"http:\\/\\/m3ulive.com:8080\\/fathimas9745711-restream\\/12345678\\/109884\"]','https://iconape.com/wp-content/png_logo_vector/premiere-2-2008-logo.png','',NULL,0,'[]','',NULL,'',0,NULL,0,0,'',0,NULL,'',31,'',0,'','',1,1667842240,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(1361,1,1,'Кинопремьера','[\"http:\\/\\/imax.iitv.in:8880\\/live\\/test-xBD1KHZCWO\\/H1xqODhkRD\\/587648.ts\"]','https://cdn.colorsmarathi.com/wp-content/uploads/2019/02/21051816/CM-Logo-1.png','',NULL,0,'[]','',NULL,'',0,NULL,0,0,'',0,NULL,'',29,'',0,'','',1,1667842388,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(1362,1,1,'VIP SERIAL','[\"http:\\/\\/imax.iitv.in:8880\\/live\\/test-xBD1KHZCWO\\/H1xqODhkRD\\/587542.ts\"]','https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Rai_3_-_Logo_2016.svg/260px-Rai_3_-_Logo_2016.svg.png','',NULL,0,'[]','',NULL,'',0,NULL,0,0,'',0,NULL,'',30,'',0,'','',1,1667842499,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(1363,1,1,'MATCH! Futbol 3','[\"http:\\/\\/imax.iitv.in:8880\\/live\\/test-xBD1KHZCWO\\/H1xqODhkRD\\/588079.ts\"]','https://cdn.colorsmarathi.com/wp-content/uploads/2019/02/21051816/CM-Logo-1.png','',NULL,1,'[]','',NULL,'',0,NULL,0,0,'',0,NULL,'',33,'',0,'','',1,1667842632,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(1364,1,1,'Jio Football 1 HD','[\"http:\\/\\/imax.iitv.in:8880\\/live\\/test-xBD1KHZCWO\\/H1xqODhkRD\\/587649.ts\"]','https://img-cdn.curl.pk/jio_icon/55821096951.png','',NULL,0,'[]','',NULL,'',0,NULL,0,0,'',0,NULL,'',32,'',0,'','',1,1667847042,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0);
/*!40000 ALTER TABLE `streams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams_arguments`
--

DROP TABLE IF EXISTS `streams_arguments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams_arguments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `argument_cat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `argument_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `argument_description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `argument_wprotocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `argument_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `argument_cmd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `argument_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `argument_default_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams_arguments`
--

LOCK TABLES `streams_arguments` WRITE;
/*!40000 ALTER TABLE `streams_arguments` DISABLE KEYS */;
INSERT INTO `streams_arguments` (`id`, `argument_cat`, `argument_name`, `argument_description`, `argument_wprotocol`, `argument_key`, `argument_cmd`, `argument_type`, `argument_default_value`) VALUES (1,'fetch','User Agent','Set a Custom User Agent','http','user_agent','-user-agent \"%s\"','text','Xtream-Codes IPTV Panel Pro'),(2,'fetch','HTTP Proxy','Set an HTTP Proxy in this format: ip:port','http','proxy','-http_proxy \"%s\"','text',NULL),(3,'transcode','Average Video Bit Rate','With this you can change the bitrate of the target video. It is very useful in case you want your video to be playable on slow internet connections',NULL,'bitrate','-b:v %dk','text',NULL),(4,'transcode','Average Audio Bitrate','Change Audio Bitrate',NULL,'audio_bitrate','-b:a %dk','text',NULL),(5,'transcode','Minimum Bitrate Tolerance','-minrate FFmpeg argument. Specify the minimum bitrate tolerance here. Specify in kbps. Enter INT number.',NULL,'minimum_bitrate','-minrate %dk','text',NULL),(6,'transcode','Maximum Bitrate Tolerance','-maxrate FFmpeg argument. Specify the maximum bitrate tolerance here.Specify in kbps. Enter INT number. ',NULL,'maximum_bitrate','-maxrate %dk','text',NULL),(7,'transcode','Buffer Size','-bufsize is the rate control buffer. Basically it is assumed that the receiver/end player will buffer that much data so its ok to fluctuate within that much. Specify in kbps. Enter INT number.',NULL,'bufsize','-bufsize %dk','text',NULL),(8,'transcode','CRF Value','The range of the quantizer scale is 0-51: where 0 is lossless, 23 is default, and 51 is worst possible. A lower value is a higher quality and a subjectively sane range is 18-28. Consider 18 to be visually lossless or nearly so: it should look the same or ',NULL,'crf','-crf %d','text',NULL),(9,'transcode','Scaling','Change the Width & Height of the target Video. (Eg. 320:240 ) .  If we\'d like to keep the aspect ratio, we need to specify only one component, either width or height, and set the other component to -1. (eg 320:-1)',NULL,'scaling','-filter_complex \"scale=%s\"','text',NULL),(10,'transcode','Aspect','Change the target Video Aspect. (eg 16:9)',NULL,'aspect','-aspect %s','text',NULL),(11,'transcode','Target Video FrameRate','Set the frame rate',NULL,'video_frame_rate','-r %d','text',NULL),(12,'transcode','Audio Sample Rate','Set the Audio Sample rate in Hz',NULL,'audio_sample_rate','-ar %d','text',NULL),(13,'transcode','Audio Channels','Specify Audio Channels',NULL,'audio_channels','-ac %d','text',NULL),(14,'transcode','Remove Sensitive Parts (delogo filter)','With this filter you can remove sensitive parts in your video. You will just specifiy the x & y pixels where there is a sensitive area and the width and height that will be removed. Example Use: x=0:y=0:w=100:h=77:band=10 ',NULL,'delogo','-filter_complex \"delogo=%s\"','text',NULL),(15,'transcode','Threads','Specify the number of threads you want to use for the transcoding process. Entering 0 as value will make FFmpeg to choose the most optimal settings',NULL,'threads','-threads %d','text',NULL),(16,'transcode','Logo Path','Add your Own Logo to the stream. The logo will be placed in the upper left. Please be sure that you have selected H.264 as codec otherwise this option won\'t work. Note that adding your own logo will consume A LOT of cpu power',NULL,'logo','-i \"%s\" -filter_complex \"overlay\"','text',NULL),(17,'fetch','Cookie','Set an HTTP Cookie that might be useful to fetch your INPUT Source.','http','cookie','-cookies \'%s\'','text',NULL),(18,'transcode','DeInterlacing Filter','It check pixels of previous, current and next frames to re-create the missed field by some local adaptive method (edge-directed interpolation) and uses spatial check to prevent most artifacts. ',NULL,'','-filter_complex \"yadif\"','radio','0'),(19,'fetch','Headers','Set Custom Headers','http','headers','-headers \"%s\"','text',NULL);
/*!40000 ALTER TABLE `streams_arguments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams_options`
--

DROP TABLE IF EXISTS `streams_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `argument_id` int(11) NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `stream_id` (`stream_id`),
  KEY `argument_id` (`argument_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1395 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams_options`
--

LOCK TABLES `streams_options` WRITE;
/*!40000 ALTER TABLE `streams_options` DISABLE KEYS */;
INSERT INTO `streams_options` (`id`, `stream_id`, `argument_id`, `value`) VALUES (1,1,1,'Xtream-Codes IPTV Panel Pro'),(2,2,1,'Xtream-Codes IPTV Panel Pro'),(3,3,1,'Xtream-Codes IPTV Panel Pro'),(4,4,1,'Xtream-Codes IPTV Panel Pro'),(5,5,1,'Xtream-Codes IPTV Panel Pro'),(6,6,1,'Xtream-Codes IPTV Panel Pro'),(7,7,1,'Xtream-Codes IPTV Panel Pro'),(8,8,1,'Xtream-Codes IPTV Panel Pro'),(9,9,1,'Xtream-Codes IPTV Panel Pro'),(10,10,1,'Xtream-Codes IPTV Panel Pro'),(11,11,1,'Xtream-Codes IPTV Panel Pro'),(12,12,1,'Xtream-Codes IPTV Panel Pro'),(13,13,1,'Xtream-Codes IPTV Panel Pro'),(14,14,1,'Xtream-Codes IPTV Panel Pro'),(15,15,1,'Xtream-Codes IPTV Panel Pro'),(16,16,1,'Xtream-Codes IPTV Panel Pro'),(17,17,1,'Xtream-Codes IPTV Panel Pro'),(18,18,1,'Xtream-Codes IPTV Panel Pro'),(19,19,1,'Xtream-Codes IPTV Panel Pro'),(20,20,1,'Xtream-Codes IPTV Panel Pro'),(21,21,1,'Xtream-Codes IPTV Panel Pro'),(22,22,1,'Xtream-Codes IPTV Panel Pro'),(23,23,1,'Xtream-Codes IPTV Panel Pro'),(24,24,1,'Xtream-Codes IPTV Panel Pro'),(25,25,1,'Xtream-Codes IPTV Panel Pro'),(26,26,1,'Xtream-Codes IPTV Panel Pro'),(27,27,1,'Xtream-Codes IPTV Panel Pro'),(28,28,1,'Xtream-Codes IPTV Panel Pro'),(29,29,1,'Xtream-Codes IPTV Panel Pro'),(30,30,1,'Xtream-Codes IPTV Panel Pro'),(31,31,1,'Xtream-Codes IPTV Panel Pro'),(32,32,1,'Xtream-Codes IPTV Panel Pro'),(33,33,1,'Xtream-Codes IPTV Panel Pro'),(34,34,1,'Xtream-Codes IPTV Panel Pro'),(35,35,1,'Xtream-Codes IPTV Panel Pro'),(36,36,1,'Xtream-Codes IPTV Panel Pro'),(37,37,1,'Xtream-Codes IPTV Panel Pro'),(38,38,1,'Xtream-Codes IPTV Panel Pro'),(39,39,1,'Xtream-Codes IPTV Panel Pro'),(40,40,1,'Xtream-Codes IPTV Panel Pro'),(41,41,1,'Xtream-Codes IPTV Panel Pro'),(42,42,1,'Xtream-Codes IPTV Panel Pro'),(43,43,1,'Xtream-Codes IPTV Panel Pro'),(44,44,1,'Xtream-Codes IPTV Panel Pro'),(45,45,1,'Xtream-Codes IPTV Panel Pro'),(46,46,1,'Xtream-Codes IPTV Panel Pro'),(47,47,1,'Xtream-Codes IPTV Panel Pro'),(48,48,1,'Xtream-Codes IPTV Panel Pro'),(49,49,1,'Xtream-Codes IPTV Panel Pro'),(50,50,1,'Xtream-Codes IPTV Panel Pro'),(51,51,1,'Xtream-Codes IPTV Panel Pro'),(52,52,1,'Xtream-Codes IPTV Panel Pro'),(53,53,1,'Xtream-Codes IPTV Panel Pro'),(54,54,1,'Xtream-Codes IPTV Panel Pro'),(55,55,1,'Xtream-Codes IPTV Panel Pro'),(56,56,1,'Xtream-Codes IPTV Panel Pro'),(57,57,1,'Xtream-Codes IPTV Panel Pro'),(58,58,1,'Xtream-Codes IPTV Panel Pro'),(59,59,1,'Xtream-Codes IPTV Panel Pro'),(60,60,1,'Xtream-Codes IPTV Panel Pro'),(61,61,1,'Xtream-Codes IPTV Panel Pro'),(62,62,1,'Xtream-Codes IPTV Panel Pro'),(63,63,1,'Xtream-Codes IPTV Panel Pro'),(64,64,1,'Xtream-Codes IPTV Panel Pro'),(65,65,1,'Xtream-Codes IPTV Panel Pro'),(66,66,1,'Xtream-Codes IPTV Panel Pro'),(67,67,1,'Xtream-Codes IPTV Panel Pro'),(68,68,1,'Xtream-Codes IPTV Panel Pro'),(69,69,1,'Xtream-Codes IPTV Panel Pro'),(70,70,1,'Xtream-Codes IPTV Panel Pro'),(71,71,1,'Xtream-Codes IPTV Panel Pro'),(72,72,1,'Xtream-Codes IPTV Panel Pro'),(73,73,1,'Xtream-Codes IPTV Panel Pro'),(74,74,1,'Xtream-Codes IPTV Panel Pro'),(75,75,1,'Xtream-Codes IPTV Panel Pro'),(76,76,1,'Xtream-Codes IPTV Panel Pro'),(77,77,1,'Xtream-Codes IPTV Panel Pro'),(78,78,1,'Xtream-Codes IPTV Panel Pro'),(79,79,1,'Xtream-Codes IPTV Panel Pro'),(80,80,1,'Xtream-Codes IPTV Panel Pro'),(81,81,1,'Xtream-Codes IPTV Panel Pro'),(82,82,1,'Xtream-Codes IPTV Panel Pro'),(83,83,1,'Xtream-Codes IPTV Panel Pro'),(84,84,1,'Xtream-Codes IPTV Panel Pro'),(85,85,1,'Xtream-Codes IPTV Panel Pro'),(86,86,1,'Xtream-Codes IPTV Panel Pro'),(87,87,1,'Xtream-Codes IPTV Panel Pro'),(88,88,1,'Xtream-Codes IPTV Panel Pro'),(89,89,1,'Xtream-Codes IPTV Panel Pro'),(90,90,1,'Xtream-Codes IPTV Panel Pro'),(91,91,1,'Xtream-Codes IPTV Panel Pro'),(92,92,1,'Xtream-Codes IPTV Panel Pro'),(93,93,1,'Xtream-Codes IPTV Panel Pro'),(94,94,1,'Xtream-Codes IPTV Panel Pro'),(95,95,1,'Xtream-Codes IPTV Panel Pro'),(96,96,1,'Xtream-Codes IPTV Panel Pro'),(97,97,1,'Xtream-Codes IPTV Panel Pro'),(98,98,1,'Xtream-Codes IPTV Panel Pro'),(99,99,1,'Xtream-Codes IPTV Panel Pro'),(100,100,1,'Xtream-Codes IPTV Panel Pro'),(101,101,1,'Xtream-Codes IPTV Panel Pro'),(102,102,1,'Xtream-Codes IPTV Panel Pro'),(103,103,1,'Xtream-Codes IPTV Panel Pro'),(104,104,1,'Xtream-Codes IPTV Panel Pro'),(105,105,1,'Xtream-Codes IPTV Panel Pro'),(106,106,1,'Xtream-Codes IPTV Panel Pro'),(107,107,1,'Xtream-Codes IPTV Panel Pro'),(108,108,1,'Xtream-Codes IPTV Panel Pro'),(109,109,1,'Xtream-Codes IPTV Panel Pro'),(110,110,1,'Xtream-Codes IPTV Panel Pro'),(111,111,1,'Xtream-Codes IPTV Panel Pro'),(112,112,1,'Xtream-Codes IPTV Panel Pro'),(113,113,1,'Xtream-Codes IPTV Panel Pro'),(114,114,1,'Xtream-Codes IPTV Panel Pro'),(115,115,1,'Xtream-Codes IPTV Panel Pro'),(116,116,1,'Xtream-Codes IPTV Panel Pro'),(117,117,1,'Xtream-Codes IPTV Panel Pro'),(118,118,1,'Xtream-Codes IPTV Panel Pro'),(119,119,1,'Xtream-Codes IPTV Panel Pro'),(120,120,1,'Xtream-Codes IPTV Panel Pro'),(121,121,1,'Xtream-Codes IPTV Panel Pro'),(122,122,1,'Xtream-Codes IPTV Panel Pro'),(123,123,1,'Xtream-Codes IPTV Panel Pro'),(124,124,1,'Xtream-Codes IPTV Panel Pro'),(125,125,1,'Xtream-Codes IPTV Panel Pro'),(126,126,1,'Xtream-Codes IPTV Panel Pro'),(127,127,1,'Xtream-Codes IPTV Panel Pro'),(128,128,1,'Xtream-Codes IPTV Panel Pro'),(129,129,1,'Xtream-Codes IPTV Panel Pro'),(130,130,1,'Xtream-Codes IPTV Panel Pro'),(131,131,1,'Xtream-Codes IPTV Panel Pro'),(132,132,1,'Xtream-Codes IPTV Panel Pro'),(133,133,1,'Xtream-Codes IPTV Panel Pro'),(134,134,1,'Xtream-Codes IPTV Panel Pro'),(135,135,1,'Xtream-Codes IPTV Panel Pro'),(136,136,1,'Xtream-Codes IPTV Panel Pro'),(137,137,1,'Xtream-Codes IPTV Panel Pro'),(138,138,1,'Xtream-Codes IPTV Panel Pro'),(139,139,1,'Xtream-Codes IPTV Panel Pro'),(140,140,1,'Xtream-Codes IPTV Panel Pro'),(141,141,1,'Xtream-Codes IPTV Panel Pro'),(142,142,1,'Xtream-Codes IPTV Panel Pro'),(143,143,1,'Xtream-Codes IPTV Panel Pro'),(144,144,1,'Xtream-Codes IPTV Panel Pro'),(145,145,1,'Xtream-Codes IPTV Panel Pro'),(146,146,1,'Xtream-Codes IPTV Panel Pro'),(147,147,1,'Xtream-Codes IPTV Panel Pro'),(148,148,1,'Xtream-Codes IPTV Panel Pro'),(149,149,1,'Xtream-Codes IPTV Panel Pro'),(150,150,1,'Xtream-Codes IPTV Panel Pro'),(151,151,1,'Xtream-Codes IPTV Panel Pro'),(152,152,1,'Xtream-Codes IPTV Panel Pro'),(153,153,1,'Xtream-Codes IPTV Panel Pro'),(154,154,1,'Xtream-Codes IPTV Panel Pro'),(155,155,1,'Xtream-Codes IPTV Panel Pro'),(156,156,1,'Xtream-Codes IPTV Panel Pro'),(157,157,1,'Xtream-Codes IPTV Panel Pro'),(158,158,1,'Xtream-Codes IPTV Panel Pro'),(159,159,1,'Xtream-Codes IPTV Panel Pro'),(160,160,1,'Xtream-Codes IPTV Panel Pro'),(161,161,1,'Xtream-Codes IPTV Panel Pro'),(162,162,1,'Xtream-Codes IPTV Panel Pro'),(163,163,1,'Xtream-Codes IPTV Panel Pro'),(164,164,1,'Xtream-Codes IPTV Panel Pro'),(165,165,1,'Xtream-Codes IPTV Panel Pro'),(166,166,1,'Xtream-Codes IPTV Panel Pro'),(167,167,1,'Xtream-Codes IPTV Panel Pro'),(168,168,1,'Xtream-Codes IPTV Panel Pro'),(169,169,1,'Xtream-Codes IPTV Panel Pro'),(170,170,1,'Xtream-Codes IPTV Panel Pro'),(171,171,1,'Xtream-Codes IPTV Panel Pro'),(172,172,1,'Xtream-Codes IPTV Panel Pro'),(173,173,1,'Xtream-Codes IPTV Panel Pro'),(174,174,1,'Xtream-Codes IPTV Panel Pro'),(175,175,1,'Xtream-Codes IPTV Panel Pro'),(176,176,1,'Xtream-Codes IPTV Panel Pro'),(177,177,1,'Xtream-Codes IPTV Panel Pro'),(178,178,1,'Xtream-Codes IPTV Panel Pro'),(179,179,1,'Xtream-Codes IPTV Panel Pro'),(180,180,1,'Xtream-Codes IPTV Panel Pro'),(181,181,1,'Xtream-Codes IPTV Panel Pro'),(182,182,1,'Xtream-Codes IPTV Panel Pro'),(183,183,1,'Xtream-Codes IPTV Panel Pro'),(184,184,1,'Xtream-Codes IPTV Panel Pro'),(185,185,1,'Xtream-Codes IPTV Panel Pro'),(186,186,1,'Xtream-Codes IPTV Panel Pro'),(187,187,1,'Xtream-Codes IPTV Panel Pro'),(188,188,1,'Xtream-Codes IPTV Panel Pro'),(189,189,1,'Xtream-Codes IPTV Panel Pro'),(190,190,1,'Xtream-Codes IPTV Panel Pro'),(191,191,1,'Xtream-Codes IPTV Panel Pro'),(192,192,1,'Xtream-Codes IPTV Panel Pro'),(193,193,1,'Xtream-Codes IPTV Panel Pro'),(194,194,1,'Xtream-Codes IPTV Panel Pro'),(195,195,1,'Xtream-Codes IPTV Panel Pro'),(196,196,1,'Xtream-Codes IPTV Panel Pro'),(197,197,1,'Xtream-Codes IPTV Panel Pro'),(198,198,1,'Xtream-Codes IPTV Panel Pro'),(199,199,1,'Xtream-Codes IPTV Panel Pro'),(200,200,1,'Xtream-Codes IPTV Panel Pro'),(201,201,1,'Xtream-Codes IPTV Panel Pro'),(202,202,1,'Xtream-Codes IPTV Panel Pro'),(203,203,1,'Xtream-Codes IPTV Panel Pro'),(204,204,1,'Xtream-Codes IPTV Panel Pro'),(205,205,1,'Xtream-Codes IPTV Panel Pro'),(206,206,1,'Xtream-Codes IPTV Panel Pro'),(207,207,1,'Xtream-Codes IPTV Panel Pro'),(208,208,1,'Xtream-Codes IPTV Panel Pro'),(209,209,1,'Xtream-Codes IPTV Panel Pro'),(210,210,1,'Xtream-Codes IPTV Panel Pro'),(211,211,1,'Xtream-Codes IPTV Panel Pro'),(212,212,1,'Xtream-Codes IPTV Panel Pro'),(213,213,1,'Xtream-Codes IPTV Panel Pro'),(214,214,1,'Xtream-Codes IPTV Panel Pro'),(215,215,1,'Xtream-Codes IPTV Panel Pro'),(216,216,1,'Xtream-Codes IPTV Panel Pro'),(217,217,1,'Xtream-Codes IPTV Panel Pro'),(218,218,1,'Xtream-Codes IPTV Panel Pro'),(219,219,1,'Xtream-Codes IPTV Panel Pro'),(220,220,1,'Xtream-Codes IPTV Panel Pro'),(221,221,1,'Xtream-Codes IPTV Panel Pro'),(222,222,1,'Xtream-Codes IPTV Panel Pro'),(223,223,1,'Xtream-Codes IPTV Panel Pro'),(224,224,1,'Xtream-Codes IPTV Panel Pro'),(225,225,1,'Xtream-Codes IPTV Panel Pro'),(226,226,1,'Xtream-Codes IPTV Panel Pro'),(227,227,1,'Xtream-Codes IPTV Panel Pro'),(228,228,1,'Xtream-Codes IPTV Panel Pro'),(229,229,1,'Xtream-Codes IPTV Panel Pro'),(230,230,1,'Xtream-Codes IPTV Panel Pro'),(231,231,1,'Xtream-Codes IPTV Panel Pro'),(232,232,1,'Xtream-Codes IPTV Panel Pro'),(233,233,1,'Xtream-Codes IPTV Panel Pro'),(234,234,1,'Xtream-Codes IPTV Panel Pro'),(235,235,1,'Xtream-Codes IPTV Panel Pro'),(236,236,1,'Xtream-Codes IPTV Panel Pro'),(237,237,1,'Xtream-Codes IPTV Panel Pro'),(238,238,1,'Xtream-Codes IPTV Panel Pro'),(239,239,1,'Xtream-Codes IPTV Panel Pro'),(240,240,1,'Xtream-Codes IPTV Panel Pro'),(241,241,1,'Xtream-Codes IPTV Panel Pro'),(242,242,1,'Xtream-Codes IPTV Panel Pro'),(243,243,1,'Xtream-Codes IPTV Panel Pro'),(244,244,1,'Xtream-Codes IPTV Panel Pro'),(245,245,1,'Xtream-Codes IPTV Panel Pro'),(246,246,1,'Xtream-Codes IPTV Panel Pro'),(247,247,1,'Xtream-Codes IPTV Panel Pro'),(248,248,1,'Xtream-Codes IPTV Panel Pro'),(249,249,1,'Xtream-Codes IPTV Panel Pro'),(250,250,1,'Xtream-Codes IPTV Panel Pro'),(251,251,1,'Xtream-Codes IPTV Panel Pro'),(252,252,1,'Xtream-Codes IPTV Panel Pro'),(253,253,1,'Xtream-Codes IPTV Panel Pro'),(254,254,1,'Xtream-Codes IPTV Panel Pro'),(255,255,1,'Xtream-Codes IPTV Panel Pro'),(256,256,1,'Xtream-Codes IPTV Panel Pro'),(257,257,1,'Xtream-Codes IPTV Panel Pro'),(258,258,1,'Xtream-Codes IPTV Panel Pro'),(259,259,1,'Xtream-Codes IPTV Panel Pro'),(260,260,1,'Xtream-Codes IPTV Panel Pro'),(261,261,1,'Xtream-Codes IPTV Panel Pro'),(262,262,1,'Xtream-Codes IPTV Panel Pro'),(263,263,1,'Xtream-Codes IPTV Panel Pro'),(264,264,1,'Xtream-Codes IPTV Panel Pro'),(265,265,1,'Xtream-Codes IPTV Panel Pro'),(266,266,1,'Xtream-Codes IPTV Panel Pro'),(267,267,1,'Xtream-Codes IPTV Panel Pro'),(268,268,1,'Xtream-Codes IPTV Panel Pro'),(269,269,1,'Xtream-Codes IPTV Panel Pro'),(270,270,1,'Xtream-Codes IPTV Panel Pro'),(271,271,1,'Xtream-Codes IPTV Panel Pro'),(272,272,1,'Xtream-Codes IPTV Panel Pro'),(273,273,1,'Xtream-Codes IPTV Panel Pro'),(274,274,1,'Xtream-Codes IPTV Panel Pro'),(275,275,1,'Xtream-Codes IPTV Panel Pro'),(276,276,1,'Xtream-Codes IPTV Panel Pro'),(277,277,1,'Xtream-Codes IPTV Panel Pro'),(278,278,1,'Xtream-Codes IPTV Panel Pro'),(279,279,1,'Xtream-Codes IPTV Panel Pro'),(280,280,1,'Xtream-Codes IPTV Panel Pro'),(281,281,1,'Xtream-Codes IPTV Panel Pro'),(282,282,1,'Xtream-Codes IPTV Panel Pro'),(283,283,1,'Xtream-Codes IPTV Panel Pro'),(284,284,1,'Xtream-Codes IPTV Panel Pro'),(285,285,1,'Xtream-Codes IPTV Panel Pro'),(286,286,1,'Xtream-Codes IPTV Panel Pro'),(287,287,1,'Xtream-Codes IPTV Panel Pro'),(288,288,1,'Xtream-Codes IPTV Panel Pro'),(289,289,1,'Xtream-Codes IPTV Panel Pro'),(290,290,1,'Xtream-Codes IPTV Panel Pro'),(291,291,1,'Xtream-Codes IPTV Panel Pro'),(292,292,1,'Xtream-Codes IPTV Panel Pro'),(293,293,1,'Xtream-Codes IPTV Panel Pro'),(294,294,1,'Xtream-Codes IPTV Panel Pro'),(295,295,1,'Xtream-Codes IPTV Panel Pro'),(296,296,1,'Xtream-Codes IPTV Panel Pro'),(297,297,1,'Xtream-Codes IPTV Panel Pro'),(298,298,1,'Xtream-Codes IPTV Panel Pro'),(299,299,1,'Xtream-Codes IPTV Panel Pro'),(300,300,1,'Xtream-Codes IPTV Panel Pro'),(301,301,1,'Xtream-Codes IPTV Panel Pro'),(302,302,1,'Xtream-Codes IPTV Panel Pro'),(303,303,1,'Xtream-Codes IPTV Panel Pro'),(304,304,1,'Xtream-Codes IPTV Panel Pro'),(305,305,1,'Xtream-Codes IPTV Panel Pro'),(306,306,1,'Xtream-Codes IPTV Panel Pro'),(307,307,1,'Xtream-Codes IPTV Panel Pro'),(308,308,1,'Xtream-Codes IPTV Panel Pro'),(309,309,1,'Xtream-Codes IPTV Panel Pro'),(310,310,1,'Xtream-Codes IPTV Panel Pro'),(311,311,1,'Xtream-Codes IPTV Panel Pro'),(312,312,1,'Xtream-Codes IPTV Panel Pro'),(313,313,1,'Xtream-Codes IPTV Panel Pro'),(314,314,1,'Xtream-Codes IPTV Panel Pro'),(315,315,1,'Xtream-Codes IPTV Panel Pro'),(316,316,1,'Xtream-Codes IPTV Panel Pro'),(317,317,1,'Xtream-Codes IPTV Panel Pro'),(318,318,1,'Xtream-Codes IPTV Panel Pro'),(319,319,1,'Xtream-Codes IPTV Panel Pro'),(320,320,1,'Xtream-Codes IPTV Panel Pro'),(321,321,1,'Xtream-Codes IPTV Panel Pro'),(322,322,1,'Xtream-Codes IPTV Panel Pro'),(323,323,1,'Xtream-Codes IPTV Panel Pro'),(324,324,1,'Xtream-Codes IPTV Panel Pro'),(325,325,1,'Xtream-Codes IPTV Panel Pro'),(326,326,1,'Xtream-Codes IPTV Panel Pro'),(327,327,1,'Xtream-Codes IPTV Panel Pro'),(328,328,1,'Xtream-Codes IPTV Panel Pro'),(329,329,1,'Xtream-Codes IPTV Panel Pro'),(330,330,1,'Xtream-Codes IPTV Panel Pro'),(331,331,1,'Xtream-Codes IPTV Panel Pro'),(332,332,1,'Xtream-Codes IPTV Panel Pro'),(333,333,1,'Xtream-Codes IPTV Panel Pro'),(334,334,1,'Xtream-Codes IPTV Panel Pro'),(335,335,1,'Xtream-Codes IPTV Panel Pro'),(336,336,1,'Xtream-Codes IPTV Panel Pro'),(337,337,1,'Xtream-Codes IPTV Panel Pro'),(338,338,1,'Xtream-Codes IPTV Panel Pro'),(339,339,1,'Xtream-Codes IPTV Panel Pro'),(340,340,1,'Xtream-Codes IPTV Panel Pro'),(341,341,1,'Xtream-Codes IPTV Panel Pro'),(342,342,1,'Xtream-Codes IPTV Panel Pro'),(343,343,1,'Xtream-Codes IPTV Panel Pro'),(344,344,1,'Xtream-Codes IPTV Panel Pro'),(345,345,1,'Xtream-Codes IPTV Panel Pro'),(346,346,1,'Xtream-Codes IPTV Panel Pro'),(347,347,1,'Xtream-Codes IPTV Panel Pro'),(348,348,1,'Xtream-Codes IPTV Panel Pro'),(349,349,1,'Xtream-Codes IPTV Panel Pro'),(350,350,1,'Xtream-Codes IPTV Panel Pro'),(351,351,1,'Xtream-Codes IPTV Panel Pro'),(352,352,1,'Xtream-Codes IPTV Panel Pro'),(353,353,1,'Xtream-Codes IPTV Panel Pro'),(354,354,1,'Xtream-Codes IPTV Panel Pro'),(355,355,1,'Xtream-Codes IPTV Panel Pro'),(356,356,1,'Xtream-Codes IPTV Panel Pro'),(357,357,1,'Xtream-Codes IPTV Panel Pro'),(358,358,1,'Xtream-Codes IPTV Panel Pro'),(359,359,1,'Xtream-Codes IPTV Panel Pro'),(360,360,1,'Xtream-Codes IPTV Panel Pro'),(361,361,1,'Xtream-Codes IPTV Panel Pro'),(362,362,1,'Xtream-Codes IPTV Panel Pro'),(363,363,1,'Xtream-Codes IPTV Panel Pro'),(364,364,1,'Xtream-Codes IPTV Panel Pro'),(365,365,1,'Xtream-Codes IPTV Panel Pro'),(366,366,1,'Xtream-Codes IPTV Panel Pro'),(367,367,1,'Xtream-Codes IPTV Panel Pro'),(368,368,1,'Xtream-Codes IPTV Panel Pro'),(369,369,1,'Xtream-Codes IPTV Panel Pro'),(370,370,1,'Xtream-Codes IPTV Panel Pro'),(371,371,1,'Xtream-Codes IPTV Panel Pro'),(372,372,1,'Xtream-Codes IPTV Panel Pro'),(373,373,1,'Xtream-Codes IPTV Panel Pro'),(374,374,1,'Xtream-Codes IPTV Panel Pro'),(375,375,1,'Xtream-Codes IPTV Panel Pro'),(376,376,1,'Xtream-Codes IPTV Panel Pro'),(377,377,1,'Xtream-Codes IPTV Panel Pro'),(378,378,1,'Xtream-Codes IPTV Panel Pro'),(379,379,1,'Xtream-Codes IPTV Panel Pro'),(380,380,1,'Xtream-Codes IPTV Panel Pro'),(381,381,1,'Xtream-Codes IPTV Panel Pro'),(382,382,1,'Xtream-Codes IPTV Panel Pro'),(383,383,1,'Xtream-Codes IPTV Panel Pro'),(384,384,1,'Xtream-Codes IPTV Panel Pro'),(385,385,1,'Xtream-Codes IPTV Panel Pro'),(386,386,1,'Xtream-Codes IPTV Panel Pro'),(387,387,1,'Xtream-Codes IPTV Panel Pro'),(388,388,1,'Xtream-Codes IPTV Panel Pro'),(389,389,1,'Xtream-Codes IPTV Panel Pro'),(390,390,1,'Xtream-Codes IPTV Panel Pro'),(391,391,1,'Xtream-Codes IPTV Panel Pro'),(392,392,1,'Xtream-Codes IPTV Panel Pro'),(393,393,1,'Xtream-Codes IPTV Panel Pro'),(394,394,1,'Xtream-Codes IPTV Panel Pro'),(395,395,1,'Xtream-Codes IPTV Panel Pro'),(396,396,1,'Xtream-Codes IPTV Panel Pro'),(397,397,1,'Xtream-Codes IPTV Panel Pro'),(398,398,1,'Xtream-Codes IPTV Panel Pro'),(399,399,1,'Xtream-Codes IPTV Panel Pro'),(400,400,1,'Xtream-Codes IPTV Panel Pro'),(401,401,1,'Xtream-Codes IPTV Panel Pro'),(402,402,1,'Xtream-Codes IPTV Panel Pro'),(403,403,1,'Xtream-Codes IPTV Panel Pro'),(404,404,1,'Xtream-Codes IPTV Panel Pro'),(406,406,1,'Xtream-Codes IPTV Panel Pro'),(407,407,1,'Xtream-Codes IPTV Panel Pro'),(410,405,1,'Xtream-Codes IPTV Panel Pro'),(411,408,1,'Xtream-Codes IPTV Panel Pro'),(413,409,1,'Xtream-Codes IPTV Panel Pro'),(416,410,1,'Xtream-Codes IPTV Panel Pro'),(418,412,1,'Xtream-Codes IPTV Panel Pro'),(422,411,1,'Xtream-Codes IPTV Panel Pro'),(424,413,1,'Xtream-Codes IPTV Panel Pro'),(429,415,1,'Xtream-Codes IPTV Panel Pro'),(430,414,1,'Xtream-Codes IPTV Panel Pro'),(431,424,1,'Xtream-Codes IPTV Panel Pro'),(433,426,1,'Xtream-Codes IPTV Panel Pro'),(435,428,1,'Xtream-Codes IPTV Panel Pro'),(436,429,1,'Xtream-Codes IPTV Panel Pro'),(437,430,1,'Xtream-Codes IPTV Panel Pro'),(438,431,1,'Xtream-Codes IPTV Panel Pro'),(439,432,1,'Xtream-Codes IPTV Panel Pro'),(440,433,1,'Xtream-Codes IPTV Panel Pro'),(441,434,1,'Xtream-Codes IPTV Panel Pro'),(442,435,1,'Xtream-Codes IPTV Panel Pro'),(443,436,1,'Xtream-Codes IPTV Panel Pro'),(444,437,1,'Xtream-Codes IPTV Panel Pro'),(445,438,1,'Xtream-Codes IPTV Panel Pro'),(446,439,1,'Xtream-Codes IPTV Panel Pro'),(447,440,1,'Xtream-Codes IPTV Panel Pro'),(448,441,1,'Xtream-Codes IPTV Panel Pro'),(449,442,1,'Xtream-Codes IPTV Panel Pro'),(450,443,1,'Xtream-Codes IPTV Panel Pro'),(451,444,1,'Xtream-Codes IPTV Panel Pro'),(452,445,1,'Xtream-Codes IPTV Panel Pro'),(453,446,1,'Xtream-Codes IPTV Panel Pro'),(454,447,1,'Xtream-Codes IPTV Panel Pro'),(455,448,1,'Xtream-Codes IPTV Panel Pro'),(456,449,1,'Xtream-Codes IPTV Panel Pro'),(457,450,1,'Xtream-Codes IPTV Panel Pro'),(458,451,1,'Xtream-Codes IPTV Panel Pro'),(459,452,1,'Xtream-Codes IPTV Panel Pro'),(460,453,1,'Xtream-Codes IPTV Panel Pro'),(461,454,1,'Xtream-Codes IPTV Panel Pro'),(462,455,1,'Xtream-Codes IPTV Panel Pro'),(463,456,1,'Xtream-Codes IPTV Panel Pro'),(464,457,1,'Xtream-Codes IPTV Panel Pro'),(465,458,1,'Xtream-Codes IPTV Panel Pro'),(466,459,1,'Xtream-Codes IPTV Panel Pro'),(467,460,1,'Xtream-Codes IPTV Panel Pro'),(469,462,1,'Xtream-Codes IPTV Panel Pro'),(470,463,1,'Xtream-Codes IPTV Panel Pro'),(471,464,1,'Xtream-Codes IPTV Panel Pro'),(472,465,1,'Xtream-Codes IPTV Panel Pro'),(473,466,1,'Xtream-Codes IPTV Panel Pro'),(474,467,1,'Xtream-Codes IPTV Panel Pro'),(475,468,1,'Xtream-Codes IPTV Panel Pro'),(476,469,1,'Xtream-Codes IPTV Panel Pro'),(477,470,1,'Xtream-Codes IPTV Panel Pro'),(478,471,1,'Xtream-Codes IPTV Panel Pro'),(479,472,1,'Xtream-Codes IPTV Panel Pro'),(480,473,1,'Xtream-Codes IPTV Panel Pro'),(481,474,1,'Xtream-Codes IPTV Panel Pro'),(482,475,1,'Xtream-Codes IPTV Panel Pro'),(483,476,1,'Xtream-Codes IPTV Panel Pro'),(485,478,1,'Xtream-Codes IPTV Panel Pro'),(486,479,1,'Xtream-Codes IPTV Panel Pro'),(487,480,1,'Xtream-Codes IPTV Panel Pro'),(490,483,1,'Xtream-Codes IPTV Panel Pro'),(491,484,1,'Xtream-Codes IPTV Panel Pro'),(492,485,1,'Xtream-Codes IPTV Panel Pro'),(493,486,1,'Xtream-Codes IPTV Panel Pro'),(494,487,1,'Xtream-Codes IPTV Panel Pro'),(495,488,1,'Xtream-Codes IPTV Panel Pro'),(496,489,1,'Xtream-Codes IPTV Panel Pro'),(497,490,1,'Xtream-Codes IPTV Panel Pro'),(498,491,1,'Xtream-Codes IPTV Panel Pro'),(499,492,1,'Xtream-Codes IPTV Panel Pro'),(500,493,1,'Xtream-Codes IPTV Panel Pro'),(501,494,1,'Xtream-Codes IPTV Panel Pro'),(502,495,1,'Xtream-Codes IPTV Panel Pro'),(503,496,1,'Xtream-Codes IPTV Panel Pro'),(504,497,1,'Xtream-Codes IPTV Panel Pro'),(505,498,1,'Xtream-Codes IPTV Panel Pro'),(506,499,1,'Xtream-Codes IPTV Panel Pro'),(507,500,1,'Xtream-Codes IPTV Panel Pro'),(508,501,1,'Xtream-Codes IPTV Panel Pro'),(509,502,1,'Xtream-Codes IPTV Panel Pro'),(510,503,1,'Xtream-Codes IPTV Panel Pro'),(511,504,1,'Xtream-Codes IPTV Panel Pro'),(512,505,1,'Xtream-Codes IPTV Panel Pro'),(513,506,1,'Xtream-Codes IPTV Panel Pro'),(514,507,1,'Xtream-Codes IPTV Panel Pro'),(515,508,1,'Xtream-Codes IPTV Panel Pro'),(516,509,1,'Xtream-Codes IPTV Panel Pro'),(517,510,1,'Xtream-Codes IPTV Panel Pro'),(518,511,1,'Xtream-Codes IPTV Panel Pro'),(519,512,1,'Xtream-Codes IPTV Panel Pro'),(520,513,1,'Xtream-Codes IPTV Panel Pro'),(521,514,1,'Xtream-Codes IPTV Panel Pro'),(522,515,1,'Xtream-Codes IPTV Panel Pro'),(523,516,1,'Xtream-Codes IPTV Panel Pro'),(524,517,1,'Xtream-Codes IPTV Panel Pro'),(525,518,1,'Xtream-Codes IPTV Panel Pro'),(526,519,1,'Xtream-Codes IPTV Panel Pro'),(527,520,1,'Xtream-Codes IPTV Panel Pro'),(528,521,1,'Xtream-Codes IPTV Panel Pro'),(529,522,1,'Xtream-Codes IPTV Panel Pro'),(530,523,1,'Xtream-Codes IPTV Panel Pro'),(531,524,1,'Xtream-Codes IPTV Panel Pro'),(532,525,1,'Xtream-Codes IPTV Panel Pro'),(533,526,1,'Xtream-Codes IPTV Panel Pro'),(534,527,1,'Xtream-Codes IPTV Panel Pro'),(535,528,1,'Xtream-Codes IPTV Panel Pro'),(536,529,1,'Xtream-Codes IPTV Panel Pro'),(537,530,1,'Xtream-Codes IPTV Panel Pro'),(538,531,1,'Xtream-Codes IPTV Panel Pro'),(539,532,1,'Xtream-Codes IPTV Panel Pro'),(540,533,1,'Xtream-Codes IPTV Panel Pro'),(541,534,1,'Xtream-Codes IPTV Panel Pro'),(542,535,1,'Xtream-Codes IPTV Panel Pro'),(543,536,1,'Xtream-Codes IPTV Panel Pro'),(544,537,1,'Xtream-Codes IPTV Panel Pro'),(545,538,1,'Xtream-Codes IPTV Panel Pro'),(546,539,1,'Xtream-Codes IPTV Panel Pro'),(547,540,1,'Xtream-Codes IPTV Panel Pro'),(548,541,1,'Xtream-Codes IPTV Panel Pro'),(549,542,1,'Xtream-Codes IPTV Panel Pro'),(550,543,1,'Xtream-Codes IPTV Panel Pro'),(551,544,1,'Xtream-Codes IPTV Panel Pro'),(552,545,1,'Xtream-Codes IPTV Panel Pro'),(553,546,1,'Xtream-Codes IPTV Panel Pro'),(554,547,1,'Xtream-Codes IPTV Panel Pro'),(555,548,1,'Xtream-Codes IPTV Panel Pro'),(556,549,1,'Xtream-Codes IPTV Panel Pro'),(557,550,1,'Xtream-Codes IPTV Panel Pro'),(558,551,1,'Xtream-Codes IPTV Panel Pro'),(559,552,1,'Xtream-Codes IPTV Panel Pro'),(560,553,1,'Xtream-Codes IPTV Panel Pro'),(561,554,1,'Xtream-Codes IPTV Panel Pro'),(562,555,1,'Xtream-Codes IPTV Panel Pro'),(563,556,1,'Xtream-Codes IPTV Panel Pro'),(564,557,1,'Xtream-Codes IPTV Panel Pro'),(565,558,1,'Xtream-Codes IPTV Panel Pro'),(566,559,1,'Xtream-Codes IPTV Panel Pro'),(567,560,1,'Xtream-Codes IPTV Panel Pro'),(568,561,1,'Xtream-Codes IPTV Panel Pro'),(569,562,1,'Xtream-Codes IPTV Panel Pro'),(570,563,1,'Xtream-Codes IPTV Panel Pro'),(571,564,1,'Xtream-Codes IPTV Panel Pro'),(572,565,1,'Xtream-Codes IPTV Panel Pro'),(573,566,1,'Xtream-Codes IPTV Panel Pro'),(574,567,1,'Xtream-Codes IPTV Panel Pro'),(575,568,1,'Xtream-Codes IPTV Panel Pro'),(576,569,1,'Xtream-Codes IPTV Panel Pro'),(577,570,1,'Xtream-Codes IPTV Panel Pro'),(578,571,1,'Xtream-Codes IPTV Panel Pro'),(579,572,1,'Xtream-Codes IPTV Panel Pro'),(580,573,1,'Xtream-Codes IPTV Panel Pro'),(581,574,1,'Xtream-Codes IPTV Panel Pro'),(582,575,1,'Xtream-Codes IPTV Panel Pro'),(583,576,1,'Xtream-Codes IPTV Panel Pro'),(584,577,1,'Xtream-Codes IPTV Panel Pro'),(585,578,1,'Xtream-Codes IPTV Panel Pro'),(586,579,1,'Xtream-Codes IPTV Panel Pro'),(587,580,1,'Xtream-Codes IPTV Panel Pro'),(588,581,1,'Xtream-Codes IPTV Panel Pro'),(589,582,1,'Xtream-Codes IPTV Panel Pro'),(590,583,1,'Xtream-Codes IPTV Panel Pro'),(591,584,1,'Xtream-Codes IPTV Panel Pro'),(592,585,1,'Xtream-Codes IPTV Panel Pro'),(593,586,1,'Xtream-Codes IPTV Panel Pro'),(594,587,1,'Xtream-Codes IPTV Panel Pro'),(595,588,1,'Xtream-Codes IPTV Panel Pro'),(596,589,1,'Xtream-Codes IPTV Panel Pro'),(597,590,1,'Xtream-Codes IPTV Panel Pro'),(598,591,1,'Xtream-Codes IPTV Panel Pro'),(599,592,1,'Xtream-Codes IPTV Panel Pro'),(600,593,1,'Xtream-Codes IPTV Panel Pro'),(601,594,1,'Xtream-Codes IPTV Panel Pro'),(602,595,1,'Xtream-Codes IPTV Panel Pro'),(603,596,1,'Xtream-Codes IPTV Panel Pro'),(604,597,1,'Xtream-Codes IPTV Panel Pro'),(605,598,1,'Xtream-Codes IPTV Panel Pro'),(606,599,1,'Xtream-Codes IPTV Panel Pro'),(607,600,1,'Xtream-Codes IPTV Panel Pro'),(608,601,1,'Xtream-Codes IPTV Panel Pro'),(609,602,1,'Xtream-Codes IPTV Panel Pro'),(610,603,1,'Xtream-Codes IPTV Panel Pro'),(611,604,1,'Xtream-Codes IPTV Panel Pro'),(612,605,1,'Xtream-Codes IPTV Panel Pro'),(613,606,1,'Xtream-Codes IPTV Panel Pro'),(614,607,1,'Xtream-Codes IPTV Panel Pro'),(615,608,1,'Xtream-Codes IPTV Panel Pro'),(616,609,1,'Xtream-Codes IPTV Panel Pro'),(617,610,1,'Xtream-Codes IPTV Panel Pro'),(618,611,1,'Xtream-Codes IPTV Panel Pro'),(619,612,1,'Xtream-Codes IPTV Panel Pro'),(620,613,1,'Xtream-Codes IPTV Panel Pro'),(621,614,1,'Xtream-Codes IPTV Panel Pro'),(622,615,1,'Xtream-Codes IPTV Panel Pro'),(623,616,1,'Xtream-Codes IPTV Panel Pro'),(624,617,1,'Xtream-Codes IPTV Panel Pro'),(625,618,1,'Xtream-Codes IPTV Panel Pro'),(626,619,1,'Xtream-Codes IPTV Panel Pro'),(627,620,1,'Xtream-Codes IPTV Panel Pro'),(628,621,1,'Xtream-Codes IPTV Panel Pro'),(629,622,1,'Xtream-Codes IPTV Panel Pro'),(630,623,1,'Xtream-Codes IPTV Panel Pro'),(631,624,1,'Xtream-Codes IPTV Panel Pro'),(632,625,1,'Xtream-Codes IPTV Panel Pro'),(633,626,1,'Xtream-Codes IPTV Panel Pro'),(634,627,1,'Xtream-Codes IPTV Panel Pro'),(635,628,1,'Xtream-Codes IPTV Panel Pro'),(636,629,1,'Xtream-Codes IPTV Panel Pro'),(637,630,1,'Xtream-Codes IPTV Panel Pro'),(638,631,1,'Xtream-Codes IPTV Panel Pro'),(639,632,1,'Xtream-Codes IPTV Panel Pro'),(640,633,1,'Xtream-Codes IPTV Panel Pro'),(641,634,1,'Xtream-Codes IPTV Panel Pro'),(642,635,1,'Xtream-Codes IPTV Panel Pro'),(643,636,1,'Xtream-Codes IPTV Panel Pro'),(644,637,1,'Xtream-Codes IPTV Panel Pro'),(645,638,1,'Xtream-Codes IPTV Panel Pro'),(646,639,1,'Xtream-Codes IPTV Panel Pro'),(647,640,1,'Xtream-Codes IPTV Panel Pro'),(648,641,1,'Xtream-Codes IPTV Panel Pro'),(649,642,1,'Xtream-Codes IPTV Panel Pro'),(650,643,1,'Xtream-Codes IPTV Panel Pro'),(651,644,1,'Xtream-Codes IPTV Panel Pro'),(652,645,1,'Xtream-Codes IPTV Panel Pro'),(653,646,1,'Xtream-Codes IPTV Panel Pro'),(654,647,1,'Xtream-Codes IPTV Panel Pro'),(655,648,1,'Xtream-Codes IPTV Panel Pro'),(656,649,1,'Xtream-Codes IPTV Panel Pro'),(657,650,1,'Xtream-Codes IPTV Panel Pro'),(658,651,1,'Xtream-Codes IPTV Panel Pro'),(659,652,1,'Xtream-Codes IPTV Panel Pro'),(660,653,1,'Xtream-Codes IPTV Panel Pro'),(661,654,1,'Xtream-Codes IPTV Panel Pro'),(662,655,1,'Xtream-Codes IPTV Panel Pro'),(663,656,1,'Xtream-Codes IPTV Panel Pro'),(664,657,1,'Xtream-Codes IPTV Panel Pro'),(665,658,1,'Xtream-Codes IPTV Panel Pro'),(666,659,1,'Xtream-Codes IPTV Panel Pro'),(667,660,1,'Xtream-Codes IPTV Panel Pro'),(668,661,1,'Xtream-Codes IPTV Panel Pro'),(669,662,1,'Xtream-Codes IPTV Panel Pro'),(670,663,1,'Xtream-Codes IPTV Panel Pro'),(671,664,1,'Xtream-Codes IPTV Panel Pro'),(672,665,1,'Xtream-Codes IPTV Panel Pro'),(673,666,1,'Xtream-Codes IPTV Panel Pro'),(674,667,1,'Xtream-Codes IPTV Panel Pro'),(675,668,1,'Xtream-Codes IPTV Panel Pro'),(676,669,1,'Xtream-Codes IPTV Panel Pro'),(677,670,1,'Xtream-Codes IPTV Panel Pro'),(678,671,1,'Xtream-Codes IPTV Panel Pro'),(679,672,1,'Xtream-Codes IPTV Panel Pro'),(680,673,1,'Xtream-Codes IPTV Panel Pro'),(681,674,1,'Xtream-Codes IPTV Panel Pro'),(682,675,1,'Xtream-Codes IPTV Panel Pro'),(683,676,1,'Xtream-Codes IPTV Panel Pro'),(684,677,1,'Xtream-Codes IPTV Panel Pro'),(685,678,1,'Xtream-Codes IPTV Panel Pro'),(686,679,1,'Xtream-Codes IPTV Panel Pro'),(687,680,1,'Xtream-Codes IPTV Panel Pro'),(688,681,1,'Xtream-Codes IPTV Panel Pro'),(689,682,1,'Xtream-Codes IPTV Panel Pro'),(690,683,1,'Xtream-Codes IPTV Panel Pro'),(691,684,1,'Xtream-Codes IPTV Panel Pro'),(692,685,1,'Xtream-Codes IPTV Panel Pro'),(693,686,1,'Xtream-Codes IPTV Panel Pro'),(694,687,1,'Xtream-Codes IPTV Panel Pro'),(695,688,1,'Xtream-Codes IPTV Panel Pro'),(696,689,1,'Xtream-Codes IPTV Panel Pro'),(697,690,1,'Xtream-Codes IPTV Panel Pro'),(698,691,1,'Xtream-Codes IPTV Panel Pro'),(699,692,1,'Xtream-Codes IPTV Panel Pro'),(700,693,1,'Xtream-Codes IPTV Panel Pro'),(701,694,1,'Xtream-Codes IPTV Panel Pro'),(702,695,1,'Xtream-Codes IPTV Panel Pro'),(703,696,1,'Xtream-Codes IPTV Panel Pro'),(704,697,1,'Xtream-Codes IPTV Panel Pro'),(705,698,1,'Xtream-Codes IPTV Panel Pro'),(706,699,1,'Xtream-Codes IPTV Panel Pro'),(707,700,1,'Xtream-Codes IPTV Panel Pro'),(708,701,1,'Xtream-Codes IPTV Panel Pro'),(709,702,1,'Xtream-Codes IPTV Panel Pro'),(710,703,1,'Xtream-Codes IPTV Panel Pro'),(711,704,1,'Xtream-Codes IPTV Panel Pro'),(712,705,1,'Xtream-Codes IPTV Panel Pro'),(713,706,1,'Xtream-Codes IPTV Panel Pro'),(714,707,1,'Xtream-Codes IPTV Panel Pro'),(715,708,1,'Xtream-Codes IPTV Panel Pro'),(716,709,1,'Xtream-Codes IPTV Panel Pro'),(717,710,1,'Xtream-Codes IPTV Panel Pro'),(718,711,1,'Xtream-Codes IPTV Panel Pro'),(719,712,1,'Xtream-Codes IPTV Panel Pro'),(720,713,1,'Xtream-Codes IPTV Panel Pro'),(721,714,1,'Xtream-Codes IPTV Panel Pro'),(722,715,1,'Xtream-Codes IPTV Panel Pro'),(723,716,1,'Xtream-Codes IPTV Panel Pro'),(724,717,1,'Xtream-Codes IPTV Panel Pro'),(725,718,1,'Xtream-Codes IPTV Panel Pro'),(726,719,1,'Xtream-Codes IPTV Panel Pro'),(727,720,1,'Xtream-Codes IPTV Panel Pro'),(728,721,1,'Xtream-Codes IPTV Panel Pro'),(729,722,1,'Xtream-Codes IPTV Panel Pro'),(730,723,1,'Xtream-Codes IPTV Panel Pro'),(731,724,1,'Xtream-Codes IPTV Panel Pro'),(732,725,1,'Xtream-Codes IPTV Panel Pro'),(733,726,1,'Xtream-Codes IPTV Panel Pro'),(734,727,1,'Xtream-Codes IPTV Panel Pro'),(735,728,1,'Xtream-Codes IPTV Panel Pro'),(736,729,1,'Xtream-Codes IPTV Panel Pro'),(737,730,1,'Xtream-Codes IPTV Panel Pro'),(738,731,1,'Xtream-Codes IPTV Panel Pro'),(739,732,1,'Xtream-Codes IPTV Panel Pro'),(740,733,1,'Xtream-Codes IPTV Panel Pro'),(741,734,1,'Xtream-Codes IPTV Panel Pro'),(742,735,1,'Xtream-Codes IPTV Panel Pro'),(743,736,1,'Xtream-Codes IPTV Panel Pro'),(744,737,1,'Xtream-Codes IPTV Panel Pro'),(745,738,1,'Xtream-Codes IPTV Panel Pro'),(746,739,1,'Xtream-Codes IPTV Panel Pro'),(747,740,1,'Xtream-Codes IPTV Panel Pro'),(748,741,1,'Xtream-Codes IPTV Panel Pro'),(749,742,1,'Xtream-Codes IPTV Panel Pro'),(750,743,1,'Xtream-Codes IPTV Panel Pro'),(751,744,1,'Xtream-Codes IPTV Panel Pro'),(752,745,1,'Xtream-Codes IPTV Panel Pro'),(753,746,1,'Xtream-Codes IPTV Panel Pro'),(754,747,1,'Xtream-Codes IPTV Panel Pro'),(755,748,1,'Xtream-Codes IPTV Panel Pro'),(756,749,1,'Xtream-Codes IPTV Panel Pro'),(757,750,1,'Xtream-Codes IPTV Panel Pro'),(758,751,1,'Xtream-Codes IPTV Panel Pro'),(759,752,1,'Xtream-Codes IPTV Panel Pro'),(760,753,1,'Xtream-Codes IPTV Panel Pro'),(761,754,1,'Xtream-Codes IPTV Panel Pro'),(762,755,1,'Xtream-Codes IPTV Panel Pro'),(763,756,1,'Xtream-Codes IPTV Panel Pro'),(764,757,1,'Xtream-Codes IPTV Panel Pro'),(765,758,1,'Xtream-Codes IPTV Panel Pro'),(766,759,1,'Xtream-Codes IPTV Panel Pro'),(767,760,1,'Xtream-Codes IPTV Panel Pro'),(768,761,1,'Xtream-Codes IPTV Panel Pro'),(769,762,1,'Xtream-Codes IPTV Panel Pro'),(770,763,1,'Xtream-Codes IPTV Panel Pro'),(771,764,1,'Xtream-Codes IPTV Panel Pro'),(772,765,1,'Xtream-Codes IPTV Panel Pro'),(773,766,1,'Xtream-Codes IPTV Panel Pro'),(774,767,1,'Xtream-Codes IPTV Panel Pro'),(775,768,1,'Xtream-Codes IPTV Panel Pro'),(776,769,1,'Xtream-Codes IPTV Panel Pro'),(777,770,1,'Xtream-Codes IPTV Panel Pro'),(778,771,1,'Xtream-Codes IPTV Panel Pro'),(779,772,1,'Xtream-Codes IPTV Panel Pro'),(780,773,1,'Xtream-Codes IPTV Panel Pro'),(781,774,1,'Xtream-Codes IPTV Panel Pro'),(782,775,1,'Xtream-Codes IPTV Panel Pro'),(783,776,1,'Xtream-Codes IPTV Panel Pro'),(784,777,1,'Xtream-Codes IPTV Panel Pro'),(785,778,1,'Xtream-Codes IPTV Panel Pro'),(786,779,1,'Xtream-Codes IPTV Panel Pro'),(787,780,1,'Xtream-Codes IPTV Panel Pro'),(788,781,1,'Xtream-Codes IPTV Panel Pro'),(789,782,1,'Xtream-Codes IPTV Panel Pro'),(790,783,1,'Xtream-Codes IPTV Panel Pro'),(791,784,1,'Xtream-Codes IPTV Panel Pro'),(792,785,1,'Xtream-Codes IPTV Panel Pro'),(793,786,1,'Xtream-Codes IPTV Panel Pro'),(794,787,1,'Xtream-Codes IPTV Panel Pro'),(795,788,1,'Xtream-Codes IPTV Panel Pro'),(796,789,1,'Xtream-Codes IPTV Panel Pro'),(797,790,1,'Xtream-Codes IPTV Panel Pro'),(798,791,1,'Xtream-Codes IPTV Panel Pro'),(799,792,1,'Xtream-Codes IPTV Panel Pro'),(800,793,1,'Xtream-Codes IPTV Panel Pro'),(801,794,1,'Xtream-Codes IPTV Panel Pro'),(802,795,1,'Xtream-Codes IPTV Panel Pro'),(803,796,1,'Xtream-Codes IPTV Panel Pro'),(804,797,1,'Xtream-Codes IPTV Panel Pro'),(805,798,1,'Xtream-Codes IPTV Panel Pro'),(806,799,1,'Xtream-Codes IPTV Panel Pro'),(807,800,1,'Xtream-Codes IPTV Panel Pro'),(808,801,1,'Xtream-Codes IPTV Panel Pro'),(809,802,1,'Xtream-Codes IPTV Panel Pro'),(810,803,1,'Xtream-Codes IPTV Panel Pro'),(811,804,1,'Xtream-Codes IPTV Panel Pro'),(812,805,1,'Xtream-Codes IPTV Panel Pro'),(813,806,1,'Xtream-Codes IPTV Panel Pro'),(814,807,1,'Xtream-Codes IPTV Panel Pro'),(815,808,1,'Xtream-Codes IPTV Panel Pro'),(816,809,1,'Xtream-Codes IPTV Panel Pro'),(817,810,1,'Xtream-Codes IPTV Panel Pro'),(818,811,1,'Xtream-Codes IPTV Panel Pro'),(819,812,1,'Xtream-Codes IPTV Panel Pro'),(820,813,1,'Xtream-Codes IPTV Panel Pro'),(821,814,1,'Xtream-Codes IPTV Panel Pro'),(822,815,1,'Xtream-Codes IPTV Panel Pro'),(823,816,1,'Xtream-Codes IPTV Panel Pro'),(824,817,1,'Xtream-Codes IPTV Panel Pro'),(825,818,1,'Xtream-Codes IPTV Panel Pro'),(826,819,1,'Xtream-Codes IPTV Panel Pro'),(827,820,1,'Xtream-Codes IPTV Panel Pro'),(828,821,1,'Xtream-Codes IPTV Panel Pro'),(829,822,1,'Xtream-Codes IPTV Panel Pro'),(830,823,1,'Xtream-Codes IPTV Panel Pro'),(831,824,1,'Xtream-Codes IPTV Panel Pro'),(832,825,1,'Xtream-Codes IPTV Panel Pro'),(833,826,1,'Xtream-Codes IPTV Panel Pro'),(834,827,1,'Xtream-Codes IPTV Panel Pro'),(835,828,1,'Xtream-Codes IPTV Panel Pro'),(836,829,1,'Xtream-Codes IPTV Panel Pro'),(837,830,1,'Xtream-Codes IPTV Panel Pro'),(838,831,1,'Xtream-Codes IPTV Panel Pro'),(839,832,1,'Xtream-Codes IPTV Panel Pro'),(840,833,1,'Xtream-Codes IPTV Panel Pro'),(841,834,1,'Xtream-Codes IPTV Panel Pro'),(842,835,1,'Xtream-Codes IPTV Panel Pro'),(843,836,1,'Xtream-Codes IPTV Panel Pro'),(844,837,1,'Xtream-Codes IPTV Panel Pro'),(845,838,1,'Xtream-Codes IPTV Panel Pro'),(846,839,1,'Xtream-Codes IPTV Panel Pro'),(847,840,1,'Xtream-Codes IPTV Panel Pro'),(848,841,1,'Xtream-Codes IPTV Panel Pro'),(849,842,1,'Xtream-Codes IPTV Panel Pro'),(850,843,1,'Xtream-Codes IPTV Panel Pro'),(851,844,1,'Xtream-Codes IPTV Panel Pro'),(852,845,1,'Xtream-Codes IPTV Panel Pro'),(853,846,1,'Xtream-Codes IPTV Panel Pro'),(854,847,1,'Xtream-Codes IPTV Panel Pro'),(855,848,1,'Xtream-Codes IPTV Panel Pro'),(856,849,1,'Xtream-Codes IPTV Panel Pro'),(857,850,1,'Xtream-Codes IPTV Panel Pro'),(858,851,1,'Xtream-Codes IPTV Panel Pro'),(859,852,1,'Xtream-Codes IPTV Panel Pro'),(860,853,1,'Xtream-Codes IPTV Panel Pro'),(861,854,1,'Xtream-Codes IPTV Panel Pro'),(862,855,1,'Xtream-Codes IPTV Panel Pro'),(863,856,1,'Xtream-Codes IPTV Panel Pro'),(864,857,1,'Xtream-Codes IPTV Panel Pro'),(865,858,1,'Xtream-Codes IPTV Panel Pro'),(866,859,1,'Xtream-Codes IPTV Panel Pro'),(867,860,1,'Xtream-Codes IPTV Panel Pro'),(868,861,1,'Xtream-Codes IPTV Panel Pro'),(869,862,1,'Xtream-Codes IPTV Panel Pro'),(870,863,1,'Xtream-Codes IPTV Panel Pro'),(871,864,1,'Xtream-Codes IPTV Panel Pro'),(872,865,1,'Xtream-Codes IPTV Panel Pro'),(873,866,1,'Xtream-Codes IPTV Panel Pro'),(874,867,1,'Xtream-Codes IPTV Panel Pro'),(875,868,1,'Xtream-Codes IPTV Panel Pro'),(876,869,1,'Xtream-Codes IPTV Panel Pro'),(877,870,1,'Xtream-Codes IPTV Panel Pro'),(878,871,1,'Xtream-Codes IPTV Panel Pro'),(879,872,1,'Xtream-Codes IPTV Panel Pro'),(880,873,1,'Xtream-Codes IPTV Panel Pro'),(881,874,1,'Xtream-Codes IPTV Panel Pro'),(882,875,1,'Xtream-Codes IPTV Panel Pro'),(883,876,1,'Xtream-Codes IPTV Panel Pro'),(884,877,1,'Xtream-Codes IPTV Panel Pro'),(885,878,1,'Xtream-Codes IPTV Panel Pro'),(886,879,1,'Xtream-Codes IPTV Panel Pro'),(887,880,1,'Xtream-Codes IPTV Panel Pro'),(888,881,1,'Xtream-Codes IPTV Panel Pro'),(889,882,1,'Xtream-Codes IPTV Panel Pro'),(890,883,1,'Xtream-Codes IPTV Panel Pro'),(891,884,1,'Xtream-Codes IPTV Panel Pro'),(892,885,1,'Xtream-Codes IPTV Panel Pro'),(893,886,1,'Xtream-Codes IPTV Panel Pro'),(894,887,1,'Xtream-Codes IPTV Panel Pro'),(895,888,1,'Xtream-Codes IPTV Panel Pro'),(896,889,1,'Xtream-Codes IPTV Panel Pro'),(897,890,1,'Xtream-Codes IPTV Panel Pro'),(898,891,1,'Xtream-Codes IPTV Panel Pro'),(899,892,1,'Xtream-Codes IPTV Panel Pro'),(900,893,1,'Xtream-Codes IPTV Panel Pro'),(901,894,1,'Xtream-Codes IPTV Panel Pro'),(902,895,1,'Xtream-Codes IPTV Panel Pro'),(903,896,1,'Xtream-Codes IPTV Panel Pro'),(904,897,1,'Xtream-Codes IPTV Panel Pro'),(905,898,1,'Xtream-Codes IPTV Panel Pro'),(906,899,1,'Xtream-Codes IPTV Panel Pro'),(907,900,1,'Xtream-Codes IPTV Panel Pro'),(908,901,1,'Xtream-Codes IPTV Panel Pro'),(909,902,1,'Xtream-Codes IPTV Panel Pro'),(910,903,1,'Xtream-Codes IPTV Panel Pro'),(911,904,1,'Xtream-Codes IPTV Panel Pro'),(912,905,1,'Xtream-Codes IPTV Panel Pro'),(913,906,1,'Xtream-Codes IPTV Panel Pro'),(914,907,1,'Xtream-Codes IPTV Panel Pro'),(915,908,1,'Xtream-Codes IPTV Panel Pro'),(916,909,1,'Xtream-Codes IPTV Panel Pro'),(917,910,1,'Xtream-Codes IPTV Panel Pro'),(918,911,1,'Xtream-Codes IPTV Panel Pro'),(919,912,1,'Xtream-Codes IPTV Panel Pro'),(920,913,1,'Xtream-Codes IPTV Panel Pro'),(921,914,1,'Xtream-Codes IPTV Panel Pro'),(922,915,1,'Xtream-Codes IPTV Panel Pro'),(923,916,1,'Xtream-Codes IPTV Panel Pro'),(924,917,1,'Xtream-Codes IPTV Panel Pro'),(925,918,1,'Xtream-Codes IPTV Panel Pro'),(926,919,1,'Xtream-Codes IPTV Panel Pro'),(927,920,1,'Xtream-Codes IPTV Panel Pro'),(928,921,1,'Xtream-Codes IPTV Panel Pro'),(929,922,1,'Xtream-Codes IPTV Panel Pro'),(930,923,1,'Xtream-Codes IPTV Panel Pro'),(931,924,1,'Xtream-Codes IPTV Panel Pro'),(932,925,1,'Xtream-Codes IPTV Panel Pro'),(933,926,1,'Xtream-Codes IPTV Panel Pro'),(934,927,1,'Xtream-Codes IPTV Panel Pro'),(935,928,1,'Xtream-Codes IPTV Panel Pro'),(936,929,1,'Xtream-Codes IPTV Panel Pro'),(937,930,1,'Xtream-Codes IPTV Panel Pro'),(938,931,1,'Xtream-Codes IPTV Panel Pro'),(939,932,1,'Xtream-Codes IPTV Panel Pro'),(940,933,1,'Xtream-Codes IPTV Panel Pro'),(941,934,1,'Xtream-Codes IPTV Panel Pro'),(942,935,1,'Xtream-Codes IPTV Panel Pro'),(943,936,1,'Xtream-Codes IPTV Panel Pro'),(944,937,1,'Xtream-Codes IPTV Panel Pro'),(945,938,1,'Xtream-Codes IPTV Panel Pro'),(946,939,1,'Xtream-Codes IPTV Panel Pro'),(947,940,1,'Xtream-Codes IPTV Panel Pro'),(948,941,1,'Xtream-Codes IPTV Panel Pro'),(949,942,1,'Xtream-Codes IPTV Panel Pro'),(950,943,1,'Xtream-Codes IPTV Panel Pro'),(951,944,1,'Xtream-Codes IPTV Panel Pro'),(952,945,1,'Xtream-Codes IPTV Panel Pro'),(953,946,1,'Xtream-Codes IPTV Panel Pro'),(954,947,1,'Xtream-Codes IPTV Panel Pro'),(955,948,1,'Xtream-Codes IPTV Panel Pro'),(956,949,1,'Xtream-Codes IPTV Panel Pro'),(957,950,1,'Xtream-Codes IPTV Panel Pro'),(958,951,1,'Xtream-Codes IPTV Panel Pro'),(959,952,1,'Xtream-Codes IPTV Panel Pro'),(960,953,1,'Xtream-Codes IPTV Panel Pro'),(961,954,1,'Xtream-Codes IPTV Panel Pro'),(962,955,1,'Xtream-Codes IPTV Panel Pro'),(963,956,1,'Xtream-Codes IPTV Panel Pro'),(964,957,1,'Xtream-Codes IPTV Panel Pro'),(965,958,1,'Xtream-Codes IPTV Panel Pro'),(966,959,1,'Xtream-Codes IPTV Panel Pro'),(967,960,1,'Xtream-Codes IPTV Panel Pro'),(968,961,1,'Xtream-Codes IPTV Panel Pro'),(969,962,1,'Xtream-Codes IPTV Panel Pro'),(970,963,1,'Xtream-Codes IPTV Panel Pro'),(971,964,1,'Xtream-Codes IPTV Panel Pro'),(972,965,1,'Xtream-Codes IPTV Panel Pro'),(973,966,1,'Xtream-Codes IPTV Panel Pro'),(974,967,1,'Xtream-Codes IPTV Panel Pro'),(975,968,1,'Xtream-Codes IPTV Panel Pro'),(976,969,1,'Xtream-Codes IPTV Panel Pro'),(977,970,1,'Xtream-Codes IPTV Panel Pro'),(978,971,1,'Xtream-Codes IPTV Panel Pro'),(979,972,1,'Xtream-Codes IPTV Panel Pro'),(980,973,1,'Xtream-Codes IPTV Panel Pro'),(981,974,1,'Xtream-Codes IPTV Panel Pro'),(982,975,1,'Xtream-Codes IPTV Panel Pro'),(983,976,1,'Xtream-Codes IPTV Panel Pro'),(984,977,1,'Xtream-Codes IPTV Panel Pro'),(985,978,1,'Xtream-Codes IPTV Panel Pro'),(986,979,1,'Xtream-Codes IPTV Panel Pro'),(987,980,1,'Xtream-Codes IPTV Panel Pro'),(988,981,1,'Xtream-Codes IPTV Panel Pro'),(989,982,1,'Xtream-Codes IPTV Panel Pro'),(990,983,1,'Xtream-Codes IPTV Panel Pro'),(991,984,1,'Xtream-Codes IPTV Panel Pro'),(992,985,1,'Xtream-Codes IPTV Panel Pro'),(993,986,1,'Xtream-Codes IPTV Panel Pro'),(994,987,1,'Xtream-Codes IPTV Panel Pro'),(995,988,1,'Xtream-Codes IPTV Panel Pro'),(996,989,1,'Xtream-Codes IPTV Panel Pro'),(997,990,1,'Xtream-Codes IPTV Panel Pro'),(998,991,1,'Xtream-Codes IPTV Panel Pro'),(999,992,1,'Xtream-Codes IPTV Panel Pro'),(1000,993,1,'Xtream-Codes IPTV Panel Pro'),(1001,994,1,'Xtream-Codes IPTV Panel Pro'),(1002,995,1,'Xtream-Codes IPTV Panel Pro'),(1003,996,1,'Xtream-Codes IPTV Panel Pro'),(1004,997,1,'Xtream-Codes IPTV Panel Pro'),(1005,998,1,'Xtream-Codes IPTV Panel Pro'),(1006,999,1,'Xtream-Codes IPTV Panel Pro'),(1007,1000,1,'Xtream-Codes IPTV Panel Pro'),(1008,1001,1,'Xtream-Codes IPTV Panel Pro'),(1009,1002,1,'Xtream-Codes IPTV Panel Pro'),(1010,1003,1,'Xtream-Codes IPTV Panel Pro'),(1011,1004,1,'Xtream-Codes IPTV Panel Pro'),(1012,1005,1,'Xtream-Codes IPTV Panel Pro'),(1013,1006,1,'Xtream-Codes IPTV Panel Pro'),(1014,1007,1,'Xtream-Codes IPTV Panel Pro'),(1015,1008,1,'Xtream-Codes IPTV Panel Pro'),(1016,1009,1,'Xtream-Codes IPTV Panel Pro'),(1017,1010,1,'Xtream-Codes IPTV Panel Pro'),(1018,1011,1,'Xtream-Codes IPTV Panel Pro'),(1019,1012,1,'Xtream-Codes IPTV Panel Pro'),(1020,1013,1,'Xtream-Codes IPTV Panel Pro'),(1021,1014,1,'Xtream-Codes IPTV Panel Pro'),(1022,1015,1,'Xtream-Codes IPTV Panel Pro'),(1023,1016,1,'Xtream-Codes IPTV Panel Pro'),(1024,1017,1,'Xtream-Codes IPTV Panel Pro'),(1025,1018,1,'Xtream-Codes IPTV Panel Pro'),(1026,1019,1,'Xtream-Codes IPTV Panel Pro'),(1027,1020,1,'Xtream-Codes IPTV Panel Pro'),(1028,1021,1,'Xtream-Codes IPTV Panel Pro'),(1029,1022,1,'Xtream-Codes IPTV Panel Pro'),(1030,1023,1,'Xtream-Codes IPTV Panel Pro'),(1031,1024,1,'Xtream-Codes IPTV Panel Pro'),(1032,1025,1,'Xtream-Codes IPTV Panel Pro'),(1033,1026,1,'Xtream-Codes IPTV Panel Pro'),(1034,1027,1,'Xtream-Codes IPTV Panel Pro'),(1035,1028,1,'Xtream-Codes IPTV Panel Pro'),(1036,1029,1,'Xtream-Codes IPTV Panel Pro'),(1037,1030,1,'Xtream-Codes IPTV Panel Pro'),(1038,1031,1,'Xtream-Codes IPTV Panel Pro'),(1039,1032,1,'Xtream-Codes IPTV Panel Pro'),(1040,1033,1,'Xtream-Codes IPTV Panel Pro'),(1041,1034,1,'Xtream-Codes IPTV Panel Pro'),(1042,1035,1,'Xtream-Codes IPTV Panel Pro'),(1043,1036,1,'Xtream-Codes IPTV Panel Pro'),(1044,1037,1,'Xtream-Codes IPTV Panel Pro'),(1045,1038,1,'Xtream-Codes IPTV Panel Pro'),(1046,1039,1,'Xtream-Codes IPTV Panel Pro'),(1047,1040,1,'Xtream-Codes IPTV Panel Pro'),(1048,1041,1,'Xtream-Codes IPTV Panel Pro'),(1049,1042,1,'Xtream-Codes IPTV Panel Pro'),(1050,1043,1,'Xtream-Codes IPTV Panel Pro'),(1051,1044,1,'Xtream-Codes IPTV Panel Pro'),(1052,1045,1,'Xtream-Codes IPTV Panel Pro'),(1053,1046,1,'Xtream-Codes IPTV Panel Pro'),(1054,1047,1,'Xtream-Codes IPTV Panel Pro'),(1055,1048,1,'Xtream-Codes IPTV Panel Pro'),(1056,1049,1,'Xtream-Codes IPTV Panel Pro'),(1057,1050,1,'Xtream-Codes IPTV Panel Pro'),(1058,1051,1,'Xtream-Codes IPTV Panel Pro'),(1059,1052,1,'Xtream-Codes IPTV Panel Pro'),(1060,1053,1,'Xtream-Codes IPTV Panel Pro'),(1061,1054,1,'Xtream-Codes IPTV Panel Pro'),(1062,1055,1,'Xtream-Codes IPTV Panel Pro'),(1063,1056,1,'Xtream-Codes IPTV Panel Pro'),(1064,1057,1,'Xtream-Codes IPTV Panel Pro'),(1065,1058,1,'Xtream-Codes IPTV Panel Pro'),(1066,1059,1,'Xtream-Codes IPTV Panel Pro'),(1067,1060,1,'Xtream-Codes IPTV Panel Pro'),(1068,1061,1,'Xtream-Codes IPTV Panel Pro'),(1069,1062,1,'Xtream-Codes IPTV Panel Pro'),(1070,1063,1,'Xtream-Codes IPTV Panel Pro'),(1071,1064,1,'Xtream-Codes IPTV Panel Pro'),(1072,1065,1,'Xtream-Codes IPTV Panel Pro'),(1073,1066,1,'Xtream-Codes IPTV Panel Pro'),(1074,1067,1,'Xtream-Codes IPTV Panel Pro'),(1075,1068,1,'Xtream-Codes IPTV Panel Pro'),(1076,1069,1,'Xtream-Codes IPTV Panel Pro'),(1077,1070,1,'Xtream-Codes IPTV Panel Pro'),(1078,1071,1,'Xtream-Codes IPTV Panel Pro'),(1079,1072,1,'Xtream-Codes IPTV Panel Pro'),(1080,1073,1,'Xtream-Codes IPTV Panel Pro'),(1081,1074,1,'Xtream-Codes IPTV Panel Pro'),(1082,1075,1,'Xtream-Codes IPTV Panel Pro'),(1083,1076,1,'Xtream-Codes IPTV Panel Pro'),(1084,1077,1,'Xtream-Codes IPTV Panel Pro'),(1085,1078,1,'Xtream-Codes IPTV Panel Pro'),(1086,1079,1,'Xtream-Codes IPTV Panel Pro'),(1087,1080,1,'Xtream-Codes IPTV Panel Pro'),(1088,1081,1,'Xtream-Codes IPTV Panel Pro'),(1089,1082,1,'Xtream-Codes IPTV Panel Pro'),(1090,1083,1,'Xtream-Codes IPTV Panel Pro'),(1091,1084,1,'Xtream-Codes IPTV Panel Pro'),(1092,1085,1,'Xtream-Codes IPTV Panel Pro'),(1093,1086,1,'Xtream-Codes IPTV Panel Pro'),(1094,1087,1,'Xtream-Codes IPTV Panel Pro'),(1095,1088,1,'Xtream-Codes IPTV Panel Pro'),(1096,1089,1,'Xtream-Codes IPTV Panel Pro'),(1097,1090,1,'Xtream-Codes IPTV Panel Pro'),(1098,1091,1,'Xtream-Codes IPTV Panel Pro'),(1099,1092,1,'Xtream-Codes IPTV Panel Pro'),(1100,1093,1,'Xtream-Codes IPTV Panel Pro'),(1101,1094,1,'Xtream-Codes IPTV Panel Pro'),(1102,1095,1,'Xtream-Codes IPTV Panel Pro'),(1103,1096,1,'Xtream-Codes IPTV Panel Pro'),(1104,1097,1,'Xtream-Codes IPTV Panel Pro'),(1105,1098,1,'Xtream-Codes IPTV Panel Pro'),(1106,1099,1,'Xtream-Codes IPTV Panel Pro'),(1107,1100,1,'Xtream-Codes IPTV Panel Pro'),(1108,1101,1,'Xtream-Codes IPTV Panel Pro'),(1109,1102,1,'Xtream-Codes IPTV Panel Pro'),(1110,1103,1,'Xtream-Codes IPTV Panel Pro'),(1111,1104,1,'Xtream-Codes IPTV Panel Pro'),(1112,1105,1,'Xtream-Codes IPTV Panel Pro'),(1113,1106,1,'Xtream-Codes IPTV Panel Pro'),(1114,1107,1,'Xtream-Codes IPTV Panel Pro'),(1115,1108,1,'Xtream-Codes IPTV Panel Pro'),(1116,1109,1,'Xtream-Codes IPTV Panel Pro'),(1117,1110,1,'Xtream-Codes IPTV Panel Pro'),(1118,1111,1,'Xtream-Codes IPTV Panel Pro'),(1119,1112,1,'Xtream-Codes IPTV Panel Pro'),(1120,1113,1,'Xtream-Codes IPTV Panel Pro'),(1121,1114,1,'Xtream-Codes IPTV Panel Pro'),(1122,1115,1,'Xtream-Codes IPTV Panel Pro'),(1123,1116,1,'Xtream-Codes IPTV Panel Pro'),(1124,1117,1,'Xtream-Codes IPTV Panel Pro'),(1125,1118,1,'Xtream-Codes IPTV Panel Pro'),(1126,1119,1,'Xtream-Codes IPTV Panel Pro'),(1127,1120,1,'Xtream-Codes IPTV Panel Pro'),(1128,1121,1,'Xtream-Codes IPTV Panel Pro'),(1129,1122,1,'Xtream-Codes IPTV Panel Pro'),(1130,1123,1,'Xtream-Codes IPTV Panel Pro'),(1131,1124,1,'Xtream-Codes IPTV Panel Pro'),(1132,1125,1,'Xtream-Codes IPTV Panel Pro'),(1133,1126,1,'Xtream-Codes IPTV Panel Pro'),(1134,1127,1,'Xtream-Codes IPTV Panel Pro'),(1135,1128,1,'Xtream-Codes IPTV Panel Pro'),(1136,1129,1,'Xtream-Codes IPTV Panel Pro'),(1137,1130,1,'Xtream-Codes IPTV Panel Pro'),(1138,1131,1,'Xtream-Codes IPTV Panel Pro'),(1139,1132,1,'Xtream-Codes IPTV Panel Pro'),(1140,1133,1,'Xtream-Codes IPTV Panel Pro'),(1141,1134,1,'Xtream-Codes IPTV Panel Pro'),(1142,1135,1,'Xtream-Codes IPTV Panel Pro'),(1143,1136,1,'Xtream-Codes IPTV Panel Pro'),(1144,1137,1,'Xtream-Codes IPTV Panel Pro'),(1145,1138,1,'Xtream-Codes IPTV Panel Pro'),(1146,1139,1,'Xtream-Codes IPTV Panel Pro'),(1147,1140,1,'Xtream-Codes IPTV Panel Pro'),(1148,1141,1,'Xtream-Codes IPTV Panel Pro'),(1149,1142,1,'Xtream-Codes IPTV Panel Pro'),(1150,1143,1,'Xtream-Codes IPTV Panel Pro'),(1151,1144,1,'Xtream-Codes IPTV Panel Pro'),(1152,1145,1,'Xtream-Codes IPTV Panel Pro'),(1153,1146,1,'Xtream-Codes IPTV Panel Pro'),(1154,1147,1,'Xtream-Codes IPTV Panel Pro'),(1155,1148,1,'Xtream-Codes IPTV Panel Pro'),(1156,1149,1,'Xtream-Codes IPTV Panel Pro'),(1157,1150,1,'Xtream-Codes IPTV Panel Pro'),(1158,1151,1,'Xtream-Codes IPTV Panel Pro'),(1159,1152,1,'Xtream-Codes IPTV Panel Pro'),(1160,1153,1,'Xtream-Codes IPTV Panel Pro'),(1161,1154,1,'Xtream-Codes IPTV Panel Pro'),(1162,1155,1,'Xtream-Codes IPTV Panel Pro'),(1163,1156,1,'Xtream-Codes IPTV Panel Pro'),(1164,1157,1,'Xtream-Codes IPTV Panel Pro'),(1165,1158,1,'Xtream-Codes IPTV Panel Pro'),(1166,1159,1,'Xtream-Codes IPTV Panel Pro'),(1167,1160,1,'Xtream-Codes IPTV Panel Pro'),(1168,1161,1,'Xtream-Codes IPTV Panel Pro'),(1169,1162,1,'Xtream-Codes IPTV Panel Pro'),(1170,1163,1,'Xtream-Codes IPTV Panel Pro'),(1171,1164,1,'Xtream-Codes IPTV Panel Pro'),(1172,1165,1,'Xtream-Codes IPTV Panel Pro'),(1173,1166,1,'Xtream-Codes IPTV Panel Pro'),(1174,1167,1,'Xtream-Codes IPTV Panel Pro'),(1175,1168,1,'Xtream-Codes IPTV Panel Pro'),(1176,1169,1,'Xtream-Codes IPTV Panel Pro'),(1177,1170,1,'Xtream-Codes IPTV Panel Pro'),(1178,1171,1,'Xtream-Codes IPTV Panel Pro'),(1179,1172,1,'Xtream-Codes IPTV Panel Pro'),(1180,1173,1,'Xtream-Codes IPTV Panel Pro'),(1181,1174,1,'Xtream-Codes IPTV Panel Pro'),(1182,1175,1,'Xtream-Codes IPTV Panel Pro'),(1183,1176,1,'Xtream-Codes IPTV Panel Pro'),(1184,1177,1,'Xtream-Codes IPTV Panel Pro'),(1185,1178,1,'Xtream-Codes IPTV Panel Pro'),(1186,1179,1,'Xtream-Codes IPTV Panel Pro'),(1187,1180,1,'Xtream-Codes IPTV Panel Pro'),(1188,1181,1,'Xtream-Codes IPTV Panel Pro'),(1189,1182,1,'Xtream-Codes IPTV Panel Pro'),(1190,1183,1,'Xtream-Codes IPTV Panel Pro'),(1191,1184,1,'Xtream-Codes IPTV Panel Pro'),(1192,1185,1,'Xtream-Codes IPTV Panel Pro'),(1193,1186,1,'Xtream-Codes IPTV Panel Pro'),(1194,1187,1,'Xtream-Codes IPTV Panel Pro'),(1195,1188,1,'Xtream-Codes IPTV Panel Pro'),(1196,1189,1,'Xtream-Codes IPTV Panel Pro'),(1197,1190,1,'Xtream-Codes IPTV Panel Pro'),(1198,1191,1,'Xtream-Codes IPTV Panel Pro'),(1199,1192,1,'Xtream-Codes IPTV Panel Pro'),(1200,1193,1,'Xtream-Codes IPTV Panel Pro'),(1201,1194,1,'Xtream-Codes IPTV Panel Pro'),(1202,1195,1,'Xtream-Codes IPTV Panel Pro'),(1203,1196,1,'Xtream-Codes IPTV Panel Pro'),(1204,1197,1,'Xtream-Codes IPTV Panel Pro'),(1205,1198,1,'Xtream-Codes IPTV Panel Pro'),(1206,1199,1,'Xtream-Codes IPTV Panel Pro'),(1207,1200,1,'Xtream-Codes IPTV Panel Pro'),(1208,1201,1,'Xtream-Codes IPTV Panel Pro'),(1209,1202,1,'Xtream-Codes IPTV Panel Pro'),(1210,1203,1,'Xtream-Codes IPTV Panel Pro'),(1211,1204,1,'Xtream-Codes IPTV Panel Pro'),(1212,1205,1,'Xtream-Codes IPTV Panel Pro'),(1213,1206,1,'Xtream-Codes IPTV Panel Pro'),(1214,1207,1,'Xtream-Codes IPTV Panel Pro'),(1215,1208,1,'Xtream-Codes IPTV Panel Pro'),(1216,1209,1,'Xtream-Codes IPTV Panel Pro'),(1217,1210,1,'Xtream-Codes IPTV Panel Pro'),(1218,1211,1,'Xtream-Codes IPTV Panel Pro'),(1219,1212,1,'Xtream-Codes IPTV Panel Pro'),(1220,1213,1,'Xtream-Codes IPTV Panel Pro'),(1221,1214,1,'Xtream-Codes IPTV Panel Pro'),(1222,1215,1,'Xtream-Codes IPTV Panel Pro'),(1223,1216,1,'Xtream-Codes IPTV Panel Pro'),(1224,1217,1,'Xtream-Codes IPTV Panel Pro'),(1225,1218,1,'Xtream-Codes IPTV Panel Pro'),(1226,1219,1,'Xtream-Codes IPTV Panel Pro'),(1227,1220,1,'Xtream-Codes IPTV Panel Pro'),(1228,1221,1,'Xtream-Codes IPTV Panel Pro'),(1229,1222,1,'Xtream-Codes IPTV Panel Pro'),(1230,1223,1,'Xtream-Codes IPTV Panel Pro'),(1231,1224,1,'Xtream-Codes IPTV Panel Pro'),(1232,1225,1,'Xtream-Codes IPTV Panel Pro'),(1233,1226,1,'Xtream-Codes IPTV Panel Pro'),(1234,1227,1,'Xtream-Codes IPTV Panel Pro'),(1235,1228,1,'Xtream-Codes IPTV Panel Pro'),(1236,1229,1,'Xtream-Codes IPTV Panel Pro'),(1237,1230,1,'Xtream-Codes IPTV Panel Pro'),(1238,1231,1,'Xtream-Codes IPTV Panel Pro'),(1239,1232,1,'Xtream-Codes IPTV Panel Pro'),(1240,1233,1,'Xtream-Codes IPTV Panel Pro'),(1241,1234,1,'Xtream-Codes IPTV Panel Pro'),(1242,1235,1,'Xtream-Codes IPTV Panel Pro'),(1243,1236,1,'Xtream-Codes IPTV Panel Pro'),(1244,1237,1,'Xtream-Codes IPTV Panel Pro'),(1245,1238,1,'Xtream-Codes IPTV Panel Pro'),(1246,1239,1,'Xtream-Codes IPTV Panel Pro'),(1247,1240,1,'Xtream-Codes IPTV Panel Pro'),(1248,1241,1,'Xtream-Codes IPTV Panel Pro'),(1249,1242,1,'Xtream-Codes IPTV Panel Pro'),(1250,1243,1,'Xtream-Codes IPTV Panel Pro'),(1251,1244,1,'Xtream-Codes IPTV Panel Pro'),(1252,1245,1,'Xtream-Codes IPTV Panel Pro'),(1253,1246,1,'Xtream-Codes IPTV Panel Pro'),(1254,1247,1,'Xtream-Codes IPTV Panel Pro'),(1255,1248,1,'Xtream-Codes IPTV Panel Pro'),(1256,1249,1,'Xtream-Codes IPTV Panel Pro'),(1257,1250,1,'Xtream-Codes IPTV Panel Pro'),(1258,1251,1,'Xtream-Codes IPTV Panel Pro'),(1259,1252,1,'Xtream-Codes IPTV Panel Pro'),(1260,1253,1,'Xtream-Codes IPTV Panel Pro'),(1261,1254,1,'Xtream-Codes IPTV Panel Pro'),(1262,1255,1,'Xtream-Codes IPTV Panel Pro'),(1263,1256,1,'Xtream-Codes IPTV Panel Pro'),(1264,1257,1,'Xtream-Codes IPTV Panel Pro'),(1265,1258,1,'Xtream-Codes IPTV Panel Pro'),(1266,1259,1,'Xtream-Codes IPTV Panel Pro'),(1267,1260,1,'Xtream-Codes IPTV Panel Pro'),(1268,1261,1,'Xtream-Codes IPTV Panel Pro'),(1269,1262,1,'Xtream-Codes IPTV Panel Pro'),(1270,1263,1,'Xtream-Codes IPTV Panel Pro'),(1271,1264,1,'Xtream-Codes IPTV Panel Pro'),(1272,1265,1,'Xtream-Codes IPTV Panel Pro'),(1273,1266,1,'Xtream-Codes IPTV Panel Pro'),(1274,1267,1,'Xtream-Codes IPTV Panel Pro'),(1275,1268,1,'Xtream-Codes IPTV Panel Pro'),(1276,1269,1,'Xtream-Codes IPTV Panel Pro'),(1277,1270,1,'Xtream-Codes IPTV Panel Pro'),(1278,1271,1,'Xtream-Codes IPTV Panel Pro'),(1279,1272,1,'Xtream-Codes IPTV Panel Pro'),(1280,1273,1,'Xtream-Codes IPTV Panel Pro'),(1281,1274,1,'Xtream-Codes IPTV Panel Pro'),(1282,1275,1,'Xtream-Codes IPTV Panel Pro'),(1283,1276,1,'Xtream-Codes IPTV Panel Pro'),(1284,1277,1,'Xtream-Codes IPTV Panel Pro'),(1285,1278,1,'Xtream-Codes IPTV Panel Pro'),(1286,1279,1,'Xtream-Codes IPTV Panel Pro'),(1287,1280,1,'Xtream-Codes IPTV Panel Pro'),(1288,1281,1,'Xtream-Codes IPTV Panel Pro'),(1289,1282,1,'Xtream-Codes IPTV Panel Pro'),(1290,1283,1,'Xtream-Codes IPTV Panel Pro'),(1291,1284,1,'Xtream-Codes IPTV Panel Pro'),(1292,1285,1,'Xtream-Codes IPTV Panel Pro'),(1293,1286,1,'Xtream-Codes IPTV Panel Pro'),(1294,1287,1,'Xtream-Codes IPTV Panel Pro'),(1295,1288,1,'Xtream-Codes IPTV Panel Pro'),(1296,1289,1,'Xtream-Codes IPTV Panel Pro'),(1297,1290,1,'Xtream-Codes IPTV Panel Pro'),(1298,1291,1,'Xtream-Codes IPTV Panel Pro'),(1299,1292,1,'Xtream-Codes IPTV Panel Pro'),(1300,1293,1,'Xtream-Codes IPTV Panel Pro'),(1301,1294,1,'Xtream-Codes IPTV Panel Pro'),(1302,1295,1,'Xtream-Codes IPTV Panel Pro'),(1303,1296,1,'Xtream-Codes IPTV Panel Pro'),(1304,1297,1,'Xtream-Codes IPTV Panel Pro'),(1305,1298,1,'Xtream-Codes IPTV Panel Pro'),(1306,1299,1,'Xtream-Codes IPTV Panel Pro'),(1307,1300,1,'Xtream-Codes IPTV Panel Pro'),(1308,1301,1,'Xtream-Codes IPTV Panel Pro'),(1309,1302,1,'Xtream-Codes IPTV Panel Pro'),(1310,1303,1,'Xtream-Codes IPTV Panel Pro'),(1311,1304,1,'Xtream-Codes IPTV Panel Pro'),(1312,1305,1,'Xtream-Codes IPTV Panel Pro'),(1313,1306,1,'Xtream-Codes IPTV Panel Pro'),(1314,1307,1,'Xtream-Codes IPTV Panel Pro'),(1315,1308,1,'Xtream-Codes IPTV Panel Pro'),(1316,1309,1,'Xtream-Codes IPTV Panel Pro'),(1317,1310,1,'Xtream-Codes IPTV Panel Pro'),(1318,1311,1,'Xtream-Codes IPTV Panel Pro'),(1319,1312,1,'Xtream-Codes IPTV Panel Pro'),(1320,1313,1,'Xtream-Codes IPTV Panel Pro'),(1321,1314,1,'Xtream-Codes IPTV Panel Pro'),(1322,1315,1,'Xtream-Codes IPTV Panel Pro'),(1323,1316,1,'Xtream-Codes IPTV Panel Pro'),(1324,1317,1,'Xtream-Codes IPTV Panel Pro'),(1325,1318,1,'Xtream-Codes IPTV Panel Pro'),(1326,1319,1,'Xtream-Codes IPTV Panel Pro'),(1327,1320,1,'Xtream-Codes IPTV Panel Pro'),(1328,1321,1,'Xtream-Codes IPTV Panel Pro'),(1329,1322,1,'Xtream-Codes IPTV Panel Pro'),(1330,1323,1,'Xtream-Codes IPTV Panel Pro'),(1331,1324,1,'Xtream-Codes IPTV Panel Pro'),(1332,1325,1,'Xtream-Codes IPTV Panel Pro'),(1333,1326,1,'Xtream-Codes IPTV Panel Pro'),(1334,1327,1,'Xtream-Codes IPTV Panel Pro'),(1335,1328,1,'Xtream-Codes IPTV Panel Pro'),(1336,1329,1,'Xtream-Codes IPTV Panel Pro'),(1337,1330,1,'Xtream-Codes IPTV Panel Pro'),(1338,1331,1,'Xtream-Codes IPTV Panel Pro'),(1339,1332,1,'Xtream-Codes IPTV Panel Pro'),(1340,1333,1,'Xtream-Codes IPTV Panel Pro'),(1341,1334,1,'Xtream-Codes IPTV Panel Pro'),(1342,1335,1,'Xtream-Codes IPTV Panel Pro'),(1343,1336,1,'Xtream-Codes IPTV Panel Pro'),(1344,1337,1,'Xtream-Codes IPTV Panel Pro'),(1345,1338,1,'Xtream-Codes IPTV Panel Pro'),(1346,1339,1,'Xtream-Codes IPTV Panel Pro'),(1347,1340,1,'Xtream-Codes IPTV Panel Pro'),(1348,1341,1,'Xtream-Codes IPTV Panel Pro'),(1349,1342,1,'Xtream-Codes IPTV Panel Pro'),(1350,1343,1,'Xtream-Codes IPTV Panel Pro'),(1351,1344,1,'Xtream-Codes IPTV Panel Pro'),(1352,1345,1,'Xtream-Codes IPTV Panel Pro'),(1353,1346,1,'Xtream-Codes IPTV Panel Pro'),(1354,1347,1,'Xtream-Codes IPTV Panel Pro'),(1355,1348,1,'Xtream-Codes IPTV Panel Pro'),(1356,1349,1,'Xtream-Codes IPTV Panel Pro'),(1357,1350,1,'Xtream-Codes IPTV Panel Pro'),(1358,1351,1,'Xtream-Codes IPTV Panel Pro'),(1359,1352,1,'Xtream-Codes IPTV Panel Pro'),(1360,1353,1,'Xtream-Codes IPTV Panel Pro'),(1361,1354,1,'Xtream-Codes IPTV Panel Pro'),(1362,1355,1,'Xtream-Codes IPTV Panel Pro'),(1363,1356,1,'Xtream-Codes IPTV Panel Pro'),(1364,1357,1,'Xtream-Codes IPTV Panel Pro'),(1365,1358,1,'Xtream-Codes IPTV Panel Pro'),(1366,1359,1,'Xtream-Codes IPTV Panel Pro'),(1367,425,1,'Xtream-Codes IPTV Panel Pro'),(1368,427,1,'Xtream-Codes IPTV Panel Pro'),(1369,481,1,'Xtream-Codes IPTV Panel Pro'),(1370,482,1,'Xtream-Codes IPTV Panel Pro'),(1390,1361,1,'Xtream-Codes IPTV Panel Pro'),(1391,1362,1,'Xtream-Codes IPTV Panel Pro'),(1392,1360,1,'Xtream-Codes IPTV Panel Pro'),(1393,1364,1,'Xtream-Codes IPTV Panel Pro'),(1394,1363,1,'Xtream-Codes IPTV Panel Pro');
/*!40000 ALTER TABLE `streams_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams_seasons`
--

DROP TABLE IF EXISTS `streams_seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams_seasons` (
  `season_id` int(11) NOT NULL AUTO_INCREMENT,
  `season_name` varchar(255) NOT NULL,
  `stream_id` int(11) NOT NULL,
  PRIMARY KEY (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams_seasons`
--

LOCK TABLES `streams_seasons` WRITE;
/*!40000 ALTER TABLE `streams_seasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `streams_seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams_sys`
--

DROP TABLE IF EXISTS `streams_sys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams_sys` (
  `server_stream_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `to_analyze` tinyint(4) NOT NULL DEFAULT '0',
  `stream_status` int(11) NOT NULL DEFAULT '0',
  `stream_started` int(11) DEFAULT NULL,
  `stream_info` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `monitor_pid` int(11) DEFAULT NULL,
  `current_source` mediumtext COLLATE utf8_unicode_ci,
  `bitrate` int(11) DEFAULT NULL,
  `progress_info` text COLLATE utf8_unicode_ci NOT NULL,
  `on_demand` tinyint(4) NOT NULL DEFAULT '0',
  `delay_pid` int(11) DEFAULT NULL,
  `delay_available_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`server_stream_id`),
  UNIQUE KEY `stream_id_2` (`stream_id`,`server_id`),
  KEY `stream_id` (`stream_id`),
  KEY `pid` (`pid`),
  KEY `server_id` (`server_id`),
  KEY `stream_status` (`stream_status`),
  KEY `stream_started` (`stream_started`),
  KEY `parent_id` (`parent_id`),
  KEY `to_analyze` (`to_analyze`)
) ENGINE=InnoDB AUTO_INCREMENT=1383 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams_sys`
--

LOCK TABLES `streams_sys` WRITE;
/*!40000 ALTER TABLE `streams_sys` DISABLE KEYS */;
INSERT INTO `streams_sys` (`server_stream_id`, `stream_id`, `server_id`, `parent_id`, `pid`, `to_analyze`, `stream_status`, `stream_started`, `stream_info`, `monitor_pid`, `current_source`, `bitrate`, `progress_info`, `on_demand`, `delay_pid`, `delay_available_at`) VALUES (435,419,6,NULL,15930,0,0,1667834981,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/48\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":640,\"height\":264,\"coded_width\":640,\"coded_height\":272,\"has_b_frames\":2,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"80:33\",\"pix_fmt\":\"yuv420p\",\"level\":21,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"24\\/1\",\"avg_frame_rate\":\"24\\/1\",\"time_base\":\"1\\/1000\",\"start_pts\":0,\"start_time\":\"0.000000\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":1,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0},\"tags\":{\"language\":\"tam\",\"title\":\"www.1TamilMV.cfd\",\"BPS\":\"372875\",\"BPS-eng\":\"372875\",\"DURATION-eng\":\"02:08:59.042000000\",\"NUMBER_OF_FRAMES\":\"185737\",\"NUMBER_OF_FRAMES-eng\":\"185737\",\"NUMBER_OF_BYTES\":\"360712832\",\"NUMBER_OF_BYTES-eng\":\"360712832\",\"_STATISTICS_WRITING_APP\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_APP-eng\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_DATE_UTC\":\"2022-11-03 20:22:24\",\"_STATISTICS_WRITING_DATE_UTC-eng\":\"2022-11-03 20:22:24\",\"_STATISTICS_TAGS\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"_STATISTICS_TAGS-eng\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"ENCODER\":\"Lavc58.39.100 libx264\",\"DURATION\":\"02:08:59.063000000\"}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":0,\"start_time\":\"0.000000\",\"disposition\":{\"default\":1,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0},\"tags\":{\"language\":\"tam\",\"title\":\"www.1TamilMV.cfd\",\"BPS\":\"61375\",\"BPS-eng\":\"61375\",\"DURATION-eng\":\"02:08:59.008000000\",\"NUMBER_OF_FRAMES\":\"362766\",\"NUMBER_OF_FRAMES-eng\":\"362766\",\"NUMBER_OF_BYTES\":\"59373334\",\"NUMBER_OF_BYTES-eng\":\"59373334\",\"_STATISTICS_WRITING_APP\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_APP-eng\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_DATE_UTC\":\"2022-11-03 20:22:24\",\"_STATISTICS_WRITING_DATE_UTC-eng\":\"2022-11-03 20:22:24\",\"_STATISTICS_TAGS\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"_STATISTICS_TAGS-eng\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"ENCODER\":\"Lavc58.39.100 aac\",\"DURATION\":\"02:08:59.029000000\"}}},\"container\":\"matroska,webm\",\"filename\":\"\\/home\\/xtreamcodes\\/iptv_xtream_codes\\/movies\\/419.mkv\",\"bitrate\":\"576197\",\"of_duration\":\"7739.063000\",\"duration\":\"02:08:59\"}',NULL,NULL,576,'',0,NULL,NULL),(437,421,6,NULL,29141,0,0,1667835988,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/48\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":640,\"height\":264,\"coded_width\":640,\"coded_height\":272,\"has_b_frames\":2,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"80:33\",\"pix_fmt\":\"yuv420p\",\"level\":21,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"24\\/1\",\"avg_frame_rate\":\"24\\/1\",\"time_base\":\"1\\/1000\",\"start_pts\":0,\"start_time\":\"0.000000\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":1,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0},\"tags\":{\"language\":\"tam\",\"title\":\"www.1TamilMV.cfd\",\"BPS\":\"372875\",\"BPS-eng\":\"372875\",\"DURATION-eng\":\"02:08:59.042000000\",\"NUMBER_OF_FRAMES\":\"185737\",\"NUMBER_OF_FRAMES-eng\":\"185737\",\"NUMBER_OF_BYTES\":\"360712832\",\"NUMBER_OF_BYTES-eng\":\"360712832\",\"_STATISTICS_WRITING_APP\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_APP-eng\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_DATE_UTC\":\"2022-11-03 20:22:24\",\"_STATISTICS_WRITING_DATE_UTC-eng\":\"2022-11-03 20:22:24\",\"_STATISTICS_TAGS\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"_STATISTICS_TAGS-eng\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"DURATION\":\"02:08:59.041000000\"}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":0,\"start_time\":\"0.000000\",\"disposition\":{\"default\":1,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0},\"tags\":{\"language\":\"tam\",\"title\":\"www.1TamilMV.cfd\",\"BPS\":\"61375\",\"BPS-eng\":\"61375\",\"DURATION-eng\":\"02:08:59.008000000\",\"NUMBER_OF_FRAMES\":\"362766\",\"NUMBER_OF_FRAMES-eng\":\"362766\",\"NUMBER_OF_BYTES\":\"59373334\",\"NUMBER_OF_BYTES-eng\":\"59373334\",\"_STATISTICS_WRITING_APP\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_APP-eng\":\"mkvmerge v8.2.0 (\'World of Adventure\') 64bit\",\"_STATISTICS_WRITING_DATE_UTC\":\"2022-11-03 20:22:24\",\"_STATISTICS_WRITING_DATE_UTC-eng\":\"2022-11-03 20:22:24\",\"_STATISTICS_TAGS\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"_STATISTICS_TAGS-eng\":\"BPS DURATION NUMBER_OF_FRAMES NUMBER_OF_BYTES\",\"DURATION\":\"02:08:59.008000000\"}}},\"container\":\"matroska,webm\",\"filename\":\"\\/home\\/xtreamcodes\\/iptv_xtream_codes\\/movies\\/421.mkv\",\"bitrate\":\"438329\",\"of_duration\":\"7739.041000\",\"duration\":\"02:08:59\"}',NULL,NULL,438,'',0,NULL,NULL),(1378,1362,6,NULL,NULL,0,0,NULL,'',NULL,NULL,NULL,'',1,NULL,0),(1379,1363,6,NULL,NULL,0,0,NULL,'',NULL,NULL,NULL,'{\"frame\":\"6026\",\"fps\":\"25.02\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"241000011\",\"out_time_ms\":\"241000011\",\"out_time\":\"00:04:01.000011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',1,NULL,0),(1380,1364,6,NULL,NULL,0,0,NULL,'',NULL,NULL,NULL,'',1,NULL,0),(1381,1361,6,NULL,NULL,0,0,NULL,'',NULL,NULL,NULL,'',1,NULL,0),(1382,1360,6,NULL,NULL,0,0,NULL,'',NULL,NULL,NULL,'',1,NULL,0);
/*!40000 ALTER TABLE `streams_sys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams_types`
--

DROP TABLE IF EXISTS `streams_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams_types` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_output` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `live` tinyint(4) NOT NULL,
  PRIMARY KEY (`type_id`),
  KEY `type_key` (`type_key`),
  KEY `type_output` (`type_output`),
  KEY `live` (`live`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams_types`
--

LOCK TABLES `streams_types` WRITE;
/*!40000 ALTER TABLE `streams_types` DISABLE KEYS */;
INSERT INTO `streams_types` (`type_id`, `type_name`, `type_key`, `type_output`, `live`) VALUES (1,'Live Streams','live','live',1),(2,'Movies','movie','movie',0),(3,'Created Live Channels','created_live','live',1),(4,'Radio','radio_streams','live',1),(5,'TV Series','series','series',0);
/*!40000 ALTER TABLE `streams_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subreseller_setup`
--

DROP TABLE IF EXISTS `subreseller_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subreseller_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reseller` int(8) NOT NULL DEFAULT '0',
  `subreseller` int(8) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subreseller_setup`
--

LOCK TABLES `subreseller_setup` WRITE;
/*!40000 ALTER TABLE `subreseller_setup` DISABLE KEYS */;
/*!40000 ALTER TABLE `subreseller_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suspicious_logs`
--

DROP TABLE IF EXISTS `suspicious_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suspicious_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` mediumtext NOT NULL,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suspicious_logs`
--

LOCK TABLES `suspicious_logs` WRITE;
/*!40000 ALTER TABLE `suspicious_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `suspicious_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `admin_read` tinyint(4) NOT NULL,
  `user_read` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `status` (`status`),
  KEY `admin_read` (`admin_read`),
  KEY `user_read` (`user_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_replies`
--

DROP TABLE IF EXISTS `tickets_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `admin_reply` tinyint(4) NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_id` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_replies`
--

LOCK TABLES `tickets_replies` WRITE;
/*!40000 ALTER TABLE `tickets_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmdb_async`
--

DROP TABLE IF EXISTS `tmdb_async`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmdb_async` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL DEFAULT '0',
  `stream_id` int(16) NOT NULL DEFAULT '0',
  `status` int(8) NOT NULL DEFAULT '0',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmdb_async`
--

LOCK TABLES `tmdb_async` WRITE;
/*!40000 ALTER TABLE `tmdb_async` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmdb_async` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transcoding_profiles`
--

DROP TABLE IF EXISTS `transcoding_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transcoding_profiles` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transcoding_profiles`
--

LOCK TABLES `transcoding_profiles` WRITE;
/*!40000 ALTER TABLE `transcoding_profiles` DISABLE KEYS */;
INSERT INTO `transcoding_profiles` (`profile_id`, `profile_name`, `profile_options`) VALUES (1,'Standard H264 AAC','{\"-vcodec\":\"h264\",\"-acodec\":\"aac\"}'),(2,'default','{\"-vcodec\":\"copy\",\"-acodec\":\"copy\"}');
/*!40000 ALTER TABLE `transcoding_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activity`
--

DROP TABLE IF EXISTS `user_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `container` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_start` int(11) NOT NULL,
  `date_end` int(11) DEFAULT NULL,
  `geoip_country_code` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `isp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `external_device` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `divergence` int(11) DEFAULT NULL,
  PRIMARY KEY (`activity_id`),
  KEY `user_id` (`user_id`),
  KEY `stream_id` (`stream_id`),
  KEY `server_id` (`server_id`),
  KEY `date_end` (`date_end`),
  KEY `container` (`container`),
  KEY `geoip_country_code` (`geoip_country_code`),
  KEY `date_start` (`date_start`),
  KEY `date_start_2` (`date_start`,`date_end`),
  KEY `user_ip` (`user_ip`),
  KEY `user_agent` (`user_agent`),
  KEY `isp` (`isp`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activity`
--

LOCK TABLES `user_activity` WRITE;
/*!40000 ALTER TABLE `user_activity` DISABLE KEYS */;
INSERT INTO `user_activity` (`activity_id`, `user_id`, `stream_id`, `server_id`, `user_agent`, `user_ip`, `container`, `date_start`, `date_end`, `geoip_country_code`, `isp`, `external_device`, `divergence`) VALUES (1,2,411,1,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667813396,1667813439,'IN','','',NULL),(2,2,411,1,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667813441,1667813484,'IN','','',NULL),(3,2,411,1,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667813500,1667813555,'IN','','',NULL),(4,2,410,1,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667813663,1667813701,'IN','','',NULL),(5,2,411,1,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667813701,1667813722,'IN','','',NULL),(6,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667829080,1667829126,'IN','','',NULL),(7,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667829127,1667829131,'IN','','',NULL),(8,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831220,1667831237,'IN','','',NULL),(9,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831274,1667831281,'IN','','',NULL),(10,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831296,1667831307,'IN','','',NULL),(11,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831333,1667831336,'IN','','',NULL),(12,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831461,1667831481,'IN','','',NULL),(13,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831481,1667831488,'IN','','',NULL),(14,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831487,1667831490,'IN','','',NULL),(15,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831490,1667831493,'IN','','',NULL),(16,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831492,1667831496,'IN','','',NULL),(17,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831495,1667831499,'IN','','',NULL),(18,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831147,1667831550,'IN','','',NULL),(19,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831497,1667831566,'IN','','',NULL),(20,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831548,1667831576,'IN','','',NULL),(21,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831364,1667831823,'IN','','',NULL),(22,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831577,1667831823,'IN','','',NULL),(23,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831518,1667831824,'IN','','',NULL),(24,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831563,1667831824,'IN','','',NULL),(25,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831928,1667831950,'IN','','',NULL),(26,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831954,1667832163,'IN','','',NULL),(27,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831937,1667832492,'IN','','',NULL),(28,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831964,1667832574,'IN','','',NULL),(29,2,417,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667831927,1667832937,'IN','','',NULL),(30,2,418,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667833003,1667833077,'IN','','',NULL),(31,2,418,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667832965,1667833089,'IN','','',NULL),(32,2,418,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667833077,1667833219,'IN','','',NULL),(33,2,418,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667833087,1667833251,'IN','','',NULL),(34,2,418,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667833249,1667833263,'IN','','',NULL),(35,2,418,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667832949,1667833322,'IN','','',NULL),(36,2,418,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667833219,1667833322,'IN','','',NULL),(37,2,418,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667833264,1667833322,'IN','','',NULL),(38,2,418,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667833505,1667833521,'IN','','',NULL),(39,2,418,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667833496,1667833522,'IN','','',NULL),(40,2,418,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667833493,1667833524,'IN','','',NULL),(41,2,418,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667833531,1667834413,'IN','','',NULL),(42,2,420,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667835741,1667835896,'IN','','',NULL),(43,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','VOD',1667836041,1667836041,'IN','','',NULL),(44,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','VOD',1667836041,1667836041,'IN','','',NULL),(45,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','VOD',1667836041,1667836043,'IN','','',NULL),(46,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','VOD',1667836043,1667836044,'IN','','',NULL),(47,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','VOD',1667836044,1667836045,'IN','','',NULL),(48,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','VOD',1667836045,1667836047,'IN','','',NULL),(49,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','VOD',1667836048,1667836050,'IN','','',NULL),(50,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','VOD',1667836049,1667836051,'IN','','',NULL),(51,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667836166,1667836313,'IN','','',NULL),(52,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667836380,1667836537,'IN','','',NULL),(53,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','49.15.138.156','ts',1667837139,1667837222,'IN','','',NULL),(54,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667837220,1667837223,'IN','','',NULL),(55,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667837225,1667837231,'IN','','',NULL),(56,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','49.15.138.156','ts',1667837058,1667837233,'IN','','',NULL),(57,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667837254,1667837284,'IN','','',NULL),(58,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667837236,1667837547,'IN','','',NULL),(59,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667837412,1667837550,'IN','','',NULL),(60,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667836503,1667837550,'IN','','',NULL),(61,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667836855,1667837550,'IN','','',NULL),(62,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667837552,1667837585,'IN','','',NULL),(63,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667837547,1667837607,'IN','','',NULL),(64,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667837875,1667838065,'IN','','',NULL),(65,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667838113,1667838135,'IN','','',NULL),(66,2,423,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667838132,1667838272,'IN','','',NULL),(67,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667837551,1667839409,'IN','','',NULL),(68,2,422,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667837551,1667839440,'IN','','',NULL),(69,2,1360,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667842273,1667842283,'IN','','',NULL),(70,2,1360,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667842291,1667842333,'IN','','',NULL),(71,2,1360,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667842615,1667842622,'IN','','',NULL),(72,2,1360,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667842630,1667842643,'IN','','',NULL),(73,2,1360,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667842279,1667842682,'IN','','',NULL),(74,2,1360,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667842807,1667842852,'IN','','',NULL),(75,2,1363,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667842980,1667844532,'IN','','',NULL),(76,2,1363,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667846841,1667846986,'IN','','',NULL),(77,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667846971,1667846989,'IN','','',NULL),(78,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667846856,1667846990,'IN','','',NULL),(79,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847031,1667847035,'IN','','',NULL),(80,2,1360,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847173,1667847179,'IN','','',NULL),(81,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847162,1667847196,'IN','','',NULL),(82,2,1363,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847252,1667847322,'IN','','',NULL),(83,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847246,1667847351,'IN','','',NULL),(84,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847123,1667847352,'IN','','',NULL),(85,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847133,1667847352,'IN','','',NULL),(86,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847176,1667847435,'IN','','',NULL),(87,2,1363,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847405,1667847436,'IN','','',NULL),(88,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847574,1667847583,'IN','','',NULL),(89,2,1360,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667847774,1667847794,'IN','','',NULL),(90,2,1360,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667847927,1667847947,'IN','','',NULL),(91,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847788,1667847951,'IN','','',NULL),(92,2,1360,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848090,1667848110,'IN','','',NULL),(93,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','86.99.88.178','VOD',1667848197,1667848197,'AE','','',NULL),(94,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','86.99.88.178','VOD',1667848197,1667848197,'AE','','',NULL),(95,2,1362,1,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667847778,1667848246,'IN','','',NULL),(96,2,1360,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848241,1667848261,'IN','','',NULL),(97,2,1360,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848241,1667848261,'IN','','',NULL),(98,2,1362,1,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847788,1667848299,'IN','','',NULL),(99,2,1362,1,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847789,1667848316,'IN','','',NULL),(100,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','86.99.88.178','VOD',1667848332,1667848332,'AE','','',NULL),(101,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','86.99.88.178','VOD',1667848331,1667848332,'AE','','',NULL),(102,2,1362,1,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847789,1667848331,'IN','','',NULL),(103,2,1362,1,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667847929,1667848361,'IN','','',NULL),(104,2,1362,1,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667847931,1667848369,'IN','','',NULL),(105,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','86.99.88.178','VOD',1667848332,1667848404,'AE','','',NULL),(106,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','86.99.88.178','VOD',1667848404,1667848405,'AE','','',NULL),(107,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','86.99.88.178','VOD',1667848405,1667848413,'AE','','',NULL),(108,2,1362,1,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848094,1667848401,'IN','','',NULL),(109,2,1362,1,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848107,1667848407,'IN','','',NULL),(110,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848300,1667848492,'IN','','',NULL),(111,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','31.219.156.46','ts',1667848362,1667848535,'AE','','',NULL),(112,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848554,1667848651,'IN','','',NULL),(113,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848263,1667848651,'IN','','',NULL),(114,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','31.219.156.46','ts',1667848575,1667848651,'AE','','',NULL),(115,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848401,1667848652,'IN','','',NULL),(116,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848369,1667848652,'IN','','',NULL),(117,2,1362,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848429,1667848672,'IN','','',NULL),(118,2,1362,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848246,1667848672,'IN','','',NULL),(119,2,1362,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848407,1667848673,'IN','','',NULL),(120,2,421,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','86.99.88.178','VOD',1667848198,1667848696,'AE','','',NULL),(121,2,1362,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848677,1667848698,'IN','','',NULL),(122,2,1362,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848678,1667848698,'IN','','',NULL),(123,2,1362,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848678,1667848698,'IN','','',NULL),(124,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848693,1667848713,'IN','','',NULL),(125,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848697,1667848717,'IN','','',NULL),(126,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848699,1667848719,'IN','','',NULL),(127,2,1362,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848703,1667848723,'IN','','',NULL),(128,2,1362,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848703,1667848723,'IN','','',NULL),(129,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848704,1667848724,'IN','','',NULL),(130,2,1362,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848704,1667848724,'IN','','',NULL),(131,2,1360,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848749,1667848769,'IN','','',NULL),(132,2,1360,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848752,1667848772,'IN','','',NULL),(133,2,1362,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848316,1667848777,'IN','','',NULL),(134,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848777,1667848846,'IN','','',NULL),(135,2,1360,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848856,1667848876,'IN','','',NULL),(136,2,1362,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848861,1667848881,'IN','','',NULL),(137,2,1362,6,'IPTVSmartersPlayer','182.65.230.90','ts',1667848873,1667848893,'IN','','',NULL),(138,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848765,1667848950,'IN','','',NULL),(139,2,1361,6,'IPTVSmartersPlayer','182.65.230.90','ts',1667848893,1667848971,'IN','','',NULL),(140,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848899,1667848971,'IN','','',NULL),(141,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848807,1667848971,'IN','','',NULL),(142,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848784,1667848972,'IN','','',NULL),(143,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667848913,1667848972,'IN','','',NULL),(144,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848873,1667848998,'IN','','',NULL),(145,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667849071,1667849091,'IN','','',NULL),(146,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667849075,1667849095,'IN','','',NULL),(147,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667849093,1667849125,'IN','','',NULL),(148,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667849106,1667849126,'IN','','',NULL),(149,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667849131,1667849160,'IN','','',NULL),(150,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667849188,1667849258,'IN','','',NULL),(151,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','31.219.156.46','ts',1667849273,1667849279,'AE','','',NULL),(152,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','31.219.156.46','ts',1667849282,1667849308,'AE','','',NULL),(153,2,1364,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','31.219.156.46','ts',1667849330,1667849357,'AE','','',NULL),(154,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667849283,1667849405,'IN','','',NULL),(155,2,1364,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','31.219.156.46','ts',1667849388,1667849432,'AE','','',NULL),(156,2,1364,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','31.219.156.46','ts',1667849433,1667849542,'AE','','',NULL),(157,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849396,1667849553,'IN','','',NULL),(158,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849481,1667849553,'IN','','',NULL),(159,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667849071,1667849553,'IN','','',NULL),(160,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848884,1667849553,'IN','','',NULL),(161,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667849107,1667849553,'IN','','',NULL),(162,2,1361,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','182.65.230.90','ts',1667849075,1667849553,'IN','','',NULL),(163,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849467,1667849553,'IN','','',NULL),(164,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848994,1667849554,'IN','','',NULL),(165,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667848924,1667849554,'IN','','',NULL),(166,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849479,1667849554,'IN','','',NULL),(167,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849376,1667849554,'IN','','',NULL),(168,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849392,1667849554,'IN','','',NULL),(169,2,1361,6,'IPTVSmartersPlayer','182.65.230.90','ts',1667848989,1667849554,'IN','','',NULL),(170,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849473,1667849554,'IN','','',NULL),(171,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667849004,1667849554,'IN','','',NULL),(172,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849389,1667849604,'IN','','',NULL),(173,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849363,1667849634,'IN','','',NULL),(174,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849386,1667849647,'IN','','',NULL),(175,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849469,1667849724,'IN','','',NULL),(176,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849471,1667849724,'IN','','',NULL),(177,2,1361,6,'PostmanRuntime/7.29.2','182.65.230.90','ts',1667849476,1667849735,'IN','','',NULL),(178,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667849559,1667850133,'IN','','',NULL),(179,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667849559,1667850134,'IN','','',NULL),(180,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667849560,1667850134,'IN','','',NULL),(181,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667849559,1667850134,'IN','','',NULL),(182,2,1361,6,'IPTVSmartersPlayer','182.65.230.90','ts',1667849558,1667850134,'IN','','',NULL),(183,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667850139,1667850160,'IN','','',NULL),(184,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667850139,1667850161,'IN','','',NULL),(185,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667850139,1667850162,'IN','','',NULL),(186,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667850139,1667850165,'IN','','',NULL),(187,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667850168,1667850190,'IN','','',NULL),(188,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667850170,1667850191,'IN','','',NULL),(189,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667850166,1667850191,'IN','','',NULL),(190,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667850196,1667851292,'IN','','',NULL),(191,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667850196,1667851292,'IN','','',NULL),(192,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667850196,1667853103,'IN','','',NULL),(193,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667851298,1667853103,'IN','','',NULL),(194,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667850166,1667853103,'IN','','',NULL),(195,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667851297,1667853103,'IN','','',NULL),(196,2,1361,6,'IPTVSmartersPlayer','182.65.230.90','ts',1667850380,1667853103,'IN','','',NULL),(197,2,1361,6,'IPTVSmartersPlayer','182.65.230.90','ts',1667853148,1667853260,'IN','','',NULL),(198,2,1362,6,'IPTVSmartersPlayer','182.65.230.90','ts',1667853260,1667853265,'IN','','',NULL),(199,2,1362,6,'IPTVSmartersPlayer','182.65.230.90','ts',1667853596,1667853602,'IN','','',NULL),(200,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853108,1667853686,'IN','','',NULL),(201,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853109,1667853686,'IN','','',NULL),(202,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853109,1667853687,'IN','','',NULL),(203,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853693,1667853736,'IN','','',NULL),(204,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853701,1667853736,'IN','','',NULL),(205,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853701,1667853737,'IN','','',NULL),(206,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853742,1667853809,'IN','','',NULL),(207,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853742,1667853809,'IN','','',NULL),(208,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853742,1667853809,'IN','','',NULL),(209,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853828,1667854368,'IN','','',NULL),(210,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853109,1667854446,'IN','','',NULL),(211,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853816,1667854600,'IN','','',NULL),(212,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667853828,1667854601,'IN','','',NULL),(213,2,1363,6,'IPTVSmartersPlayer','182.65.230.90','ts',1667853600,1667855310,'IN','','',NULL),(214,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667854606,1667855541,'IN','','',NULL),(215,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667854607,1667855542,'IN','','',NULL),(216,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667855547,1667855621,'IN','','',NULL),(217,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667855547,1667855621,'IN','','',NULL),(218,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667855626,1667856519,'IN','','',NULL),(219,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667855627,1667856519,'IN','','',NULL),(220,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667856525,1667856558,'IN','','',NULL),(221,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667856525,1667856558,'IN','','',NULL),(222,2,1364,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','92.97.8.35','ts',1667859319,1667859329,'AE','','',NULL),(223,2,1364,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','92.97.8.35','ts',1667859331,1667859386,'AE','','',NULL),(224,2,1364,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','92.97.8.35','ts',1667859415,1667859555,'AE','','',NULL),(225,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667856570,1667864024,'IN','','',NULL),(226,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667856570,1667864024,'IN','','',NULL),(227,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667864030,1667864104,'IN','','',NULL),(228,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667864029,1667864104,'IN','','',NULL),(229,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667864110,1667864176,'IN','','',NULL),(230,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667864110,1667864176,'IN','','',NULL),(231,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667864182,1667864248,'IN','','',NULL),(232,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667864182,1667864248,'IN','','',NULL),(233,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667864254,1667864320,'IN','','',NULL),(234,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667864254,1667864320,'IN','','',NULL),(235,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667864326,1667864374,'IN','','',NULL),(236,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667864380,1667864428,'IN','','',NULL),(237,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667864325,1667864428,'IN','','',NULL),(238,2,1361,6,'VLC/2.2.4 LibVLC/2.2.4','182.65.230.90','ts',1667864443,1667864463,'IN','','',NULL),(239,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','92.97.8.35','ts',1667870890,1667871711,'AE','','',NULL),(240,2,1364,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','86.99.176.154','ts',1667884056,1667884072,'AE','','',NULL),(241,2,1360,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','86.99.176.154','ts',1667884251,1667884271,'AE','','',NULL),(242,2,1363,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','2.48.204.248','ts',1667904136,1667904638,'AE','','',NULL),(243,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','185.136.158.130','ts',1667940617,1667940637,'DE','','',NULL),(244,2,1364,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','185.136.158.130','ts',1667940633,1667940653,'DE','','',NULL),(245,2,1362,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','185.136.158.130','ts',1667940617,1667940661,'DE','','',NULL),(246,2,1364,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','185.136.158.130','ts',1668333503,1668333523,'DE','','',NULL),(247,2,1364,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','185.136.158.130','ts',1668333503,1668333542,'DE','','',NULL),(248,2,1360,6,'VLC/3.0.17.3 LibVLC/3.0.17.3','185.136.158.130','ts',1668333522,1668333542,'DE','','',NULL);
/*!40000 ALTER TABLE `user_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activity_now`
--

DROP TABLE IF EXISTS `user_activity_now`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_activity_now` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `container` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `date_start` int(11) NOT NULL,
  `date_end` int(11) DEFAULT NULL,
  `geoip_country_code` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `isp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `external_device` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `divergence` int(11) DEFAULT NULL,
  `hls_last_read` int(11) DEFAULT NULL,
  `hls_end` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`),
  KEY `user_agent` (`user_agent`),
  KEY `user_ip` (`user_ip`),
  KEY `container` (`container`),
  KEY `pid` (`pid`),
  KEY `geoip_country_code` (`geoip_country_code`),
  KEY `user_id` (`user_id`),
  KEY `stream_id` (`stream_id`),
  KEY `server_id` (`server_id`),
  KEY `date_start` (`date_start`),
  KEY `date_end` (`date_end`),
  KEY `hls_end` (`hls_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activity_now`
--

LOCK TABLES `user_activity_now` WRITE;
/*!40000 ALTER TABLE `user_activity_now` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_activity_now` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_output`
--

DROP TABLE IF EXISTS `user_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_output` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `access_output_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `access_output_id` (`access_output_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_output`
--

LOCK TABLES `user_output` WRITE;
/*!40000 ALTER TABLE `user_output` DISABLE KEYS */;
INSERT INTO `user_output` (`id`, `user_id`, `access_output_id`) VALUES (1,1,1),(2,1,2),(3,1,3),(16,2,1),(17,2,2),(18,2,3);
/*!40000 ALTER TABLE `user_output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exp_date` int(11) DEFAULT NULL,
  `admin_enabled` int(11) NOT NULL DEFAULT '1',
  `enabled` int(11) NOT NULL DEFAULT '1',
  `admin_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `reseller_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `bouquet` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `max_connections` int(11) NOT NULL DEFAULT '1',
  `is_restreamer` tinyint(4) NOT NULL DEFAULT '0',
  `allowed_ips` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `allowed_ua` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_trial` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `pair_id` int(11) DEFAULT NULL,
  `is_mag` tinyint(4) NOT NULL DEFAULT '0',
  `is_e2` tinyint(4) NOT NULL DEFAULT '0',
  `force_server_id` int(11) NOT NULL DEFAULT '0',
  `is_isplock` tinyint(4) NOT NULL DEFAULT '0',
  `as_number` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isp_desc` mediumtext COLLATE utf8_unicode_ci,
  `forced_country` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `is_stalker` tinyint(4) NOT NULL DEFAULT '0',
  `bypass_ua` tinyint(4) NOT NULL DEFAULT '0',
  `play_token` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `exp_date` (`exp_date`),
  KEY `is_restreamer` (`is_restreamer`),
  KEY `admin_enabled` (`admin_enabled`),
  KEY `enabled` (`enabled`),
  KEY `is_trial` (`is_trial`),
  KEY `created_at` (`created_at`),
  KEY `created_by` (`created_by`),
  KEY `pair_id` (`pair_id`),
  KEY `is_mag` (`is_mag`),
  KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `is_e2` (`is_e2`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `member_id`, `username`, `password`, `exp_date`, `admin_enabled`, `enabled`, `admin_notes`, `reseller_notes`, `bouquet`, `max_connections`, `is_restreamer`, `allowed_ips`, `allowed_ua`, `is_trial`, `created_at`, `created_by`, `pair_id`, `is_mag`, `is_e2`, `force_server_id`, `is_isplock`, `as_number`, `isp_desc`, `forced_country`, `is_stalker`, `bypass_ua`, `play_token`) VALUES (1,1,'747576','747576',NULL,1,1,'','','[]',1,0,'[]','[]',0,1667720421,1,NULL,0,0,0,0,NULL,'','',0,0,''),(2,1,'12345678','12345678',NULL,1,1,'','','[5]',100,0,'[]','[]',0,1667810951,1,NULL,0,0,0,0,NULL,'','',0,0,'');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watch_categories`
--

DROP TABLE IF EXISTS `watch_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watch_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL DEFAULT '0',
  `genre_id` int(8) NOT NULL DEFAULT '0',
  `genre` varchar(64) NOT NULL DEFAULT '',
  `category_id` int(8) NOT NULL DEFAULT '0',
  `bouquets` varchar(4096) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_categories`
--

LOCK TABLES `watch_categories` WRITE;
/*!40000 ALTER TABLE `watch_categories` DISABLE KEYS */;
INSERT INTO `watch_categories` (`id`, `type`, `genre_id`, `genre`, `category_id`, `bouquets`) VALUES (1,1,28,'Action',0,'[]'),(2,1,12,'Adventure',0,'[]'),(3,1,16,'Animation',0,'[]'),(4,1,35,'Comedy',0,'[]'),(5,1,80,'Crime',0,'[]'),(6,1,99,'Documentary',0,'[]'),(7,1,18,'Drama',0,'[]'),(8,1,10751,'Family',0,'[]'),(9,1,14,'Fantasy',0,'[]'),(10,1,36,'History',0,'[]'),(11,1,27,'Horror',0,'[]'),(12,1,10402,'Music',0,'[]'),(13,1,9648,'Mystery',0,'[]'),(14,1,10749,'Romance',0,'[]'),(15,1,878,'Science Fiction',0,'[]'),(16,1,10770,'TV Movie',0,'[]'),(17,1,53,'Thriller',0,'[]'),(18,1,10752,'War',0,'[]'),(19,1,37,'Western',0,'[]');
/*!40000 ALTER TABLE `watch_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watch_folders`
--

DROP TABLE IF EXISTS `watch_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watch_folders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL DEFAULT '',
  `directory` varchar(2048) NOT NULL DEFAULT '',
  `server_id` int(8) NOT NULL DEFAULT '0',
  `category_id` int(8) NOT NULL DEFAULT '0',
  `bouquets` varchar(4096) NOT NULL DEFAULT '[]',
  `last_run` int(32) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '1',
  `disable_tmdb` int(1) NOT NULL DEFAULT '0',
  `ignore_no_match` int(1) NOT NULL DEFAULT '0',
  `auto_subtitles` int(1) NOT NULL DEFAULT '0',
  `fb_bouquets` varchar(4096) NOT NULL DEFAULT '[]',
  `fb_category_id` int(8) NOT NULL DEFAULT '0',
  `allowed_extensions` varchar(4096) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_folders`
--

LOCK TABLES `watch_folders` WRITE;
/*!40000 ALTER TABLE `watch_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `watch_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watch_output`
--

DROP TABLE IF EXISTS `watch_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watch_output` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL DEFAULT '0',
  `server_id` int(8) NOT NULL DEFAULT '0',
  `filename` varchar(4096) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '0',
  `stream_id` int(8) NOT NULL DEFAULT '0',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_output`
--

LOCK TABLES `watch_output` WRITE;
/*!40000 ALTER TABLE `watch_output` DISABLE KEYS */;
/*!40000 ALTER TABLE `watch_output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watch_settings`
--

DROP TABLE IF EXISTS `watch_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watch_settings` (
  `read_native` int(1) NOT NULL DEFAULT '1',
  `movie_symlink` int(1) NOT NULL DEFAULT '1',
  `auto_encode` int(1) NOT NULL DEFAULT '0',
  `transcode_profile_id` int(8) NOT NULL DEFAULT '0',
  `scan_seconds` int(8) NOT NULL DEFAULT '3600',
  `percentage_match` int(3) NOT NULL DEFAULT '80',
  `ffprobe_input` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_settings`
--

LOCK TABLES `watch_settings` WRITE;
/*!40000 ALTER TABLE `watch_settings` DISABLE KEYS */;
INSERT INTO `watch_settings` (`read_native`, `movie_symlink`, `auto_encode`, `transcode_profile_id`, `scan_seconds`, `percentage_match`, `ffprobe_input`) VALUES (1,1,0,0,3600,80,0);
/*!40000 ALTER TABLE `watch_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xtream_main`
--

DROP TABLE IF EXISTS `xtream_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xtream_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_available` int(11) NOT NULL DEFAULT '0',
  `root_ip` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xtream_main`
--

LOCK TABLES `xtream_main` WRITE;
/*!40000 ALTER TABLE `xtream_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `xtream_main` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-14 10:07:18
