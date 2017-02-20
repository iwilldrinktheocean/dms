-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: dms_poc
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `_qt_appvariables`
--

DROP TABLE IF EXISTS `_qt_appvariables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_appvariables` (
  `ID` int(10) NOT NULL,
  `Action` varchar(255) DEFAULT NULL,
  `Value` varchar(255) DEFAULT NULL,
  `Choices` varchar(255) DEFAULT NULL,
  `UserGroup` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Notes` longtext,
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_appvariables`
--

LOCK TABLES `_qt_appvariables` WRITE;
/*!40000 ALTER TABLE `_qt_appvariables` DISABLE KEYS */;
INSERT INTO `_qt_appvariables` VALUES (14,'File Filter String','*_QT_*',NULL,NULL,NULL,NULL),(15,'Report Names Chart','0',NULL,NULL,NULL,NULL),(1,'UserMode','Single','Single,Multi',NULL,NULL,NULL),(2,'FormBackgroundColor','-2147483633',NULL,NULL,NULL,NULL),(4,'FormHeaderForegroundColor',NULL,NULL,NULL,NULL,NULL),(5,'SwitchboardTitle','WMG Digital Services Switchboard',NULL,NULL,NULL,NULL),(10,'QueryTool Tabluar Edit','-1','True, False',NULL,'DDavis043','0=False. -1=True'),(11,'_QT_Query Name','WGM Queries',NULL,NULL,NULL,NULL),(12,'Report Names Edit','-1','True, False',NULL,'dd9451','0=False. -1=True'),(13,'Report Names Delete','-1','True, False',NULL,'dd9451','0=False. -1=True'),(35,'Autoload Files','0','True, False',NULL,NULL,'0=False. -1=True'),(44,'User Attribute Edits','-1',NULL,NULL,NULL,NULL),(45,'Report Names Edit','-1',NULL,NULL,'rw1234',NULL),(46,'Linked table Manager','-1',NULL,NULL,NULL,NULL),(59,'FormDetailBackgroundColor','33023',NULL,NULL,NULL,NULL),(60,'FormHeaderBackgroundColor','16777215',NULL,NULL,NULL,NULL),(61,'TableDrpDwnQry','SELECT MSysObjects.Name FROM MSysObjects WHERE (((MSysObjects.Type)=1)) ORDER BY MSysObjects.Name;',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `_qt_appvariables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_colorchanger`
--

DROP TABLE IF EXISTS `_qt_colorchanger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_colorchanger` (
  `ID` int(10) NOT NULL,
  `Error String` varchar(255) DEFAULT NULL,
  `Attribute` varchar(255) DEFAULT NULL,
  `Form Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_colorchanger`
--

LOCK TABLES `_qt_colorchanger` WRITE;
/*!40000 ALTER TABLE `_qt_colorchanger` DISABLE KEYS */;
INSERT INTO `_qt_colorchanger` VALUES (623,'Application-defined or object-defined error','','_QT_Tbl Cleanup'),(624,'Application-defined or object-defined error','','Build Data_to_AppMapping Dataset');
/*!40000 ALTER TABLE `_qt_colorchanger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_findtemp`
--

DROP TABLE IF EXISTS `_qt_findtemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_findtemp` (
  `ObjctNm` varchar(255) DEFAULT NULL,
  `FindStr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_findtemp`
--

LOCK TABLES `_qt_findtemp` WRITE;
/*!40000 ALTER TABLE `_qt_findtemp` DISABLE KEYS */;
INSERT INTO `_qt_findtemp` VALUES ('Append App Table','server'),('AS-IS-Apps Without Matching BusCapabilities','server'),('Data_To_AppMappingVw','server'),('Distinct As-Is Sys List','server'),('MyQuery','server'),('NO-WCM-Used for No WCM Query','server'),('Number of Cap per App','server'),('Search-Sys-by-Capability','server'),('Total Number Of Apps per BusCap','server'),('Update AS-IS-Apps from ApplicationTable','server'),('Update-SysDataInventory','server'),('Usupported Capabilities','server');
/*!40000 ALTER TABLE `_qt_findtemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_frmfldlst`
--

DROP TABLE IF EXISTS `_qt_frmfldlst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_frmfldlst` (
  `id` int(10) DEFAULT NULL,
  `itemnumber` int(10) DEFAULT NULL,
  `Display` tinyint(1) NOT NULL,
  `ItemTextDsply` varchar(50) DEFAULT NULL,
  `Wbox` double DEFAULT NULL,
  `Hbox` double DEFAULT NULL,
  `Tbox` double DEFAULT NULL,
  `Lbox` double DEFAULT NULL,
  `Align` varchar(50) DEFAULT NULL,
  `Sort` varchar(50) DEFAULT NULL,
  `DsplyHdr` tinyint(1) NOT NULL,
  `DsplyFtr` tinyint(1) NOT NULL,
  `GrpOn` varchar(50) DEFAULT NULL,
  `GrpIntrvl` varchar(50) DEFAULT NULL,
  `KpTgthr` tinyint(1) NOT NULL,
  `ControltypeID` int(10) DEFAULT NULL,
  `Lookup` longtext,
  `type` varchar(150) DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  KEY `ControltypeID` (`ControltypeID`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_frmfldlst`
--

LOCK TABLES `_qt_frmfldlst` WRITE;
/*!40000 ALTER TABLE `_qt_frmfldlst` DISABLE KEYS */;
INSERT INTO `_qt_frmfldlst` VALUES (2,1,1,'[ID]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([ID]) from  [AS-IS-Apps] where [ID] is not null ','N','[ID]'),(2,2,1,'[appID]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([appID]) from  [AS-IS-Apps] where [appID] is not null ','N','[appID]'),(2,3,1,'[Application]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([Application]) from  [AS-IS-Apps] where [Application] is not null ','S','[Application]'),(2,4,1,'[Owner]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([Owner]) from  [AS-IS-Apps] where [Owner] is not null ','S','[Owner]'),(2,5,1,'[Major Business Field]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([Major Business Field]) from  [AS-IS-Apps] where [Major Business Field] is not null ','S','[Major Business Field]'),(2,6,1,'[Scope]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([Scope]) from  [AS-IS-Apps] where [Scope] is not null ','S','[Scope]'),(2,7,1,'[Owner - Region]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([Owner - Region]) from  [AS-IS-Apps] where [Owner - Region] is not null ','S','[Owner - Region]'),(2,8,1,'[Description Short]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([Description Short]) from  [AS-IS-Apps] where [Description Short] is not null ','S','[Description Short]'),(2,9,1,'[Line Owner]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([Line Owner]) from  [AS-IS-Apps] where [Line Owner] is not null ','S','[Line Owner]'),(2,10,1,'[Application Type]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([Application Type]) from  [AS-IS-Apps] where [Application Type] is not null ','S','[Application Type]'),(2,11,1,'[Host]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([Host]) from  [AS-IS-Apps] where [Host] is not null ','S','[Host]'),(2,12,1,'[Item Type]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([Item Type]) from  [AS-IS-Apps] where [Item Type] is not null ','S','[Item Type]'),(2,13,1,'[Path]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([Path]) from  [AS-IS-Apps] where [Path] is not null ','S','[Path]'),(2,14,1,'[CapabilityID]',1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,109,'select distinct ltrim$([CapabilityID]) from  [AS-IS-Apps] where [CapabilityID] is not null ','N','[CapabilityID]');
/*!40000 ALTER TABLE `_qt_frmfldlst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_imprt_tbl_hstry`
--

DROP TABLE IF EXISTS `_qt_imprt_tbl_hstry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_imprt_tbl_hstry` (
  `ID` int(10) NOT NULL,
  `ImprtDt` datetime DEFAULT NULL,
  `TblNm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_imprt_tbl_hstry`
--

LOCK TABLES `_qt_imprt_tbl_hstry` WRITE;
/*!40000 ALTER TABLE `_qt_imprt_tbl_hstry` DISABLE KEYS */;
/*!40000 ALTER TABLE `_qt_imprt_tbl_hstry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_imprtexprtfls`
--

DROP TABLE IF EXISTS `_qt_imprtexprtfls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_imprtexprtfls` (
  `ID` int(10) NOT NULL,
  `ImprtExprtNm` varchar(255) DEFAULT NULL,
  `ImprtExprtDscrptn` varchar(255) DEFAULT NULL,
  `ImprtExprtTyp` varchar(255) DEFAULT NULL,
  `ImprtExprtActn` varchar(255) DEFAULT NULL,
  `TrnsfrExprtTyp` varchar(255) DEFAULT NULL,
  `SPrdShttyp` varchar(255) DEFAULT NULL,
  `PthNm` longtext,
  `FlNm` varchar(255) DEFAULT NULL,
  `TblNm` varchar(255) DEFAULT NULL,
  `TabNm` varchar(255) DEFAULT NULL,
  `HsFldNm` varchar(255) DEFAULT NULL,
  `Rng` varchar(255) DEFAULT NULL,
  `PrPrcssr` varchar(255) DEFAULT NULL,
  `PstPrcssr` varchar(255) DEFAULT NULL,
  `PrPrcssrClmnHdr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_imprtexprtfls`
--

LOCK TABLES `_qt_imprtexprtfls` WRITE;
/*!40000 ALTER TABLE `_qt_imprtexprtfls` DISABLE KEYS */;
/*!40000 ALTER TABLE `_qt_imprtexprtfls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_imprtexprttyps`
--

DROP TABLE IF EXISTS `_qt_imprtexprttyps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_imprtexprttyps` (
  `IXTypID` int(10) NOT NULL,
  `Dscrptn` varchar(255) DEFAULT NULL,
  `Extnsn` varchar(255) DEFAULT NULL,
  `Btch` tinyint(1) NOT NULL,
  PRIMARY KEY (`IXTypID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_imprtexprttyps`
--

LOCK TABLES `_qt_imprtexprttyps` WRITE;
/*!40000 ALTER TABLE `_qt_imprtexprttyps` DISABLE KEYS */;
INSERT INTO `_qt_imprtexprttyps` VALUES (1,'Print',NULL,0),(2,'Word','.doc',1),(3,'Excel','.xlsx',1),(4,'Text','.txt',1),(5,'Html',NULL,0),(6,'Text Delimited','.csv',1),(7,'Access Table',NULL,0),(8,'XML','.xml',0);
/*!40000 ALTER TABLE `_qt_imprtexprttyps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_listoffiles`
--

DROP TABLE IF EXISTS `_qt_listoffiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_listoffiles` (
  `Name` varchar(255) DEFAULT NULL,
  `dateCreated` varchar(255) DEFAULT NULL,
  `DateLastModified` varchar(255) DEFAULT NULL,
  `Size` int(10) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_listoffiles`
--

LOCK TABLES `_qt_listoffiles` WRITE;
/*!40000 ALTER TABLE `_qt_listoffiles` DISABLE KEYS */;
INSERT INTO `_qt_listoffiles` VALUES ('.Select here for your Notes ID.lnk','12/5/2011 10:35:53 AM','12/5/2011 10:35:54 AM',1,'Shortcut'),('Accounting & Auditing -Expire this month.xlsx','5/5/2011 7:39:40 AM','5/5/2011 7:39:41 AM',14,'Microsoft Office Excel Worksheet'),('Accounting & Auditing run.xlsx','4/23/2011 5:22:33 PM','5/3/2011 7:42:29 AM',174,'Microsoft Office Excel Worksheet'),('Accounting & Auditing.xlsx','4/13/2011 5:12:47 AM','4/20/2011 7:16:38 AM',207,'Microsoft Office Excel Worksheet'),('Accounting & Auditing042011.xlsx','4/20/2011 7:05:15 AM','4/20/2011 7:16:39 AM',28,'Microsoft Office Excel Worksheet'),('adrci.exe','11/27/2010 5:26:02 PM','11/27/2010 5:26:02 PM',29,'Application'),('adrci.sym','11/27/2010 5:26:02 PM','11/27/2010 5:26:02 PM',13,'SYM File'),('AUTOEXEC.BAT','4/7/2010 4:34:50 PM','4/7/2010 4:34:50 PM',1,'MS-DOS Batch File'),('bar.emf','1/28/2011 9:43:45 AM','12/10/2011 9:34:43 PM',71,'IrfanView EMF File'),('BASIC_LITE_README','11/27/2010 5:27:02 PM','11/27/2010 5:27:02 PM',1,'File'),('boot.ini','4/8/2010 12:15:33 AM','7/16/2010 6:57:21 PM',1,'Configuration Settings'),('BrowseForDirectory.rtf','6/6/2011 8:58:23 AM','6/6/2011 8:58:23 AM',1,'Rich Text Format'),('CONFIG.SYS','4/7/2010 4:34:50 PM','4/7/2010 4:34:50 PM',NULL,'System file'),('DailyActivity.XLS','10/24/2010 9:58:52 PM','10/26/2010 10:55:40 AM',119,'Microsoft Office Excel 97-2003 Worksheet'),('DIR.TXT','9/20/2010 7:19:13 AM','9/20/2010 7:19:14 AM',8,'Text Document'),('ECPM.csv','6/29/2011 7:13:28 AM','6/29/2011 7:13:28 AM',42,'Microsoft Office Excel Comma Separated Values File'),('genezi.exe','11/27/2010 5:26:00 PM','11/27/2010 5:26:00 PM',65,'Application'),('genezi.sym','11/27/2010 5:26:00 PM','11/27/2010 5:26:00 PM',28,'SYM File'),('IO.SYS','4/7/2010 4:34:50 PM','4/7/2010 4:34:50 PM',NULL,'System file'),('IPC.LOG','4/9/2010 2:22:47 PM','1/3/2012 12:02:46 PM',866,'Text Document'),('MSDOS.SYS','4/7/2010 4:34:50 PM','4/7/2010 4:34:50 PM',NULL,'System file'),('NCSetup.log','1/3/2011 2:27:55 PM','1/3/2011 2:27:55 PM',1,'Text Document'),('newfile.XLS','10/24/2010 9:58:52 PM','10/26/2010 10:55:40 AM',13,'Microsoft Office Excel 97-2003 Worksheet'),('NTDETECT.COM','4/14/2008 7:00:00 AM','4/14/2008 7:00:00 AM',47,'MS-DOS Application'),('ntldr','4/14/2008 7:00:00 AM','4/14/2008 7:00:00 AM',NULL,'System file'),('NUSRCHK.TAG','9/22/2010 7:00:15 AM','9/22/2010 7:00:15 AM',1,'TAG File'),('oci.dll','11/27/2010 5:21:02 PM','11/27/2010 5:21:02 PM',993,'Application Extension'),('oci.sym','11/27/2010 5:21:02 PM','11/27/2010 5:21:02 PM',263,'SYM File'),('ocijdbc11.dll','11/19/2010 1:08:32 AM','11/19/2010 1:08:32 AM',101,'Application Extension'),('ocijdbc11.sym','11/19/2010 1:08:32 AM','11/19/2010 1:08:32 AM',23,'SYM File'),('ociw32.dll','11/27/2010 5:00:16 PM','11/27/2010 5:00:16 PM',341,'Application Extension'),('ociw32.sym','11/27/2010 5:00:16 PM','11/27/2010 5:00:16 PM',44,'SYM File'),('ojdbc5.jar','8/26/2010 9:49:08 PM','8/26/2010 9:49:08 PM',1983,'Executable Jar File'),('ojdbc6.jar','8/26/2010 9:49:10 PM','8/26/2010 9:49:10 PM',2102,'Executable Jar File'),('orannzsbb11.dll','11/19/2010 7:45:02 AM','11/19/2010 7:45:02 AM',1225,'Application Extension'),('orannzsbb11.sym','11/19/2010 7:45:02 AM','11/19/2010 7:45:02 AM',235,'SYM File'),('oraocci11.dll','11/27/2010 4:38:16 PM','11/27/2010 4:38:16 PM',709,'Application Extension'),('oraocci11.sym','11/27/2010 5:26:10 PM','11/27/2010 5:26:10 PM',565,'SYM File'),('oraociicus11.dll','11/27/2010 5:25:56 PM','11/27/2010 5:25:56 PM',34585,'Application Extension'),('oraociicus11.sym','11/27/2010 5:25:44 PM','11/27/2010 5:25:44 PM',4000,'SYM File'),('pagefile.sys','9/20/2010 8:46:01 AM','1/3/2012 11:59:48 AM',NULL,'System file'),('Printtemplate.htm','4/4/2011 7:52:34 AM','4/4/2011 7:52:34 AM',5,'Firefox Document'),('Readme.txt','7/22/2010 7:39:16 PM','7/22/2010 7:39:16 PM',2,'Text Document'),('short description.csv','7/7/2011 2:29:31 PM','7/7/2011 2:29:31 PM',6,'Microsoft Office Excel Comma Separated Values File'),('SigRules.txt','1/28/2011 12:25:17 PM','1/28/2011 12:25:17 PM',1,'Text Document'),('SureLog.txt','4/13/2011 9:43:39 AM','1/3/2012 12:03:38 PM',21,'Text Document'),('uidrvci.exe','11/27/2010 5:26:06 PM','11/27/2010 5:26:06 PM',29,'Application'),('uidrvci.sym','11/27/2010 5:26:04 PM','11/27/2010 5:26:04 PM',13,'SYM File'),('xstreams.jar','11/27/2010 5:17:54 PM','11/27/2010 5:17:54 PM',66,'Executable Jar File');
/*!40000 ALTER TABLE `_qt_listoffiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_macros`
--

DROP TABLE IF EXISTS `_qt_macros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_macros` (
  `ID` int(10) NOT NULL,
  `type` varchar(2) DEFAULT NULL,
  `QryID` varchar(50) DEFAULT NULL,
  `FieldNm` varchar(50) DEFAULT NULL,
  `macros` varchar(50) DEFAULT NULL,
  `formula1` longtext,
  `Formula2` longtext,
  PRIMARY KEY (`ID`),
  KEY `QryID` (`QryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_macros`
--

LOCK TABLES `_qt_macros` WRITE;
/*!40000 ALTER TABLE `_qt_macros` DISABLE KEYS */;
/*!40000 ALTER TABLE `_qt_macros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_objcttyp`
--

DROP TABLE IF EXISTS `_qt_objcttyp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_objcttyp` (
  `ControlTypeID` int(10) DEFAULT NULL,
  `ObjectTypeNm` varchar(50) DEFAULT NULL,
  `ControlName` varchar(50) DEFAULT NULL,
  KEY `ControlTypeID` (`ControlTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_objcttyp`
--

LOCK TABLES `_qt_objcttyp` WRITE;
/*!40000 ALTER TABLE `_qt_objcttyp` DISABLE KEYS */;
INSERT INTO `_qt_objcttyp` VALUES (100,'Label','acLabel'),(101,'Rectangle','acRectangle'),(102,'Line','acLine'),(103,'Image','acImage'),(104,'CommandButton','acCommandButton'),(105,'OptionButton','acOptionButton'),(106,'CheckBox','acCheckBox'),(107,'OptionGroup','acOptionGroup'),(108,'BoundObjectFrame','acBoundObjectFrame'),(109,'TextBox','acTextBox'),(110,'ListBox','acListBox'),(111,'ComboBox','acComboBox'),(112,'Subform','acSubform'),(114,'ObjectFrame','acObjectFrame'),(122,'ToggleButton','acToggleButton'),(124,'PageBreak','acPage');
/*!40000 ALTER TABLE `_qt_objcttyp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_qryitms`
--

DROP TABLE IF EXISTS `_qt_qryitms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_qryitms` (
  `id` int(10) NOT NULL,
  `itemnumber` int(10) NOT NULL,
  `itemtext` varchar(100) DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `type` varchar(150) DEFAULT NULL,
  `comparison` varchar(20) DEFAULT NULL,
  `lookup` longtext,
  `Entry1` varchar(50) DEFAULT NULL,
  `Entry2` varchar(50) DEFAULT NULL,
  `Display` tinyint(1) NOT NULL,
  `Total` tinyint(1) NOT NULL,
  `TotalFunc` varchar(50) DEFAULT NULL,
  `ItemTextDsply` varchar(50) DEFAULT NULL,
  `displaydefault` tinyint(1) NOT NULL,
  `SortOrd` int(10) DEFAULT NULL,
  `SortDir` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`itemnumber`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_qryitms`
--

LOCK TABLES `_qt_qryitms` WRITE;
/*!40000 ALTER TABLE `_qt_qryitms` DISABLE KEYS */;
INSERT INTO `_qt_qryitms` VALUES (2,1,'[ID]','[ID]','N','=','select distinct ltrim$([ID]) from  [AS-IS-Apps] where [ID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,2,'[appID]','[appID]','N','=','select distinct ltrim$([appID]) from  [AS-IS-Apps] where [appID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,3,'[Application]','[Application]','S','=','select distinct ltrim$([Application]) from  [AS-IS-Apps] where [Application] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,4,'[Owner]','[Owner]','S','=','select distinct ltrim$([Owner]) from  [AS-IS-Apps] where [Owner] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,5,'[Major Business Field]','[Major Business Field]','S','=','select distinct ltrim$([Major Business Field]) from  [AS-IS-Apps] where [Major Business Field] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,6,'[Scope]','[Scope]','S','=','select distinct ltrim$([Scope]) from  [AS-IS-Apps] where [Scope] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,7,'[Owner - Region]','[Owner - Region]','S','=','select distinct ltrim$([Owner - Region]) from  [AS-IS-Apps] where [Owner - Region] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,8,'[Description Short]','[Description Short]','S','=','select distinct ltrim$([Description Short]) from  [AS-IS-Apps] where [Description Short] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,9,'[Line Owner]','[Line Owner]','S','=','select distinct ltrim$([Line Owner]) from  [AS-IS-Apps] where [Line Owner] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,10,'[Application Type]','[Application Type]','S','=','select distinct ltrim$([Application Type]) from  [AS-IS-Apps] where [Application Type] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,11,'[Host]','[Host]','S','=','select distinct ltrim$([Host]) from  [AS-IS-Apps] where [Host] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,12,'[Item Type]','[Item Type]','S','=','select distinct ltrim$([Item Type]) from  [AS-IS-Apps] where [Item Type] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,13,'[Path]','[Path]','S','=','select distinct ltrim$([Path]) from  [AS-IS-Apps] where [Path] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(2,14,'[CapabilityID]','[CapabilityID]','N','=','select distinct ltrim$([CapabilityID]) from  [AS-IS-Apps] where [CapabilityID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(3,1,'[BusCapID]','[BusCapID]','S','=','select distinct ltrim$([ID]) from  [BusCapabilities] where [BusCapID] is not null',NULL,NULL,0,0,NULL,'',1,0,NULL),(3,2,'[BusDomainID]','[BusDomainID]','S','=','select distinct ltrim$([BusDomainID]) from  [BusCapabilities] where [BusDomainID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(3,3,'[Capabilities]','[Capabilities]','S','=','select distinct ltrim$([Capabilities]) from  [BusCapabilities] where [Capabilities] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(3,4,'[EcosysID]','[EcosysID]','N','=','select distinct ltrim$([EcosysID]) from  [BusCapabilities] where [EcosysID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(4,1,'[BusDomainID]','[BusDomainID]','N','=','select distinct ltrim$([BusDomainID]) from  [BusinessDomains] where [BusDomainID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(4,2,'[DomainDesc]','[DomainDesc]','S','=','select distinct ltrim$([DomainDesc]) from  [BusinessDomains] where [DomainDesc] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(5,1,'[dataMappingID]','[dataMappingID]','N','=','select distinct ltrim$([dataMappingID]) from  [Data_To_AppMapping] where [dataMappingID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(5,2,'[applicationID]','[applicationID]','N','=','select distinct ltrim$([applicationID]) from  [Data_To_AppMapping] where [applicationID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(5,3,'[dataEntityID]','[dataEntityID]','N','=','select distinct ltrim$([dataEntityID]) from  [Data_To_AppMapping] where [dataEntityID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(5,4,'[dataImportID]','[dataImportID]','N','=','select distinct ltrim$([dataImportID]) from  [Data_To_AppMapping] where [dataImportID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(5,5,'[dataTypeID]','[dataTypeID]','N','=','select distinct ltrim$([dataTypeID]) from  [Data_To_AppMapping] where [dataTypeID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(6,1,'[dataImportantanceID]','[dataImportantanceID]','N','=','select distinct ltrim$([dataImportantanceID]) from  [DataImportance] where [dataImportantanceID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(6,2,'[abbrevDesc]','[abbrevDesc]','S','=','select distinct ltrim$([abbrevDesc]) from  [DataImportance] where [abbrevDesc] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(6,3,'[dataImportDesc]','[dataImportDesc]','S','=','select distinct ltrim$([dataImportDesc]) from  [DataImportance] where [dataImportDesc] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(7,1,'[dataTypeID]','[dataTypeID]','N','=','select distinct ltrim$([dataTypeID]) from  [DataType] where [dataTypeID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(7,2,'[dataDesc]','[dataDesc]','S','=','select distinct ltrim$([dataDesc]) from  [DataType] where [dataDesc] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(8,1,'[ecosysID]','[ecosysID]','N','=','select distinct ltrim$([ecosysID]) from  [Ecosystem-Domains] where [ecosysID] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(8,2,'[ecoDesc]','[ecoDesc]','S','=','select distinct ltrim$([ecoDesc]) from  [Ecosystem-Domains] where [ecoDesc] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(9,1,'[dataMappingID]','dataMappingID','N','=','select distinct ltrim$(dataMappingID) from  [Data_To_AppMappingVw] where dataMappingID is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(9,2,'[applicationID]','applicationID','N','=','select distinct ltrim$(applicationID) from  [Data_To_AppMappingVw] where applicationID is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(9,3,'[appDesc]','appDesc','S','=','select distinct ltrim$(appDesc) from  [Data_To_AppMappingVw] where appDesc is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(9,4,'[dataEntityID]','dataEntityID','N','=','select distinct ltrim$(dataEntityID) from  [Data_To_AppMappingVw] where dataEntityID is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(9,5,'[Data Entity]','Data Entity','S','=','select distinct ltrim$([Data Entity]) from  [Data_To_AppMappingVw] where [Data Entity] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(9,6,'[dataImportID]','dataImportID','N','=','select distinct ltrim$(dataImportID) from  [Data_To_AppMappingVw] where dataImportID is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(9,7,'[dataImportDesc]','dataImportDesc','S','=','select distinct ltrim$(dataImportDesc) from  [Data_To_AppMappingVw] where dataImportDesc is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(9,8,'[dataTypeID]','dataTypeID','N','=','select distinct ltrim$(dataTypeID) from  [Data_To_AppMappingVw] where dataTypeID is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(9,9,'[dataDesc]','dataDesc','S','=','select distinct ltrim$(dataDesc) from  [Data_To_AppMappingVw] where dataDesc is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(10,1,'[Capabilities]','Capabilities','S','=','select distinct ltrim$(Capabilities) from  [Total Number Of Apps per BusCap] where Capabilities is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(10,2,'[CountOfApplication]','CountOfApplication','N','=','select distinct ltrim$(CountOfApplication) from  [Total Number Of Apps per BusCap] where CountOfApplication is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(11,1,'[Capabilities]','Capabilities','S','=','select distinct ltrim$(Capabilities) from  [Unsupported Capabilities] where Capabilities is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(11,2,'[CountOfApplication]','CountOfApplication','N','=','select distinct ltrim$(CountOfApplication) from  [Unsupported Capabilities] where CountOfApplication is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(11,3,'[DomainDesc]','DomainDesc','S','=','select distinct ltrim$(DomainDesc) from  [Unsupported Capabilities] where DomainDesc is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(11,4,'[Owner - Region]','Owner - Region','S','=','select distinct ltrim$([Owner - Region]) from  [Unsupported Capabilities] where [Owner - Region] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(12,1,'[Application]','Application','S','=','select distinct ltrim$(Application) from  [Application by Capabilities count] where Application is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(12,2,'[Major Business Field]','Major Business Field','S','=','select distinct ltrim$([Major Business Field]) from  [Application by Capabilities count] where [Major Business Field] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(12,3,'[Description Short]','Description Short','S','=','select distinct ltrim$([Description Short]) from  [Application by Capabilities count] where [Description Short] is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(12,4,'[Scope]','Scope','S','=','select distinct ltrim$(Scope) from  [Application by Capabilities count] where Scope is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(12,5,'[CountOfCapabilityID]','CountOfCapabilityID','N','=','select distinct ltrim$(CountOfCapabilityID) from  [Application by Capabilities count] where CountOfCapabilityID is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(13,1,'[IndustryID]','IndustryID','N','=','select distinct ltrim$(IndustryID) from  [IndustryToDomainsVw] where IndustryID is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(13,2,'[DomainID]','DomainID','N','=','select distinct ltrim$(DomainID) from  [IndustryToDomainsVw] where DomainID is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(13,3,'[Domain]','Domain','S','=','select distinct ltrim$(Domain) from  [IndustryToDomainsVw] where Domain is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(13,4,'[BusDomainID]','BusDomainID','N','=','select distinct ltrim$(BusDomainID) from  [IndustryToDomainsVw] where BusDomainID is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(14,1,'[dataMappingID]','dataMappingID','N','=','select distinct ltrim$(dataMappingID) from  [Vendor_To_AppMappingVw] where dataMappingID is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(14,2,'[DomainDesc]','DomainDesc','S','=','select distinct ltrim$(DomainDesc) from  [Vendor_To_AppMappingVw] where DomainDesc is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(14,3,'[Capabilities]','Capabilities','S','=','select distinct ltrim$(Capabilities) from  [Vendor_To_AppMappingVw] where Capabilities is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(14,4,'[VendorName]','VendorName','S','=','select distinct ltrim$(VendorName) from  [Vendor_To_AppMappingVw] where VendorName is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL),(14,5,'[appDesc]','appDesc','S','=','select distinct ltrim$(appDesc) from  [Vendor_To_AppMappingVw] where appDesc is not null ',NULL,NULL,0,0,NULL,'',1,0,NULL);
/*!40000 ALTER TABLE `_qt_qryitms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_qryitmstmp`
--

DROP TABLE IF EXISTS `_qt_qryitmstmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_qryitmstmp` (
  `id` int(10) DEFAULT NULL,
  `itemnumber` int(10) DEFAULT NULL,
  `itemtext` varchar(100) DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `type` varchar(150) DEFAULT NULL,
  `comparison` varchar(20) DEFAULT NULL,
  `comparedropdown` tinyint(1) NOT NULL,
  `lookup` longtext,
  `Entry1` varchar(255) DEFAULT NULL,
  `Entry2` varchar(255) DEFAULT NULL,
  `Display` tinyint(1) NOT NULL,
  `TotalFunc` varchar(255) DEFAULT NULL,
  `Total` tinyint(1) NOT NULL,
  `SortOrd` int(10) DEFAULT NULL,
  `SortDir` varchar(50) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_qryitmstmp`
--

LOCK TABLES `_qt_qryitmstmp` WRITE;
/*!40000 ALTER TABLE `_qt_qryitmstmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `_qt_qryitmstmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_qryjns`
--

DROP TABLE IF EXISTS `_qt_qryjns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_qryjns` (
  `id` int(10) NOT NULL,
  `joinorder` int(10) NOT NULL,
  `SqlClause` varchar(30) DEFAULT NULL,
  `SqlClauseStrBlob` longtext,
  PRIMARY KEY (`id`,`joinorder`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_qryjns`
--

LOCK TABLES `_qt_qryjns` WRITE;
/*!40000 ALTER TABLE `_qt_qryjns` DISABLE KEYS */;
INSERT INTO `_qt_qryjns` VALUES (2,0,' From','[AS-IS-Apps]'),(3,1,' From','[BusCapabilities]'),(4,2,' From','[BusinessDomains]'),(5,3,' From','[Data_To_AppMapping]'),(6,4,' From','[DataImportance]'),(7,5,' From','[DataType]'),(8,6,' From','[Ecosystem-Domains]'),(9,8,' From','[Data_To_AppMappingVw]'),(10,9,' From','[Total Number Of Apps per BusCap]'),(11,1,' From','[Unsupported Capabilities]'),(12,0,' From','[Application by Capabilities count]'),(13,1,' From','[IndustryToDomainsVw]'),(14,2,' From','[Vendor_To_AppMappingVw]');
/*!40000 ALTER TABLE `_qt_qryjns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_qrynms`
--

DROP TABLE IF EXISTS `_qt_qrynms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_qrynms` (
  `id` int(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `SubGroup` varchar(50) DEFAULT NULL,
  `QueryDefault` varchar(50) DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `DNS` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `display` tinyint(1) NOT NULL,
  `OutputFType` int(10) DEFAULT NULL,
  `OutputFileName` varchar(255) DEFAULT NULL,
  `distinctToggle` tinyint(1) NOT NULL,
  `FuncType` varchar(50) DEFAULT NULL,
  `BaseTemplate` tinyint(1) NOT NULL,
  `ChckTtls` tinyint(1) NOT NULL,
  `RecordSourceRprt` varchar(100) DEFAULT NULL,
  `SummaryForm` varchar(255) DEFAULT NULL,
  `DetailForm` varchar(255) DEFAULT NULL,
  `SendEmailFlag` tinyint(1) NOT NULL,
  `emailList` longtext,
  `DsplyOrdr` int(10) DEFAULT NULL,
  `BtchFlg` tinyint(1) NOT NULL,
  `NmDtTmStmpx` tinyint(1) NOT NULL,
  `NmDtTmStmpFrmt` varchar(255) DEFAULT NULL,
  `AddTb` tinyint(1) NOT NULL,
  `TbFlNm` varchar(255) DEFAULT NULL,
  `BtchFlNm` varchar(255) DEFAULT NULL,
  `BtchNmDtTmStmpx` tinyint(1) NOT NULL,
  `BtchNmDtTmStmpFrmt` varchar(255) DEFAULT NULL,
  `ChrtFrm` varchar(255) DEFAULT NULL,
  `PreProcessorMacro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_qrynms`
--

LOCK TABLES `_qt_qrynms` WRITE;
/*!40000 ALTER TABLE `_qt_qrynms` DISABLE KEYS */;
INSERT INTO `_qt_qrynms` VALUES (2,'AS-IS-Apps','Table','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL),(3,'BusCapabilities','Table','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL),(4,'BusinessDomains','Table','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL),(5,'Data_To_AppMapping','Table','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL),(6,'DataImportance','Table','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL),(7,'DataType','Table','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL),(8,'Ecosystem-Domains','Table','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL),(9,'Data_To_AppMappingVw','View','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL),(10,'Total Number Of Apps per BusCap','View','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL),(11,'Unsupported Capabilities','All','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL),(12,'Application by Capabilities count','All','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL),(13,'IndustryToDomainsVw','View','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL),(14,'Vendor_To_AppMappingVw','View','A','Local','Local','D',0,NULL,NULL,0,'Both',1,0,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `_qt_qrynms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_switchboard items`
--

DROP TABLE IF EXISTS `_qt_switchboard items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_switchboard items` (
  `SwitchboardId` int(10) DEFAULT NULL,
  `Itemnumber` int(10) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `ItemText` varchar(200) DEFAULT NULL,
  `Command` int(10) DEFAULT NULL,
  `Argument` varchar(200) DEFAULT NULL,
  `Owner` varchar(50) DEFAULT NULL,
  `LastUserName` varchar(50) DEFAULT NULL,
  `LastUsedDate` datetime DEFAULT NULL,
  `FilterStr` varchar(50) DEFAULT NULL,
  `ReportFlag` tinyint(1) NOT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `OpenArgsStr` longtext,
  KEY `SwitchboardId` (`SwitchboardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_switchboard items`
--

LOCK TABLES `_qt_switchboard items` WRITE;
/*!40000 ALTER TABLE `_qt_switchboard items` DISABLE KEYS */;
INSERT INTO `_qt_switchboard items` VALUES (1,1,1,'MENU: ISSUES',3,'MENU: ISSUES',NULL,NULL,NULL,NULL,0,NULL,NULL),(1,2,1,'Issue Maintenance',3,'Issue Maintenance',NULL,NULL,NULL,NULL,0,NULL,NULL),(1,5,1,'Report Screen',1,'2',NULL,NULL,NULL,NULL,0,NULL,NULL),(2,0,0,'Reporting',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(2,20,1,'1',1,'1',NULL,NULL,NULL,NULL,0,NULL,NULL),(2,1,1,'UNDP Issue Summary - Status',4,'UNDP Issue Summary - Status',NULL,NULL,NULL,NULL,0,NULL,NULL),(2,2,1,'UNDP Issue Summary - Status2',4,'UNDP Issue Summary - Status2',NULL,NULL,NULL,NULL,0,NULL,NULL),(2,12,1,'Other Reports',3,'Other Reports',NULL,NULL,NULL,NULL,0,NULL,NULL),(2,13,1,'Choose Report',3,'Choose Report',NULL,NULL,NULL,NULL,0,NULL,NULL),(1,0,0,'Main',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(1,20,1,'Exit',6,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(1,19,1,'Admin Screen',1,'10',NULL,NULL,NULL,NULL,0,NULL,NULL),(10,0,0,'Admin',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(10,20,1,'Go to Main',1,'1',NULL,NULL,NULL,NULL,0,NULL,NULL),(10,1,1,'Switchboard Item update',3,'Switchboard Items Update',NULL,'','2010-12-16 09:51:49',NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `_qt_switchboard items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_switchboardcommands`
--

DROP TABLE IF EXISTS `_qt_switchboardcommands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_switchboardcommands` (
  `SwitchBoardID` int(10) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  KEY `SwitchBoardID` (`SwitchBoardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_switchboardcommands`
--

LOCK TABLES `_qt_switchboardcommands` WRITE;
/*!40000 ALTER TABLE `_qt_switchboardcommands` DISABLE KEYS */;
INSERT INTO `_qt_switchboardcommands` VALUES (1,'Goto Switchboard'),(2,'OpenFormAdd'),(3,'OpenFormBrowse'),(4,'OpenReport'),(5,'CustomizeSwitchboard'),(6,'ExitApplication'),(7,'RunMacro'),(8,'RunCode'),(9,'RunQuery'),(0,'Switchboard');
/*!40000 ALTER TABLE `_qt_switchboardcommands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_switchboardlog`
--

DROP TABLE IF EXISTS `_qt_switchboardlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_switchboardlog` (
  `name` varchar(20) NOT NULL,
  `LogDatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_switchboardlog`
--

LOCK TABLES `_qt_switchboardlog` WRITE;
/*!40000 ALTER TABLE `_qt_switchboardlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `_qt_switchboardlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_tblrowcounts`
--

DROP TABLE IF EXISTS `_qt_tblrowcounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_tblrowcounts` (
  `tblName` varchar(255) DEFAULT NULL,
  `Cnt` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_tblrowcounts`
--

LOCK TABLES `_qt_tblrowcounts` WRITE;
/*!40000 ALTER TABLE `_qt_tblrowcounts` DISABLE KEYS */;
INSERT INTO `_qt_tblrowcounts` VALUES ('_QT_AppVariables',17),('_QT_ColorChanger',2),('_QT_findtemp',12),('_QT_FrmFldLst',14),('_QT_Imprt_tbl_Hstry',0),('_QT_ImprtExprtFls',0),('_QT_ImprtExprtTyps',8),('_QT_ListOfFiles',49),('_QT_macros',22),('_QT_ObjctTyp',16),('_QT_QryItms',61),('_QT_QryItmsTmp',5),('_QT_QryJns',13),('_QT_QryNms',13),('_QT_Switchboard items',15),('_QT_SwitchboardCommands',10),('_QT_SwitchboardLog',0),('_QT_TblRowCounts',17),('_QT_TblTemplate',6),('_QT_TmpSum',3),('~TMPCLP54971',653),('AccentureTEMP',118),('ApplicationTable',393),('AS-IS-Apps',1160),('AS-IS-Apps-Pre-Chad',680),('BusCapabilities',121),('BusinessDomains',13),('CognizantTEMP',118),('Data Categories',35),('Data_To_AppMapping',1832),('Data_To_CapabilitiesMapping',653),('DataImportance',3),('DataType',2),('Domains',23),('Ecosystem-Domains',6),('HCLTEMP',118),('Industry',1),('IndustryToDomain',15),('SubtitleAttributes',6),('Switchboard items',23),('Switchboard items1',10),('SwitchboardCommands',10),('SwitchboardLog',0),('System Data Entity Categories',36),('System Inventory',111),('System Inventory and Data Usage',366),('Vendor_To_AppMapping',191),('VendorTable',3),('VendorTemp',118);
/*!40000 ALTER TABLE `_qt_tblrowcounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_tbltemplate`
--

DROP TABLE IF EXISTS `_qt_tbltemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_tbltemplate` (
  `RowNum` int(10) DEFAULT NULL,
  `Field1` varchar(255) DEFAULT NULL,
  `Field2` varchar(255) DEFAULT NULL,
  `Field3` varchar(255) DEFAULT NULL,
  `Field4` varchar(255) DEFAULT NULL,
  `Field5` varchar(255) DEFAULT NULL,
  `Field6` varchar(255) DEFAULT NULL,
  `Field7` varchar(255) DEFAULT NULL,
  `Field8` varchar(255) DEFAULT NULL,
  `Field9` varchar(255) DEFAULT NULL,
  `Field10` varchar(255) DEFAULT NULL,
  `Field11` varchar(255) DEFAULT NULL,
  `Field12` varchar(255) DEFAULT NULL,
  `Field13` varchar(255) DEFAULT NULL,
  `Field14` varchar(255) DEFAULT NULL,
  `Field15` varchar(255) DEFAULT NULL,
  `Field16` varchar(255) DEFAULT NULL,
  `Field17` varchar(255) DEFAULT NULL,
  `Field18` varchar(255) DEFAULT NULL,
  `Field19` varchar(255) DEFAULT NULL,
  `Field20` varchar(255) DEFAULT NULL,
  `Field21` varchar(255) DEFAULT NULL,
  `Field22` varchar(255) DEFAULT NULL,
  `Field23` varchar(255) DEFAULT NULL,
  `Field24` varchar(255) DEFAULT NULL,
  `Field25` varchar(255) DEFAULT NULL,
  `Field26` varchar(255) DEFAULT NULL,
  `Field27` varchar(255) DEFAULT NULL,
  `Field28` varchar(255) DEFAULT NULL,
  `Field29` varchar(255) DEFAULT NULL,
  `Field30` varchar(255) DEFAULT NULL,
  KEY `RowNum` (`RowNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_tbltemplate`
--

LOCK TABLES `_qt_tbltemplate` WRITE;
/*!40000 ALTER TABLE `_qt_tbltemplate` DISABLE KEYS */;
INSERT INTO `_qt_tbltemplate` VALUES (1,'Ownership','Owning Domain','Cross Tagged Domain','KO Number','Title','Created Date','Domain Review Date','Published/Republished Date','Document Type','Rating','Submission Method','Submitters','Authors','Expiration','Use_Restriction','Taxonomy','Doc_Unique_ID','','','','','','','','','','','','',NULL),(2,'Owner','Accounting & Auditing','Accounting & Auditing','ACCOUN00099','\"Is The Step Ready for Review?\" - Checklist for Completing Audit Workpapers','4/10/2007','6/3/2010','4/25/2007','Methodology','(U) Useful','Gateway','Cynthia A Lewis','Anuradha A Sheth/US/ABAS/PwC ; San Francisco CIPSE group','6/3/2011','Internal use only -- U.S. and PwC Member Firm use only','Technical> Accounting & Auditing> Auditing> ab..Working Practices> 2500 - Audit Execution and Review','8525721A005790F5852572B9005F1023','','','','','','','','','','','','',NULL),(3,'Owner','Accounting & Auditing','Accounting & Auditing','03000001677','2010 ATP Training Rules','3/9/2010','3/16/2010','3/9/2010','Training & Education','(U) Useful','Email','Dennis W. Updegrove/US/ABAS/PwC','ATP Implementation Team','3/9/2011','Internal use only -- U.S. and PwC Member Firm use only','Technical> Accounting & Auditing> Auditing','7369426C8126BE17852576E1004684C0','','','','','','','','','','','','',NULL),(4,'Owner','Accounting & Auditing','Accounting & Auditing','03000001768','2010 Aura Libraries Guidance','4/15/2010','4/16/2010','4/15/2010','Methodology','(U) Useful','Email','Dennis W. Updegrove/US/ABAS/PwC','ATP Implementation Team','4/15/2011','Internal use only -- U.S. and PwC Member Firm use only','Technical> Accounting & Auditing> Auditing> ao..General> General','8F162ED2E682E8BF8525770600709006','','','','','','','','','','','','',NULL),(5,'Owner','Accounting & Auditing','Accounting & Auditing','03000001648','2010 Aura Rollout Expectations','2/2/2010','3/15/2010','2/2/2010','Methodology','(U) Useful','Email','Dennis W. Updegrove/US/ABAS/PwC','ATP Implementation Team','3/15/2011','Internal use only -- U.S. and PwC Member Firm use only','Technical> Accounting & Auditing> Auditing> ao..General> General','9140821991FECA73852576BE007559B6','','','','','','','','','','','','',NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `_qt_tbltemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_qt_tmpsum`
--

DROP TABLE IF EXISTS `_qt_tmpsum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_qt_tmpsum` (
  `id` int(10) DEFAULT NULL,
  `itemnumber` int(10) DEFAULT NULL,
  `Totals Type` varchar(255) DEFAULT NULL,
  `itemtext` varchar(100) DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `type` varchar(150) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_qt_tmpsum`
--

LOCK TABLES `_qt_tmpsum` WRITE;
/*!40000 ALTER TABLE `_qt_tmpsum` DISABLE KEYS */;
INSERT INTO `_qt_tmpsum` VALUES (2,1,'Sum','[ID]','[ID]','N'),(2,2,'Sum','[appID]','[appID]','N'),(2,14,'Sum','[CapabilityID]','[CapabilityID]','N');
/*!40000 ALTER TABLE `_qt_tmpsum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app-to-interface`
--

DROP TABLE IF EXISTS `app-to-interface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app-to-interface` (
  `appToInterfaceID` int(10) NOT NULL,
  `appID` int(10) DEFAULT NULL,
  `interfaceID` int(10) DEFAULT NULL,
  `appToInterfaceDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appToInterfaceID`),
  KEY `interfaceID` (`interfaceID`),
  KEY `appID` (`appID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app-to-interface`
--

LOCK TABLES `app-to-interface` WRITE;
/*!40000 ALTER TABLE `app-to-interface` DISABLE KEYS */;
/*!40000 ALTER TABLE `app-to-interface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application table`
--

DROP TABLE IF EXISTS `application table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application table` (
  `appID` int(10) NOT NULL,
  `ApplicationNum` double DEFAULT NULL,
  `Application Type` varchar(255) DEFAULT NULL,
  `Application Acronym` varchar(255) DEFAULT NULL,
  `Application Name` varchar(255) DEFAULT NULL,
  `Brief Description` longtext,
  `Extended Description` varchar(255) DEFAULT NULL,
  `Application Status` varchar(255) DEFAULT NULL,
  `Status Change Date` varchar(255) DEFAULT NULL,
  `Retirement Date` varchar(255) DEFAULT NULL,
  `Strategic Initiative` varchar(255) DEFAULT NULL,
  `Last Modifed Date` varchar(255) DEFAULT NULL,
  `Customer Facing Indicator` varchar(255) DEFAULT NULL,
  `Installation Date` varchar(255) DEFAULT NULL,
  `Planned Disposition` varchar(255) DEFAULT NULL,
  `Replacing Application Acronym` varchar(255) DEFAULT NULL,
  `Recommendation` varchar(255) DEFAULT NULL,
  `Home Page URL` varchar(255) DEFAULT NULL,
  `Business Value/Benefits` varchar(255) DEFAULT NULL,
  `Parent Application Acronym` varchar(255) DEFAULT NULL,
  `Application Availability` varchar(255) DEFAULT NULL,
  `Source Company` varchar(255) DEFAULT NULL,
  `SubAppl Acron Nm` varchar(255) DEFAULT NULL,
  `EA Domain` varchar(255) DEFAULT NULL,
  `Sub-Domain` varchar(255) DEFAULT NULL,
  `Platform` varchar(255) DEFAULT NULL,
  `Product/Service Name` varchar(255) DEFAULT NULL,
  `DBoR Name` varchar(255) DEFAULT NULL,
  UNIQUE KEY `ID` (`appID`),
  KEY `Application ID` (`ApplicationNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application table`
--

LOCK TABLES `application table` WRITE;
/*!40000 ALTER TABLE `application table` DISABLE KEYS */;
INSERT INTO `application table` VALUES (37,37,NULL,NULL,'Test Application',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,82,NULL,NULL,'App 82',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,90,NULL,NULL,'Test 90',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,114,NULL,NULL,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,142,NULL,NULL,'App 142',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,153,NULL,NULL,'App 153',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(187,187,NULL,NULL,'Tablet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(208,208,NULL,NULL,'Router',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(218,218,NULL,NULL,'Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(274,274,NULL,NULL,'App 274',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(282,282,NULL,NULL,'Application 282',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(310,310,NULL,NULL,'App310',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(311,311,NULL,NULL,'App 311',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(326,326,NULL,NULL,'App 326',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(327,327,NULL,NULL,'App 327',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(329,329,NULL,NULL,'App 329',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(333,333,NULL,NULL,'Test 333',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(352,352,NULL,NULL,'App 352',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(357,357,NULL,NULL,'App 357',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(365,365,NULL,NULL,'App 365',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(366,366,NULL,NULL,'Test 366',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(371,371,NULL,NULL,'App 371',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(376,376,NULL,NULL,'Application 376',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(379,379,NULL,NULL,'App 379',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `application table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps to capabilities`
--

DROP TABLE IF EXISTS `apps to capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apps to capabilities` (
  `ID` int(10) NOT NULL,
  `appID` int(10) DEFAULT NULL,
  `BusCapID` int(10) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`),
  KEY `CapabilityID` (`BusCapID`),
  KEY `appID` (`appID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps to capabilities`
--

LOCK TABLES `apps to capabilities` WRITE;
/*!40000 ALTER TABLE `apps to capabilities` DISABLE KEYS */;
INSERT INTO `apps to capabilities` VALUES (1,23,108),(2,24,111),(3,24,104),(4,24,101),(5,25,54),(6,25,55),(7,25,56),(8,25,61),(9,25,64),(10,26,54),(11,1,56),(12,1,86),(13,2,12),(14,3,12),(15,3,17),(16,3,35),(17,3,79),(18,4,47),(19,5,118),(20,5,4),(21,5,68),(22,5,6),(23,6,NULL),(24,7,58),(25,8,64),(26,8,56),(27,8,57),(28,9,68),(29,9,74),(30,9,75),(31,10,50),(32,10,40),(33,10,41),(34,11,53),(35,12,37),(36,12,53),(37,13,67),(38,13,68),(39,13,74),(40,13,75),(41,13,76),(42,13,118),(43,14,51),(44,14,52),(45,15,31),(46,15,76),(47,15,77),(48,15,79),(49,16,58),(50,17,45),(51,17,42),(52,18,59),(53,18,60),(54,19,41),(55,19,43),(56,19,44),(57,19,46),(58,20,NULL),(59,21,28),(60,21,27),(61,21,40),(62,21,50),(63,21,25),(64,22,40),(65,22,50),(66,23,97),(67,23,101),(68,26,58),(69,27,65),(70,28,58),(71,28,59),(72,29,65),(73,30,108),(74,31,19),(75,31,17),(76,31,16),(77,32,16),(78,32,19),(79,32,18),(80,32,17),(81,32,15),(82,33,12),(83,33,42),(84,34,68),(85,34,65),(86,35,41),(87,35,43),(88,35,44),(89,35,46),(90,35,53),(91,36,37),(92,36,53),(93,37,NULL),(94,38,59),(95,38,60),(96,39,49),(97,39,55),(98,39,56),(99,39,58),(100,40,40),(101,40,40),(102,40,40),(103,41,50),(104,41,64),(105,42,32),(106,42,105),(107,43,50),(108,43,62),(109,43,63),(110,43,64),(111,43,65),(112,43,68),(113,43,72),(114,44,47),(115,44,50),(116,44,62),(117,44,63),(118,44,64),(119,44,65),(120,44,68),(121,44,70),(122,44,72),(123,45,47),(124,45,50),(125,45,62),(126,45,63),(127,45,64),(128,45,65),(129,45,68),(130,45,72),(131,46,61),(132,47,50),(133,48,61),(134,48,40),(135,49,15),(136,49,25),(137,49,68),(138,50,93),(139,51,15),(140,51,72),(141,52,44),(142,52,43),(143,52,41),(144,52,28),(145,52,40),(146,53,97),(147,53,98),(148,54,56),(149,55,42),(150,56,46),(151,56,37),(152,57,NULL),(153,58,31),(154,59,31),(155,59,37),(156,60,47),(157,60,50),(158,60,61),(159,60,62),(160,60,64),(161,60,65),(162,61,86),(163,61,87),(164,61,81),(165,62,49),(166,63,56),(167,63,84),(168,64,40),(169,64,41),(170,64,43),(171,64,44),(172,65,94),(173,66,NULL),(174,67,53),(175,67,36),(176,67,32),(177,68,NULL),(178,69,68),(179,69,70),(180,70,52),(181,71,51),(182,71,52),(183,72,65),(184,72,75),(185,73,68),(186,73,15),(187,74,68),(188,74,65),(189,75,65),(190,75,74),(191,75,68),(192,76,16),(193,76,42),(194,77,75),(195,78,61),(196,78,40),(197,79,15),(198,79,16),(199,79,42),(200,80,18),(201,80,42),(202,81,108),(203,82,14),(204,82,15),(205,82,16),(206,82,17),(207,82,18),(208,82,19),(209,82,20),(210,82,22),(211,82,23),(212,82,30),(213,82,31),(214,82,35),(215,82,71),(216,82,76),(217,82,77),(218,82,118),(219,82,79),(220,83,75),(221,83,53),(222,83,65),(223,84,NULL),(224,85,49),(225,85,53),(226,85,40),(227,85,50),(228,85,46),(229,85,52),(230,85,45),(231,86,40),(232,86,50),(233,87,40),(234,88,53),(235,88,65),(236,89,NULL),(237,90,43),(238,90,44),(239,90,16),(240,90,15),(241,90,17),(242,90,18),(243,90,22),(244,90,23),(245,90,42),(246,91,18),(247,91,19),(248,91,50),(249,91,42),(250,92,23),(251,92,24),(252,92,30),(253,92,42),(254,93,42),(255,94,42),(256,95,40),(257,96,40),(258,96,50),(259,97,42),(260,97,48),(261,97,40),(262,97,50),(263,98,48),(264,98,42),(265,99,42),(266,99,48),(267,100,NULL),(268,101,40),(269,101,50),(270,101,42),(271,101,48),(272,102,42),(273,102,50),(274,102,19),(275,102,18),(276,103,34),(277,103,12),(278,104,82),(279,105,72),(280,106,23),(281,106,24),(282,106,42),(283,107,42),(284,108,NULL),(285,109,NULL),(286,111,55),(287,111,56),(288,112,NULL),(289,113,59),(290,113,60),(291,114,45),(292,114,33),(293,114,23),(294,114,30),(295,114,32),(296,114,42),(297,114,36),(298,114,50),(299,114,49),(300,114,48),(301,114,24),(302,114,105),(303,114,51),(304,114,41),(305,115,82),(306,116,NULL),(307,117,49),(308,117,46),(309,117,43),(310,117,44),(311,118,48),(312,119,40),(313,119,50),(314,120,81),(315,120,87),(316,121,3),(317,121,5),(318,121,6),(319,121,99),(320,121,90),(321,121,91),(322,121,93),(323,121,96),(324,121,97),(325,122,65),(326,122,68),(327,123,50),(328,123,43),(329,124,57),(330,125,57),(331,125,50),(332,125,48),(333,125,42),(334,125,58),(335,126,54),(336,126,58),(337,126,59),(338,127,NULL),(339,128,37),(340,129,47),(341,129,50),(342,129,72),(343,129,75),(344,130,53),(345,131,40),(346,131,50),(347,132,57),(348,132,61),(349,133,61),(350,133,62),(351,134,87),(352,135,NULL),(353,136,NULL),(354,137,57),(355,137,61),(356,138,49),(357,138,58),(358,139,57),(359,139,61),(360,139,62),(361,140,31),(362,140,76),(363,140,77),(364,140,79),(365,141,NULL),(366,142,78),(367,142,77),(368,142,71),(369,142,63),(370,142,12),(371,142,15),(372,142,19),(373,142,18),(374,142,23),(375,142,43),(376,142,42),(377,142,45),(378,142,44),(379,143,42),(380,143,43),(381,143,44),(382,143,28),(383,144,84),(384,145,NULL),(385,146,46),(386,146,53),(387,146,37),(388,147,60),(389,147,59),(390,147,57),(391,147,62),(392,147,61),(393,147,63),(394,147,64),(395,148,40),(396,148,50),(397,148,46),(398,148,44),(399,149,40),(400,149,43),(401,149,42),(402,149,28),(403,149,44),(404,150,40),(405,150,42),(406,150,46),(407,150,48),(408,150,63),(409,150,37),(410,151,40),(411,151,41),(412,151,46),(413,151,50),(414,152,NULL),(415,153,19),(416,153,43),(417,153,68),(418,153,70),(419,153,71),(420,153,72),(421,153,74),(422,153,75),(423,153,76),(424,153,77),(425,154,101),(426,155,59),(427,155,60),(428,155,61),(429,155,64),(430,156,34),(431,156,8),(432,156,30),(433,156,12),(434,157,53),(435,158,NULL),(436,159,31),(437,159,35),(438,160,44),(439,160,40),(440,160,43),(441,160,28),(442,161,40),(443,161,50),(444,162,40),(445,162,50),(446,163,40),(447,163,50),(448,164,NULL),(449,165,NULL),(450,166,36),(451,167,85),(452,168,50),(453,168,40),(454,168,34),(455,169,85),(456,170,85),(457,171,53),(458,171,69),(459,171,70),(460,171,72),(461,172,107),(462,173,27),(463,173,28),(464,173,25),(465,173,40),(466,174,62),(467,174,101),(468,174,104),(469,174,107),(470,174,108),(471,175,41),(472,175,42),(473,175,48),(474,176,NULL),(475,177,75),(476,177,65),(477,178,50),(478,178,40),(479,179,30),(480,179,32),(481,179,45),(482,179,36),(483,179,33),(484,180,68),(485,180,74),(486,180,75),(487,181,75),(488,181,76),(489,182,43),(490,182,44),(491,182,50),(492,183,15),(493,184,NULL),(494,185,17),(495,186,NULL),(496,187,9),(497,187,12),(498,187,17),(499,187,19),(500,187,68),(501,187,69),(502,187,70),(503,187,71),(504,187,72),(505,187,74),(506,187,75),(507,187,76),(508,187,77),(509,188,27),(510,188,30),(511,188,34),(512,189,44),(513,189,40),(514,189,43),(515,190,43),(516,190,44),(517,191,34),(518,191,40),(519,191,50),(520,192,53),(521,192,75),(522,193,99),(523,193,90),(524,194,10),(525,194,34),(526,194,30),(527,195,NULL),(528,196,NULL),(529,197,9),(530,197,30),(531,197,31),(532,197,35),(533,198,NULL),(534,199,NULL),(535,200,17),(536,201,87),(537,202,31),(538,203,61),(539,203,65),(540,204,50),(541,205,56),(542,205,55),(543,206,101),(544,207,14),(545,207,15),(546,207,16),(547,207,17),(548,207,18),(549,207,19),(550,208,54),(551,208,55),(552,208,56),(553,208,57),(554,208,58),(555,208,59),(556,208,60),(557,208,61),(558,208,62),(559,208,63),(560,208,64),(561,208,65),(562,209,12),(563,209,15),(564,209,17),(565,209,19),(566,210,43),(567,210,28),(568,210,40),(569,211,42),(570,211,43),(571,211,28),(572,211,44),(573,212,22),(574,212,40),(575,212,15),(576,212,14),(577,213,53),(578,213,50),(579,213,46),(580,213,44),(581,213,43),(582,214,40),(583,214,41),(584,214,46),(585,214,49),(586,214,50),(587,215,NULL),(588,216,28),(589,216,44),(590,216,43),(591,216,40),(592,216,42),(593,217,40),(594,217,41),(595,217,43),(596,217,44),(597,217,46),(598,217,50),(599,218,14),(600,218,15),(601,218,16),(602,218,17),(603,218,18),(604,218,19),(605,218,76),(606,218,118),(607,218,79),(608,219,61),(609,219,50),(610,220,98),(611,221,68),(612,221,65),(613,222,34),(614,222,40),(615,222,50),(616,223,41),(617,223,43),(618,223,44),(619,223,46),(620,224,41),(621,224,46),(622,224,58),(623,225,104),(624,225,108),(625,226,40),(626,226,41),(627,226,46),(628,226,49),(629,226,50),(630,226,54),(631,226,55),(632,226,56),(633,227,NULL),(634,228,NULL),(635,229,49),(636,229,54),(637,229,58),(638,230,NULL),(639,231,NULL),(640,232,NULL),(641,233,43),(642,233,37),(643,233,44),(644,233,46),(645,234,87),(646,235,NULL),(647,237,10),(648,237,30),(649,237,12),(650,238,41),(651,238,46),(652,239,41),(653,239,46),(654,240,63),(655,241,63),(656,242,63),(657,243,63),(658,244,41),(659,244,45),(660,244,46),(661,245,15),(662,245,25),(663,245,32),(664,246,31),(665,246,37),(666,246,41),(667,247,55),(668,247,56),(669,248,44),(670,248,43),(671,248,46),(672,249,15),(673,249,23),(674,250,83),(675,250,85),(676,251,15),(677,251,25),(678,251,90),(679,252,40),(680,252,50),(681,253,63),(682,253,25),(683,253,15),(684,253,57),(685,254,31),(686,254,46),(687,254,41),(688,255,31),(689,255,63),(690,256,NULL),(691,257,61),(692,257,64),(693,257,63),(694,258,55),(695,258,56),(696,259,43),(697,259,44),(698,259,49),(699,259,46),(700,259,53),(701,259,50),(702,260,61),(703,260,64),(704,261,55),(705,261,56),(706,261,57),(707,262,68),(708,262,65),(709,263,61),(710,263,64),(711,264,44),(712,264,43),(713,264,46),(714,265,22),(715,265,23),(716,265,25),(717,266,65),(718,267,60),(719,267,59),(720,268,NULL),(721,269,40),(722,269,50),(723,270,40),(724,270,41),(725,270,43),(726,270,46),(727,270,44),(728,270,50),(729,271,37),(730,271,31),(731,272,NULL),(732,273,98),(733,273,101),(734,274,56),(735,274,65),(736,274,64),(737,274,63),(738,274,62),(739,274,57),(740,274,59),(741,274,55),(742,275,57),(743,276,48),(744,276,59),(745,277,56),(746,277,55),(747,278,93),(748,279,43),(749,279,50),(750,279,41),(751,279,40),(752,280,22),(753,280,21),(754,280,14),(755,281,NULL),(756,282,2),(757,282,6),(758,282,9),(759,282,12),(760,282,14),(761,282,15),(762,282,16),(763,282,17),(764,282,18),(765,282,19),(766,282,20),(767,282,22),(768,282,23),(769,282,29),(770,282,30),(771,282,31),(772,282,34),(773,282,35),(774,282,42),(775,282,47),(776,282,49),(777,282,50),(778,282,54),(779,282,58),(780,282,62),(781,282,67),(782,282,68),(783,282,70),(784,282,71),(785,282,72),(786,282,74),(787,282,75),(788,282,76),(789,282,77),(790,282,78),(791,282,118),(792,282,79),(793,282,68),(794,282,69),(795,282,74),(796,282,75),(797,282,76),(798,282,77),(799,282,79),(800,283,41),(801,284,30),(802,284,32),(803,284,45),(804,284,33),(805,285,57),(806,285,63),(807,285,64),(808,286,28),(809,286,41),(810,286,40),(811,287,68),(812,287,65),(813,288,41),(814,289,50),(815,289,44),(816,289,43),(817,289,41),(818,289,40),(819,289,51),(820,290,NULL),(821,291,40),(822,291,41),(823,291,43),(824,291,44),(825,291,46),(826,292,55),(827,292,56),(828,293,56),(829,293,55),(830,294,31),(831,295,40),(832,295,50),(833,296,50),(834,297,50),(835,298,NULL),(836,299,NULL),(837,300,40),(838,300,50),(839,301,41),(840,301,43),(841,301,44),(842,301,46),(843,302,50),(844,302,49),(845,302,46),(846,302,43),(847,302,44),(848,303,58),(849,304,43),(850,304,49),(851,304,50),(852,304,52),(853,304,53),(854,304,45),(855,304,44),(856,304,40),(857,304,46),(858,305,81),(859,306,82),(860,307,46),(861,307,90),(862,308,41),(863,308,43),(864,308,44),(865,308,46),(866,309,34),(867,309,30),(868,309,8),(869,309,12),(870,310,7),(871,310,8),(872,310,9),(873,310,10),(874,310,11),(875,310,12),(876,310,13),(877,310,14),(878,310,15),(879,310,16),(880,310,17),(881,310,18),(882,310,19),(883,310,29),(884,310,30),(885,310,31),(886,310,35),(887,311,7),(888,311,8),(889,311,9),(890,311,10),(891,311,11),(892,311,12),(893,311,13),(894,311,14),(895,311,15),(896,311,16),(897,311,17),(898,311,18),(899,311,19),(900,311,29),(901,311,30),(902,311,31),(903,311,35),(904,312,42),(905,312,50),(906,313,50),(907,314,82),(908,315,72),(909,315,68),(910,316,21),(911,316,22),(912,316,14),(913,317,21),(914,317,14),(915,317,22),(916,318,NULL),(917,319,NULL),(918,320,65),(919,321,65),(920,321,75),(921,322,48),(922,323,41),(923,323,43),(924,323,44),(925,323,46),(926,324,41),(927,325,NULL),(928,326,8),(929,326,9),(930,326,12),(931,326,14),(932,326,15),(933,326,16),(934,326,17),(935,326,18),(936,326,19),(937,326,22),(938,326,23),(939,326,47),(940,326,65),(941,326,68),(942,326,69),(943,326,70),(944,326,71),(945,326,72),(946,326,74),(947,326,75),(948,326,118),(949,327,8),(950,327,9),(951,327,12),(952,327,15),(953,327,16),(954,327,17),(955,327,18),(956,327,19),(957,327,47),(958,327,50),(959,327,62),(960,327,65),(961,327,70),(962,327,71),(963,327,72),(964,328,9),(965,328,12),(966,328,15),(967,328,16),(968,328,17),(969,328,18),(970,328,19),(971,328,65),(972,329,22),(973,329,23),(974,329,47),(975,329,65),(976,329,67),(977,329,68),(978,329,70),(979,329,71),(980,329,72),(981,329,75),(982,330,49),(983,330,58),(984,330,65),(985,330,74),(986,330,75),(987,330,76),(988,330,77),(989,330,118),(990,331,47),(991,331,57),(992,331,58),(993,331,59),(994,331,65),(995,332,6),(996,332,9),(997,332,10),(998,332,11),(999,332,12),(1000,332,68),(1001,332,70),(1002,332,72),(1003,333,6),(1004,333,12),(1005,333,56),(1006,333,63),(1007,333,65),(1008,333,68),(1009,333,70),(1010,333,71),(1011,333,72),(1012,334,67),(1013,334,68),(1014,334,69),(1015,334,70),(1016,334,71),(1017,334,72),(1018,335,53),(1019,335,69),(1020,336,68),(1021,336,70),(1022,336,71),(1023,336,72),(1024,337,15),(1025,337,19),(1026,337,71),(1027,337,72),(1028,337,75),(1029,338,22),(1030,338,23),(1031,338,74),(1032,338,77),(1033,339,65),(1034,340,47),(1035,340,50),(1036,340,62),(1037,340,63),(1038,340,64),(1039,340,65),(1040,340,68),(1041,340,70),(1042,340,72),(1043,341,47),(1044,341,50),(1045,341,62),(1046,341,63),(1047,341,64),(1048,341,65),(1049,341,68),(1050,341,72),(1051,342,49),(1052,342,75),(1053,343,47),(1054,343,56),(1055,343,57),(1056,343,60),(1057,343,64),(1058,343,65),(1059,344,47),(1060,344,58),(1061,344,48),(1062,344,59),(1063,344,65),(1064,345,48),(1065,345,59),(1066,345,62),(1067,345,65),(1068,346,62),(1069,346,65),(1070,347,62),(1071,347,65),(1072,348,76),(1073,348,77),(1074,348,118),(1075,349,40),(1076,349,50),(1077,350,40),(1078,350,50),(1079,351,40),(1080,351,41),(1081,351,43),(1082,351,44),(1083,351,46),(1084,351,49),(1085,351,50),(1086,352,8),(1087,352,9),(1088,352,10),(1089,352,11),(1090,352,32),(1091,352,35),(1092,352,37),(1093,352,75),(1094,352,80),(1095,353,65),(1096,354,65),(1097,354,68),(1098,355,85),(1099,356,NULL),(1100,356,65),(1101,357,8),(1102,357,9),(1103,357,10),(1104,357,11),(1105,357,12),(1106,357,67),(1107,357,68),(1108,357,70),(1109,357,71),(1110,357,72),(1111,358,85),(1112,358,91),(1113,359,92),(1114,359,96),(1115,359,97),(1116,359,98),(1117,360,50),(1118,360,46),(1119,360,40),(1120,360,20),(1121,361,NULL),(1122,362,85),(1123,363,46),(1124,363,53),(1125,364,40),(1126,364,50),(1127,365,56),(1128,365,64),(1129,365,65),(1130,365,57),(1131,365,55),(1132,365,54),(1133,365,50),(1134,365,49),(1135,365,46),(1136,365,40),(1137,365,58),(1138,366,20),(1139,366,41),(1140,366,65),(1141,366,51),(1142,366,50),(1143,366,48),(1144,366,40),(1145,366,28),(1146,366,27),(1147,366,25),(1148,367,50),(1149,368,108),(1150,369,40),(1151,369,41),(1152,369,42),(1153,369,43),(1154,369,44),(1155,369,46),(1156,369,49),(1157,369,50),(1158,369,53),(1159,370,40),(1160,370,50),(1161,17,45),(1162,17,105),(1163,37,8),(1164,37,10),(1165,37,32),(1166,37,34),(1167,37,35),(1168,37,39),(1169,37,42),(1170,37,43),(1171,37,45),(1172,37,50),(1173,37,85),(1174,274,28),(1175,274,30),(1176,274,31),(1177,274,34),(1178,274,36),(1179,274,38),(1180,274,40),(1181,274,41),(1182,274,42),(1183,274,43),(1184,274,44),(1185,274,45),(1186,274,46),(1187,274,47),(1188,274,48),(1189,274,49),(1190,274,54),(1191,274,54),(1192,274,55),(1193,274,56),(1194,274,56),(1195,274,57),(1196,274,57),(1197,274,58),(1198,274,58),(1199,274,59),(1200,274,59),(1201,274,60),(1202,274,60),(1203,274,61),(1204,274,61),(1205,274,62),(1206,274,62),(1207,274,63),(1208,274,64),(1209,274,64),(1210,274,66),(1211,274,80),(1212,274,81),(1213,274,82),(1214,274,83),(1215,274,84),(1216,274,87),(1217,274,89),(1218,274,90),(1219,274,120),(1220,371,15),(1221,371,16),(1222,371,17),(1223,371,19),(1224,371,32),(1225,371,44),(1226,371,45),(1227,371,46),(1228,371,67),(1229,371,68),(1230,371,69),(1231,371,70),(1232,371,71),(1233,371,72),(1234,371,73),(1235,371,90),(1236,372,65),(1237,372,91),(1238,372,92),(1239,372,93),(1240,372,94),(1241,372,99),(1242,373,65),(1243,373,65),(1244,374,90),(1245,374,99),(1246,374,104),(1247,375,42),(1248,375,43),(1249,375,95),(1250,376,2),(1251,376,34),(1252,376,50),(1253,377,41),(1254,378,41),(1255,379,13),(1256,379,14),(1257,379,15),(1258,379,16),(1259,379,17),(1260,379,18),(1261,379,24),(1262,379,25),(1263,379,26),(1264,379,28),(1265,379,34),(1266,379,42),(1267,379,43),(1268,379,44),(1269,379,46),(1270,379,50),(1271,379,57),(1272,379,64),(1273,379,65),(1274,379,67),(1275,379,68),(1276,379,69),(1277,379,70),(1278,379,71),(1279,379,72),(1280,379,73),(1281,379,74),(1282,379,75),(1283,379,76),(1284,379,77),(1285,379,78),(1286,379,79),(1287,379,118),(1288,380,14),(1289,380,15),(1290,380,16),(1291,380,17),(1292,380,18),(1293,381,14),(1294,381,15),(1295,381,16),(1296,381,17),(1297,381,18),(1298,382,10),(1299,382,32),(1300,382,37),(1301,382,45),(1302,382,85),(1303,382,95),(1304,383,10),(1305,383,32),(1306,383,37),(1307,383,85),(1308,383,98),(1309,384,84),(1310,384,90),(1311,384,91),(1312,384,92),(1313,385,104),(1314,385,107),(1315,385,109),(1316,385,110),(1317,386,104),(1318,386,107),(1319,386,109),(1320,386,110),(1321,387,101),(1322,387,104),(1323,387,107),(1324,387,110),(1325,387,111),(1326,387,112),(1327,388,93),(1328,388,94),(1329,389,26),(1330,389,33),(1331,390,14),(1332,390,15),(1333,390,16),(1334,390,17),(1335,390,18),(1336,391,14),(1337,391,15),(1338,391,16),(1339,391,17),(1340,391,18),(1341,392,14),(1342,392,15),(1343,392,16),(1344,392,17),(1345,392,18),(1346,393,10),(1347,393,32),(1348,393,37),(1349,393,85),(1350,393,90),(1351,394,10),(1352,394,32),(1353,394,37),(1354,394,85),(1355,394,90),(1356,395,10),(1357,395,32),(1358,395,37),(1359,395,85),(1360,395,90),(1361,396,107),(1362,396,109),(1363,396,110),(1364,397,91),(1365,397,92),(1366,397,93),(1367,397,94),(1368,398,91),(1369,398,92),(1370,398,93),(1371,398,94),(1372,399,91),(1373,399,92),(1374,399,93),(1375,399,94),(1376,400,91),(1377,400,92),(1378,400,93),(1379,400,94),(1380,401,90),(1381,402,95),(1382,403,95),(1383,404,34),(1384,404,39),(1385,404,42),(1386,404,45),(1387,404,50),(1388,405,34),(1389,405,39),(1390,405,42),(1391,405,45),(1392,405,50),(1393,406,34),(1394,406,50),(1395,407,34),(1396,407,50),(1397,408,34),(1398,408,50),(1399,409,67),(1400,409,68),(1401,409,69),(1402,409,70),(1403,409,71),(1404,409,72),(1405,409,73),(1406,8,66),(1407,25,66),(1408,1,66),(1409,39,66),(1410,54,66),(1411,63,66),(1412,111,66),(1413,205,66),(1414,208,66),(1415,226,66),(1416,247,66),(1417,258,66),(1418,261,66),(1419,274,66),(1420,277,66),(1421,292,66),(1422,293,66),(1423,333,66),(1424,343,66),(1425,365,66),(1426,274,66),(1427,274,66),(1428,156,73),(1429,309,73),(1430,310,73),(1431,311,73),(1432,326,73),(1433,327,73),(1434,352,73),(1435,357,73),(1436,37,73),(1437,32,26),(1438,49,26),(1439,51,26),(1440,73,26),(1441,79,26),(1442,82,26),(1443,90,26),(1444,142,26),(1445,183,26),(1446,207,26),(1447,209,26),(1448,212,26),(1449,218,26),(1450,245,26),(1451,249,26),(1452,251,26),(1453,253,26),(1454,282,26),(1455,310,26),(1456,311,26),(1457,326,26),(1458,327,26),(1459,328,26),(1460,337,26),(1461,371,26),(1462,379,26),(1463,380,26),(1464,381,26),(1465,390,26),(1466,391,26),(1467,392,26);
/*!40000 ALTER TABLE `apps to capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `build operating summary`
--

DROP TABLE IF EXISTS `build operating summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `build operating summary` (
  `ID` int(10) NOT NULL,
  `Capabilities` varchar(255) DEFAULT NULL,
  `Vendor(s)` varchar(255) DEFAULT NULL,
  `Arch Domain` varchar(255) DEFAULT NULL,
  `Low` decimal(19,4) DEFAULT NULL,
  `High` decimal(19,4) DEFAULT NULL,
  `Confidence` double DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `build operating summary`
--

LOCK TABLES `build operating summary` WRITE;
/*!40000 ALTER TABLE `build operating summary` DISABLE KEYS */;
INSERT INTO `build operating summary` VALUES (1,'360 Mgmt.','','',0.0000,0.0000,0),(2,'Accounts Payables','','',0.0000,0.0000,0),(3,'Accounts Receivables','','',0.0000,0.0000,0),(4,'Advertising Sales','','',0.0000,0.0000,0),(5,'API','Accenture; HCL','Transaction',40.0000,65.0000,0),(6,'Asset Classification & Storage','','',0.0000,0.0000,0),(7,'Asset Creation','','',0.0000,0.0000,0),(8,'Asset Indexing & Search','','',0.0000,0.0000,0),(9,'Asset Ingestion','','',0.0000,0.0000,0),(10,'Asset Metadata Mgmt.','','',0.0000,0.0000,0),(11,'Auditing and Controls','','',0.0000,0.0000,0),(12,'B2B/Society Feeds','','',0.0000,0.0000,0),(13,'Blanket Licensing','','',0.0000,0.0000,0),(14,'Brand Mgmt. (Artist, Label, Company)','Accenture','Sales & Marketing',14.5455,25.4545,0),(15,'Campaign Mgmt.','Accenture','Sales & Marketing',14.5455,25.4545,0),(16,'Cash Mgmt.','','',0.0000,0.0000,0),(17,'Casting Opps/B2B','Accenture','Sales & Marketing',14.5455,25.4545,0),(18,'Change Mgmt.','','',0.0000,0.0000,0),(19,'Channel Experience','Accenture; HCL','Web & Mobile',527.8011,656.3114,0),(20,'Collaboration','','',0.0000,0.0000,0),(21,'Compensation & Benefits','','',0.0000,0.0000,0),(22,'Competitive Analytics','','',0.0000,0.0000,0),(23,'Computing Mgmt.','','',0.0000,0.0000,0),(24,'Consolidated Financial Reporting','','',0.0000,0.0000,0),(25,'Content Delivery Network','','',0.0000,0.0000,0),(26,'Contract Generation','HCL','RIghts Management; Royalties Management',234.4212,242.9711,0),(27,'Contract Mgmt.','HCL','RIghts Management; Royalties Management',234.4212,242.9711,0),(28,'Contractor Mgmt.','','',0.0000,0.0000,0),(29,'Co-op Advertising','','',0.0000,0.0000,0),(30,'Copyright Licensing','','',0.0000,0.0000,0),(31,'Copyright Registration','HCL','RIghts Management; Royalties Management',234.4212,242.9711,0),(32,'Credit & Collections','','',0.0000,0.0000,0),(33,'Customer Satisfaction Tracking','Accenture','Sales & Marketing',14.5455,25.4545,0),(34,'D2C Order Mgmt.','','',0.0000,0.0000,0),(35,'Data Governance','','',0.0000,0.0000,0),(36,'Database Mgmt.','','',0.0000,0.0000,0),(37,'Demand Mgmt.','','',0.0000,0.0000,0),(38,'Desktop & Tools','','',0.0000,0.0000,0),(39,'Email','','',0.0000,0.0000,0),(40,'Employee Data Mgmt.','','',0.0000,0.0000,0),(41,'Employee Experience','Accenture','Web & Mobile',527.8011,656.3114,0),(42,'Employee Performance Mgmt.','','',0.0000,0.0000,0),(43,'Employee Recruiting','','',0.0000,0.0000,0),(44,'Employee T&E','','',0.0000,0.0000,0),(45,'Employee Time Tracking','','',0.0000,0.0000,0),(46,'Employee Training','','',0.0000,0.0000,0),(47,'Enterprise Architecture','','',0.0000,0.0000,0),(48,'Enterprise Service Bus',' ',' ',0.0000,0.0000,0),(49,'Fan Metadata Mgmt.','Accenture','Sales & Marketing',14.5455,25.4545,0),(50,'Financial Planning & Analysis','','',0.0000,0.0000,0),(51,'General Ledger','','',0.0000,0.0000,0),(52,'Global Fan/Customer Experience','Accenture; HCL; Congn','Web & Mobile',527.8011,656.3114,0),(53,'Incident Mgmt.','','',0.0000,0.0000,0),(54,'Income Tracking','','',0.0000,0.0000,0),(55,'Infrastructure Mgmt','','',0.0000,0.0000,0),(56,'Innovation','','',0.0000,0.0000,0),(57,'Investment Mgmt.','','',0.0000,0.0000,0),(58,'Invoicing','','',0.0000,0.0000,0),(59,'IT Project Control','HCl','Core Integration Svcs',1553.7060,1860.6713,0),(60,'License In','','',0.0000,0.0000,0),(61,'License Out','','',0.0000,0.0000,0),(62,'Market Analytics/Intel','Accenture','Sales & Marketing',14.5455,25.4545,0),(63,'Marketing Collateral Storage','Accenture','Sales & Marketing',14.5455,25.4545,0),(64,'Marketing Strategy','Accenture','Sales & Marketing',14.5455,25.4545,0),(65,'Master Data Mgmt.','','',0.0000,0.0000,0),(66,'Mechanical Licensing','','',0.0000,0.0000,0),(67,'Metadata Tagging','','',0.0000,0.0000,0),(68,'Metering & Billing','','',0.0000,0.0000,0),(69,'Network Mgmt.','','',0.0000,0.0000,0),(70,'Performance Mgmt.','','',0.0000,0.0000,0),(71,'Pitching for Licensing','','',0.0000,0.0000,0),(72,'Press & Promotions','Accenture','Sales & Marketing',14.5455,25.4545,0),(73,'Procurement','','',0.0000,0.0000,0),(74,'Product Bundling','','',0.0000,0.0000,0),(75,'Product Costing','','',0.0000,0.0000,0),(76,'Product Design','','',0.0000,0.0000,0),(77,'Product Development','','',0.0000,0.0000,0),(78,'Product Lifecycle Mgmt.','','',0.0000,0.0000,0),(79,'Product Metadata  Mgmt.','','',0.0000,0.0000,0),(80,'Product Pricing','','',0.0000,0.0000,0),(81,'Project Accounting','','',0.0000,0.0000,0),(82,'Release Planning','Accenture','Sales & Marketing',14.5455,25.4545,0),(83,'Release Strategy Development','Accenture','Sales & Marketing',14.5455,25.4545,0),(84,'Report request performance','HCL','RIghts Management; Royalties Management',234.4212,242.9711,0),(85,'Rights Analysis','HCL','RIghts Management; Royalties Management',234.4212,242.9711,0),(86,'Rights Exploitation','HCL','RIghts Management; Royalties Management',234.4212,242.9711,0),(87,'Rights Metadata Mgmt.','HCL','RIghts Management; Royalties Management',234.4212,242.9711,0),(88,'Rights Tracking & Visibility','HCL','RIghts Management; Royalties Management',234.4212,242.9711,0),(89,'Royalties Mgmt.','Accenture','Royalties Management',50.0000,100.0000,0),(90,'Sales Analytics','','',0.0000,0.0000,0),(91,'Sales Forecasting & Planning','','',0.0000,0.0000,0),(92,'Sales Ingestion','','',0.0000,0.0000,0),(93,'Sales Pitching','','',0.0000,0.0000,0),(94,'Security Mgmt.','','',0.0000,0.0000,0),(95,'Service Configuration','','',0.0000,0.0000,0),(96,'Service Definition','','',0.0000,0.0000,0),(97,'Service Delivery','','',0.0000,0.0000,0),(98,'Service Level Mgmt.','','',0.0000,0.0000,0),(99,'Service Mgmt.','','',0.0000,0.0000,0),(100,'Service Pricing','','',0.0000,0.0000,0),(101,'Starters & Leavers','','',0.0000,0.0000,0),(102,'Storage Mgmt.','','',0.0000,0.0000,0),(103,'Strategic Planning',' ','',0.0000,0.0000,0),(104,'Strategy Execution & Tracking','','',0.0000,0.0000,0),(105,'Sync Licensing','','',0.0000,0.0000,0),(106,'Talent Development','','',0.0000,0.0000,0),(107,'Talent Discovery','','',0.0000,0.0000,0),(108,'Talent Engagement','','',0.0000,0.0000,0),(109,'Talent Experience',' ',' ',0.0000,0.0000,0),(110,'Talent Metadata Mgmt.','','',0.0000,0.0000,0),(111,'Talent Retention','','',0.0000,0.0000,0),(112,'Tax and Treasury','','',0.0000,0.0000,0),(113,'Telephony','','',0.0000,0.0000,0),(114,'Vendor Contract Mgmt.','','',0.0000,0.0000,0),(115,'Vendor Mgmt.','','',0.0000,0.0000,0),(116,'Visioning','','',0.0000,0.0000,0),(117,NULL,NULL,NULL,5262.4793,6218.3745,NULL);
/*!40000 ALTER TABLE `build operating summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `build ot summary`
--

DROP TABLE IF EXISTS `build ot summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `build ot summary` (
  `ID` int(10) NOT NULL,
  `Capabilities` varchar(255) DEFAULT NULL,
  `Vendor(s)` varchar(255) DEFAULT NULL,
  `Arch Domain` varchar(255) DEFAULT NULL,
  `Low` decimal(19,4) DEFAULT NULL,
  `High` decimal(19,4) DEFAULT NULL,
  `Confidence` double DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `build ot summary`
--

LOCK TABLES `build ot summary` WRITE;
/*!40000 ALTER TABLE `build ot summary` DISABLE KEYS */;
INSERT INTO `build ot summary` VALUES (1,'360 Mgmt.','','',0.0000,0.0000,0.5),(2,'Accounts Payables','','',0.0000,0.0000,0.9),(3,'Accounts Receivables','','',0.0000,0.0000,0.75),(4,'Advertising Sales','','',0.0000,0.0000,0.5),(5,'API','Accenture; HCL','Transaction',180.0000,295.0000,0.5),(6,'Asset Classification & Storage','','',0.0000,0.0000,0.5),(7,'Asset Creation','','',0.0000,0.0000,0.5),(8,'Asset Indexing & Search','','',0.0000,0.0000,0.5),(9,'Asset Ingestion','','',0.0000,0.0000,0.5),(10,'Asset Metadata Mgmt.','','',0.0000,0.0000,0.5),(11,'Auditing and Controls','','',0.0000,0.0000,0.82),(12,'B2B/Society Feeds','','',0.0000,0.0000,0.5),(13,'Blanket Licensing','','',0.0000,0.0000,0.5),(14,'Brand Mgmt. (Artist, Label, Company)','Accenture','Sales & Marketing',147.2727,245.4545,0.5),(15,'Campaign Mgmt.','Accenture','Sales & Marketing',147.2727,245.4545,0.63),(16,'Cash Mgmt.','','',0.0000,0.0000,0.75),(17,'Casting Opps/B2B','Accenture','Sales & Marketing',147.2727,245.4545,0.5),(18,'Change Mgmt.','','',0.0000,0.0000,0.75),(19,'Channel Experience','Accenture; HCL; Congn','Web & Mobile',1202.5272,1685.6048,0.5),(20,'Collaboration','','',0.0000,0.0000,0.75),(21,'Compensation & Benefits','','',0.0000,0.0000,0.82),(22,'Competitive Analytics','','',0.0000,0.0000,0.63),(23,'Computing Mgmt.','','',0.0000,0.0000,0.9),(24,'Consolidated Financial Reporting','','',0.0000,0.0000,0.75),(25,'Content Delivery Network','','',0.0000,0.0000,0.75),(26,'Contract Generation','HCL','RIghts Management; Royalties Management',229.8018,359.1214,0.5),(27,'Contract Mgmt.','HCL','RIghts Management; Royalties Management',229.8018,359.1214,0.5),(28,'Contractor Mgmt.','','',0.0000,0.0000,0.75),(29,'Co-op Advertising','','',0.0000,0.0000,0.5),(30,'Copyright Licensing','','',0.0000,0.0000,0.5),(31,'Copyright Registration','HCL','RIghts Management; Royalties Management',229.8018,359.1214,0.5),(32,'Credit & Collections','','',0.0000,0.0000,0.75),(33,'Customer Satisfaction Tracking','Accenture','Sales & Marketing',147.2727,245.4545,0.5),(34,'D2C Order Mgmt.','','',0.0000,0.0000,0.75),(35,'Data Governance','','',0.0000,0.0000,0.75),(36,'Database Mgmt.','','',0.0000,0.0000,0.9),(37,'Demand Mgmt.','','',0.0000,0.0000,0.5),(38,'Desktop & Tools','','',0.0000,0.0000,0.9),(39,'Email','','',0.0000,0.0000,0.75),(40,'Employee Data Mgmt.','','',0.0000,0.0000,0.75),(41,'Employee Experience','','',0.0000,0.0000,0.5),(42,'Employee Performance Mgmt.','','',0.0000,0.0000,0.75),(43,'Employee Recruiting','','',0.0000,0.0000,0.75),(44,'Employee T&E','','',0.0000,0.0000,0.75),(45,'Employee Time Tracking','','',0.0000,0.0000,0.75),(46,'Employee Training','','',0.0000,0.0000,0.75),(47,'Enterprise Architecture','','',0.0000,0.0000,0.5),(48,'Enterprise Service Bus',' ',' ',0.0000,0.0000,0.75),(49,'Fan Metadata Mgmt.','Accenture','Sales & Marketing',147.2727,245.4545,0.63),(50,'Financial Planning & Analysis','','',0.0000,0.0000,0.75),(51,'General Ledger','','',0.0000,0.0000,0.9),(52,'Global Fan/Customer Experience','Accenture; HCL; Congn','Web & Mobile',1202.5272,1685.6048,0.5),(53,'Incident Mgmt.','','',0.0000,0.0000,0.75),(54,'Income Tracking','','',0.0000,0.0000,0.75),(55,'Infrastructure Mgmt','','',0.0000,0.0000,0.75),(56,'Innovation','','',0.0000,0.0000,0.5),(57,'Investment Mgmt.','','',0.0000,0.0000,0.75),(58,'Invoicing','','',0.0000,0.0000,0.75),(59,'IT Project Control','HCl','Core Integration Svcs',4285.7896,5656.9300,0.75),(60,'License In','','',0.0000,0.0000,0.5),(61,'License Out','','',0.0000,0.0000,0.5),(62,'Market Analytics/Intel','Accenture','Sales & Marketing',147.2727,245.4545,0.63),(63,'Marketing Collateral Storage','Accenture','Sales & Marketing',147.2727,245.4545,0.5),(64,'Marketing Strategy','Accenture','Sales & Marketing',147.2727,245.4545,0.5),(65,'Master Data Mgmt.','','',0.0000,0.0000,0.75),(66,'Mechanical Licensing','','',0.0000,0.0000,0.7),(67,'Metadata Tagging','','',0.0000,0.0000,0.5),(68,'Metering & Billing','','',0.0000,0.0000,0.75),(69,'Network Mgmt.','','',0.0000,0.0000,0.9),(70,'Performance Mgmt.','','',0.0000,0.0000,0.75),(71,'Pitching for Licensing','','',0.0000,0.0000,0.5),(72,'Press & Promotions','Accenture','Sales & Marketing',147.2727,245.4545,0.63),(73,'Procurement','','',0.0000,0.0000,0.9),(74,'Product Bundling','','',0.0000,0.0000,0.75),(75,'Product Costing','','',0.0000,0.0000,0.75),(76,'Product Design','','',0.0000,0.0000,0.5),(77,'Product Development','','',0.0000,0.0000,0.5),(78,'Product Lifecycle Mgmt.','','',0.0000,0.0000,0.75),(79,'Product Metadata  Mgmt.','','',0.0000,0.0000,0.5),(80,'Product Pricing','','',0.0000,0.0000,0.75),(81,'Project Accounting','','',0.0000,0.0000,0.9),(82,'Release Planning','Accenture','Sales & Marketing',147.2727,245.4545,0.63),(83,'Release Strategy Development','Accenture','Sales & Marketing',147.2727,245.4545,0.5),(84,'Report request performance','HCL','RIghts Management; Royalties Management',229.8018,359.1214,0.5),(85,'Rights Analysis','HCL','RIghts Management; Royalties Management',229.8018,359.1214,0.5),(86,'Rights Exploitation','HCL','RIghts Management; Royalties Management',229.8018,359.1214,0.5),(87,'Rights Metadata Mgmt.','HCL','RIghts Management; Royalties Management',229.8018,359.1214,0.5),(88,'Rights Tracking & Visibility','HCL','RIghts Management; Royalties Management',229.8018,359.1214,0.5),(89,'Royalties Mgmt.','Accenture','Royalties Management',0.0000,0.0000,0.9),(90,'Sales Analytics','','',0.0000,0.0000,0.5),(91,'Sales Forecasting & Planning','','',0.0000,0.0000,0.75),(92,'Sales Ingestion','','',0.0000,0.0000,0.5),(93,'Sales Pitching','','',0.0000,0.0000,0.5),(94,'Security Mgmt.','','',0.0000,0.0000,0.75),(95,'Service Configuration','','',0.0000,0.0000,0.82),(96,'Service Definition','WMG - Added','',1500.0000,1500.0000,0.75),(97,'Service Delivery','','',0.0000,0.0000,0.75),(98,'Service Level Mgmt.','','',0.0000,0.0000,0.82),(99,'Service Mgmt.','','',0.0000,0.0000,0.75),(100,'Service Pricing','','',0.0000,0.0000,0.75),(101,'Starters & Leavers','','',0.0000,0.0000,0.75),(102,'Storage Mgmt.','','',0.0000,0.0000,0.9),(103,'Strategic Planning',' ','',0.0000,0.0000,0.5),(104,'Strategy Execution & Tracking','','',0.0000,0.0000,0.5),(105,'Sync Licensing','','',0.0000,0.0000,0.5),(106,'Talent Development','','',0.0000,0.0000,0.5),(107,'Talent Discovery','','',0.0000,0.0000,0.5),(108,'Talent Engagement','','',0.0000,0.0000,0.5),(109,'Talent Experience','Accenture; HCL; Congn','Web & Mobile',1202.5272,1685.6048,0.5),(110,'Talent Metadata Mgmt.','','',0.0000,0.0000,0.5),(111,'Talent Retention','','',0.0000,0.0000,0.5),(112,'Tax and Treasury','','',0.0000,0.0000,0.75),(113,'Telephony','','',0.0000,0.0000,0.9),(114,'Vendor Contract Mgmt.','','',0.0000,0.0000,0.75),(115,'Vendor Mgmt.','','',0.0000,0.0000,0.9),(116,'Visioning','','',0.0000,0.0000,0.5),(117,NULL,NULL,NULL,13031.7856,18081.7153,NULL);
/*!40000 ALTER TABLE `build ot summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buscapabilities`
--

DROP TABLE IF EXISTS `buscapabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buscapabilities` (
  `BusCapID` int(10) NOT NULL,
  `BusDomainID` smallint(5) DEFAULT NULL,
  `busCapStatusID` int(10) DEFAULT NULL,
  `busCapTypeID` int(10) DEFAULT NULL,
  `busCapabilityName` varchar(255) DEFAULT NULL,
  `busCapCreationDate` datetime DEFAULT NULL,
  `busCapRetireDate` datetime DEFAULT NULL,
  `busSuspendDate` datetime DEFAULT NULL,
  `releaseID` int(10) DEFAULT NULL,
  `CapabilitiesAlias` varchar(255) DEFAULT NULL,
  `metaData` varchar(255) DEFAULT NULL,
  `OT-Buy-Low` decimal(19,4) DEFAULT NULL,
  `OT-Buy-High` decimal(19,4) DEFAULT NULL,
  `OT-Build-Low` decimal(19,4) DEFAULT NULL,
  `OT-Build-High` decimal(19,4) DEFAULT NULL,
  `Oper-Buy-Low` decimal(19,4) DEFAULT NULL,
  `Oper-Buy-High` decimal(19,4) DEFAULT NULL,
  `Oper-Build-Low` decimal(19,4) DEFAULT NULL,
  `Oper-Build-High` decimal(19,4) DEFAULT NULL,
  `AvgCost` decimal(19,4) DEFAULT NULL,
  UNIQUE KEY `ID` (`BusCapID`),
  KEY `busCapStatusID` (`busCapStatusID`),
  KEY `BusDomainID` (`BusDomainID`),
  KEY `busCapTypeID` (`busCapTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buscapabilities`
--

LOCK TABLES `buscapabilities` WRITE;
/*!40000 ALTER TABLE `buscapabilities` DISABLE KEYS */;
INSERT INTO `buscapabilities` VALUES (1,1,4,2,'Visioning','2017-02-08 00:00:00',NULL,NULL,1,'Visioning',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(2,1,4,2,'Competitive Analytics','2017-02-08 00:00:00',NULL,NULL,1,'Competitive Analytics',NULL,1162.5000,1690.0000,0.0000,0.0000,113.3333,203.3333,0.0000,0.0000,1139.1667),(3,1,4,2,'Strategic Planning','2017-02-08 00:00:00',NULL,NULL,1,'Strategic Planning',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(4,1,4,2,'Strategy Execution & Tracking','2017-02-08 00:00:00',NULL,NULL,1,'Strategy Execution and Tracking',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(5,1,4,2,'Innovation','2017-02-08 00:00:00',NULL,NULL,1,'Innovation',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(6,1,4,2,'Investment Mgmt.','2017-02-08 00:00:00',NULL,NULL,2,'Investment Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(7,2,3,3,'Talent Discovery','2017-02-08 00:00:00',NULL,NULL,1,'Talent Discovery',NULL,1162.5000,1690.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,569.5833),(8,2,3,3,'Talent Engagement','2017-02-08 00:00:00',NULL,NULL,1,'Talent Engagement',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(9,2,3,3,'Talent Development','2017-02-08 00:00:00',NULL,NULL,2,'Talent Development',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(10,2,3,3,'Talent Experience','2017-02-08 00:00:00',NULL,NULL,2,'Talent Experience',NULL,0.0000,0.0000,1202.5272,1685.6048,0.0000,0.0000,0.0000,0.0000,217.7970),(11,2,3,3,'Talent Retention','2017-02-08 00:00:00',NULL,NULL,2,'Talent Retention',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(12,2,3,3,'Talent Metadata Mgmt.','2017-02-08 00:00:00',NULL,NULL,2,'Talent Metadata Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,95.4971),(13,2,3,3,'360 Mgmt.','2017-02-08 00:00:00',NULL,NULL,2,'360 Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(14,3,2,4,'Asset Creation','2017-02-08 00:00:00',NULL,NULL,1,'Asset Creation',NULL,185.8180,247.1832,0.0000,0.0000,192.5592,252.7764,0.0000,0.0000,20.6116),(15,3,2,4,'Asset Metadata Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Asset Metadata Management',NULL,185.8180,247.1832,0.0000,0.0000,192.5592,252.7764,0.0000,0.0000,9.4470),(16,3,2,4,'Asset Ingestion','2017-02-08 00:00:00',NULL,NULL,1,'Asset Ingestion',NULL,185.8180,247.1832,0.0000,0.0000,192.5592,252.7764,0.0000,0.0000,16.1949),(17,3,2,4,'Asset Classification & Storage','2017-02-08 00:00:00',NULL,NULL,2,'Asset Classification and Storage',NULL,185.8180,247.1832,0.0000,0.0000,192.5592,252.7764,0.0000,0.0000,13.3369),(18,3,2,4,'Metadata Tagging','2017-02-08 00:00:00',NULL,NULL,2,'Metadata Tagging',NULL,185.8180,247.1832,0.0000,0.0000,192.5592,252.7764,0.0000,0.0000,15.1152),(19,3,2,4,'Asset Indexing & Search','2017-02-08 00:00:00',NULL,NULL,2,'Asset Index and Search',NULL,185.8180,247.1832,0.0000,0.0000,192.5592,252.7764,0.0000,0.0000,12.5960),(20,4,1,3,'Product Design','2017-02-08 00:00:00',NULL,NULL,2,'Product Design',NULL,180.5567,242.0101,0.0000,0.0000,106.3826,155.2287,0.0000,0.0000,55.3814),(21,4,1,3,'Product Costing','2017-02-08 00:00:00',NULL,NULL,1,'Product Costing',NULL,180.5567,242.0101,0.0000,0.0000,106.3826,155.2287,0.0000,0.0000,73.8419),(22,4,1,3,'Product Development','2017-02-08 00:00:00',NULL,NULL,2,'Product Development',NULL,180.5567,242.0101,0.0000,0.0000,106.3826,155.2287,0.0000,0.0000,20.1387),(23,4,1,3,'Product Bundling','2017-02-08 00:00:00',NULL,NULL,2,'Product Bundling',NULL,180.5567,242.0101,0.0000,0.0000,106.3826,155.2287,0.0000,0.0000,18.4605),(24,4,1,3,'Product Pricing','2017-02-08 00:00:00',NULL,NULL,1,'Product Pricing',NULL,180.5567,242.0101,0.0000,0.0000,106.3826,155.2287,0.0000,0.0000,73.8419),(25,4,1,3,'Product Lifecycle Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Product Lifecycle Management',NULL,180.5567,242.0101,0.0000,0.0000,106.3826,155.2287,0.0000,0.0000,27.6907),(26,4,1,3,'Product Metadata  Mgmt.','2017-02-08 00:00:00',NULL,NULL,2,'Product Metadata Management',NULL,180.5567,242.0101,0.0000,0.0000,106.3826,155.2287,0.0000,0.0000,9.2302),(27,5,2,1,'Release Strategy Development','2017-02-08 00:00:00',NULL,NULL,2,'Release Strategy Development',NULL,51.2692,108.8333,147.2727,245.4545,39.4856,42.7761,14.5455,25.4545,75.5931),(28,5,2,1,'Release Planning','2017-02-08 00:00:00',NULL,NULL,1,'Release Planning',NULL,51.2692,108.8333,147.2727,245.4545,39.4856,42.7761,14.5455,25.4545,27.4884),(29,5,2,1,'Casting Opps/B2B','2017-02-08 00:00:00',NULL,NULL,2,'Casting Opps/B2B',NULL,51.2692,108.8333,147.2727,245.4545,39.4856,42.7761,14.5455,25.4545,100.7908),(30,5,2,1,'Campaign Mgmt.','2017-02-08 00:00:00',NULL,NULL,2,'Campaign Management',NULL,51.2692,108.8333,147.2727,245.4545,39.4856,42.7761,14.5455,25.4545,21.5980),(31,5,2,1,'Press & Promotions','2017-02-08 00:00:00',NULL,NULL,2,'Press and Promotions',NULL,51.2692,108.8333,147.2727,245.4545,39.4856,42.7761,14.5455,25.4545,18.8983),(32,5,2,1,'Global Fan/Customer Experience','2017-02-08 00:00:00',NULL,NULL,2,'Global Fan/Customer Experience',NULL,51.2692,108.8333,1202.5272,1685.6048,39.4856,42.7761,527.8011,656.3114,230.6035),(33,5,2,1,'Fan Metadata Mgmt.','2017-02-08 00:00:00',NULL,NULL,2,'Fan Metadata Management',NULL,51.2692,108.8333,147.2727,245.4545,39.4856,42.7761,14.5455,25.4545,100.7908),(34,5,2,1,'Market Analytics/Intel','2017-02-08 00:00:00',NULL,NULL,1,'Market Analytics/Intelligence',NULL,1213.7692,1690.0000,147.2727,245.4545,152.8189,203.3333,14.5455,25.4545,152.1093),(35,5,2,1,'Marketing Collateral Storage','2017-02-08 00:00:00',NULL,NULL,1,'Marketing Collateral Storage',NULL,51.2692,108.8333,147.2727,245.4545,39.4856,42.7761,14.5455,25.4545,37.7966),(36,5,2,1,'Brand Mgmt. (Artist, Label, Company)','2017-02-08 00:00:00',NULL,NULL,1,'Brand Management (Artist, Label, Company)',NULL,51.2692,108.8333,147.2727,245.4545,39.4856,42.7761,14.5455,25.4545,75.5931),(37,5,2,1,'Channel Experience','2017-02-08 00:00:00',NULL,NULL,2,'Channel Experience',NULL,51.2692,108.8333,1202.5272,1685.6048,39.4856,42.7761,527.8011,656.3114,146.7477),(38,5,2,1,'Marketing Strategy','2017-02-08 00:00:00',NULL,NULL,2,'Marketing Strategy',NULL,51.2692,108.8333,147.2727,245.4545,39.4856,42.7761,14.5455,25.4545,302.3725),(39,5,2,1,'Customer Satisfaction Tracking','2017-02-08 00:00:00',NULL,NULL,1,'Customer Satisfaction Tracking',NULL,51.2692,108.8333,147.2727,245.4545,39.4856,42.7761,14.5455,25.4545,302.3725),(40,6,1,4,'Sales Forecasting & Planning','2017-02-08 00:00:00',NULL,NULL,1,'Sales Forecasting and Planning',NULL,78.4211,130.7895,0.0000,0.0000,101.8421,171.8421,0.0000,0.0000,1.9540),(41,6,1,4,'Physical Distribution','2017-02-08 00:00:00',NULL,NULL,1,'Physical Distribution',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(42,6,1,4,'Digital Distribution','2017-02-08 00:00:00',NULL,NULL,1,'Digital Distribution',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(43,6,1,4,'3rd Party Distribution','2017-02-08 00:00:00',NULL,NULL,1,'3rd Party Distribution',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(44,6,1,4,'Distribution Agreements','2017-02-08 00:00:00',NULL,NULL,1,'Distribution Agreements',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(45,6,1,4,'D2C Order Mgmt.','2017-02-08 00:00:00',NULL,NULL,2,'Direct to Consumer (D2C)',NULL,78.4211,130.7895,0.0000,0.0000,101.8421,171.8421,0.0000,0.0000,14.1667),(46,6,1,4,'Sales Pitching','2017-02-08 00:00:00',NULL,NULL,2,'Order Management',NULL,78.4211,130.7895,0.0000,0.0000,101.8421,171.8421,0.0000,0.0000,3.1481),(47,6,1,4,'Income Tracking','2017-02-08 00:00:00',NULL,NULL,2,'Income Tracking',NULL,78.4211,130.7895,0.0000,0.0000,101.8421,171.8421,0.0000,0.0000,8.0952),(48,6,1,4,'Sales Ingestion','2017-02-08 00:00:00',NULL,NULL,2,'Sales Ingestion',NULL,1801.3285,3032.6507,0.0000,0.0000,1577.4508,2519.4942,0.0000,0.0000,187.3007),(49,6,1,4,'Invoicing','2017-02-08 00:00:00',NULL,NULL,2,'Invoicing',NULL,78.4211,130.7895,0.0000,0.0000,101.8421,171.8421,0.0000,0.0000,6.2963),(50,6,1,4,'Sales Analytics','2017-02-08 00:00:00',NULL,NULL,2,'Sales Analytics',NULL,1240.9211,1820.7895,0.0000,0.0000,101.8421,171.8421,0.0000,0.0000,1.7172),(51,6,1,4,'Advertising Sales','2017-02-08 00:00:00',NULL,NULL,2,'Advertising Sales',NULL,78.4211,130.7895,0.0000,0.0000,215.1754,375.1754,0.0000,0.0000,250.5000),(52,6,1,4,'Co-op Advertising','2017-02-08 00:00:00',NULL,NULL,2,'Co-op Advertising',NULL,78.4211,130.7895,0.0000,0.0000,101.8421,171.8421,0.0000,0.0000,22.6667),(53,6,1,4,'B2B/Society Feeds','2017-02-08 00:00:00',NULL,NULL,2,'B2B/Society Feeds',NULL,78.4211,130.7895,0.0000,0.0000,101.8421,171.8421,0.0000,0.0000,5.9649),(54,7,3,3,'Credit & Collections','2017-02-08 00:00:00',NULL,NULL,2,'Credit and Collections',NULL,0.0000,0.0000,0.0000,0.0000,182.4588,189.9588,0.0000,0.0000,240.3837),(55,7,3,3,'Procurement','2017-02-08 00:00:00',NULL,NULL,2,'Procurement',NULL,0.0000,0.0000,0.0000,0.0000,182.4588,189.9588,0.0000,0.0000,137.3621),(56,7,3,3,'Accounts Payables','2017-02-08 00:00:00',NULL,NULL,1,'Accounts Payables',NULL,0.0000,0.0000,0.0000,0.0000,182.4588,189.9588,0.0000,0.0000,96.1535),(57,7,3,3,'General Ledger','2017-02-08 00:00:00',NULL,NULL,1,'General Ledger',NULL,0.0000,0.0000,0.0000,0.0000,182.4588,189.9588,0.0000,0.0000,120.1919),(58,7,3,3,'Accounts Receivables','2017-02-08 00:00:00',NULL,NULL,1,'Accounts Receivables',NULL,0.0000,0.0000,0.0000,0.0000,182.4588,189.9588,0.0000,0.0000,113.1218),(59,7,3,3,'Cash Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Cash Management',NULL,0.0000,0.0000,0.0000,0.0000,182.4588,189.9588,0.0000,0.0000,137.3621),(60,7,3,3,'Tax and Treasury','2017-02-08 00:00:00',NULL,NULL,1,'Tax and Treasury',NULL,0.0000,0.0000,0.0000,0.0000,182.4588,189.9588,0.0000,0.0000,240.3837),(61,7,3,3,'Consolidated Financial Reporting','2017-02-08 00:00:00',NULL,NULL,1,'Consolidated Financial Reporting',NULL,0.0000,0.0000,0.0000,0.0000,182.4588,189.9588,0.0000,0.0000,113.1218),(62,7,3,3,'Auditing and Controls','2017-02-08 00:00:00',NULL,NULL,1,'Auditing and Controls',NULL,0.0000,0.0000,0.0000,0.0000,182.4588,189.9588,0.0000,0.0000,113.1218),(63,7,3,3,'Project Accounting','2017-02-08 00:00:00',NULL,NULL,1,'Project Accounting',NULL,0.0000,0.0000,0.0000,0.0000,182.4588,189.9588,0.0000,0.0000,101.2142),(64,7,3,3,'Financial Planning & Analysis','2017-02-08 00:00:00',NULL,NULL,1,'Financial Planning and Analysis',NULL,0.0000,0.0000,0.0000,0.0000,182.4588,189.9588,0.0000,0.0000,101.2142),(65,7,3,3,'Royalties Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Royalties Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,50.0000,100.0000,44.7226),(66,7,3,3,'Vendor Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Vendor Management',NULL,0.0000,0.0000,0.0000,0.0000,182.4588,189.9588,0.0000,0.0000,96.1535),(67,8,1,2,'Contract Generation','2017-02-08 00:00:00',NULL,NULL,2,'Contract Generation',NULL,440.2070,810.1770,229.8018,359.1214,247.7501,412.1224,234.4212,242.9711,200.5737),(68,8,1,2,'Contract Mgmt.','2017-02-08 00:00:00',NULL,NULL,2,'Contract Management',NULL,440.2070,810.1770,229.8018,359.1214,247.7501,412.1224,234.4212,242.9711,31.3396),(69,8,1,2,'Copyright Registration','2017-02-08 00:00:00',NULL,NULL,2,'Copyright Registration',NULL,440.2070,810.1770,229.8018,359.1214,247.7501,412.1224,234.4212,242.9711,167.1448),(70,8,1,2,'Rights Analysis','2017-02-08 00:00:00',NULL,NULL,1,'Rights Analysis',NULL,440.2070,810.1770,229.8018,359.1214,247.7501,412.1224,234.4212,242.9711,66.8579),(71,8,1,2,'Rights Exploitation','2017-02-08 00:00:00',NULL,NULL,1,'Rights Exploitation',NULL,440.2070,810.1770,229.8018,359.1214,247.7501,412.1224,234.4212,242.9711,77.1437),(72,8,1,2,'Rights Tracking & Visibility','2017-02-08 00:00:00',NULL,NULL,1,'Rights Tracking and Visibility',NULL,440.2070,810.1770,229.8018,359.1214,247.7501,412.1224,234.4212,242.9711,45.5849),(73,8,1,2,'Rights Metadata Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Rights Metadata Management',NULL,440.2070,810.1770,229.8018,359.1214,247.7501,412.1224,234.4212,242.9711,125.3586),(74,9,2,4,'Copyright Licensing','2017-02-08 00:00:00',NULL,NULL,2,'Copyright Licensing',NULL,60.3105,103.8281,0.0000,0.0000,91.6877,143.6211,0.0000,0.0000,8.1202),(75,9,2,4,'Mechanical Licensing','2017-02-08 00:00:00',NULL,NULL,1,'Mechanical Licensing',NULL,60.3105,103.8281,0.0000,0.0000,91.6877,143.6211,0.0000,0.0000,4.2534),(76,9,2,4,'Sync Licensing','2017-02-08 00:00:00',NULL,NULL,1,'Sync Licensing',NULL,60.3105,103.8281,0.0000,0.0000,91.6877,143.6211,0.0000,0.0000,7.4435),(77,9,2,4,'License Out','2017-02-08 00:00:00',NULL,NULL,1,'License Out',NULL,60.3105,103.8281,0.0000,0.0000,91.6877,143.6211,0.0000,0.0000,8.1202),(78,9,2,4,'License In','2017-02-08 00:00:00',NULL,NULL,1,'License In',NULL,60.3105,103.8281,0.0000,0.0000,91.6877,143.6211,0.0000,0.0000,44.6611),(79,9,2,4,'Pitching for Licensing','2017-02-08 00:00:00',NULL,NULL,1,'Pitching for Licensing',NULL,60.3105,103.8281,0.0000,0.0000,91.6877,143.6211,0.0000,0.0000,12.7603),(80,10,4,1,'Employee Recruiting','2017-02-08 00:00:00',NULL,NULL,1,'Employee Recruiting',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,363.6300),(81,10,4,1,'Starters & Leavers','2017-02-08 00:00:00',NULL,NULL,1,'Starters and Leavers',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,121.2100),(82,10,4,1,'Employee Time Tracking','2017-02-08 00:00:00',NULL,NULL,1,'Employee Time Tracking',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,90.9075),(83,10,4,1,'Employee Performance Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Employee Performance Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,363.6300),(84,10,4,1,'Employee T&E','2017-02-08 00:00:00',NULL,NULL,2,'Employee T&E',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,181.8150),(85,10,4,1,'Employee Experience','2017-02-08 00:00:00',NULL,NULL,2,'Employee Experience',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,527.8011,656.3114,51.9471),(86,10,4,1,'Contractor Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Contractor Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,181.8150),(87,10,4,1,'Compensation & Benefits','2017-02-08 00:00:00',NULL,NULL,1,'Compensation and Benefits',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,72.7260),(88,10,4,1,'Employee Training','2017-02-08 00:00:00',NULL,NULL,1,'Employee Training',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,363.6300),(89,10,4,1,'Employee Data Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Employee Data Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,363.6300),(90,11,3,2,'Master Data Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Master Data Management',NULL,0.0000,0.0000,0.0000,0.0000,3092.7727,4677.9117,0.0000,0.0000,604.8148),(91,11,3,2,'Collaboration','2017-02-08 00:00:00',NULL,NULL,2,'Information Sharing & Collaboration',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(92,11,3,2,'Service Delivery','2017-02-08 00:00:00',NULL,NULL,2,'Service Delivery',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(93,11,3,2,'Enterprise Architecture','2017-02-08 00:00:00',NULL,NULL,2,'Enterprise Architecture',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(94,11,3,2,'Enterprise Service Bus','2017-02-08 00:00:00',NULL,NULL,1,'Enterprise Service Bus',NULL,2780.0000,4630.0000,0.0000,0.0000,330.0000,590.0000,0.0000,0.0000,4013.3333),(95,11,3,2,'API','2017-02-08 00:00:00',NULL,NULL,1,'API',NULL,0.0000,0.0000,180.0000,295.0000,0.0000,0.0000,40.0000,65.0000,256.6667),(96,11,3,2,'IT Project Control','2017-02-08 00:00:00',NULL,NULL,1,'IT Project Control',NULL,0.0000,0.0000,4285.7896,5656.9300,0.0000,0.0000,1553.7060,1860.6713,5199.8832),(97,11,3,2,'Change Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Change Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(98,11,3,2,'Incident Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Incident Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(99,11,3,2,'Data Governance','2017-02-08 00:00:00',NULL,NULL,1,'Data Governance',NULL,3500.0000,3500.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(100,12,3,4,'Email','2017-02-08 00:00:00',NULL,NULL,1,'Email',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(101,12,3,4,'Service Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Service Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(102,12,3,4,'Desktop & Tools','2017-02-08 00:00:00',NULL,NULL,1,'Desktop and Tools',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(103,12,3,4,'Telephony','2017-02-08 00:00:00',NULL,NULL,2,'Telephony',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(104,12,3,4,'Infrastructure Mgmt','2017-02-08 00:00:00',NULL,NULL,2,'Infrastructure Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,8473.3333),(105,12,3,4,'Content Delivery Network','2017-02-08 00:00:00',NULL,NULL,2,'Content Delivery Network',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(106,12,3,4,'Vendor Contract Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Vendor Contract Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(107,12,3,4,'Network Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Network Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(108,12,3,4,'Security Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Security Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(109,12,3,4,'Database Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Database Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(110,12,3,4,'Storage Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Storage Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(111,12,3,4,'Computing Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Computing Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(112,12,3,4,'Metering & Billing','2017-02-08 00:00:00',NULL,NULL,1,'Metering and Billing',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(113,13,4,1,'Demand Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Demand Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,600.0000),(114,13,4,1,'Service Definition','2017-02-08 00:00:00',NULL,NULL,1,'Service Definition',NULL,0.0000,0.0000,1500.0000,1500.0000,0.0000,0.0000,0.0000,0.0000,600.0000),(115,13,4,1,'Service Configuration','2017-02-08 00:00:00',NULL,NULL,1,'Service Configuration',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,600.0000),(116,13,4,1,'Service Pricing','2017-02-08 00:00:00',NULL,NULL,1,'Service Pricing',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,600.0000),(117,13,4,1,'Service Level Mgmt.','2017-02-08 00:00:00',NULL,NULL,1,'Service Level Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,600.0000),(118,9,2,4,'Blanket Licensing','2017-02-08 00:00:00',NULL,NULL,2,'Blanket Licensing',NULL,60.3105,103.8281,0.0000,0.0000,91.6877,143.6211,0.0000,0.0000,11.1653),(119,10,4,1,'Performance Mgmt.','2017-02-08 00:00:00',NULL,NULL,2,'Performance Management',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,363.6300),(120,9,2,4,' ***Duplicate Sales Pitch','2017-02-08 00:00:00',NULL,NULL,1,'Duplicate -- Sales Pitching',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(121,10,4,1,'Time Tracking','2017-02-08 00:00:00',NULL,NULL,1,'Time Tracking',NULL,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(122,8,1,2,'Report request performance','2017-02-08 00:00:00',NULL,NULL,1,'Report request performance',NULL,440.2070,810.1770,229.8018,359.1214,247.7501,412.1224,234.4212,242.9711,1002.8685);
/*!40000 ALTER TABLE `buscapabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buscapabilitiestranslog`
--

DROP TABLE IF EXISTS `buscapabilitiestranslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buscapabilitiestranslog` (
  `busCapTransLogID` int(10) NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `busCapID` datetime DEFAULT NULL,
  `BusDomainID` smallint(5) DEFAULT NULL,
  `busCapStatusID` int(10) DEFAULT NULL,
  `busCapTypeID` int(10) DEFAULT NULL,
  `busCapabilityName` varchar(255) DEFAULT NULL,
  `EcosysID` int(10) DEFAULT NULL,
  `busCapCreationDate` datetime DEFAULT NULL,
  `busCapDiscontinueDate` datetime DEFAULT NULL,
  `releaseID` int(10) DEFAULT NULL,
  `CapabilitiesAlias` varchar(255) DEFAULT NULL,
  `OT-Buy-Low` decimal(19,4) DEFAULT NULL,
  `OT-Buy-High` decimal(19,4) DEFAULT NULL,
  `OT-Build-Low` decimal(19,4) DEFAULT NULL,
  `OT-Build-High` decimal(19,4) DEFAULT NULL,
  `Oper-Buy-Low` decimal(19,4) DEFAULT NULL,
  `Oper-Buy-High` decimal(19,4) DEFAULT NULL,
  `Oper-Build-Low` decimal(19,4) DEFAULT NULL,
  `Oper-Build-High` decimal(19,4) DEFAULT NULL,
  `AvgCost` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`busCapTransLogID`),
  UNIQUE KEY `busCapTransLogID` (`busCapTransLogID`),
  KEY `busCapTypeID` (`busCapTypeID`),
  KEY `busCapStatusID` (`busCapStatusID`),
  KEY `BusDomainID` (`BusDomainID`),
  KEY `busCapID` (`busCapID`),
  KEY `EcosysID` (`EcosysID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buscapabilitiestranslog`
--

LOCK TABLES `buscapabilitiestranslog` WRITE;
/*!40000 ALTER TABLE `buscapabilitiestranslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `buscapabilitiestranslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buscapabilitystatus`
--

DROP TABLE IF EXISTS `buscapabilitystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buscapabilitystatus` (
  `busCapStatusID` int(10) NOT NULL,
  `busCapStatusDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`busCapStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buscapabilitystatus`
--

LOCK TABLES `buscapabilitystatus` WRITE;
/*!40000 ALTER TABLE `buscapabilitystatus` DISABLE KEYS */;
INSERT INTO `buscapabilitystatus` VALUES (1,'Active'),(2,'Suspended'),(3,'Discontinued');
/*!40000 ALTER TABLE `buscapabilitystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buscapabilitytype`
--

DROP TABLE IF EXISTS `buscapabilitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buscapabilitytype` (
  `busCapeTypeID` int(10) NOT NULL,
  `busCapeName` varchar(255) DEFAULT NULL,
  `busCapDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`busCapeTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buscapabilitytype`
--

LOCK TABLES `buscapabilitytype` WRITE;
/*!40000 ALTER TABLE `buscapabilitytype` DISABLE KEYS */;
INSERT INTO `buscapabilitytype` VALUES (1,'CR','Change Request'),(2,'KD','Known Differences'),(3,'Gap','Development Gap'),(4,'RQ','Requiement');
/*!40000 ALTER TABLE `buscapabilitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businessdomains`
--

DROP TABLE IF EXISTS `businessdomains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businessdomains` (
  `BusDomainID` double DEFAULT NULL,
  `DomainDesc` varchar(255) DEFAULT NULL,
  `DomainDescAlias` varchar(255) DEFAULT NULL,
  UNIQUE KEY `BusDomainID` (`BusDomainID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businessdomains`
--

LOCK TABLES `businessdomains` WRITE;
/*!40000 ALTER TABLE `businessdomains` DISABLE KEYS */;
INSERT INTO `businessdomains` VALUES (1,'Strategy','Strategy'),(2,'Talent Management','Talent Management'),(3,'Asset Management','Asset Management'),(4,'Product Management','Product Management'),(5,'Marketing','Marketing'),(6,'Sales and Distribution','Sales and Distribution'),(7,'Finance','Finance'),(8,'Rights Management','Rights Management'),(9,'License Management','Licensing Management'),(10,'HR','HR'),(11,'IT','IT'),(12,'Infrastructure','Infrastructure'),(13,'Service Management','Service Management');
/*!40000 ALTER TABLE `businessdomains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy operating summary`
--

DROP TABLE IF EXISTS `buy operating summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy operating summary` (
  `ID` int(10) NOT NULL,
  `Capabilities` varchar(255) DEFAULT NULL,
  `Vendor(s)` varchar(255) DEFAULT NULL,
  `Arch Domain` varchar(255) DEFAULT NULL,
  `Low` decimal(19,4) DEFAULT NULL,
  `High` decimal(19,4) DEFAULT NULL,
  `Confidence` double DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy operating summary`
--

LOCK TABLES `buy operating summary` WRITE;
/*!40000 ALTER TABLE `buy operating summary` DISABLE KEYS */;
INSERT INTO `buy operating summary` VALUES (1,'360 Mgmt.','','',0.0000,0.0000,0),(2,'Accounts Payables','Accenture-SAP; HCL-SAP','Business-Trans-Processing',182.4588,189.9588,0),(3,'Accounts Receivables','Accenture-SAP; HCL-SAP','Business-Trans-Processing',182.4588,189.9588,0),(4,'Advertising Sales','Accenture (DigiPlug & Microsoft)','DAM',215.1754,375.1754,0),(5,'API','','',0.0000,0.0000,0),(6,'Asset Classification & Storage','Accenture (DigiPlug); HCL (Artesia); Cogn-AssetServe','DAM; Digital Asset Storage',192.5592,252.7764,0),(7,'Asset Creation','Accenture (DigiPlug); HCL (Artesia); Cogn-AssetServe','DAM; Digital Asset Storage',192.5592,252.7764,0),(8,'Asset Indexing & Search','Accenture (DigiPlug); HCL (Artesia); Cogn-AssetServe','DAM; Digital Asset Storage',192.5592,252.7764,0),(9,'Asset Ingestion','Accenture (DigiPlug); HCL (Artesia); Cogn-AssetServe','DAM; Digital Asset Storage',192.5592,252.7764,0),(10,'Asset Metadata Mgmt.','Accenture (DigiPlug); HCL (Artesia); Cogn-AssetServe','DAM; Digital Asset Storage',192.5592,252.7764,0),(11,'Auditing and Controls','Accenture-SAP; HCL-SAP','Business-Trans-Processing',182.4588,189.9588,0),(12,'B2B/Society Feeds','Accenture (DigiPlug); HCL (SAP)','DAM',101.8421,171.8421,0),(13,'Blanket Licensing','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',91.6877,143.6211,0),(14,'Brand Mgmt. (Artist, Label, Company)','HCL-SAP','Sales & Marketing',39.4856,42.7761,0),(15,'Campaign Mgmt.','HCL-SAP','Sales & Marketing',39.4856,42.7761,0),(16,'Cash Mgmt.','Accenture-SAP; HCL-SAP','Business-Trans-Processing',182.4588,189.9588,0),(17,'Casting Opps/B2B','HCL-SAP','Sales & Marketing',39.4856,42.7761,0),(18,'Change Mgmt.','','',0.0000,0.0000,0),(19,'Channel Experience','HCL-SAP','Sales & Marketing',39.4856,42.7761,0),(20,'Collaboration','','',0.0000,0.0000,0),(21,'Compensation & Benefits','','',0.0000,0.0000,0),(22,'Competitive Analytics','Accenture (Microsoft)','Data Analytics',113.3333,203.3333,0),(23,'Computing Mgmt.','Accenture-Azure; HCL-MY-Cloud','Cloud Fabric and Management',0.0000,0.0000,0),(24,'Consolidated Financial Reporting','Accenture-SAP; HCL-SAP','Business-Trans-Processing',182.4588,189.9588,0),(25,'Content Delivery Network','Accenture-Azure; HCL-MY-Cloud','Cloud Fabric and Management',0.0000,0.0000,0),(26,'Contract Generation','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',247.7501,412.1224,0),(27,'Contract Mgmt.','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',247.7501,412.1224,0),(28,'Contractor Mgmt.','','',0.0000,0.0000,0),(29,'Co-op Advertising','Accenture (DigiPlug); HCL (SAP)','DAM',101.8421,171.8421,0),(30,'Copyright Licensing','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',91.6877,143.6211,0),(31,'Copyright Registration','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',247.7501,412.1224,0),(32,'Credit & Collections','Accenture-SAP; HCL-SAP','Business-Trans-Processing',182.4588,189.9588,0),(33,'Customer Satisfaction Tracking','HCL-SAP','Sales & Marketing',39.4856,42.7761,0),(34,'D2C Order Mgmt.','Accenture (DigiPlug); HCL (SAP)','DAM',101.8421,171.8421,0),(35,'Data Governance','','',0.0000,0.0000,0),(36,'Database Mgmt.','Accenture-Microsoft; HCL-Oralce; Cong-IBM','Data Warehouse',0.0000,0.0000,0),(37,'Demand Mgmt.','','',0.0000,0.0000,0),(38,'Desktop & Tools','','',0.0000,0.0000,0),(39,'Email','','',0.0000,0.0000,0),(40,'Employee Data Mgmt.','','',0.0000,0.0000,0),(41,'Employee Experience',' ',' ',0.0000,0.0000,0),(42,'Employee Performance Mgmt.','','',0.0000,0.0000,0),(43,'Employee Recruiting','','',0.0000,0.0000,0),(44,'Employee T&E','','',0.0000,0.0000,0),(45,'Employee Time Tracking','','',0.0000,0.0000,0),(46,'Employee Training','','',0.0000,0.0000,0),(47,'Enterprise Architecture','','',0.0000,0.0000,0),(48,'Enterprise Service Bus','Accenture-Development','Shared Event Bus',330.0000,590.0000,0),(49,'Fan Metadata Mgmt.','HCL-SAP','Sales & Marketing',39.4856,42.7761,0),(50,'Financial Planning & Analysis','Accenture-SAP; HCL-SAP','Business-Trans-Processing',182.4588,189.9588,0),(51,'General Ledger','Accenture-SAP; HCL-SAP','Business-Trans-Processing',182.4588,189.9588,0),(52,'Global Fan/Customer Experience','HCL-SAP','Sales & Marketing',39.4856,42.7761,0),(53,'Incident Mgmt.','','',0.0000,0.0000,0),(54,'Income Tracking','Accenture (DigiPlug); HCL (SAP)','DAM',101.8421,171.8421,0),(55,'Infrastructure Mgmt','Accenture-Azure; HCL-MY-Cloud','Cloud Fabric and Management',0.0000,0.0000,0),(56,'Innovation','','',0.0000,0.0000,0),(57,'Investment Mgmt.','','',0.0000,0.0000,0),(58,'Invoicing','Accenture (DigiPlug); HCL (SAP)','DAM',101.8421,171.8421,0),(59,'IT Project Control','','',0.0000,0.0000,0),(60,'License In','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',91.6877,143.6211,0),(61,'License Out','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',91.6877,143.6211,0),(62,'Market Analytics/Intel','Accenture (Microsoft)+I3','Data Analytics',152.8189,203.3333,0),(63,'Marketing Collateral Storage','HCL-SAP','Sales & Marketing',39.4856,42.7761,0),(64,'Marketing Strategy','HCL-SAP','Sales & Marketing',39.4856,42.7761,0),(65,'Master Data Mgmt.','Accenture Dev;  HCL (SAP); Cognizant (IBM)','Master Data Management;  Master Data',3092.7727,4677.9117,0),(66,'Mechanical Licensing','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',91.6877,143.6211,0),(67,'Metadata Tagging','Accenture (DigiPlug); HCL (Artesia); Cogn-AssetServe','DAM; Digital Asset Storage',192.5592,252.7764,0),(68,'Metering & Billing','','',0.0000,0.0000,0),(69,'Network Mgmt.','Accenture-Azure; HCL-MY-Cloud','Cloud Fabric and Management',0.0000,0.0000,0),(70,'Performance Mgmt.','','',0.0000,0.0000,0),(71,'Pitching for Licensing','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',91.6877,143.6211,0),(72,'Press & Promotions','HCL-SAP','Sales & Marketing',39.4856,42.7761,0),(73,'Procurement','Accenture-SAP; HCL-SAP','Business-Trans-Processing',182.4588,189.9588,0),(74,'Product Bundling','Accenture (DigiPlug); Cogn-Mediamorph','DAM',106.3826,155.2287,0),(75,'Product Costing','Accenture (DigiPlug); Cogn-Mediamorph','DAM',106.3826,155.2287,0),(76,'Product Design','Accenture (DigiPlug); Cogn-Mediamorph','DAM',106.3826,155.2287,0),(77,'Product Development','Accenture (DigiPlug); Cogn-Mediamorph','DAM',106.3826,155.2287,0),(78,'Product Lifecycle Mgmt.','Accenture (DigiPlug); Cogn-Mediamorph','DAM',106.3826,155.2287,0),(79,'Product Metadata  Mgmt.','Accenture (DigiPlug); Cogn-Mediamorph','DAM',106.3826,155.2287,0),(80,'Product Pricing','Accenture (DigiPlug); Cogn-Mediamorph','DAM',106.3826,155.2287,0),(81,'Project Accounting','Accenture-SAP; HCL-SAP','Business-Trans-Processing',182.4588,189.9588,0),(82,'Release Planning','HCL-SAP','Sales & Marketing',39.4856,42.7761,0),(83,'Release Strategy Development','HCL-SAP','Sales & Marketing',39.4856,42.7761,0),(84,'Report request performance','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',247.7501,412.1224,0),(85,'Rights Analysis','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',247.7501,412.1224,0),(86,'Rights Exploitation','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',247.7501,412.1224,0),(87,'Rights Metadata Mgmt.','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',247.7501,412.1224,0),(88,'Rights Tracking & Visibility','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',247.7501,412.1224,0),(89,'Royalties Mgmt.',' ',' ',0.0000,0.0000,0),(90,'Sales Analytics','Accenture (DigiPlug & Microsoft); WMG - SAS; HCL (SAP)','Analytics',101.8421,171.8421,0),(91,'Sales Forecasting & Planning','Accenture (DigiPlug); HCL (SAP)','DAM',101.8421,171.8421,0),(92,'Sales Ingestion','Accenture (DigiPlug); HCL (SAP); Cogn (assetServ)','DAM; Consumer Ingestion',1577.4508,2519.4942,0),(93,'Sales Pitching','Accenture (DigiPlug); HCL (SAP)','DAM',101.8421,171.8421,0),(94,'Security Mgmt.','','',0.0000,0.0000,0),(95,'Service Configuration',' ','',0.0000,0.0000,0),(96,'Service Definition','','',0.0000,0.0000,0),(97,'Service Delivery','','',0.0000,0.0000,0),(98,'Service Level Mgmt.','','',0.0000,0.0000,0),(99,'Service Mgmt.','Accenture-Azure; HCL-MY-Cloud','Cloud Fabric and Management',0.0000,0.0000,0),(100,'Service Pricing','','',0.0000,0.0000,0),(101,'Starters & Leavers','','',0.0000,0.0000,0),(102,'Storage Mgmt.','Accenture-Microsoft; Cogn-IBM','Big Data',0.0000,0.0000,0),(103,'Strategic Planning','','',0.0000,0.0000,0),(104,'Strategy Execution & Tracking','','',0.0000,0.0000,0),(105,'Sync Licensing','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',91.6877,143.6211,0),(106,'Talent Development','','',0.0000,0.0000,0),(107,'Talent Discovery','','',0.0000,0.0000,0),(108,'Talent Engagement','','',0.0000,0.0000,0),(109,'Talent Experience',' ',' ',0.0000,0.0000,0),(110,'Talent Metadata Mgmt.','','',0.0000,0.0000,0),(111,'Talent Retention','','',0.0000,0.0000,0),(112,'Tax and Treasury','Accenture-SAP; HCL-SAP','Business-Trans-Processing',182.4588,189.9588,0),(113,'Telephony','','',0.0000,0.0000,0),(114,'Vendor Contract Mgmt.','','',0.0000,0.0000,0),(115,'Vendor Mgmt.','Accenture-SAP; HCL-SAP','Business-Trans-Processing',182.4588,189.9588,0),(116,'Visioning',' ',' ',0.0000,0.0000,0),(117,NULL,NULL,NULL,NULL,NULL,NULL),(118,NULL,NULL,NULL,13483.4693,19642.3890,NULL);
/*!40000 ALTER TABLE `buy operating summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy ot summary`
--

DROP TABLE IF EXISTS `buy ot summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy ot summary` (
  `ID` int(10) NOT NULL,
  `Capabilities` varchar(255) DEFAULT NULL,
  `Vendor(s)` varchar(255) DEFAULT NULL,
  `Arch Domain` varchar(255) DEFAULT NULL,
  `Low` decimal(19,4) DEFAULT NULL,
  `High` decimal(19,4) DEFAULT NULL,
  `Confidence` double DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy ot summary`
--

LOCK TABLES `buy ot summary` WRITE;
/*!40000 ALTER TABLE `buy ot summary` DISABLE KEYS */;
INSERT INTO `buy ot summary` VALUES (1,'360 Mgmt.','','',0.0000,0.0000,0.5),(2,'Accounts Payables','Accenture-SAP; HCL-SAP','Business-Trans-Processing',0.0000,0.0000,0.9),(3,'Accounts Receivables','Accenture-SAP; HCL-SAP','Business-Trans-Processing',0.0000,0.0000,0.75),(4,'Advertising Sales','Accenture (DigiPlug & Microsoft)','DAM',78.4211,130.7895,0.5),(5,'API','','',0.0000,0.0000,0.5),(6,'Asset Classification & Storage','Accenture (DigiPlug); HCL (Artesia); Cogn-AssetServe','DAM; Digital Asset Storage',185.8180,247.1832,0.5),(7,'Asset Creation','Accenture (DigiPlug); HCL (Artesia); Cogn-AssetServe','DAM; Digital Asset Storage',185.8180,247.1832,0.5),(8,'Asset Indexing & Search','Accenture (DigiPlug); HCL (Artesia); Cogn-AssetServe','DAM; Digital Asset Storage',185.8180,247.1832,0.5),(9,'Asset Ingestion','Accenture (DigiPlug); HCL (Artesia); Cogn-AssetServe','DAM; Digital Asset Storage',185.8180,247.1832,0.5),(10,'Asset Metadata Mgmt.','Accenture (DigiPlug); HCL (Artesia); Cogn-AssetServe','DAM; Digital Asset Storage',185.8180,247.1832,0.5),(11,'Auditing and Controls','Accenture-SAP; HCL-SAP','Business-Trans-Processing',0.0000,0.0000,0.82),(12,'B2B/Society Feeds','Accenture (DigiPlug); HCL (SAP)','DAM',78.4211,130.7895,0.5),(13,'Blanket Licensing','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',60.3105,103.8281,0.5),(14,'Brand Mgmt. (Artist, Label, Company)','HCL-SAP','Sales & Marketing',51.2692,108.8333,0.5),(15,'Campaign Mgmt.','HCL-SAP','Sales & Marketing',51.2692,108.8333,0.63),(16,'Cash Mgmt.','Accenture-SAP; HCL-SAP','Business-Trans-Processing',0.0000,0.0000,0.75),(17,'Casting Opps/B2B','HCL-SAP','Sales & Marketing',51.2692,108.8333,0.5),(18,'Change Mgmt.','','',0.0000,0.0000,0.75),(19,'Channel Experience','HCL-SAP','Sales & Marketing',51.2692,108.8333,0.5),(20,'Collaboration','','',0.0000,0.0000,0.75),(21,'Compensation & Benefits','','',0.0000,0.0000,0.82),(22,'Competitive Analytics','Accenture (Microsoft); WMG - SAS','Data Analytics',1162.5000,1690.0000,0.63),(23,'Computing Mgmt.','Accenture-Azure; HCL-MY-Cloud','Cloud Fabric and Management',0.0000,0.0000,0.9),(24,'Consolidated Financial Reporting','Accenture-SAP; HCL-SAP','Business-Trans-Processing',0.0000,0.0000,0.75),(25,'Content Delivery Network','Accenture-Azure; HCL-MY-Cloud','Cloud Fabric and Management',0.0000,0.0000,0.75),(26,'Contract Generation','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',440.2070,810.1770,0.5),(27,'Contract Mgmt.','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',440.2070,810.1770,0.5),(28,'Contractor Mgmt.','','',0.0000,0.0000,0.75),(29,'Co-op Advertising','Accenture (DigiPlug); HCL (SAP)','DAM',78.4211,130.7895,0.5),(30,'Copyright Licensing','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',60.3105,103.8281,0.5),(31,'Copyright Registration','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',440.2070,810.1770,0.5),(32,'Credit & Collections','Accenture-SAP; HCL-SAP','Business-Trans-Processing',0.0000,0.0000,0.75),(33,'Customer Satisfaction Tracking','HCL-SAP','Sales & Marketing',51.2692,108.8333,0.5),(34,'D2C Order Mgmt.','Accenture (DigiPlug); HCL (SAP)','DAM',78.4211,130.7895,0.75),(35,'Data Governance','Wmg - Composite','Big Data',3500.0000,3500.0000,0.75),(36,'Database Mgmt.','Accenture-Microsoft; HCL-Oracle; Cong-IBM','Data Warehouse',0.0000,0.0000,0.9),(37,'Demand Mgmt.','','',0.0000,0.0000,0.5),(38,'Desktop & Tools','','',0.0000,0.0000,0.9),(39,'Email','','',0.0000,0.0000,0.75),(40,'Employee Data Mgmt.','','',0.0000,0.0000,0.75),(41,'Employee Experience','',' ',0.0000,0.0000,0.5),(42,'Employee Performance Mgmt.','','',0.0000,0.0000,0.75),(43,'Employee Recruiting','','',0.0000,0.0000,0.75),(44,'Employee T&E','','',0.0000,0.0000,0.75),(45,'Employee Time Tracking','','',0.0000,0.0000,0.75),(46,'Employee Training','','',0.0000,0.0000,0.75),(47,'Enterprise Architecture','','',0.0000,0.0000,0.5),(48,'Enterprise Service Bus','Accenture-Development','Shared Event Bus',2780.0000,4630.0000,0.75),(49,'Fan Metadata Mgmt.','HCL-SAP','Sales & Marketing',51.2692,108.8333,0.63),(50,'Financial Planning & Analysis','Accenture-SAP; HCL-SAP','Business-Trans-Processing',0.0000,0.0000,0.75),(51,'General Ledger','Accenture-SAP; HCL-SAP','Business-Trans-Processing',0.0000,0.0000,0.9),(52,'Global Fan/Customer Experience','HCL-SAP','Sales & Marketing',51.2692,108.8333,0.82),(53,'Incident Mgmt.','','',0.0000,0.0000,0.75),(54,'Income Tracking','Accenture (DigiPlug); HCL (SAP)','DAM',78.4211,130.7895,0.75),(55,'Infrastructure Mgmt','Accenture-Azure; HCL-MY-Cloud','Cloud Fabric and Management',0.0000,0.0000,0.75),(56,'Innovation','','',0.0000,0.0000,0.5),(57,'Investment Mgmt.','','',0.0000,0.0000,0.75),(58,'Invoicing','Accenture (DigiPlug); HCL (SAP)','DAM',78.4211,130.7895,0.75),(59,'IT Project Control','','',0.0000,0.0000,0.75),(60,'License In','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',60.3105,103.8281,0.5),(61,'License Out','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',60.3105,103.8281,0.5),(62,'Market Analytics/Intel','Accenture (Microsoft); WMG - SAS','Data Analytics',1213.7692,1690.0000,0.63),(63,'Marketing Collateral Storage','HCL-SAP','Sales & Marketing',51.2692,108.8333,0.5),(64,'Marketing Strategy','HCL-SAP','Sales & Marketing',51.2692,108.8333,0.5),(65,'Master Data Mgmt.','Accenture Dev;  HCL (SAP); Cognizant (IBM)','Master Data Management;  Master Data',0.0000,0.0000,0.75),(66,'Mechanical Licensing','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',60.3105,103.8281,0.7),(67,'Metadata Tagging','Accenture (DigiPlug); HCL (Artesia); Cogn-AssetServe','DAM; Digital Asset Storage',185.8180,247.1832,0.5),(68,'Metering & Billing','','',0.0000,0.0000,0.75),(69,'Network Mgmt.','Accenture-Azure; HCL-MY-Cloud','Cloud Fabric and Management',0.0000,0.0000,0.9),(70,'Performance Mgmt.','','',0.0000,0.0000,0.75),(71,'Pitching for Licensing','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',60.3105,103.8281,0.5),(72,'Press & Promotions','HCL-SAP','Sales & Marketing',51.2692,108.8333,0.63),(73,'Procurement','Accenture-SAP; HCL-SAP','Business-Trans-Processing',0.0000,0.0000,0.9),(74,'Product Bundling','Accenture (DigiPlug); Cogn-Mediamorph','DAM',180.5567,242.0101,0.75),(75,'Product Costing','Accenture (DigiPlug); Cogn-Mediamorph','DAM',180.5567,242.0101,0.75),(76,'Product Design','Accenture (DigiPlug); Cogn-Mediamorph','DAM',180.5567,242.0101,0.5),(77,'Product Development','Accenture (DigiPlug); Cogn-Mediamorph','DAM',180.5567,242.0101,0.5),(78,'Product Lifecycle Mgmt.','Accenture (DigiPlug); Cogn-Mediamorph','DAM',180.5567,242.0101,0.75),(79,'Product Metadata  Mgmt.','Accenture (DigiPlug); Cogn-Mediamorph','DAM',180.5567,242.0101,0.5),(80,'Product Pricing','Accenture (DigiPlug); Cogn-Mediamorph','DAM',180.5567,242.0101,0.75),(81,'Project Accounting','Accenture-SAP; HCL-SAP','Business-Trans-Processing',0.0000,0.0000,0.9),(82,'Release Planning','HCL-SAP','Sales & Marketing',51.2692,108.8333,0.63),(83,'Release Strategy Development','HCL-SAP','Sales & Marketing',51.2692,108.8333,0.5),(84,'Report request performance','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',440.2070,810.1770,0.5),(85,'Rights Analysis','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',440.2070,810.1770,0.5),(86,'Rights Exploitation','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',440.2070,810.1770,0.5),(87,'Rights Metadata Mgmt.','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',440.2070,810.1770,0.5),(88,'Rights Tracking & Visibility','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management; Royalties Management',440.2070,810.1770,0.5),(89,'Royalties Mgmt.',' ',' ',0.0000,0.0000,0.9),(90,'Sales Analytics','Accenture (DigiPlug & Microsoft); WMG - SAS; HCL (SAP)','Analytics',1240.9211,1820.7895,0.5),(91,'Sales Forecasting & Planning','Accenture (DigiPlug); HCL (SAP)','DAM',78.4211,130.7895,0.75),(92,'Sales Ingestion','Accenture (DigiPlug); HCL (SAP); Cogn (assetServ)','DAM; Consumer Ingestion',1801.3285,3032.6507,0.5),(93,'Sales Pitching','Accenture (DigiPlug); HCL (SAP)','DAM',78.4211,130.7895,0.5),(94,'Security Mgmt.','','',0.0000,0.0000,0.75),(95,'Service Configuration','','',0.0000,0.0000,0.82),(96,'Service Definition','','',0.0000,0.0000,0.75),(97,'Service Delivery','','',0.0000,0.0000,0.75),(98,'Service Level Mgmt.','','',0.0000,0.0000,0.82),(99,'Service Mgmt.','Accenture-Azure; HCL-MY-Cloud','Cloud Fabric and Management',0.0000,0.0000,0.75),(100,'Service Pricing','','',0.0000,0.0000,0.75),(101,'Starters & Leavers','','',0.0000,0.0000,0.75),(102,'Storage Mgmt.','Accenture-Microsoft; Cogn-IBM','Big Data',0.0000,0.0000,0.9),(103,'Strategic Planning','','',0.0000,0.0000,0.5),(104,'Strategy Execution & Tracking','','',0.0000,0.0000,0.5),(105,'Sync Licensing','Accenture (DigiPlug); Cogn-Mediamorph','Rights Management',60.3105,103.8281,0.5),(106,'Talent Development','','',0.0000,0.0000,0.5),(107,'Talent Discovery','Accenture (Microsoft); WMG - SAS','Data Analytics',1162.5000,1690.0000,0.5),(108,'Talent Engagement','','',0.0000,0.0000,0.5),(109,'Talent Experience',' ',' ',0.0000,0.0000,0.5),(110,'Talent Metadata Mgmt.','Accenture Dev;  HCL (SAP); Cognizant (IBM)','Master Data Management',0.0000,0.0000,0.5),(111,'Talent Retention','','',0.0000,0.0000,0.5),(112,'Tax and Treasury','Accenture-SAP; HCL-SAP','Business-Trans-Processing',0.0000,0.0000,0.75),(113,'Telephony','','',0.0000,0.0000,0.9),(114,'Vendor Contract Mgmt.','','',0.0000,0.0000,0.75),(115,'Vendor Mgmt.','Accenture-SAP; HCL-SAP','Business-Trans-Processing',0.0000,0.0000,0.9),(116,'Visioning',' ',' ',0.0000,0.0000,0.5),(117,NULL,NULL,NULL,NULL,NULL,NULL),(118,NULL,NULL,NULL,20426.2526,30791.1391,NULL);
/*!40000 ALTER TABLE `buy ot summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data entities`
--

DROP TABLE IF EXISTS `data entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data entities` (
  `dataEntityID` int(10) NOT NULL,
  `Data Entity` varchar(255) DEFAULT NULL,
  `Data Group` varchar(255) DEFAULT NULL,
  `Physical` varchar(255) DEFAULT NULL,
  `Digital` varchar(255) DEFAULT NULL,
  UNIQUE KEY `ID` (`dataEntityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data entities`
--

LOCK TABLES `data entities` WRITE;
/*!40000 ALTER TABLE `data entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `data entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data-entity-categories`
--

DROP TABLE IF EXISTS `data-entity-categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data-entity-categories` (
  `ID` int(10) NOT NULL,
  `Data Entity` varchar(255) DEFAULT NULL,
  `Data Group` varchar(255) DEFAULT NULL,
  `Physical` varchar(255) DEFAULT NULL,
  `Digital` varchar(255) DEFAULT NULL,
  `DataType` int(10) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data-entity-categories`
--

LOCK TABLES `data-entity-categories` WRITE;
/*!40000 ALTER TABLE `data-entity-categories` DISABLE KEYS */;
INSERT INTO `data-entity-categories` VALUES (1,'Product','Master Data','Y','Y',1),(2,'Asset','Master Data','Y','Y',1),(3,'Work','Master Data','Y','Y',1),(4,'Artist','Master Data','Y','Y',1),(5,'Contract','Master Data','Y','Y',1),(6,'Project','Master Data','Y','Y',1),(7,'Vendor','Master Data','Y','Y',1),(8,'Customer','Master Data','Y','Y',1),(9,'Consumer','Master Data','Y','Y',1),(10,'Employee','Master Data','Y','Y',1),(11,'Royalty Acct','Master Data','Y','Y',1),(12,'Rights','Master Data','Y','Y',1),(13,'Participants','Master Data','Y','Y',1),(14,'Rls_Scheduling','Scheduling','Y','Y',2),(15,'Stock_POs','Procure to Pay','Y','N',2),(16,'Expense_POs','Procure to Pay','Y','Y',2),(17,'Receipts','Procure to Pay','Y','N',2),(18,'Inventory','Inventory','Y','N',2),(19,'Vouchers','Procure to Pay','Y','Y',2),(20,'Vend_Invoice','Procure to Pay','Y','Y',2),(21,'Vend_Payments','Procure to Pay','Y','Y',2),(22,'Phys_Cust_Orders','Order to Cash','Y','N',2),(23,'Pickticket','Order to Cash','Y','N',2),(24,'Packing_Slip','Order to Cash','Y','N',2),(25,'Ship_Confirm','Order to Cash','Y','N',2),(26,'Cust_Invoice','Order to Cash','Y','Y',2),(27,'AR','Order to Cash','Y','Y',2),(28,'Cash_Receipt','Order to Cash','Y','Y',2),(29,'Digital_Packaging','Procure to Pay','N','Y',2),(30,'Digital_Billing','Order to Cash','N','Y',2),(31,'Royalty_Ledger','Royalties','Y','Y',2),(32,'General_Ledger','General Ledger','Y','Y',2),(33,'Consumer_Activity','Consumer Data','Y','Y',2),(34,'Sales','Sales','Y','Y',2),(35,'Return_Auth','Order to Cash','Y','N',2),(36,'NULL','NULL',NULL,NULL,0);
/*!40000 ALTER TABLE `data-entity-categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_to_appmapping`
--

DROP TABLE IF EXISTS `data_to_appmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_to_appmapping` (
  `dataMappingID` int(10) NOT NULL,
  `appId` int(10) DEFAULT NULL,
  `dataEntityID` int(10) DEFAULT NULL,
  `dataImportID` int(10) DEFAULT NULL,
  `dataTypeID` int(10) DEFAULT NULL,
  PRIMARY KEY (`dataMappingID`),
  KEY `dataImportID` (`dataImportID`),
  KEY `ApplicationID` (`appId`),
  KEY `DataEntityID` (`dataEntityID`),
  KEY `dataTypeID` (`dataTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_to_appmapping`
--

LOCK TABLES `data_to_appmapping` WRITE;
/*!40000 ALTER TABLE `data_to_appmapping` DISABLE KEYS */;
INSERT INTO `data_to_appmapping` VALUES (1,180,1,2,1),(2,180,2,1,1),(3,180,4,3,1),(4,180,12,1,1),(5,35,1,1,1),(6,35,4,3,1),(7,35,7,1,1),(8,35,8,1,1),(9,35,15,1,2),(10,35,17,1,2),(11,35,18,1,2),(12,35,22,1,2),(13,35,23,1,2),(14,35,24,1,2),(15,35,25,1,2),(16,223,1,1,1),(17,223,4,3,1),(18,223,8,1,1),(19,223,22,1,2),(20,288,1,1,1),(21,288,4,3,1),(22,288,7,1,1),(23,288,8,1,1),(24,288,22,1,2),(25,301,1,1,1),(26,301,4,3,1),(27,301,14,2,2),(28,301,15,1,2),(29,301,17,1,2),(30,301,18,1,2),(31,301,26,1,2),(32,301,32,1,2),(33,352,1,3,1),(34,352,2,1,1),(35,352,3,1,1),(36,352,4,1,1),(37,352,8,2,1),(38,352,22,2,2),(39,352,32,2,2),(40,13,3,1,1),(41,13,5,1,1),(42,13,20,1,2),(43,13,26,1,2),(44,40,1,1,1),(45,40,4,3,1),(46,40,6,3,1),(47,40,7,2,1),(48,40,8,1,1),(49,40,32,1,2),(50,138,1,2,1),(51,138,8,1,1),(52,138,26,1,2),(53,198,6,2,1),(54,198,7,1,1),(55,198,8,1,1),(56,198,26,1,2),(57,198,32,1,2),(58,61,10,1,1),(59,104,10,1,1),(60,115,10,1,1),(61,120,10,1,1),(62,120,32,1,2),(63,144,10,1,1),(64,250,10,1,1),(65,250,32,1,2),(66,362,10,2,1),(67,273,10,1,1),(68,273,32,2,2),(69,156,1,1,1),(70,156,33,1,2),(71,194,1,1,1),(72,194,8,1,1),(73,194,33,1,2),(74,194,34,1,2),(75,204,1,1,1),(76,204,8,1,1),(77,204,22,1,2),(78,204,23,1,2),(79,204,24,1,2),(80,204,25,1,2),(81,298,1,1,1),(82,298,2,2,1),(83,298,4,2,1),(84,298,8,1,1),(85,298,17,1,2),(86,298,18,1,2),(87,298,22,1,2),(88,298,25,1,2),(89,298,34,1,2),(90,299,1,1,1),(91,299,2,2,1),(92,299,4,2,1),(93,299,8,1,1),(94,299,17,1,2),(95,299,18,1,2),(96,299,22,1,2),(97,299,25,1,2),(98,299,34,1,2),(99,349,1,1,1),(100,349,4,2,1),(101,349,8,1,1),(102,370,1,1,1),(103,370,2,2,1),(104,370,4,2,1),(105,370,8,1,1),(106,370,15,1,2),(107,370,17,1,2),(108,370,18,1,2),(109,370,22,1,2),(110,370,34,1,2),(111,59,1,1,1),(112,59,8,1,1),(113,162,1,1,1),(114,162,4,2,1),(115,162,8,1,1),(116,162,34,1,2),(117,31,2,1,1),(118,31,4,3,1),(119,49,1,1,1),(120,49,2,2,1),(121,49,3,3,1),(122,49,4,2,1),(123,68,1,3,1),(124,68,4,2,1),(125,68,5,1,1),(126,141,1,1,1),(127,141,2,1,1),(128,141,4,3,1),(129,141,12,3,1),(130,185,2,1,1),(131,185,4,2,1),(132,200,1,3,1),(133,200,2,1,1),(134,200,4,2,1),(135,245,1,1,1),(136,245,2,2,1),(137,245,4,2,1),(138,253,6,1,1),(139,265,1,1,1),(140,265,2,1,1),(141,265,4,2,1),(142,282,1,3,1),(143,282,2,2,1),(144,282,3,1,1),(145,282,4,1,1),(146,282,5,1,1),(147,282,6,3,1),(148,282,8,1,1),(149,282,12,1,1),(150,282,13,2,2),(151,282,26,1,2),(152,282,32,1,2),(153,282,34,1,2),(154,307,8,1,1),(155,310,1,3,1),(156,310,2,1,1),(157,310,3,1,1),(158,310,4,1,1),(159,310,14,1,2),(160,311,1,3,1),(161,311,2,1,1),(162,311,3,1,1),(163,311,4,1,1),(164,311,14,1,2),(165,315,1,3,1),(166,315,2,3,1),(167,315,4,1,1),(168,315,5,1,1),(169,315,12,1,1),(170,318,1,1,1),(171,318,2,1,1),(172,319,1,1,1),(173,319,2,1,1),(174,319,3,3,1),(175,319,12,1,1),(176,326,1,3,1),(177,326,2,2,1),(178,326,3,1,1),(179,326,4,1,1),(180,326,5,1,1),(181,326,11,1,1),(182,326,12,2,1),(183,326,13,3,2),(184,327,1,2,1),(185,327,2,1,1),(186,327,3,2,1),(187,327,4,2,1),(188,328,1,2,1),(189,328,2,1,1),(190,328,3,1,1),(191,328,4,2,1),(192,328,14,1,2),(193,329,1,2,1),(194,329,2,1,1),(195,329,3,1,1),(196,329,4,2,1),(197,329,14,2,2),(198,329,26,1,2),(199,329,32,1,2),(200,329,34,1,2),(201,330,1,2,1),(202,330,2,1,1),(203,330,3,1,1),(204,330,4,2,1),(205,330,11,1,1),(206,330,12,1,1),(207,330,13,2,2),(208,330,26,1,2),(209,330,32,1,2),(210,330,34,1,2),(211,331,1,3,1),(212,331,2,2,1),(213,331,3,1,1),(214,331,4,2,1),(215,331,8,1,1),(216,331,28,1,2),(217,331,32,1,2),(218,332,1,3,1),(219,332,2,1,1),(220,332,3,1,1),(221,332,4,2,1),(222,332,5,1,1),(223,332,11,1,1),(224,332,12,1,1),(225,332,13,1,2),(226,333,1,3,1),(227,333,2,1,1),(228,333,3,1,1),(229,333,4,2,1),(230,333,7,1,1),(231,333,11,1,1),(232,333,12,2,1),(233,333,20,1,2),(234,333,31,1,2),(235,333,32,1,2),(236,334,1,3,1),(237,334,2,1,1),(238,334,3,1,1),(239,334,4,1,1),(240,334,5,1,1),(241,334,11,1,1),(242,334,12,1,1),(243,334,13,2,2),(244,335,1,3,1),(245,335,2,1,1),(246,335,3,1,1),(247,335,4,1,1),(248,335,5,2,1),(249,336,1,3,1),(250,336,2,1,1),(251,336,3,1,1),(252,336,4,2,1),(253,336,5,2,1),(254,336,11,1,1),(255,336,13,2,2),(256,337,1,3,1),(257,337,2,1,1),(258,337,3,1,1),(259,337,4,1,1),(260,338,1,3,1),(261,338,2,1,1),(262,338,3,1,1),(263,338,4,1,1),(264,338,26,1,2),(265,338,32,1,2),(266,338,34,1,2),(267,339,1,3,1),(268,339,2,1,1),(269,339,3,1,1),(270,339,4,2,1),(271,339,5,2,1),(272,339,8,3,1),(273,339,11,1,1),(274,339,12,3,1),(275,339,13,2,2),(276,339,31,1,2),(277,340,1,3,1),(278,340,2,1,1),(279,340,3,1,1),(280,340,4,2,1),(281,340,5,2,1),(282,340,8,1,1),(283,340,34,1,2),(284,341,1,3,1),(285,341,2,1,1),(286,341,3,1,1),(287,341,4,2,1),(288,341,13,2,2),(289,341,31,1,2),(290,341,34,1,2),(291,342,1,3,1),(292,342,2,1,1),(293,342,3,1,1),(294,342,4,2,1),(295,343,1,3,1),(296,343,2,2,1),(297,343,3,2,1),(298,343,4,3,1),(299,343,7,1,1),(300,343,11,1,1),(301,343,13,3,2),(302,343,20,1,2),(303,343,21,1,2),(304,343,31,1,2),(305,343,34,1,2),(306,344,1,3,1),(307,344,2,1,1),(308,344,3,1,1),(309,344,4,3,1),(310,344,8,3,1),(311,344,11,1,1),(312,344,27,1,2),(313,344,28,1,2),(314,344,32,1,2),(315,344,34,1,2),(316,345,1,3,1),(317,345,2,1,1),(318,345,3,1,1),(319,345,4,3,1),(320,345,5,3,1),(321,345,8,1,1),(322,345,11,1,1),(323,345,21,1,2),(324,345,31,1,2),(325,345,32,1,2),(326,346,1,3,1),(327,346,2,1,1),(328,346,3,1,1),(329,346,4,3,1),(330,346,5,3,1),(331,346,8,1,1),(332,346,11,1,1),(333,347,1,3,1),(334,347,2,1,1),(335,347,3,1,1),(336,347,4,3,1),(337,347,5,3,1),(338,347,8,1,1),(339,347,11,1,1),(340,347,21,1,2),(341,347,31,1,2),(342,347,32,1,2),(343,348,2,1,1),(344,348,3,1,1),(345,348,4,3,1),(346,348,5,3,1),(347,348,8,1,1),(348,348,12,1,1),(349,5,1,2,1),(350,5,2,1,1),(351,5,3,1,1),(352,5,4,3,1),(353,5,5,1,1),(354,5,8,1,1),(355,5,12,3,1),(356,5,13,2,2),(357,19,1,1,1),(358,19,4,3,1),(359,19,8,1,1),(360,19,22,1,2),(361,19,23,1,2),(362,19,24,1,2),(363,19,25,1,2),(364,19,26,1,2),(365,57,2,1,1),(366,57,3,3,1),(367,57,4,3,1),(368,64,2,1,1),(369,64,4,3,1),(370,64,7,1,1),(371,64,8,1,1),(372,64,15,1,2),(373,64,18,1,2),(374,64,22,1,2),(375,85,1,1,1),(376,85,2,2,1),(377,85,4,3,1),(378,85,6,2,1),(379,85,7,1,1),(380,85,8,1,1),(381,85,12,3,1),(382,85,14,2,2),(383,85,15,1,2),(384,85,17,1,2),(385,85,18,1,2),(386,85,22,1,2),(387,85,23,1,2),(388,85,24,3,2),(389,85,25,1,2),(390,85,26,1,2),(391,85,27,1,2),(392,85,28,1,2),(393,85,32,2,2),(394,85,34,1,2),(395,85,35,1,2),(396,94,1,1,1),(397,94,2,2,1),(398,94,4,3,1),(399,94,8,1,1),(400,94,12,2,1),(401,94,13,2,2),(402,94,29,1,2),(403,94,30,1,2),(404,95,1,1,1),(405,95,4,3,1),(406,95,7,1,1),(407,95,14,2,2),(408,95,15,1,2),(409,95,18,1,2),(410,95,22,1,2),(411,95,34,1,2),(412,107,1,1,1),(413,107,2,1,1),(414,107,3,3,1),(415,107,4,2,1),(416,107,8,1,1),(417,107,13,2,2),(418,107,29,1,2),(419,107,30,1,2),(420,117,1,1,1),(421,117,4,3,1),(422,117,7,1,1),(423,117,8,1,1),(424,117,15,2,2),(425,117,18,2,2),(426,117,22,1,2),(427,117,25,2,2),(428,117,26,1,2),(429,128,1,1,1),(430,128,4,3,1),(431,128,8,1,1),(432,128,18,2,2),(433,128,22,1,2),(434,148,1,1,1),(435,148,2,2,1),(436,148,4,3,1),(437,148,6,3,1),(438,148,7,1,1),(439,148,8,1,1),(440,148,14,2,2),(441,148,15,1,2),(442,148,17,1,2),(443,148,18,1,2),(444,148,22,1,2),(445,148,23,1,2),(446,148,24,1,2),(447,148,25,1,2),(448,149,1,1,1),(449,149,2,3,1),(450,149,4,2,1),(451,149,14,1,2),(452,149,29,1,2),(453,150,1,1,1),(454,150,2,1,1),(455,150,3,3,1),(456,150,4,3,1),(457,150,8,1,1),(458,150,13,2,2),(459,150,29,1,2),(460,150,30,1,2),(461,151,1,1,1),(462,151,2,2,1),(463,151,4,3,1),(464,151,6,3,1),(465,151,7,1,1),(466,151,8,1,1),(467,151,14,2,2),(468,151,15,1,2),(469,151,17,1,2),(470,151,18,1,2),(471,151,22,1,2),(472,151,23,1,2),(473,151,24,1,2),(474,151,25,1,2),(475,160,1,1,1),(476,160,2,2,1),(477,160,4,2,1),(478,160,8,1,1),(479,160,14,1,2),(480,214,1,1,1),(481,214,4,3,1),(482,214,6,3,1),(483,214,7,1,1),(484,214,8,1,1),(485,214,14,2,2),(486,214,15,1,2),(487,214,17,1,2),(488,214,18,1,2),(489,214,22,1,2),(490,214,23,1,2),(491,214,24,1,2),(492,214,25,1,2),(493,214,26,1,2),(494,214,27,1,2),(495,214,28,1,2),(496,214,34,1,2),(497,214,35,1,2),(498,224,1,1,1),(499,224,4,3,1),(500,224,8,1,1),(501,224,22,1,2),(502,224,26,2,2),(503,226,1,1,1),(504,226,2,3,1),(505,226,4,3,1),(506,226,6,1,1),(507,226,7,1,1),(508,226,8,1,1),(509,226,10,2,1),(510,226,14,2,2),(511,226,15,1,2),(512,226,16,2,2),(513,226,17,1,2),(514,226,18,1,2),(515,226,19,1,2),(516,226,20,1,2),(517,226,21,1,2),(518,226,22,1,2),(519,226,23,1,2),(520,226,24,1,2),(521,226,25,1,2),(522,226,26,1,2),(523,226,27,1,2),(524,226,28,1,2),(525,226,32,1,2),(526,226,34,1,2),(527,226,35,1,2),(528,231,1,1,1),(529,231,4,3,1),(530,231,8,1,1),(531,231,14,2,2),(532,231,15,2,2),(533,231,22,1,2),(534,231,34,1,2),(535,232,1,1,1),(536,232,4,3,1),(537,232,8,1,1),(538,232,14,2,2),(539,232,22,1,2),(540,233,1,1,1),(541,233,4,3,1),(542,233,8,1,1),(543,233,22,1,2),(544,233,23,1,2),(545,233,24,1,2),(546,233,25,1,2),(547,238,1,1,1),(548,238,4,3,1),(549,238,8,1,1),(550,238,14,2,2),(551,238,22,1,2),(552,239,1,1,1),(553,239,4,3,1),(554,239,8,1,1),(555,239,22,1,2),(556,239,23,1,2),(557,239,25,1,2),(558,248,1,1,1),(559,248,4,3,1),(560,248,7,1,1),(561,248,14,1,2),(562,248,15,1,2),(563,248,17,2,2),(564,248,18,1,2),(565,259,1,1,1),(566,259,4,3,1),(567,259,7,2,1),(568,259,8,1,1),(569,259,14,1,2),(570,259,18,1,2),(571,259,22,1,2),(572,259,33,1,2),(573,264,1,1,1),(574,264,2,3,1),(575,264,4,3,1),(576,264,7,2,1),(577,264,8,1,1),(578,264,15,2,2),(579,264,22,1,2),(580,264,26,1,2),(581,283,1,1,1),(582,283,4,3,1),(583,283,14,2,2),(584,283,15,1,2),(585,283,17,1,2),(586,283,18,1,2),(587,283,25,1,2),(588,283,32,1,2),(589,291,1,1,1),(590,291,4,3,1),(591,291,8,1,1),(592,291,14,1,2),(593,291,18,2,2),(594,291,22,1,2),(595,302,1,1,1),(596,302,4,3,1),(597,302,7,1,1),(598,302,15,1,2),(599,302,17,1,2),(600,302,19,1,2),(601,302,20,1,2),(602,323,1,1,1),(603,323,4,3,1),(604,323,6,3,1),(605,323,7,1,1),(606,323,8,1,1),(607,323,14,2,2),(608,323,15,1,2),(609,323,17,1,2),(610,323,18,1,2),(611,323,22,1,2),(612,323,23,1,2),(613,323,24,1,2),(614,323,25,1,2),(615,323,26,1,2),(616,323,32,1,2),(617,323,34,1,2),(618,324,1,1,1),(619,324,2,2,1),(620,324,4,3,1),(621,324,6,3,1),(622,324,7,1,1),(623,324,8,1,1),(624,324,14,2,2),(625,324,15,1,2),(626,324,17,1,2),(627,324,18,1,2),(628,324,22,1,2),(629,324,23,1,2),(630,324,24,1,2),(631,324,25,1,2),(632,324,26,1,2),(633,324,32,1,2),(634,324,34,1,2),(635,351,1,1,1),(636,351,2,2,1),(637,351,4,3,1),(638,351,6,3,1),(639,351,7,1,1),(640,351,8,1,1),(641,351,22,1,2),(642,351,23,1,2),(643,351,24,1,2),(644,351,25,1,2),(645,351,26,1,2),(646,351,33,1,2),(647,363,1,1,1),(648,363,4,3,1),(649,363,8,1,1),(650,363,22,1,2),(651,369,1,1,1),(652,369,2,2,1),(653,369,4,3,1),(654,369,6,3,1),(655,369,7,1,1),(656,369,8,1,1),(657,369,14,2,2),(658,369,15,1,2),(659,369,17,1,2),(660,369,18,1,2),(661,369,22,1,2),(662,369,23,1,2),(663,369,24,1,2),(664,369,25,1,2),(665,369,26,1,2),(666,369,30,1,2),(667,369,32,1,2),(668,369,34,1,2),(669,7,8,1,1),(670,7,26,1,2),(671,7,27,1,2),(672,7,28,1,2),(673,7,32,1,2),(674,16,8,1,1),(675,16,26,1,2),(676,16,27,1,2),(677,16,28,1,2),(678,16,32,1,2),(679,18,7,1,1),(680,18,21,1,2),(681,18,32,1,2),(682,25,1,1,1),(683,25,4,3,1),(684,25,6,3,1),(685,25,7,1,1),(686,25,8,1,1),(687,25,10,2,1),(688,25,14,2,2),(689,25,15,1,2),(690,25,16,2,2),(691,25,17,1,2),(692,25,18,1,2),(693,25,20,1,2),(694,25,21,1,2),(695,25,22,1,2),(696,25,23,1,2),(697,25,24,1,2),(698,25,25,1,2),(699,25,26,1,2),(700,25,27,1,2),(701,25,28,1,2),(702,25,32,1,2),(703,25,34,1,2),(704,26,8,1,1),(705,26,26,1,2),(706,26,27,1,2),(707,26,28,1,2),(708,26,32,1,2),(709,28,8,1,1),(710,28,26,1,2),(711,28,27,1,2),(712,28,28,1,2),(713,28,32,1,2),(714,39,1,2,1),(715,39,6,3,1),(716,39,7,1,1),(717,39,8,1,1),(718,39,10,3,1),(719,39,15,1,2),(720,39,16,1,2),(721,39,17,1,2),(722,39,19,1,2),(723,39,20,1,2),(724,39,21,1,2),(725,54,7,1,1),(726,54,20,1,2),(727,62,1,1,1),(728,62,7,1,1),(729,62,15,1,2),(730,62,16,1,2),(731,62,17,1,2),(732,62,19,1,2),(733,62,20,1,2),(734,62,21,1,2),(735,62,32,1,2),(736,84,6,2,1),(737,84,7,1,1),(738,84,8,1,1),(739,84,15,1,2),(740,84,16,1,2),(741,84,17,1,2),(742,84,19,1,2),(743,84,20,1,2),(744,84,21,1,2),(745,84,26,1,2),(746,84,27,1,2),(747,84,28,1,2),(748,84,32,1,2),(749,100,6,2,1),(750,100,7,1,1),(751,100,8,1,1),(752,100,15,1,2),(753,100,16,1,2),(754,100,17,1,2),(755,100,19,1,2),(756,100,20,1,2),(757,100,21,1,2),(758,100,26,1,2),(759,100,27,1,2),(760,100,28,1,2),(761,100,32,1,2),(762,113,7,3,1),(763,113,32,1,2),(764,126,6,2,1),(765,126,7,1,1),(766,126,8,1,1),(767,126,26,1,2),(768,126,27,1,2),(769,126,28,1,2),(770,126,32,1,2),(771,127,6,2,1),(772,127,7,1,1),(773,127,8,1,1),(774,127,15,1,2),(775,127,16,1,2),(776,127,17,1,2),(777,127,19,1,2),(778,127,20,1,2),(779,127,21,1,2),(780,127,26,1,2),(781,127,27,1,2),(782,127,28,1,2),(783,127,32,1,2),(784,135,6,2,1),(785,135,7,1,1),(786,135,8,1,1),(787,135,15,1,2),(788,135,16,1,2),(789,135,17,1,2),(790,135,19,1,2),(791,135,20,1,2),(792,135,21,1,2),(793,135,26,1,2),(794,135,27,1,2),(795,135,28,1,2),(796,135,32,1,2),(797,136,6,2,1),(798,136,7,1,1),(799,136,15,1,2),(800,136,16,1,2),(801,136,17,1,2),(802,136,19,1,2),(803,136,20,1,2),(804,136,21,1,2),(805,136,26,1,2),(806,136,27,1,2),(807,136,28,1,2),(808,136,32,1,2),(809,137,7,1,1),(810,137,8,1,1),(811,137,32,1,2),(812,139,32,1,2),(813,147,7,1,1),(814,147,32,1,2),(815,176,6,2,1),(816,176,7,1,1),(817,176,8,1,1),(818,176,15,1,2),(819,176,16,1,2),(820,176,17,1,2),(821,176,19,1,2),(822,176,20,1,2),(823,176,21,1,2),(824,176,26,1,2),(825,176,27,1,2),(826,176,28,1,2),(827,176,32,1,2),(828,184,6,2,1),(829,184,7,1,1),(830,184,8,1,1),(831,184,15,1,2),(832,184,16,1,2),(833,184,17,1,2),(834,184,19,1,2),(835,184,20,1,2),(836,184,21,1,2),(837,184,26,1,2),(838,184,27,1,2),(839,184,28,1,2),(840,184,32,1,2),(841,195,6,2,1),(842,195,7,1,1),(843,195,8,1,1),(844,195,15,1,2),(845,195,16,1,2),(846,195,17,1,2),(847,195,19,1,2),(848,195,20,1,2),(849,195,21,1,2),(850,195,26,1,2),(851,195,27,1,2),(852,195,28,1,2),(853,195,32,1,2),(854,196,6,2,1),(855,196,7,1,1),(856,196,8,1,1),(857,196,15,1,2),(858,196,16,1,2),(859,196,17,1,2),(860,196,19,1,2),(861,196,20,1,2),(862,196,21,1,2),(863,196,26,1,2),(864,196,27,1,2),(865,196,28,1,2),(866,196,32,1,2),(867,205,6,2,1),(868,205,7,1,1),(869,205,10,2,1),(870,205,16,1,2),(871,205,19,1,2),(872,205,20,1,2),(873,205,21,1,2),(874,208,6,2,1),(875,208,7,1,1),(876,208,8,1,1),(877,208,15,1,2),(878,208,16,1,2),(879,208,17,1,2),(880,208,19,1,2),(881,208,20,1,2),(882,208,21,1,2),(883,208,26,1,2),(884,208,27,1,2),(885,208,28,1,2),(886,208,32,1,2),(887,215,6,2,1),(888,215,7,1,1),(889,215,8,1,1),(890,215,15,1,2),(891,215,16,1,2),(892,215,17,1,2),(893,215,19,1,2),(894,215,20,1,2),(895,215,21,1,2),(896,215,26,1,2),(897,215,27,1,2),(898,215,28,1,2),(899,215,32,1,2),(900,247,1,1,1),(901,247,7,1,1),(902,247,16,1,2),(903,247,19,1,2),(904,247,20,1,2),(905,247,21,1,2),(906,258,6,1,1),(907,258,7,1,1),(908,258,10,1,1),(909,261,6,2,1),(910,261,7,1,1),(911,261,16,1,2),(912,261,19,1,2),(913,261,20,1,2),(914,261,21,1,2),(915,261,32,1,2),(916,267,7,2,1),(917,267,32,1,2),(918,275,32,1,2),(919,277,8,1,1),(920,277,26,1,2),(921,285,32,1,2),(922,290,6,1,1),(923,290,7,1,1),(924,290,8,1,1),(925,290,16,1,2),(926,290,19,1,2),(927,290,20,1,2),(928,290,21,1,2),(929,290,26,1,2),(930,290,27,1,2),(931,290,28,1,2),(932,290,32,1,2),(933,292,8,1,1),(934,292,20,1,2),(935,293,1,3,1),(936,293,6,2,1),(937,293,7,1,1),(938,293,15,1,2),(939,293,16,1,2),(940,293,17,1,2),(941,293,19,1,2),(942,293,20,1,2),(943,293,21,1,2),(944,293,32,1,2),(945,303,6,3,1),(946,303,8,1,1),(947,303,26,1,2),(948,303,27,1,2),(949,303,28,1,2),(950,303,32,1,2),(951,201,10,1,1),(952,234,10,1,1),(953,234,32,1,2),(954,235,10,1,1),(955,235,32,1,2),(956,305,10,1,1),(957,305,32,1,2),(958,306,10,1,1),(959,306,32,1,2),(960,314,10,1,1),(961,314,32,1,2),(962,355,10,1,1),(963,23,10,1,1),(964,30,10,1,1),(965,50,1,1,1),(966,50,2,2,1),(967,50,4,3,1),(968,50,14,2,2),(969,81,10,1,1),(970,154,10,1,1),(971,172,10,1,1),(972,174,10,1,1),(973,206,10,1,1),(974,220,10,1,1),(975,225,10,1,1),(976,227,10,1,1),(977,358,10,1,1),(978,359,10,1,1),(979,368,10,1,1),(980,46,6,2,1),(981,46,7,2,1),(982,46,32,1,2),(983,82,2,1,1),(984,82,3,1,1),(985,97,1,1,1),(986,97,4,2,1),(987,97,8,1,1),(988,97,30,1,2),(989,97,34,1,2),(990,103,1,1,1),(991,103,4,2,1),(992,103,8,1,1),(993,103,33,1,2),(994,119,1,1,1),(995,119,8,1,1),(996,119,34,1,2),(997,132,32,1,2),(998,133,32,1,2),(999,152,1,1,1),(1000,152,8,1,1),(1001,152,34,1,2),(1002,155,32,1,2),(1003,157,1,1,1),(1004,157,2,1,1),(1005,157,14,1,2),(1006,158,1,1,1),(1007,158,8,1,1),(1008,158,30,1,2),(1009,158,34,1,2),(1010,163,1,1,1),(1011,163,8,1,1),(1012,163,34,1,2),(1013,165,34,1,2),(1014,168,1,1,1),(1015,168,2,3,1),(1016,168,4,2,1),(1017,168,6,2,1),(1018,168,8,1,1),(1019,168,22,1,2),(1020,168,26,1,2),(1021,168,34,1,2),(1022,168,35,1,2),(1023,170,1,1,1),(1024,170,8,1,1),(1025,170,26,1,2),(1026,170,33,1,2),(1027,170,34,1,2),(1028,191,1,1,1),(1029,191,8,1,1),(1030,191,34,1,2),(1031,252,1,1,1),(1032,252,8,1,1),(1033,252,22,1,2),(1034,257,7,2,1),(1035,257,32,1,2),(1036,260,32,1,2),(1037,269,1,1,1),(1038,269,4,2,1),(1039,269,8,1,1),(1040,269,34,1,2),(1041,295,1,1,1),(1042,295,4,2,1),(1043,295,8,1,1),(1044,295,34,1,2),(1045,297,1,1,1),(1046,297,4,2,1),(1047,297,8,1,1),(1048,297,34,1,2),(1049,309,1,1,1),(1050,309,4,2,1),(1051,309,8,1,1),(1052,309,33,1,2),(1053,312,1,1,1),(1054,312,4,2,1),(1055,312,8,1,1),(1056,312,33,1,2),(1057,350,1,1,1),(1058,350,4,2,1),(1059,350,8,1,1),(1060,350,34,1,2),(1061,360,1,1,1),(1062,360,4,2,1),(1063,360,8,1,1),(1064,360,22,1,2),(1065,360,34,1,2),(1066,366,1,1,1),(1067,366,2,2,1),(1068,366,4,2,1),(1069,366,8,1,1),(1070,366,34,1,2),(1071,367,1,1,1),(1072,367,2,2,1),(1073,367,4,2,1),(1074,367,8,1,1),(1075,367,34,1,2),(1076,27,1,1,1),(1077,27,4,2,1),(1078,27,6,2,1),(1079,27,7,2,1),(1080,27,11,1,1),(1081,27,31,1,2),(1082,27,34,1,2),(1083,29,4,1,1),(1084,29,6,1,1),(1085,29,7,2,1),(1086,29,11,1,1),(1087,29,21,1,2),(1088,29,32,1,2),(1089,72,1,3,1),(1090,72,2,2,1),(1091,72,3,1,1),(1092,72,4,1,1),(1093,72,5,2,1),(1094,72,21,1,2),(1095,72,32,1,2),(1096,75,1,1,1),(1097,75,4,1,1),(1098,75,7,1,1),(1099,75,11,1,1),(1100,75,20,2,2),(1101,75,21,1,2),(1102,75,31,1,2),(1103,75,32,1,2),(1104,75,34,1,2),(1105,77,1,1,1),(1106,77,4,1,1),(1107,77,6,2,1),(1108,77,7,1,1),(1109,77,11,1,1),(1110,77,20,2,2),(1111,77,21,1,2),(1112,77,31,1,2),(1113,77,32,1,2),(1114,77,34,1,2),(1115,83,1,1,1),(1116,83,4,1,1),(1117,83,6,2,1),(1118,83,7,1,1),(1119,83,11,1,1),(1120,83,20,2,2),(1121,83,21,1,2),(1122,83,31,1,2),(1123,83,32,1,2),(1124,83,34,1,2),(1125,88,1,1,1),(1126,88,4,1,1),(1127,88,7,1,1),(1128,88,11,1,1),(1129,88,34,1,2),(1130,192,2,1,1),(1131,192,4,2,1),(1132,192,11,1,1),(1133,192,20,2,2),(1134,192,21,1,2),(1135,192,31,1,2),(1136,192,32,1,2),(1137,192,34,1,2),(1138,221,1,1,1),(1139,221,4,1,1),(1140,221,6,1,1),(1141,221,7,1,1),(1142,221,11,1,1),(1143,221,20,2,2),(1144,221,21,1,2),(1145,221,31,1,2),(1146,221,32,1,2),(1147,221,34,1,2),(1148,320,1,1,1),(1149,320,2,2,1),(1150,320,4,3,1),(1151,320,6,3,1),(1152,320,11,1,1),(1153,320,20,2,2),(1154,320,21,1,2),(1155,320,31,1,2),(1156,320,32,1,2),(1157,320,34,1,2),(1158,321,1,1,1),(1159,321,2,2,1),(1160,321,4,3,1),(1161,321,6,3,1),(1162,321,11,1,1),(1163,321,20,2,2),(1164,321,21,1,2),(1165,321,31,1,2),(1166,321,32,1,2),(1167,321,34,1,2),(1168,353,1,1,1),(1169,353,2,2,1),(1170,353,4,2,1),(1171,353,6,3,1),(1172,353,11,1,1),(1173,353,20,2,2),(1174,353,21,1,2),(1175,353,31,1,2),(1176,353,32,1,2),(1177,353,34,1,2),(1178,14,1,1,1),(1179,14,4,2,1),(1180,14,14,1,2),(1181,36,1,1,1),(1182,36,4,1,1),(1183,36,8,1,1),(1184,47,1,1,1),(1185,47,4,2,1),(1186,47,8,1,1),(1187,47,34,1,2),(1188,52,1,1,1),(1189,52,8,1,1),(1190,52,14,1,2),(1191,58,1,1,1),(1192,58,8,1,1),(1193,66,8,1,1),(1194,67,1,1,1),(1195,67,2,2,1),(1196,67,4,2,1),(1197,70,1,1,1),(1198,70,4,2,1),(1199,70,5,2,1),(1200,70,8,1,1),(1201,70,26,1,2),(1202,89,8,1,1),(1203,96,1,1,1),(1204,96,8,1,1),(1205,96,30,1,2),(1206,108,1,1,1),(1207,108,8,2,1),(1208,112,8,2,1),(1209,112,9,2,1),(1210,116,2,1,1),(1211,116,4,2,1),(1212,129,1,1,1),(1213,129,2,1,1),(1214,129,4,2,1),(1215,129,11,1,1),(1216,129,27,2,2),(1217,130,1,1,1),(1218,130,8,1,1),(1219,131,1,1,1),(1220,131,8,1,1),(1221,131,14,1,2),(1222,131,22,1,2),(1223,131,34,1,2),(1224,159,2,1,1),(1225,159,4,2,1),(1226,161,1,1,1),(1227,161,4,2,1),(1228,161,8,1,1),(1229,161,34,1,2),(1230,164,1,2,1),(1231,164,4,2,1),(1232,164,8,2,1),(1233,164,9,2,1),(1234,166,1,1,1),(1235,166,4,1,1),(1236,166,9,1,1),(1237,173,1,1,1),(1238,173,4,3,1),(1239,173,8,1,1),(1240,173,14,1,2),(1241,173,15,1,2),(1242,173,18,1,2),(1243,173,22,1,2),(1244,178,1,1,1),(1245,178,14,1,2),(1246,181,2,2,1),(1247,181,3,1,1),(1248,181,4,3,1),(1249,181,8,1,1),(1250,182,1,1,1),(1251,182,4,2,1),(1252,182,8,1,1),(1253,182,34,1,2),(1254,186,1,1,1),(1255,186,4,2,1),(1256,186,8,1,1),(1257,188,1,1,1),(1258,188,4,2,1),(1259,188,8,1,1),(1260,188,20,2,2),(1261,188,32,1,2),(1262,197,1,1,1),(1263,197,4,1,1),(1264,199,1,1,1),(1265,199,4,1,1),(1266,199,9,2,1),(1267,202,1,1,1),(1268,202,4,1,1),(1269,202,8,1,1),(1270,202,15,2,2),(1271,202,22,1,2),(1272,202,23,1,2),(1273,202,24,2,2),(1274,202,25,1,2),(1275,202,32,2,2),(1276,217,1,1,1),(1277,217,4,2,1),(1278,217,8,2,1),(1279,217,12,1,1),(1280,217,14,1,2),(1281,217,22,1,2),(1282,218,1,1,1),(1283,218,4,2,1),(1284,240,1,2,1),(1285,240,4,2,1),(1286,240,6,1,1),(1287,240,7,2,1),(1288,240,32,1,2),(1289,241,1,2,1),(1290,241,4,2,1),(1291,241,6,1,1),(1292,241,7,2,1),(1293,241,32,1,2),(1294,242,1,2,1),(1295,242,4,2,1),(1296,242,6,1,1),(1297,242,7,2,1),(1298,242,32,1,2),(1299,243,1,2,1),(1300,243,4,2,1),(1301,243,6,1,1),(1302,243,7,2,1),(1303,243,32,1,2),(1304,246,1,1,1),(1305,246,4,2,1),(1306,246,8,1,1),(1307,246,22,1,2),(1308,246,23,1,2),(1309,246,24,1,2),(1310,246,25,1,2),(1311,246,32,2,2),(1312,255,1,1,1),(1313,255,4,2,1),(1314,255,6,2,1),(1315,255,8,1,1),(1316,255,32,2,2),(1317,256,3,1,1),(1318,256,4,2,1),(1319,256,8,2,1),(1320,268,1,1,1),(1321,268,8,3,1),(1322,268,10,1,1),(1323,268,32,2,2),(1324,276,1,1,1),(1325,276,2,2,1),(1326,276,8,1,1),(1327,276,34,1,2),(1328,286,1,1,1),(1329,286,4,2,1),(1330,286,7,3,1),(1331,286,14,1,2),(1332,286,15,1,2),(1333,289,1,1,1),(1334,289,4,2,1),(1335,289,22,1,2),(1336,289,34,1,2),(1337,294,1,1,1),(1338,294,4,3,1),(1339,294,8,1,1),(1340,294,22,1,2),(1341,294,32,2,2),(1342,296,1,1,1),(1343,296,4,2,1),(1344,296,8,1,1),(1345,296,34,1,2),(1346,300,1,1,1),(1347,300,4,2,1),(1348,300,8,1,1),(1349,300,34,1,2),(1350,308,1,1,1),(1351,308,4,3,1),(1352,308,7,2,1),(1353,308,8,2,1),(1354,308,15,1,2),(1355,308,17,1,2),(1356,308,18,1,2),(1357,308,23,1,2),(1358,308,24,1,2),(1359,308,25,1,2),(1360,316,1,1,1),(1361,316,4,3,1),(1362,316,6,1,1),(1363,316,20,2,2),(1364,316,32,1,2),(1365,317,1,1,1),(1366,317,2,1,1),(1367,317,6,2,1),(1368,317,12,1,1),(1369,325,1,1,1),(1370,325,4,2,1),(1371,325,8,1,1),(1372,364,1,1,1),(1373,364,4,3,1),(1374,364,8,2,1),(1375,364,9,3,1),(1376,364,33,1,2),(1377,175,1,1,1),(1378,175,4,3,1),(1379,175,8,1,1),(1380,175,33,1,2),(1381,322,1,1,1),(1382,322,4,3,1),(1383,322,8,1,1),(1384,322,33,1,2),(1385,42,9,1,1),(1386,244,1,1,1),(1387,244,2,2,1),(1388,244,4,1,1),(1389,244,9,1,1),(1390,244,34,1,2),(1391,284,1,2,1),(1392,284,8,1,1),(1393,284,9,1,1),(1394,69,1,3,1),(1395,69,4,2,1),(1396,69,5,1,1),(1397,123,1,1,1),(1398,123,4,3,1),(1399,123,7,3,1),(1400,123,8,2,1),(1401,123,34,1,2),(1402,142,1,1,1),(1403,142,2,1,1),(1404,142,3,2,1),(1405,142,4,1,1),(1406,142,5,3,1),(1407,142,6,1,1),(1408,142,12,1,1),(1409,142,13,2,2),(1410,183,1,1,1),(1411,183,2,2,1),(1412,183,4,1,1),(1413,183,12,3,1),(1414,183,13,3,2),(1415,193,1,1,1),(1416,193,2,1,1),(1417,193,4,1,1),(1418,193,6,1,1),(1419,193,7,1,1),(1420,193,11,1,1),(1421,193,12,1,1),(1422,193,13,3,2),(1423,193,16,3,2),(1424,193,20,3,2),(1425,193,21,3,2),(1426,193,34,3,2),(1427,251,1,1,1),(1428,251,2,3,1),(1429,251,4,2,1),(1430,357,1,3,1),(1431,357,2,2,1),(1432,357,3,2,1),(1433,357,4,1,1),(1434,357,5,1,1),(1435,357,12,1,1),(1436,357,13,2,2),(1437,32,1,3,1),(1438,32,2,1,1),(1439,32,4,2,1),(1440,55,1,1,1),(1441,55,2,1,1),(1442,55,4,2,1),(1443,55,8,1,1),(1444,55,12,2,1),(1445,56,1,2,1),(1446,56,4,3,1),(1447,56,8,1,1),(1448,56,22,1,2),(1449,56,23,2,2),(1450,56,24,2,2),(1451,56,25,2,2),(1452,56,26,1,2),(1453,56,27,2,2),(1454,56,28,1,2),(1455,56,35,1,2),(1456,65,1,1,1),(1457,65,4,2,1),(1458,65,7,1,1),(1459,65,8,1,1),(1460,65,15,1,2),(1461,65,17,1,2),(1462,65,18,1,2),(1463,65,22,1,2),(1464,65,23,1,2),(1465,65,24,2,2),(1466,65,25,1,2),(1467,65,26,2,2),(1468,65,27,2,2),(1469,65,28,3,2),(1470,65,32,3,2),(1471,65,34,1,2),(1472,65,35,1,2),(1473,76,2,1,1),(1474,76,4,3,1),(1475,76,29,1,2),(1476,80,1,1,1),(1477,80,2,1,1),(1478,80,4,2,1),(1479,80,8,1,1),(1480,80,12,1,1),(1481,80,14,1,2),(1482,80,29,1,2),(1483,90,1,1,1),(1484,90,2,1,1),(1485,90,4,3,1),(1486,92,1,1,1),(1487,92,2,2,1),(1488,92,4,2,1),(1489,92,8,2,1),(1490,93,1,1,1),(1491,93,2,2,1),(1492,93,4,3,1),(1493,93,8,1,1),(1494,102,1,1,1),(1495,102,2,1,1),(1496,102,3,3,1),(1497,102,4,2,1),(1498,106,1,1,1),(1499,106,2,1,1),(1500,106,3,3,1),(1501,106,4,3,1),(1502,106,8,1,1),(1503,106,29,1,2),(1504,146,1,1,1),(1505,146,2,3,1),(1506,146,4,3,1),(1507,146,7,2,1),(1508,146,8,1,1),(1509,146,15,1,2),(1510,146,18,3,2),(1511,146,22,1,2),(1512,146,25,1,2),(1513,146,26,1,2),(1514,146,27,1,2),(1515,146,28,1,2),(1516,146,33,2,2),(1517,189,1,1,1),(1518,189,4,3,1),(1519,189,7,1,1),(1520,189,8,3,1),(1521,189,14,1,2),(1522,189,15,1,2),(1523,189,18,1,2),(1524,189,22,1,2),(1525,189,34,1,2),(1526,190,1,1,1),(1527,190,4,3,1),(1528,190,7,1,1),(1529,190,8,3,1),(1530,190,14,1,2),(1531,190,15,1,2),(1532,190,18,1,2),(1533,190,22,1,2),(1534,190,34,1,2),(1535,211,1,1,1),(1536,211,4,3,1),(1537,211,8,1,1),(1538,211,12,1,1),(1539,211,14,1,2),(1540,213,1,1,1),(1541,213,4,3,1),(1542,213,7,1,1),(1543,213,15,2,2),(1544,213,18,1,2),(1545,213,22,2,2),(1546,304,1,1,1),(1547,304,4,3,1),(1548,304,6,3,1),(1549,304,7,1,1),(1550,304,8,1,1),(1551,304,14,2,2),(1552,304,15,1,2),(1553,304,17,1,2),(1554,304,18,1,2),(1555,304,22,1,2),(1556,304,23,2,2),(1557,304,24,2,2),(1558,304,25,1,2),(1559,304,26,1,2),(1560,304,27,3,2),(1561,304,32,1,2),(1562,304,34,1,2),(1563,304,35,1,2),(1564,63,1,3,1),(1565,63,6,2,1),(1566,63,7,2,1),(1567,63,10,1,1),(1568,63,16,2,2),(1569,63,32,1,2),(1570,71,1,2,1),(1571,71,8,1,1),(1572,71,32,2,2),(1573,134,10,1,1),(1574,134,32,1,2),(1575,228,8,1,1),(1576,228,24,1,2),(1577,228,26,1,2),(1578,229,1,3,1),(1579,229,6,2,1),(1580,229,8,1,1),(1581,229,26,1,2),(1582,229,27,1,2),(1583,229,28,1,2),(1584,229,32,1,2),(1585,230,1,3,1),(1586,230,6,2,1),(1587,230,7,1,1),(1588,274,1,1,1),(1589,274,2,3,1),(1590,274,4,3,1),(1591,274,5,3,1),(1592,274,6,1,1),(1593,274,7,1,1),(1594,274,16,1,2),(1595,274,20,1,2),(1596,274,21,1,2),(1597,274,31,1,2),(1598,274,32,1,2),(1599,274,34,1,2),(1600,356,1,1,1),(1601,356,2,2,1),(1602,356,4,1,1),(1603,356,6,1,1),(1604,356,7,2,1),(1605,356,20,1,2),(1606,356,31,1,2),(1607,356,32,1,2),(1608,356,34,1,2),(1609,365,1,1,1),(1610,365,4,2,1),(1611,365,6,3,1),(1612,365,7,1,1),(1613,365,8,1,1),(1614,365,14,1,2),(1615,365,15,1,2),(1616,365,16,1,2),(1617,365,17,1,2),(1618,365,18,1,2),(1619,365,19,1,2),(1620,365,20,1,2),(1621,365,21,1,2),(1622,365,22,1,2),(1623,365,23,1,2),(1624,365,24,2,2),(1625,365,25,1,2),(1626,365,26,1,2),(1627,365,27,1,2),(1628,365,28,1,2),(1629,365,30,2,2),(1630,365,32,1,2),(1631,365,34,1,2),(1632,365,35,1,2),(1633,1,7,1,1),(1634,1,20,2,2),(1635,1,21,1,2),(1636,1,32,3,2),(1637,20,7,1,1),(1638,20,10,1,1),(1639,20,32,1,2),(1640,101,1,1,1),(1641,101,2,1,1),(1642,101,4,2,1),(1643,101,8,2,1),(1644,101,12,2,1),(1645,101,13,3,2),(1646,101,14,1,2),(1647,101,29,1,2),(1648,145,1,1,1),(1649,145,8,1,1),(1650,145,18,0,2),(1651,145,34,1,2),(1652,169,1,1,1),(1653,169,2,2,1),(1654,169,4,2,1),(1655,169,7,3,1),(1656,169,8,1,1),(1657,169,14,3,2),(1658,169,15,1,2),(1659,169,17,1,2),(1660,169,22,1,2),(1661,169,23,1,2),(1662,169,24,1,2),(1663,169,25,1,2),(1664,270,1,1,1),(1665,270,2,2,1),(1666,270,4,2,1),(1667,270,8,1,1),(1668,270,22,1,2),(1669,270,34,1,2),(1670,21,1,1,1),(1671,21,4,2,1),(1672,21,6,1,1),(1673,21,18,3,2),(1674,21,32,1,2),(1675,22,1,1,1),(1676,22,4,2,1),(1677,22,6,1,1),(1678,22,18,3,2),(1679,22,32,1,2),(1680,34,1,1,1),(1681,34,4,1,1),(1682,34,6,1,1),(1683,34,7,1,1),(1684,34,11,1,1),(1685,34,20,1,2),(1686,34,21,1,2),(1687,34,31,1,2),(1688,34,32,1,2),(1689,34,34,1,2),(1690,74,1,1,1),(1691,74,4,1,1),(1692,74,6,2,1),(1693,74,7,1,1),(1694,74,11,1,1),(1695,74,20,1,2),(1696,74,21,1,2),(1697,74,31,1,2),(1698,74,32,1,2),(1699,74,34,1,2),(1700,122,1,1,1),(1701,122,2,2,1),(1702,122,4,3,1),(1703,122,6,2,1),(1704,122,7,1,1),(1705,122,11,1,1),(1706,122,20,1,2),(1707,122,21,1,2),(1708,122,31,1,2),(1709,122,32,1,2),(1710,122,34,1,2),(1711,177,1,1,1),(1712,177,2,1,1),(1713,177,12,1,1),(1714,177,13,2,2),(1715,203,1,1,1),(1716,203,2,1,1),(1717,203,4,3,1),(1718,203,32,1,2),(1719,203,34,1,2),(1720,262,1,1,1),(1721,262,4,3,1),(1722,262,6,3,1),(1723,262,7,1,1),(1724,262,11,1,1),(1725,262,20,1,2),(1726,262,21,1,2),(1727,262,31,1,2),(1728,262,32,1,2),(1729,262,34,1,2),(1730,266,11,1,1),(1731,266,20,1,2),(1732,266,21,1,2),(1733,266,31,1,2),(1734,266,32,1,2),(1735,266,34,1,2),(1736,287,1,2,1),(1737,287,2,1,1),(1738,287,4,3,1),(1739,287,6,2,1),(1740,287,11,1,1),(1741,287,12,3,1),(1742,287,31,1,2),(1743,287,34,1,2),(1744,354,1,1,1),(1745,354,2,3,1),(1746,354,4,1,1),(1747,354,6,1,1),(1748,354,7,1,1),(1749,354,11,1,1),(1750,354,20,1,2),(1751,354,21,1,2),(1752,354,31,1,2),(1753,354,32,1,2),(1754,354,34,1,2),(1755,210,1,1,1),(1756,210,4,2,1),(1757,210,6,2,1),(1758,210,8,2,1),(1759,210,12,1,1),(1760,210,14,1,2),(1761,237,1,1,1),(1762,237,2,3,1),(1763,237,4,1,1),(1764,254,1,1,1),(1765,254,4,2,1),(1766,254,8,1,1),(1767,254,22,1,2),(1768,254,23,1,2),(1769,254,24,2,2),(1770,254,25,1,2),(1771,271,1,1,1),(1772,271,4,3,1),(1773,271,7,1,1),(1774,271,8,2,1),(1775,271,14,3,2),(1776,271,15,1,2),(1777,280,1,1,1),(1778,280,2,2,1),(1779,280,4,2,1),(1780,280,6,1,1),(1781,280,7,3,1),(1782,280,20,2,2),(1783,280,32,1,2),(1784,98,1,1,1),(1785,98,2,2,1),(1786,98,4,3,1),(1787,98,6,3,1),(1788,98,8,1,1),(1789,98,30,1,2),(1790,98,34,1,2),(1791,99,1,1,1),(1792,99,2,2,1),(1793,99,4,3,1),(1794,99,6,3,1),(1795,99,8,1,1),(1796,99,30,1,2),(1797,99,34,1,2),(1798,118,1,1,1),(1799,118,2,2,1),(1800,118,4,3,1),(1801,118,6,3,1),(1802,118,8,1,1),(1803,118,22,1,2),(1804,118,25,1,2),(1805,118,30,1,2),(1806,118,34,1,2),(1807,125,1,1,1),(1808,125,2,2,1),(1809,125,4,3,1),(1810,125,6,3,1),(1811,125,8,1,1),(1812,125,26,2,2),(1813,125,30,1,2),(1814,125,32,1,2),(1815,125,34,1,2),(1816,114,1,1,1),(1817,114,2,2,1),(1818,114,4,1,1),(1819,114,9,1,1),(1820,114,22,1,2),(1821,114,23,1,2),(1822,114,24,2,2),(1823,114,25,1,2),(1824,114,26,1,2),(1825,114,28,1,2),(1826,114,32,2,2),(1827,114,33,1,2),(1828,114,34,1,2),(1829,179,1,1,1),(1830,179,2,2,1),(1831,179,4,1,1),(1832,179,9,1,1);
/*!40000 ALTER TABLE `data_to_appmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_to_capabilitiesmapping`
--

DROP TABLE IF EXISTS `data_to_capabilitiesmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_to_capabilitiesmapping` (
  `dataMappingID` int(10) NOT NULL,
  `busCapID` int(10) DEFAULT NULL,
  `dataEntityID` int(10) DEFAULT NULL,
  `dataImportID` int(10) DEFAULT NULL,
  `dataTypeID` int(10) DEFAULT NULL,
  PRIMARY KEY (`dataMappingID`),
  KEY `dataImportID` (`dataImportID`),
  KEY `ApplicationID` (`busCapID`),
  KEY `DataEntityID` (`dataEntityID`),
  KEY `dataTypeID` (`dataTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_to_capabilitiesmapping`
--

LOCK TABLES `data_to_capabilitiesmapping` WRITE;
/*!40000 ALTER TABLE `data_to_capabilitiesmapping` DISABLE KEYS */;
INSERT INTO `data_to_capabilitiesmapping` VALUES (1,2,1,1,1),(2,2,2,1,1),(3,2,3,1,1),(4,2,4,1,1),(5,2,5,1,1),(6,2,6,1,1),(7,2,7,3,1),(8,2,8,1,1),(9,2,9,1,1),(10,2,10,3,1),(11,2,12,1,1),(12,2,22,1,2),(13,2,32,1,2),(14,2,34,1,2),(15,3,1,2,1),(16,3,2,2,1),(17,3,3,2,1),(18,3,4,1,1),(19,3,5,1,1),(20,3,6,1,1),(21,3,7,2,1),(22,3,8,1,1),(23,3,9,1,1),(24,3,12,2,1),(25,3,13,2,2),(26,3,15,3,2),(27,3,18,3,2),(28,3,22,3,2),(29,3,27,2,2),(30,3,32,1,2),(31,3,33,1,2),(32,3,34,1,2),(33,4,1,2,1),(34,4,2,2,1),(35,4,3,2,1),(36,4,4,1,1),(37,4,5,1,1),(38,4,6,1,1),(39,4,7,2,1),(40,4,8,1,1),(41,4,9,1,1),(42,4,12,2,1),(43,4,13,2,2),(44,4,15,3,2),(45,4,18,3,2),(46,4,22,3,2),(47,4,27,2,2),(48,4,32,1,2),(49,4,33,1,2),(50,4,34,1,2),(51,5,1,1,1),(52,5,2,1,1),(53,5,3,1,1),(54,5,4,1,1),(55,5,5,1,1),(56,5,6,1,1),(57,5,15,1,2),(58,5,18,1,2),(59,5,22,1,2),(60,5,27,1,2),(61,5,32,1,2),(62,5,33,1,2),(63,5,34,1,2),(64,6,4,1,1),(65,6,5,1,1),(66,6,6,1,1),(67,6,13,1,2),(68,6,32,1,2),(69,6,34,1,2),(70,7,4,1,1),(71,7,13,1,2),(72,8,4,1,1),(73,8,5,1,1),(74,8,13,1,2),(75,9,1,1,1),(76,9,2,1,1),(77,9,3,1,1),(78,9,4,1,1),(79,9,5,1,1),(80,9,6,1,1),(81,9,13,1,2),(82,9,32,2,2),(83,10,1,1,1),(84,10,2,1,1),(85,10,3,1,1),(86,10,4,1,1),(87,10,5,1,1),(88,10,6,1,1),(89,10,13,1,2),(90,10,32,2,2),(91,11,1,1,1),(92,11,2,1,1),(93,11,3,1,1),(94,11,4,1,1),(95,11,5,1,1),(96,11,6,1,1),(97,11,13,1,2),(98,11,32,2,2),(99,12,4,1,1),(100,12,13,1,2),(101,13,1,1,1),(102,13,2,1,1),(103,13,3,1,1),(104,13,4,1,1),(105,13,5,1,1),(106,13,6,1,1),(107,13,13,1,2),(108,13,32,2,2),(109,14,2,1,1),(110,14,3,1,1),(111,14,4,1,1),(112,14,5,2,1),(113,14,6,2,1),(114,14,12,1,1),(115,14,13,1,2),(116,14,29,1,2),(117,15,2,1,1),(118,15,3,1,1),(119,15,4,1,1),(120,15,5,2,1),(121,15,6,2,1),(122,15,12,1,1),(123,15,13,1,2),(124,15,29,1,2),(125,16,2,1,1),(126,16,29,1,2),(127,17,2,1,1),(128,17,3,1,1),(129,17,4,1,1),(130,17,5,3,1),(131,17,6,3,1),(132,17,13,1,2),(133,17,29,1,2),(134,18,2,1,1),(135,18,3,1,1),(136,18,4,1,1),(137,18,5,1,1),(138,18,6,1,1),(139,18,13,1,2),(140,18,29,1,2),(141,19,2,1,1),(142,19,3,1,1),(143,19,4,1,1),(144,19,5,1,1),(145,19,6,1,1),(146,19,13,1,2),(147,20,1,1,1),(148,20,2,1,1),(149,20,3,1,1),(150,20,4,1,1),(151,20,5,1,1),(152,20,6,1,1),(153,20,7,1,1),(154,20,11,2,1),(155,20,12,1,1),(156,20,13,1,2),(157,20,14,1,2),(158,21,1,1,1),(159,21,5,1,1),(160,21,6,1,1),(161,21,7,1,1),(162,21,14,3,2),(163,21,15,1,2),(164,21,16,3,2),(165,21,17,1,2),(166,21,18,1,2),(167,21,19,1,2),(168,21,20,1,2),(169,21,25,1,2),(170,22,1,1,1),(171,22,2,1,1),(172,22,3,1,1),(173,22,4,1,1),(174,22,5,1,1),(175,22,6,1,1),(176,22,7,1,1),(177,22,11,2,1),(178,22,12,1,1),(179,22,13,1,2),(180,22,14,1,2),(181,22,15,1,2),(182,22,16,1,2),(183,23,1,1,1),(184,23,4,1,1),(185,23,5,1,1),(186,23,6,1,1),(187,23,11,2,1),(188,23,12,1,1),(189,23,13,2,2),(190,23,14,1,2),(191,23,15,2,2),(192,23,17,2,2),(193,23,18,2,2),(194,23,22,2,2),(195,23,23,2,2),(196,23,24,2,2),(197,23,25,2,2),(198,23,26,2,2),(199,23,31,2,2),(200,24,1,1,1),(201,24,4,2,1),(202,24,8,1,1),(203,24,9,1,1),(204,24,10,2,1),(205,24,11,1,1),(206,24,12,1,1),(207,24,13,2,2),(208,24,14,1,2),(209,24,22,1,2),(210,24,24,2,2),(211,24,26,1,2),(212,24,27,1,2),(213,24,29,1,2),(214,24,30,1,2),(215,24,31,1,2),(216,24,32,1,2),(217,24,33,1,2),(218,24,34,1,2),(219,25,1,1,1),(220,25,4,1,1),(221,25,5,1,1),(222,25,6,1,1),(223,25,8,1,1),(224,25,9,1,1),(225,25,10,3,1),(226,25,11,1,1),(227,25,12,1,1),(228,25,13,2,2),(229,25,14,1,2),(230,25,15,2,2),(231,25,18,1,2),(232,25,22,1,2),(233,25,29,1,2),(234,25,31,1,2),(235,25,32,1,2),(236,25,33,1,2),(237,25,34,1,2),(238,26,1,1,1),(239,26,2,1,1),(240,26,3,1,1),(241,26,4,1,1),(242,26,5,1,1),(243,26,6,1,1),(244,26,12,1,1),(245,26,13,1,2),(246,113,1,1,1),(247,113,4,1,1),(248,113,5,1,1),(249,113,6,1,1),(250,113,8,1,1),(251,113,11,1,1),(252,113,12,1,1),(253,113,13,1,2),(254,113,14,1,2),(255,113,33,2,2),(256,114,1,1,1),(257,114,4,1,1),(258,114,8,1,1),(259,114,11,1,1),(260,114,12,1,1),(261,114,13,1,2),(262,114,14,1,2),(263,115,1,1,1),(264,115,4,1,1),(265,115,5,1,1),(266,115,6,1,1),(267,115,8,1,1),(268,115,11,1,1),(269,115,12,1,1),(270,115,13,1,2),(271,115,14,1,2),(272,116,1,1,1),(273,116,4,1,1),(274,116,5,1,1),(275,116,6,1,1),(276,116,8,1,1),(277,116,12,1,1),(278,116,13,1,2),(279,116,14,1,2),(280,116,26,1,2),(281,116,31,1,2),(282,116,34,1,2),(283,117,1,1,1),(284,117,4,1,1),(285,117,5,1,1),(286,117,6,1,1),(287,117,8,1,1),(288,117,11,1,1),(289,117,12,1,1),(290,117,13,1,2),(291,117,14,1,2),(292,117,26,1,2),(293,117,31,2,2),(294,117,34,1,2),(295,67,4,1,1),(296,67,5,1,1),(297,67,7,1,1),(298,67,11,1,1),(299,67,12,1,1),(300,67,13,1,2),(301,67,21,2,2),(302,68,1,1,1),(303,68,2,1,1),(304,68,3,1,1),(305,68,4,1,1),(306,68,5,1,1),(307,68,12,1,1),(308,69,3,1,1),(309,69,4,1,1),(310,69,13,1,2),(311,70,1,1,1),(312,70,2,1,1),(313,70,3,1,1),(314,70,4,1,1),(315,70,5,1,1),(316,70,12,1,1),(317,71,1,1,1),(318,71,2,1,1),(319,71,3,1,1),(320,71,4,1,1),(321,71,5,1,1),(322,71,12,1,1),(323,72,1,1,1),(324,72,2,1,1),(325,72,3,1,1),(326,72,4,1,1),(327,72,5,1,1),(328,72,12,1,1),(329,73,1,1,1),(330,73,2,1,1),(331,73,3,1,1),(332,73,4,1,1),(333,73,5,1,1),(334,73,12,1,1),(335,27,1,1,1),(336,27,14,1,2),(337,28,1,1,1),(338,28,2,1,1),(339,30,1,1,1),(340,30,4,1,1),(341,30,5,1,1),(342,30,6,1,1),(343,30,8,2,1),(344,30,9,1,1),(345,30,13,1,2),(346,31,4,1,1),(347,31,9,1,1),(348,31,13,1,2),(349,32,1,1,1),(350,32,2,2,1),(351,32,3,2,1),(352,32,4,1,1),(353,32,9,1,1),(354,32,13,1,2),(355,33,9,1,1),(356,34,1,1,1),(357,34,2,2,1),(358,34,3,2,1),(359,34,4,1,1),(360,34,9,1,1),(361,34,13,1,2),(362,34,33,1,2),(363,34,34,1,2),(364,36,4,1,1),(365,36,13,1,2),(366,37,1,1,1),(367,37,4,1,1),(368,37,8,1,1),(369,37,9,1,1),(370,37,13,1,2),(371,38,1,1,1),(372,38,2,1,1),(373,38,3,1,1),(374,38,4,1,1),(375,38,9,1,1),(376,38,13,1,2),(377,40,1,1,1),(378,40,3,1,1),(379,40,4,1,1),(380,40,6,1,1),(381,40,8,1,1),(382,40,9,2,1),(383,40,22,1,2),(384,40,33,1,2),(385,40,34,1,2),(386,41,1,1,1),(387,41,2,3,1),(388,41,4,2,1),(389,41,6,1,1),(390,41,7,1,1),(391,41,8,1,1),(392,41,9,3,1),(393,41,12,2,1),(394,41,13,3,2),(395,41,14,1,2),(396,41,15,1,2),(397,41,16,2,2),(398,41,17,1,2),(399,41,18,1,2),(400,41,19,1,2),(401,41,20,1,2),(402,41,21,1,2),(403,41,22,1,2),(404,41,23,1,2),(405,41,24,1,2),(406,41,25,1,2),(407,41,26,1,2),(408,41,27,1,2),(409,41,28,1,2),(410,41,32,1,2),(411,41,33,2,2),(412,41,34,1,2),(413,42,1,1,1),(414,42,2,1,1),(415,42,3,2,1),(416,42,4,1,1),(417,42,6,1,1),(418,42,8,2,1),(419,42,12,1,1),(420,42,13,2,2),(421,42,14,1,2),(422,42,27,2,2),(423,42,28,1,2),(424,42,29,1,2),(425,42,30,1,2),(426,42,32,1,2),(427,42,33,1,2),(428,42,34,1,2),(429,43,1,1,1),(430,43,2,3,1),(431,43,4,2,1),(432,43,6,1,1),(433,43,7,1,1),(434,43,8,1,1),(435,43,9,3,1),(436,43,12,2,1),(437,43,13,3,2),(438,43,14,1,2),(439,43,15,1,2),(440,43,16,2,2),(441,43,17,1,2),(442,43,18,1,2),(443,43,19,1,2),(444,43,20,1,2),(445,43,21,1,2),(446,43,22,1,2),(447,43,23,1,2),(448,43,24,1,2),(449,43,25,1,2),(450,43,26,1,2),(451,43,27,1,2),(452,43,28,1,2),(453,43,29,1,2),(454,43,30,1,2),(455,43,32,1,2),(456,43,33,2,2),(457,43,34,1,2),(458,45,1,1,1),(459,45,4,2,1),(460,45,6,2,1),(461,45,9,1,1),(462,45,12,2,1),(463,45,14,2,2),(464,45,15,1,2),(465,45,17,1,2),(466,45,18,1,2),(467,45,19,1,2),(468,45,20,1,2),(469,45,21,1,2),(470,45,22,1,2),(471,45,23,1,2),(472,45,24,1,2),(473,45,25,1,2),(474,45,28,1,2),(475,45,32,1,2),(476,45,33,1,2),(477,45,34,1,2),(478,120,1,1,1),(479,120,4,1,1),(480,120,8,1,1),(481,47,1,1,1),(482,47,2,1,1),(483,47,3,1,1),(484,47,6,1,1),(485,47,32,1,2),(486,47,34,1,2),(487,48,1,1,1),(488,48,2,1,1),(489,48,3,1,1),(490,48,4,2,1),(491,48,6,1,1),(492,48,8,2,1),(493,48,30,1,2),(494,48,32,1,2),(495,48,34,1,2),(496,49,1,1,1),(497,49,2,1,1),(498,49,3,1,1),(499,49,6,1,1),(500,49,8,1,1),(501,49,22,2,2),(502,49,26,1,2),(503,49,30,3,2),(504,49,32,1,2),(505,49,34,1,2),(506,50,1,1,1),(507,50,2,1,1),(508,50,3,1,1),(509,50,4,2,1),(510,50,5,2,1),(511,50,6,2,1),(512,50,8,1,1),(513,50,9,1,1),(514,50,13,3,2),(515,50,34,1,2),(516,51,1,2,1),(517,51,4,1,1),(518,51,6,3,1),(519,51,8,1,1),(520,52,1,1,1),(521,52,6,1,1),(522,52,8,1,1),(523,52,26,1,2),(524,52,27,1,2),(525,53,1,1,1),(526,53,2,2,1),(527,53,4,3,1),(528,53,34,1,2),(529,54,8,1,1),(530,54,22,1,2),(531,54,26,1,2),(532,54,27,1,2),(533,54,28,1,2),(534,54,32,1,2),(535,55,1,1,1),(536,55,6,2,1),(537,55,7,1,1),(538,55,14,2,2),(539,55,15,1,2),(540,55,16,1,2),(541,55,17,1,2),(542,55,18,2,2),(543,55,32,2,2),(544,56,6,2,1),(545,56,7,1,1),(546,56,15,2,2),(547,56,16,2,2),(548,56,17,2,2),(549,56,19,1,2),(550,56,20,1,2),(551,56,21,1,2),(552,57,6,1,1),(553,57,32,1,2),(554,58,8,1,1),(555,58,26,1,2),(556,58,27,1,2),(557,58,28,1,2),(558,58,32,1,2),(559,59,27,1,2),(560,59,32,1,2),(561,60,32,1,2),(562,61,32,1,2),(563,62,32,1,2),(564,63,4,1,1),(565,63,5,1,1),(566,63,6,1,1),(567,63,32,1,2),(568,64,32,1,2),(569,65,1,1,1),(570,65,2,1,1),(571,65,3,1,1),(572,65,4,3,1),(573,65,5,1,1),(574,65,6,3,1),(575,65,7,1,1),(576,65,11,1,1),(577,65,13,1,2),(578,65,31,1,2),(579,65,32,2,2),(580,65,34,1,2),(581,66,7,1,1),(582,66,15,1,2),(583,66,16,1,2),(584,106,7,1,1),(585,106,15,1,2),(586,106,16,1,2),(587,80,10,1,1),(588,81,10,1,1),(589,121,10,1,1),(590,119,10,1,1),(591,84,10,1,1),(592,85,10,1,1),(593,86,7,1,1),(594,86,20,1,2),(595,86,21,1,2),(596,87,10,1,1),(597,88,10,1,1),(598,89,10,1,1),(599,90,1,1,1),(600,90,2,1,1),(601,90,3,1,1),(602,90,4,1,1),(603,90,5,1,1),(604,90,6,1,1),(605,90,7,1,1),(606,90,8,1,1),(607,90,9,1,1),(608,90,10,1,1),(609,90,11,1,1),(610,90,12,1,1),(611,90,13,1,2),(612,96,6,1,1),(613,96,7,1,1),(614,96,20,1,2),(615,96,21,1,2),(616,96,32,1,2),(617,97,10,2,1),(618,98,10,1,1),(619,99,1,1,1),(620,99,2,1,1),(621,99,3,1,1),(622,99,4,1,1),(623,99,5,1,1),(624,99,6,1,1),(625,99,7,1,1),(626,99,8,1,1),(627,99,9,1,1),(628,99,10,1,1),(629,99,11,1,1),(630,99,12,1,1),(631,99,13,1,2),(632,100,10,1,1),(633,102,7,1,1),(634,102,10,1,1),(635,103,7,1,1),(636,103,10,1,1),(637,104,7,1,1),(638,104,10,1,1),(639,105,7,1,1),(640,105,10,1,1),(641,66,7,1,1),(642,106,7,1,1),(643,107,7,1,1),(644,107,10,1,1),(645,108,7,1,1),(646,108,10,1,1),(647,109,7,1,1),(648,109,10,1,1),(649,110,7,1,1),(650,110,10,1,1),(651,111,7,1,1),(652,111,10,1,1),(653,112,8,1,1);
/*!40000 ALTER TABLE `data_to_capabilitiesmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataimportance`
--

DROP TABLE IF EXISTS `dataimportance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataimportance` (
  `dataImportantanceID` int(10) NOT NULL,
  `abbrevDesc` varchar(255) DEFAULT NULL,
  `dataImportDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataImportantanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataimportance`
--

LOCK TABLES `dataimportance` WRITE;
/*!40000 ALTER TABLE `dataimportance` DISABLE KEYS */;
INSERT INTO `dataimportance` VALUES (1,'H','High'),(2,'M','Medium'),(3,'L','Low');
/*!40000 ALTER TABLE `dataimportance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datatype`
--

DROP TABLE IF EXISTS `datatype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datatype` (
  `dataTypeID` int(10) NOT NULL,
  `dataDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatype`
--

LOCK TABLES `datatype` WRITE;
/*!40000 ALTER TABLE `datatype` DISABLE KEYS */;
INSERT INTO `datatype` VALUES (1,'Master'),(2,'Transaction');
/*!40000 ALTER TABLE `datatype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entitytocapability`
--

DROP TABLE IF EXISTS `entitytocapability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entitytocapability` (
  `entityToCapabilityID` int(10) NOT NULL,
  `Surety` varchar(255) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `Business Domain` varchar(255) DEFAULT NULL,
  `Capability` varchar(255) DEFAULT NULL,
  `Product` varchar(255) DEFAULT NULL,
  `Asset` varchar(255) DEFAULT NULL,
  `Work` varchar(255) DEFAULT NULL,
  `Artist` varchar(255) DEFAULT NULL,
  `Contract` varchar(255) DEFAULT NULL,
  `Project` varchar(255) DEFAULT NULL,
  `Vendor` varchar(255) DEFAULT NULL,
  `Customer` varchar(255) DEFAULT NULL,
  `Consumer` varchar(255) DEFAULT NULL,
  `Employee` varchar(255) DEFAULT NULL,
  `Royalty Acct` varchar(255) DEFAULT NULL,
  `Rights` varchar(255) DEFAULT NULL,
  `Participants` varchar(255) DEFAULT NULL,
  `Rls_Scheduling` varchar(255) DEFAULT NULL,
  `Stock_POs` varchar(255) DEFAULT NULL,
  `Expense_POs` varchar(255) DEFAULT NULL,
  `Receipts` varchar(255) DEFAULT NULL,
  `Inventory` varchar(255) DEFAULT NULL,
  `Vouchers` varchar(255) DEFAULT NULL,
  `Vend_Invoice` varchar(255) DEFAULT NULL,
  `Vend_Payments` varchar(255) DEFAULT NULL,
  `Phys_Cust_Orders` varchar(255) DEFAULT NULL,
  `Pickticket` varchar(255) DEFAULT NULL,
  `Packing_Slip` varchar(255) DEFAULT NULL,
  `Ship_Confirm` varchar(255) DEFAULT NULL,
  `Cust_Invoice` varchar(255) DEFAULT NULL,
  `AR` varchar(255) DEFAULT NULL,
  `Cash_Receipt` varchar(255) DEFAULT NULL,
  `Digital_Packaging` varchar(255) DEFAULT NULL,
  `Digital_Billing` varchar(255) DEFAULT NULL,
  `Royalty_Ledger` varchar(255) DEFAULT NULL,
  `General_Ledger` varchar(255) DEFAULT NULL,
  `Consumer_Activity` varchar(255) DEFAULT NULL,
  `Sales` varchar(255) DEFAULT NULL,
  UNIQUE KEY `ID` (`entityToCapabilityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entitytocapability`
--

LOCK TABLES `entitytocapability` WRITE;
/*!40000 ALTER TABLE `entitytocapability` DISABLE KEYS */;
INSERT INTO `entitytocapability` VALUES (2,'25%',NULL,'Strategy','Visioning',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'75%',NULL,'Strategy','Competitive Analytics','H','H','H','H','H','H','L','H','H','L',NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,'H'),(4,'50%',NULL,'Strategy','Strategic Planning','M','M','M','H','H','H','M','H','H',NULL,NULL,'M','M',NULL,'L',NULL,NULL,'L',NULL,NULL,NULL,'L',NULL,NULL,NULL,NULL,'M',NULL,NULL,NULL,NULL,'H','H','H'),(5,'50%',NULL,'Strategy','Strategy Execution & Tracking','M','M','M','H','H','H','M','H','H',NULL,NULL,'M','M',NULL,'L',NULL,NULL,'L',NULL,NULL,NULL,'L',NULL,NULL,NULL,NULL,'M',NULL,NULL,NULL,NULL,'H','H','H'),(6,'50%',NULL,'Strategy','Innovation','H','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,'H',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,'H','H','H'),(7,'75%',NULL,'Strategy','Investment Mgmt.',NULL,NULL,NULL,'H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,'H'),(8,'75%',NULL,'Talent Management','Talent Discovery',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'75%',NULL,'Talent Management','Talent Engagement',NULL,NULL,NULL,'H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'75%',NULL,'Talent Management','Talent Development','H','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,NULL),(11,'50%',NULL,'Talent Management','Talent Experience','H','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,NULL),(12,'50%',NULL,'Talent Management','Talent Retention','H','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,NULL),(13,'75%',NULL,'Talent Management','Talent Metadata Mgmt.',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'50%',NULL,'Talent Management','360 Management','H','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,NULL),(15,'75%',NULL,'Asset Management','Asset Creation',NULL,'H','H','H','M','M',NULL,NULL,NULL,NULL,NULL,'H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL),(16,'90%',NULL,'Asset Management','Asset Metadata Management',NULL,'H','H','H','M','M',NULL,NULL,NULL,NULL,NULL,'H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL),(17,'75%',NULL,'Asset Management','Asset Ingestion',NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL),(18,'75%',NULL,'Asset Management','Asset Classification & Storage',NULL,'H','H','H','L','L',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL),(19,'50%',NULL,'Asset Management','Metadata Tagging',NULL,'H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL),(20,'75%',NULL,'Asset Management','Asset Indexing & Search',NULL,'H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'50%',NULL,'Product Management','Product Design','H','H','H','H','H','H','H',NULL,NULL,NULL,'M','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'75%',NULL,'Product Management','Product Costing','H',NULL,NULL,NULL,'H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'L','H','L','H','H','H','H',NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'75%',NULL,'Product Management','Product Development','H','H','H','H','H','H','H',NULL,NULL,NULL,'M','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'75%',NULL,'Product Management','Product Bundling','H',NULL,NULL,'H','H','H',NULL,NULL,NULL,NULL,'M','H','M','H','M',NULL,'M','M',NULL,NULL,NULL,'M','M','M','M','M',NULL,NULL,NULL,NULL,'M',NULL,NULL,NULL),(25,'90%',NULL,'Product Management','Product Pricing','H',NULL,NULL,'M',NULL,NULL,NULL,'H','H','M','H','H','M','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,'M',NULL,'H','H',NULL,'H','H','H','H','H','H'),(26,'75%',NULL,'Product Management','Product Lifecycle Mgmt.','H',NULL,NULL,'H','H','H',NULL,'H','H','L','H','H','M','H','M',NULL,NULL,'H',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,'H','H','H','H'),(27,'90%',NULL,'Product Management','Product Metadata  Mgmt.','H','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,'H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'25%',NULL,'Service Management','Demand Management','H',NULL,NULL,'H','H','H',NULL,'H',NULL,NULL,'H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL),(29,'50%',NULL,'Service Management','Service Definition','H',NULL,NULL,'H',NULL,NULL,NULL,'H',NULL,NULL,'H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'50%',NULL,'Service Management','Service Configuration','H',NULL,NULL,'H','H','H',NULL,'H',NULL,NULL,'H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'50%',NULL,'Service Management','Service Pricing','H',NULL,NULL,'H','H','H',NULL,'H',NULL,NULL,NULL,'H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,'H',NULL,NULL,'H'),(32,'50%',NULL,'Service Management','Service Level Mgmt.','H',NULL,NULL,'H','H','H',NULL,'H',NULL,NULL,'H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,'M',NULL,NULL,'H'),(33,'75%',NULL,'Rights Management','Contract Generation',NULL,NULL,NULL,'H','H',NULL,'H',NULL,NULL,NULL,'H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'90%',NULL,'Rights Management','Contract Mgmt.','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'90%',NULL,'Rights Management','Copyright Registration',NULL,NULL,'H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'75%',NULL,'Rights Management','Rights Analysis','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'90%',NULL,'Rights Management','Rights Exploitation','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'75%',NULL,'Rights Management','Rights Tracking & Visibility','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'75%',NULL,'Rights Management','Rights Metadata Mgmt.','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'75%',NULL,'Marketing','Release Strategy Development','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'90%',NULL,'Marketing','Release Planning','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'0%',NULL,'Marketing','Casting Opps/B2B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'75%',NULL,'Marketing','Campaign Mgmt.','H',NULL,NULL,'H','H','H',NULL,'M','H',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'75%',NULL,'Marketing','Press & Promotions',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'75%',NULL,'Marketing','Global Fan/Customer Experience','H','M','M','H',NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'75%',NULL,'Marketing','Fan Metadata Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'75%',NULL,'Marketing','Market Analytics/Intel','H','M','M','H',NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H','H'),(48,'75%',NULL,'Marketing','Marketing Collateral Storage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'75%',NULL,'Marketing','Brand Mgmt. (Artist, Label, Company)',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'75%',NULL,'Marketing','Channel Experience','H',NULL,NULL,'H',NULL,NULL,NULL,'H','H',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'75%',NULL,'Marketing','Marketing Strategy','H','H','H','H',NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'0%',NULL,'Marketing','Customer Satisfaction Training',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'90%',NULL,'Sales & Distribution','Sales Forecasting & Planning','H',NULL,'H','H',NULL,'H',NULL,'H','M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H','H'),(54,'90%',NULL,'Sales & Distribution','Physical Distribution','H','L',NULL,'M',NULL,'H','H','H','L',NULL,NULL,'M','L','H','H','M','H','H','H','H','H','H','H','H','H','H','H','H',NULL,NULL,NULL,'H','M','H'),(55,'90%',NULL,'Sales & Distribution','Digital Distribution','H','H','M','H',NULL,'H',NULL,'M',NULL,NULL,NULL,'H','M','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M','H','H','H',NULL,'H','H','H'),(56,'90%',NULL,'Sales & Distribution','3rd Party Distribution','H','L',NULL,'M',NULL,'H','H','H','L',NULL,NULL,'M','L','H','H','M','H','H','H','H','H','H','H','H','H','H','H','H','H','H',NULL,'H','M','H'),(57,'0%',NULL,'Sales & Distribution','Distribution Agreements',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'90%',NULL,'Sales & Distribution','D2C Order Mgmt.','H',NULL,NULL,'M',NULL,'M',NULL,NULL,'H',NULL,NULL,'M',NULL,'M','H',NULL,'H','H','H','H','H','H','H','H','H',NULL,NULL,'H',NULL,NULL,NULL,'H','H','H'),(59,'50%',NULL,'Sales & Distribution','Sales Pitching','H',NULL,NULL,'H',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'90%',NULL,'Sales & Distribution','Income Tracking','H','H','H',NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,'H'),(61,'90%',NULL,'Sales & Distribution','Sales Ingestion','H','H','H','M',NULL,'H',NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,'H',NULL,'H'),(62,'90%',NULL,'Sales & Distribution','Invoicing','H','H','H',NULL,NULL,'H',NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,NULL,NULL,'H',NULL,NULL,NULL,'L',NULL,'H',NULL,'H'),(63,'90%',NULL,'Sales & Distribution','Sales Analytics','H','H','H','M','M','M',NULL,'H','H',NULL,NULL,NULL,'L',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H'),(64,'25%',NULL,'Sales & Distribution','Advertising Sales','M',NULL,NULL,'H',NULL,'L',NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'90%',NULL,'Sales & Distribution','Co-op Advertising','H',NULL,NULL,NULL,NULL,'H',NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'75%',NULL,'Sales & Distribution','B2B/Society Feeds','H','M',NULL,'L',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H'),(67,'90%',NULL,'Finance','Credit & Collections',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,'H','H','H',NULL,NULL,NULL,'H',NULL,NULL),(68,'90%',NULL,'Finance','Procurement','H',NULL,NULL,NULL,NULL,'M','H',NULL,NULL,NULL,NULL,NULL,NULL,'M','H','H','H','M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,NULL),(69,'90%',NULL,'Finance','Accounts Payables',NULL,NULL,NULL,NULL,NULL,'M','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M','M','M',NULL,'H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,'90%',NULL,'Finance','General Ledger',NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL),(71,'90%',NULL,'Finance','Accounts Receivables',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H','H','H',NULL,NULL,NULL,'H',NULL,NULL),(72,'90%',NULL,'Finance','Cash Management',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,'H',NULL,NULL),(73,'90%',NULL,'Finance','Tax and Treasury',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL),(74,'90%',NULL,'Finance','Consolidated Financial Reporting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL),(75,'90%',NULL,'Finance','Auditing and Controls',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL),(76,'90%',NULL,'Finance','Project Accounting',NULL,NULL,NULL,'H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL),(77,'90%',NULL,'Finance','Financial Planning & Analysis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL),(78,'90%',NULL,'Finance','Royalties Management','H','H','H','L','H','L','H',NULL,NULL,NULL,'H',NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H','M',NULL,'H'),(79,'90%',NULL,'Finance','Vendor Management',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,'90%',NULL,'HR','Employee Recruiting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,'25%',NULL,'HR','Starters & Leavers',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,'90%',NULL,'HR','Time Tracking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,'90%',NULL,'HR','Performance Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,'90%',NULL,'HR','Employee T&E',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,'90%',NULL,'HR','Employee Experience',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,'90%',NULL,'HR','Contractor Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,'90%',NULL,'HR','Compensation & Benefits',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,'90%',NULL,'HR','Training',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,'90%',NULL,'HR','Employee Data Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,'90%',NULL,'IT','Master Data Mgmt.','H','H','H','H','H','H','H','H','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,'0%',NULL,'IT','Collaboration',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,'0%',NULL,'IT','Service Delivery',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,'0%',NULL,'IT','Enterprise Architecture',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,'0%',NULL,'IT','Enterprise Service Bus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,'0%',NULL,'IT','API',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,'90%',NULL,'IT','IT Project Control',NULL,NULL,NULL,NULL,NULL,'H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL),(97,'90%',NULL,'IT','Change Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,'90%',NULL,'IT','Incident Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,'90%',NULL,'IT','Data Governance','H','H','H','H','H','H','H','H','H','H','H','H','H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,'90%',NULL,'Infrastructure','Email',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,'50%',NULL,'Infrastructure','Service Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,'90%',NULL,'Infrastructure','Desktop & Tools',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,'90%',NULL,'Infrastructure','Telephony',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,'90%',NULL,'Infrastructure','Infrastructure Mgmt',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,'90%',NULL,'Infrastructure','Content Delivery Network',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,'90%',NULL,'Infrastructure','Vendor Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,'90%',NULL,'Infrastructure','Network Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,'90%',NULL,'Infrastructure','Security Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,'90%',NULL,'Infrastructure','Database Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,'90%',NULL,'Infrastructure','Storage Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,'90%',NULL,'Infrastructure','Computing Mgmt.',NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,'25%',NULL,'Infrastructure','Metering & Billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `entitytocapability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interfaces`
--

DROP TABLE IF EXISTS `interfaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interfaces` (
  `interfaceID` int(10) NOT NULL,
  `interfaceDesc` varchar(255) DEFAULT NULL,
  `interfaceTypeID` int(10) DEFAULT NULL,
  `businessSupportID` int(10) DEFAULT NULL,
  `implementationDate` datetime DEFAULT NULL,
  `shutdownDate` datetime DEFAULT NULL,
  PRIMARY KEY (`interfaceID`),
  KEY `interfaceTypeID` (`interfaceTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interfaces`
--

LOCK TABLES `interfaces` WRITE;
/*!40000 ALTER TABLE `interfaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `interfaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oldsyscosts`
--

DROP TABLE IF EXISTS `oldsyscosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oldsyscosts` (
  `ID` int(10) NOT NULL,
  `System Name` varchar(255) DEFAULT NULL,
  `Mapped System Name` varchar(255) DEFAULT NULL,
  `Revised Cost` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Major Business Function -New` varchar(255) DEFAULT NULL,
  `Mapped Major Bus Process - New` varchar(255) DEFAULT NULL,
  `Major Business Function - Original` varchar(255) DEFAULT NULL,
  `Major Business Process - Original` varchar(255) DEFAULT NULL,
  `Mapped Major Bus Process - Original` varchar(255) DEFAULT NULL,
  `Region/BU new` varchar(255) DEFAULT NULL,
  `Region/BU -old` varchar(255) DEFAULT NULL,
  `Revised Total Costs` decimal(19,4) DEFAULT NULL,
  `AvgCost` decimal(19,4) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oldsyscosts`
--

LOCK TABLES `oldsyscosts` WRITE;
/*!40000 ALTER TABLE `oldsyscosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oldsyscosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process` (
  `processID` int(10) NOT NULL,
  `processDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`processID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
INSERT INTO `process` VALUES (1,'Learn'),(2,'Buy'),(3,'Get'),(4,'Use'),(5,'Pay'),(6,'Service');
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process-to-buscap`
--

DROP TABLE IF EXISTS `process-to-buscap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process-to-buscap` (
  `processToBusCapID` int(10) NOT NULL,
  `busCapID` int(10) DEFAULT NULL,
  `processID` int(10) DEFAULT NULL,
  PRIMARY KEY (`processToBusCapID`),
  KEY `processID` (`processID`),
  KEY `Process-To-BusCapBusCapID` (`busCapID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process-to-buscap`
--

LOCK TABLES `process-to-buscap` WRITE;
/*!40000 ALTER TABLE `process-to-buscap` DISABLE KEYS */;
INSERT INTO `process-to-buscap` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,4),(7,7,6),(8,8,4),(9,9,1),(10,10,2),(11,11,4),(12,12,4),(13,13,6),(14,14,1),(15,15,4),(16,16,3),(17,17,4),(18,18,4),(19,19,2),(20,20,1),(21,21,2),(22,22,2),(23,23,2),(24,24,2),(25,25,6),(26,26,4),(27,27,1),(28,28,1),(29,29,3),(30,30,3),(31,31,3),(32,32,3),(33,33,4),(34,34,4),(35,35,3),(36,36,4),(37,37,3),(38,38,1),(39,39,6),(40,40,1),(41,41,4),(42,42,4),(43,43,4),(44,44,3),(45,45,3),(46,46,2),(47,47,4),(48,48,3),(49,49,5),(50,50,4),(51,51,2),(52,52,2),(53,53,3),(54,54,5),(55,55,3),(56,56,5),(57,57,5),(58,58,5),(59,59,5),(60,60,6),(61,61,6),(62,62,6),(63,63,4),(64,64,6),(65,65,6),(66,66,6),(67,67,2),(68,68,2),(69,69,3),(70,70,6),(71,71,4),(72,72,4),(73,73,4),(74,74,4),(75,75,4),(76,76,4),(77,77,3),(78,78,3),(79,79,3),(80,80,3),(81,81,3),(82,82,4),(83,83,6),(84,84,6),(85,85,3),(86,86,6),(87,87,5),(88,88,6),(89,89,6),(90,90,3),(91,91,4),(92,92,3),(93,93,1),(94,94,6),(95,95,6),(96,96,6),(97,97,6),(98,98,4),(99,99,4),(100,100,4),(101,101,4),(102,102,4),(103,103,4),(104,104,4),(105,105,4),(106,106,6),(107,107,6),(108,108,6),(109,109,6),(110,110,6),(111,111,6),(112,112,5),(113,113,6),(114,114,2),(115,115,4),(116,116,2),(117,117,6),(118,118,3),(119,119,6),(120,120,2),(121,121,4),(122,122,6);
/*!40000 ALTER TABLE `process-to-buscap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process-to-busdomain`
--

DROP TABLE IF EXISTS `process-to-busdomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process-to-busdomain` (
  `procToBusDomainID` int(10) NOT NULL,
  `processID` int(10) DEFAULT NULL,
  `busDomainID` int(10) DEFAULT NULL,
  PRIMARY KEY (`procToBusDomainID`),
  KEY `processID` (`processID`),
  KEY `busDomainID` (`busDomainID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process-to-busdomain`
--

LOCK TABLES `process-to-busdomain` WRITE;
/*!40000 ALTER TABLE `process-to-busdomain` DISABLE KEYS */;
INSERT INTO `process-to-busdomain` VALUES (1,1,1),(2,1,5),(3,2,6),(4,3,8),(5,3,9),(6,4,13),(7,5,7),(8,6,2),(9,6,3),(10,6,4),(11,6,8),(12,6,10),(13,6,11),(14,6,12),(15,0,0);
/*!40000 ALTER TABLE `process-to-busdomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `projectID` int(10) NOT NULL,
  `projName` varchar(255) DEFAULT NULL,
  `projDesc` varchar(255) DEFAULT NULL,
  `projStartDate` datetime DEFAULT NULL,
  `projSusDate` datetime DEFAULT NULL,
  `projCloseDate` datetime DEFAULT NULL,
  `projStatusID` int(10) DEFAULT NULL,
  PRIMARY KEY (`projectID`),
  KEY `projStatusID` (`projStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'P0A00',NULL,'2017-02-13 00:00:00',NULL,NULL,1),(2,'P0A21',NULL,'2017-02-13 00:00:00',NULL,NULL,1),(3,'P1A03',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(4,'P2A06',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(5,'P2A07',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(6,'P2A94',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(7,'P2A97',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(8,'P2A98',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(9,'P3A00',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(10,'P4A01',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(11,'P6916',NULL,'2016-12-19 00:00:00','2017-01-20 00:00:00',NULL,2),(12,'P6A35',NULL,'2016-12-19 00:00:00',NULL,'2017-02-13 00:00:00',3),(13,'P6A40',NULL,'2016-12-19 00:00:00','2017-01-20 00:00:00',NULL,2),(14,'P6A69',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(15,'P8875',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(16,'P9A28',NULL,'2016-12-19 00:00:00',NULL,NULL,4),(17,'PA591',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(18,'PA932',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(19,'PB079',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(20,'PB234',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(21,'PB292',NULL,'2016-12-19 00:00:00',NULL,NULL,4),(22,'PB438',NULL,'2016-12-19 00:00:00',NULL,'2016-12-19 00:00:00',3),(23,'PB439',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(24,'PB443',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(25,'PB464',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(26,'PB491',NULL,'2016-12-19 00:00:00','2017-01-20 00:00:00',NULL,2),(27,'PB747',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(28,'PB988',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(29,'PC926',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(30,'PD056',NULL,'2016-12-19 00:00:00',NULL,'2016-12-19 00:00:00',3),(31,'PD275',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(32,'PD277',NULL,'2016-12-19 00:00:00',NULL,'2016-12-19 00:00:00',3),(33,'PD278',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(34,'PD279',NULL,'2016-12-19 00:00:00',NULL,NULL,1),(35,'PD610',NULL,'2016-12-19 00:00:00','2017-01-20 00:00:00',NULL,2),(36,'PD739',NULL,'2016-12-19 00:00:00',NULL,'2016-12-19 00:00:00',3),(37,'PD758',NULL,'2016-12-19 00:00:00',NULL,'2016-12-19 00:00:00',3),(38,'PD759',NULL,'2016-12-19 00:00:00',NULL,'2016-12-19 00:00:00',3),(39,'PD760',NULL,'2016-12-19 00:00:00',NULL,NULL,1);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project-status`
--

DROP TABLE IF EXISTS `project-status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project-status` (
  `projStatusID` int(10) NOT NULL,
  `projStatusDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`projStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project-status`
--

LOCK TABLES `project-status` WRITE;
/*!40000 ALTER TABLE `project-status` DISABLE KEYS */;
INSERT INTO `project-status` VALUES (1,'Active'),(2,'Suspended'),(3,'Cancelled'),(4,'Completed'),(5,'Scope'),(6,'Assessment'),(7,'Design'),(8,'Requirements'),(9,'Coding'),(10,'Test');
/*!40000 ALTER TABLE `project-status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project-to-capabilities`
--

DROP TABLE IF EXISTS `project-to-capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project-to-capabilities` (
  `projToCapID` int(10) NOT NULL,
  `projectID` int(10) DEFAULT NULL,
  `busCapID` int(10) DEFAULT NULL,
  PRIMARY KEY (`projToCapID`),
  KEY `projectID` (`projectID`),
  KEY `capID` (`busCapID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project-to-capabilities`
--

LOCK TABLES `project-to-capabilities` WRITE;
/*!40000 ALTER TABLE `project-to-capabilities` DISABLE KEYS */;
INSERT INTO `project-to-capabilities` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,20,40),(41,21,41),(42,22,42),(43,23,43),(44,24,44),(45,25,45),(46,14,46),(47,15,47),(48,16,48),(49,17,49),(50,18,50),(51,19,51),(52,21,52),(53,22,53),(54,23,54),(55,24,55),(56,25,56),(57,1,57),(58,2,58),(59,3,59),(60,4,60),(61,5,61),(62,6,62),(63,1,63),(64,2,64),(65,3,65),(66,4,66),(67,5,67),(68,6,68),(69,30,69),(70,31,70),(71,32,71),(72,33,72),(73,34,73),(74,35,74),(75,36,75),(76,37,76),(77,38,77),(78,39,78),(79,30,79),(80,31,80),(81,32,81),(82,33,82),(83,34,83),(84,35,84),(85,36,85),(86,37,86),(87,38,87),(88,39,88),(89,7,89),(90,8,90),(91,9,91),(92,10,92),(93,11,93),(94,1,94),(95,12,94),(96,2,95),(97,13,95),(98,3,96),(99,14,96),(100,4,97),(101,15,97),(102,1,98),(103,16,98),(104,2,99),(105,17,99),(106,3,100),(107,18,100),(108,19,101),(109,33,101),(110,20,102),(111,34,102),(112,21,103),(113,35,103),(114,22,104),(115,36,104),(116,23,105),(117,37,105),(118,24,106),(119,38,106),(120,1,107),(121,25,107),(122,16,108),(123,17,109),(124,18,110),(125,19,111),(126,20,112),(127,21,113),(128,22,114),(129,23,115),(130,24,116),(131,25,117),(132,1,118),(133,2,119),(134,3,120),(135,1,121),(136,2,122);
/*!40000 ALTER TABLE `project-to-capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project-to-release`
--

DROP TABLE IF EXISTS `project-to-release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project-to-release` (
  `projToReleaseID` int(10) NOT NULL,
  `projectID` int(10) DEFAULT NULL,
  `releaseID` int(10) DEFAULT NULL,
  PRIMARY KEY (`projToReleaseID`),
  KEY `projectID` (`projectID`),
  KEY `releaseID` (`releaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project-to-release`
--

LOCK TABLES `project-to-release` WRITE;
/*!40000 ALTER TABLE `project-to-release` DISABLE KEYS */;
INSERT INTO `project-to-release` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,7,1),(7,8,1),(8,14,1),(9,15,1),(10,16,1),(11,21,1),(12,24,1),(13,25,1),(14,28,1),(15,34,1),(16,35,1),(17,36,1),(18,39,1),(19,20,1),(20,21,1),(21,22,1),(22,23,1),(23,24,1),(24,25,1),(25,1,1),(26,2,1),(27,3,1),(28,4,1),(29,5,1),(30,6,1),(31,1,1),(32,2,1),(33,3,1),(34,4,1),(35,31,1),(36,32,1),(37,33,1),(38,34,1),(39,36,1),(40,37,1),(41,38,1),(42,39,1),(43,30,1),(44,31,1),(45,32,1),(46,33,1),(47,34,1),(48,37,1),(49,38,1),(50,39,1),(51,7,1),(52,8,1),(53,1,1),(54,12,1),(55,2,1),(56,13,1),(57,3,1),(58,14,1),(59,4,1),(60,15,1),(61,1,1),(62,16,1),(63,2,1),(64,17,1),(65,3,1),(66,18,1),(67,19,1),(68,33,1),(69,20,1),(70,34,1),(71,24,1),(72,38,1),(73,1,1),(74,25,1),(75,16,1),(76,17,1),(77,18,1),(78,19,1),(79,20,1),(80,21,1),(81,22,1),(82,23,1),(83,24,1),(84,25,1),(85,3,1),(86,1,1),(87,2,1),(88,6,2),(89,9,2),(90,10,2),(91,11,2),(92,12,2),(93,13,2),(94,17,2),(95,18,2),(96,19,2),(97,20,2),(98,22,2),(99,23,2),(100,26,2),(101,27,2),(102,29,2),(103,30,2),(104,31,2),(105,32,2),(106,33,2),(107,37,2),(108,38,2),(109,25,2),(110,14,2),(111,15,2),(112,16,2),(113,17,2),(114,18,2),(115,19,2),(116,21,2),(117,22,2),(118,23,2),(119,24,2),(120,5,2),(121,6,2),(122,30,2),(123,35,2),(124,35,2),(125,36,2),(126,9,2),(127,10,2),(128,11,2),(129,21,2),(130,35,2),(131,22,2),(132,36,2),(133,23,2),(134,37,2),(135,1,2),(136,2,2);
/*!40000 ALTER TABLE `project-to-release` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release`
--

DROP TABLE IF EXISTS `release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `release` (
  `releaseID` int(10) NOT NULL,
  `releaseNum` varchar(255) DEFAULT NULL,
  `releaseDescription` varchar(255) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  `releaseStatusID` int(10) DEFAULT NULL,
  PRIMARY KEY (`releaseID`),
  KEY `ReleasereleaseStatusID` (`releaseStatusID`),
  KEY `releaseNum` (`releaseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `release`
--

LOCK TABLES `release` WRITE;
/*!40000 ALTER TABLE `release` DISABLE KEYS */;
INSERT INTO `release` VALUES (1,'Release 1',NULL,'2017-02-21 00:00:00',1),(2,'Release 2',NULL,'2017-04-29 00:00:00',1),(3,'Release 3',NULL,'2017-05-27 00:00:00',1),(4,'Release 4',NULL,'2017-07-29 00:00:00',3),(5,'Release 5',NULL,'2017-08-25 00:00:00',2),(6,'Release 6',NULL,'2017-09-23 00:00:00',4),(7,'Release 7',NULL,'2017-10-27 00:00:00',4),(8,'Release 8',NULL,'2017-11-24 00:00:00',4);
/*!40000 ALTER TABLE `release` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release-status`
--

DROP TABLE IF EXISTS `release-status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `release-status` (
  `releaseStatusID` int(10) NOT NULL,
  `releaseStatusDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`releaseStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `release-status`
--

LOCK TABLES `release-status` WRITE;
/*!40000 ALTER TABLE `release-status` DISABLE KEYS */;
INSERT INTO `release-status` VALUES (1,'Active'),(2,'Suspended'),(3,'Cancelled'),(4,'Completed');
/*!40000 ALTER TABLE `release-status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `serviceID` int(10) NOT NULL,
  `ServiceName` varchar(255) DEFAULT NULL,
  UNIQUE KEY `ID` (`serviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Telecommunications'),(2,'IP-Based'),(3,'Optical'),(4,'Management & Applications'),(5,'Security'),(6,'Special'),(7,'Wireless');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subservice`
--

DROP TABLE IF EXISTS `subservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subservice` (
  `subServiceID` int(10) NOT NULL,
  `ServiceID` double DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Alternate Description` varchar(255) DEFAULT NULL,
  UNIQUE KEY `ID` (`subServiceID`),
  KEY `ServiceID` (`ServiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subservice`
--

LOCK TABLES `subservice` WRITE;
/*!40000 ALTER TABLE `subservice` DISABLE KEYS */;
INSERT INTO `subservice` VALUES (1,1,'Voice',''),(2,1,'Circuit Switched Data',''),(3,1,'Toll-Free',''),(4,1,'Combined',''),(5,1,'Private Line',''),(6,1,'Frame Relay',''),(7,1,'ATM - Asynchronous Transfer Mode',''),(8,1,'Ethernet',''),(9,2,'Premises-Based IP VPN',''),(10,2,'Network-Based IP VPN',''),(11,2,'Voice over IP Transport',''),(12,2,'Content Delivery Network',''),(13,2,'Converged IP',''),(14,2,'IP Telephony',''),(15,2,'Internet Protocol',''),(16,2,'IP Video Transport',''),(17,2,'Layer 2 VPN',''),(18,3,'Synchronous Optical Network',''),(19,3,'Optical Wavelength',''),(20,3,'Dark Fiber',''),(21,4,'Video Teleconferencing',''),(22,4,'Managed Network',''),(23,4,'Audio Conferencing',''),(24,4,'Teleworking Service',''),(25,4,'Call Center/Customer Contact Center',''),(26,4,'Web Conferencing',''),(27,4,'Dedicated Hosting',''),(28,4,'Collocated Hosting',''),(29,4,'Storage',''),(30,4,'Customer Specific Design and Engineering',''),(31,4,'Unified Messaging',''),(32,4,'Collaboration Support',''),(33,4,'Internet Facsimile',''),(34,5,'Managed Firewall',''),(35,5,'Intrusion Detection and Prevention',''),(36,5,'Managed E-Authentication',''),(37,5,'Vulnerability Scanning',''),(38,5,'Anti-Virus Management',''),(39,5,'Incident Response',''),(40,5,'Secure Managed Email',''),(41,5,'Managed Tiered Security',''),(42,6,'Land Mobile Radio',''),(43,6,'Mobile Satellite',''),(44,6,'Fixed Satellite',''),(45,7,'Cellular/PCS',''),(46,7,'Multimode Wireless',''),(47,7,'Cellular Digital Packet Data',''),(48,7,'Paging','');
/*!40000 ALTER TABLE `subservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subservice-to-app`
--

DROP TABLE IF EXISTS `subservice-to-app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subservice-to-app` (
  `appToSubServiceID` int(10) NOT NULL,
  `appID` int(10) DEFAULT NULL,
  `subServiceID` int(10) DEFAULT NULL,
  PRIMARY KEY (`appToSubServiceID`),
  KEY `subServiceID` (`subServiceID`),
  KEY `appID` (`appID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subservice-to-app`
--

LOCK TABLES `subservice-to-app` WRITE;
/*!40000 ALTER TABLE `subservice-to-app` DISABLE KEYS */;
INSERT INTO `subservice-to-app` VALUES (1,282,1),(2,326,9),(3,379,18),(4,376,21),(5,371,34),(6,366,42),(7,365,45),(8,357,2),(9,352,4),(10,333,7),(11,311,10),(12,310,15),(13,274,20),(14,208,25),(15,187,36),(16,153,43),(17,142,38),(18,37,46);
/*!40000 ALTER TABLE `subservice-to-app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switchboard items1`
--

DROP TABLE IF EXISTS `switchboard items1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switchboard items1` (
  `SwitchboardId` int(10) DEFAULT NULL,
  `Itemnumber` int(10) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `ItemText` varchar(200) DEFAULT NULL,
  `Command` int(10) DEFAULT NULL,
  `Argument` varchar(200) DEFAULT NULL,
  `Owner` varchar(50) DEFAULT NULL,
  `LastUserName` varchar(50) DEFAULT NULL,
  `LastUsedDate` datetime DEFAULT NULL,
  `FilterStr` varchar(50) DEFAULT NULL,
  `ReportFlag` tinyint(1) NOT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `OpenArgsStr` longtext,
  KEY `SwitchboardId` (`SwitchboardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switchboard items1`
--

LOCK TABLES `switchboard items1` WRITE;
/*!40000 ALTER TABLE `switchboard items1` DISABLE KEYS */;
INSERT INTO `switchboard items1` VALUES (1,0,0,'Main',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(1,20,1,'Exit',6,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(1,19,1,'Admin Screen',1,'10',NULL,NULL,NULL,NULL,0,NULL,NULL),(10,0,0,'Admin',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(10,20,1,'Go to Main',1,'1',NULL,NULL,NULL,NULL,0,NULL,NULL),(10,1,1,'Switchboard Item update',3,'Switchboard Items update',NULL,'','2010-10-31 22:57:59',NULL,0,NULL,NULL),(1,2,1,'Assets',3,'Asset Template',NULL,'','2011-06-05 21:40:15',NULL,0,NULL,NULL),(1,3,1,'Ad Hoc Reports',3,'_QT_Query Names',NULL,'','2011-06-21 08:40:41',NULL,0,NULL,NULL),(1,1,1,'Deals Summary',3,'Deals Summary',NULL,'','2011-05-26 18:49:01',NULL,0,NULL,NULL),(1,4,1,'Franchise with Gross and DVDs',3,'Franchise with Gross and DVDs',NULL,'','2010-11-08 16:41:23',NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `switchboard items1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switchboardcommands`
--

DROP TABLE IF EXISTS `switchboardcommands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switchboardcommands` (
  `SwitchBoardID` int(10) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  KEY `SwitchBoardID` (`SwitchBoardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switchboardcommands`
--

LOCK TABLES `switchboardcommands` WRITE;
/*!40000 ALTER TABLE `switchboardcommands` DISABLE KEYS */;
INSERT INTO `switchboardcommands` VALUES (1,'Goto Switchboard'),(2,'OpenFormAdd'),(3,'OpenFormBrowse'),(4,'OpenReport'),(5,'CustomizeSwitchboard'),(6,'ExitApplication'),(7,'RunMacro'),(8,'RunCode'),(9,'RunQuery'),(0,'Switchboard');
/*!40000 ALTER TABLE `switchboardcommands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switchboardlog`
--

DROP TABLE IF EXISTS `switchboardlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switchboardlog` (
  `name` varchar(20) NOT NULL,
  `LogDatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switchboardlog`
--

LOCK TABLES `switchboardlog` WRITE;
/*!40000 ALTER TABLE `switchboardlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `switchboardlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_to_appmapping`
--

DROP TABLE IF EXISTS `vendor_to_appmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_to_appmapping` (
  `dataMappingID` int(10) NOT NULL,
  `appID` int(10) DEFAULT NULL,
  `VendorID` int(10) DEFAULT NULL,
  `DomainID` int(10) DEFAULT NULL,
  `busCapID` int(10) DEFAULT NULL,
  `Issue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataMappingID`),
  KEY `dataImportID` (`DomainID`),
  KEY `ApplicationID` (`appID`),
  KEY `DataEntityID` (`VendorID`),
  KEY `dataTypeID` (`busCapID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_to_appmapping`
--

LOCK TABLES `vendor_to_appmapping` WRITE;
/*!40000 ALTER TABLE `vendor_to_appmapping` DISABLE KEYS */;
INSERT INTO `vendor_to_appmapping` VALUES (1,371,1,3,17,''),(2,371,1,3,16,''),(3,371,1,3,15,''),(4,371,1,3,19,''),(5,274,1,7,57,''),(6,274,1,7,66,''),(7,372,1,7,65,''),(8,373,1,7,65,''),(9,274,1,7,64,''),(10,274,1,7,63,''),(11,274,1,7,62,''),(12,274,1,7,58,''),(13,274,1,7,61,''),(14,274,1,7,56,''),(15,274,1,7,55,''),(16,274,1,7,54,''),(17,274,1,7,60,''),(18,274,1,7,59,''),(19,274,1,10,80,''),(20,274,1,10,81,''),(21,274,1,10,82,''),(22,274,1,10,83,''),(23,37,1,10,85,''),(24,274,1,10,87,''),(25,274,1,10,89,''),(26,274,1,10,84,''),(27,17,1,12,105,''),(28,374,1,12,104,''),(29,371,1,11,90,''),(30,374,1,11,90,''),(31,374,1,11,90,''),(32,375,1,11,95,''),(33,372,1,11,94,''),(34,372,1,11,93,''),(35,372,1,11,92,''),(36,372,1,11,91,''),(37,372,1,11,99,''),(38,374,1,11,99,''),(39,37,1,5,32,''),(40,371,1,5,32,''),(41,37,1,5,34,''),(42,376,1,5,34,''),(43,37,1,5,35,''),(44,37,1,5,39,''),(45,371,1,8,73,''),(46,371,1,8,72,''),(47,371,1,8,71,''),(48,371,1,8,70,''),(49,371,1,8,69,''),(50,371,1,8,68,''),(51,371,1,8,67,''),(52,37,1,6,50,''),(53,376,1,6,50,''),(54,377,1,6,41,''),(55,378,1,6,41,''),(56,371,1,6,46,''),(57,37,1,6,45,''),(58,371,1,6,45,''),(59,17,1,6,45,''),(60,371,1,6,44,''),(61,37,1,6,43,''),(62,37,1,6,43,''),(63,375,1,6,43,''),(64,37,1,6,42,''),(65,37,1,6,42,''),(66,375,1,6,42,''),(67,376,1,1,2,''),(68,37,1,2,8,''),(69,37,1,2,10,''),(70,379,2,3,18,''),(71,380,2,3,18,''),(72,381,2,3,18,''),(73,379,2,3,17,''),(74,380,2,3,17,''),(75,381,2,3,17,''),(76,379,2,3,16,''),(77,380,2,3,16,''),(78,381,2,3,16,''),(79,379,2,3,15,''),(80,380,2,3,15,''),(81,381,2,3,15,''),(82,379,2,3,14,''),(83,380,2,3,14,''),(84,381,2,3,14,''),(85,379,2,7,65,''),(86,379,2,7,64,''),(87,379,2,7,57,''),(88,379,2,7,57,''),(89,384,2,10,84,''),(90,382,2,10,85,''),(91,383,2,10,85,''),(92,387,2,12,112,''),(93,387,2,12,111,''),(94,385,2,12,109,''),(95,386,2,12,109,''),(96,385,2,12,107,''),(97,386,2,12,107,''),(98,387,2,12,107,''),(99,385,2,12,104,''),(100,386,2,12,104,''),(101,387,2,12,104,''),(102,385,2,12,110,''),(103,386,2,12,110,''),(104,387,2,12,110,''),(105,387,2,12,101,''),(106,387,2,12,101,''),(107,384,2,11,92,''),(108,384,2,11,92,''),(109,384,2,11,90,''),(110,383,2,11,98,''),(111,382,2,11,95,''),(112,388,2,11,94,''),(113,388,2,11,94,''),(114,384,2,11,91,''),(115,388,2,11,93,''),(116,379,2,9,118,''),(117,379,2,9,78,''),(118,379,2,9,75,''),(119,379,2,9,79,''),(120,379,2,9,74,''),(121,379,2,9,76,''),(122,379,2,9,77,''),(123,379,2,5,28,''),(124,382,2,5,32,''),(125,383,2,5,32,''),(126,389,2,5,33,''),(127,382,2,5,37,''),(128,383,2,5,37,''),(129,379,2,5,34,''),(130,379,2,4,25,''),(131,379,2,4,24,''),(132,389,2,4,26,''),(133,379,2,4,26,''),(134,379,2,8,73,''),(135,379,2,8,72,''),(136,379,2,8,71,''),(137,379,2,8,70,''),(138,379,2,8,69,''),(139,379,2,8,68,''),(140,379,2,8,67,''),(141,379,2,6,50,''),(142,379,2,6,46,''),(143,379,2,6,44,''),(144,379,2,6,43,''),(145,379,2,6,42,''),(146,382,2,6,45,''),(147,379,2,13,24,''),(148,379,2,2,13,''),(149,382,2,2,10,''),(150,383,2,2,10,''),(151,390,3,3,18,''),(152,391,3,3,18,''),(153,392,3,3,18,''),(154,390,3,3,17,''),(155,391,3,3,17,''),(156,392,3,3,17,''),(157,390,3,3,16,''),(158,391,3,3,16,''),(159,392,3,3,16,''),(160,390,3,3,15,''),(161,391,3,3,15,''),(162,392,3,3,15,''),(163,390,3,3,14,''),(164,391,3,3,14,''),(165,392,3,3,14,''),(166,373,3,7,65,''),(167,274,3,7,64,''),(168,274,3,7,62,''),(169,274,3,7,61,''),(170,274,3,7,60,''),(171,274,3,7,59,''),(172,274,3,7,58,''),(173,274,3,7,54,''),(174,274,3,7,57,''),(175,274,3,7,56,''),(176,393,3,10,85,''),(177,394,3,10,85,''),(178,395,3,10,85,''),(179,395,3,10,85,''),(180,396,3,12,107,''),(181,396,3,12,107,''),(182,396,3,12,109,''),(183,396,3,12,109,''),(184,396,3,12,110,''),(185,402,3,11,95,''),(186,403,3,11,95,''),(187,397,3,11,94,''),(188,398,3,11,94,''),(189,399,3,11,94,''),(190,400,3,11,94,''),(191,397,3,11,93,''),(192,398,3,11,93,''),(193,399,3,11,93,''),(194,400,3,11,93,''),(195,397,3,11,92,''),(196,398,3,11,92,''),(197,399,3,11,92,''),(198,400,3,11,92,''),(199,397,3,11,91,''),(200,398,3,11,91,''),(201,399,3,11,91,''),(202,400,3,11,91,''),(203,393,3,11,90,''),(204,394,3,11,90,''),(205,395,3,11,90,''),(206,274,3,11,90,''),(207,401,3,11,90,''),(208,274,3,5,38,''),(209,404,3,5,39,''),(210,405,3,5,39,''),(211,274,3,5,28,''),(212,393,3,5,37,''),(213,394,3,5,37,''),(214,395,3,5,37,''),(215,274,3,5,36,''),(216,274,3,5,31,''),(217,274,3,5,30,''),(218,393,3,5,32,''),(219,394,3,5,32,''),(220,395,3,5,32,''),(221,404,3,5,34,''),(222,405,3,5,34,''),(223,406,3,5,34,''),(224,407,3,5,34,''),(225,408,3,5,34,''),(226,274,3,5,34,''),(227,409,3,8,68,''),(228,409,3,8,72,''),(229,409,3,8,67,''),(230,409,3,8,71,''),(231,409,3,8,73,''),(232,409,3,8,69,''),(233,409,3,8,70,''),(234,274,3,6,41,''),(235,274,3,6,48,''),(236,274,3,6,49,''),(237,274,3,6,120,''),(238,274,3,6,44,''),(239,274,3,6,47,''),(240,274,3,6,46,''),(241,274,3,6,43,''),(242,404,3,6,45,''),(243,405,3,6,45,''),(244,274,3,6,45,''),(245,404,3,6,42,''),(246,405,3,6,42,''),(247,274,3,6,42,''),(248,274,3,6,40,''),(249,404,3,6,50,''),(250,405,3,6,50,''),(251,406,3,6,50,''),(252,407,3,6,50,''),(253,408,3,6,50,''),(254,393,3,2,10,''),(255,394,3,2,10,''),(256,395,3,2,10,'');
/*!40000 ALTER TABLE `vendor_to_appmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendortable`
--

DROP TABLE IF EXISTS `vendortable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendortable` (
  `VendorID` int(10) NOT NULL,
  `VendorName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`VendorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendortable`
--

LOCK TABLES `vendortable` WRITE;
/*!40000 ALTER TABLE `vendortable` DISABLE KEYS */;
INSERT INTO `vendortable` VALUES (1,'Accenture'),(2,'Cognizant'),(3,'HCL');
/*!40000 ALTER TABLE `vendortable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_dms_capabilitylist`
--

DROP TABLE IF EXISTS `vw_dms_capabilitylist`;
/*!50001 DROP VIEW IF EXISTS `vw_dms_capabilitylist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_dms_capabilitylist` AS SELECT 
 1 AS `BusCapID`,
 1 AS `busCapabilityName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_dms_releaselist`
--

DROP TABLE IF EXISTS `vw_dms_releaselist`;
/*!50001 DROP VIEW IF EXISTS `vw_dms_releaselist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_dms_releaselist` AS SELECT 
 1 AS `Release_Id`,
 1 AS `Release_Num`,
 1 AS `Release_Date`,
 1 AS `Release_Desc`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'dms_poc'
--

--
-- Dumping routines for database 'dms_poc'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_DMS_ADMINISTRATION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DMS_ADMINISTRATION`(IN In_ReleaseNum INT)
BEGIN
DECLARE input_release INT;
SET input_release = In_ReleaseNum;
SELECT 
COUNT(DISTINCT BC.BusCapID) AS NO_OF_CAPABILITIES,
0 AS COST_SAVINGS,
COUNT(DISTINCT AC.AppID) AS NO_OF_APPLICATIONS,
0 as DEVELOPMENT_COSTS
FROM 
BusCapabilities BC
INNER JOIN `release` RS ON
BC.releaseID=RS.releaseID
INNER JOIN `release-status` RST ON
RS.releaseStatusID=RST.releaseStatusID
INNER JOIN `project-to-capabilities` PC ON
BC.BusCapID=pc.busCapID
INNER JOIN `project` PJ ON
PC.projectID=PJ.projectID
INNER JOIN  `apps to capabilities` AC ON
BC.BusCapID=AC.BusCapID
INNER JOIN `application table` AT ON
AC.appID=AT.appID
#INNER JOIN 
#`SubService-To-App` SA ON
#SA.appID=AC.appID
WHERE BC.releaseID=input_release
#and PJ.projStatusID=1
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DMS_CAPABILITY_REPORTING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DMS_CAPABILITY_REPORTING`( IN CAP_ID varchar(50))
BEGIN
DECLARE CAPABILITY_ID varchar(50);
SET CAPABILITY_ID = LTRIM(rtrim(CAP_ID));
SELECT 
BC.busCapabilityName as Cap_name,
BCT.busCapeName as Cap_type,
RS.releaseDescription as Release_desc,
PJ.projDesc as Service_desc,
AT.`Application Name` as App_name,
'Service Name' as ServiceName,
'Owner' as Cap_owner
#BC.BusCapID,
#BC.releaseID,
#PC.projectID,
#AC.appID
#,SR.ServiceID
FROM 
BusCapabilities BC
INNER JOIN `buscapabilitytype` BCT ON
BC.	busCapTypeID=BCT.busCapeTypeID
INNER JOIN buscapabilitystatus BCS ON
BC.busCapStatusID=BCS.busCapStatusID
INNER JOIN `release` RS ON
BC.releaseID = RS.releaseID
INNER JOIN
`project-to-capabilities` PC ON
BC.BusCapID=pc.busCapID
INNER JOIN `project` PJ ON
PC.projectID=PJ.projectID
INNER JOIN `apps to capabilities` AC ON
BC.BusCapID=AC.BusCapID
INNER JOIN `application table` AT ON
AC.appID=AT.appID
#INNER JOIN 
#`SubService-To-App` SA ON
#SA.appID=AC.appID
WHERE
BC.BusCapID=CAPABILITY_ID 
#BC.busCapabilityName=CAP_NAME
AND BCS.busCapStatusDesc='Active'
;
#order by 
#BC.releaseID,
#PC.projectID,
#BC.BusCapID,
#AC.appID
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DMS_CAPABILITY_TYPE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DMS_CAPABILITY_TYPE`( IN CAP_ID varchar(50))
BEGIN
DECLARE CAPABILITY_ID varchar(50);
SET CAPABILITY_ID = LTRIM(rtrim(CAP_ID));
SELECT 
BC.busCapabilityName as Cap_name,
case WHEN BCT.busCapeTypeID=1 THEN '1' ELSE '0' END AS CR_FLAG,
case WHEN BCT.busCapeTypeID=2 THEN '1' ELSE '0' END AS KD_FLAG,
case WHEN BCT.busCapeTypeID=3 THEN '1' ELSE '0' END AS GAP_FLAG,
case WHEN BCT.busCapeTypeID=4 THEN '1' ELSE '0' END AS RQ_FLAG
FROM 
BusCapabilities BC
INNER JOIN `buscapabilitytype` BCT ON
BC.	busCapTypeID=BCT.busCapeTypeID
INNER JOIN buscapabilitystatus BCS ON
BC.busCapStatusID=BCS.busCapStatusID
WHERE
BC.BusCapID=CAPABILITY_ID 
#BC.busCapabilityName=CAP_NAME
AND BCS.busCapStatusDesc='Active'
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DMS_DELI_ROADMAP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DMS_DELI_ROADMAP`(IN In_ReleaseNum INT)
BEGIN
DECLARE input_release INT;
SET input_release = In_ReleaseNum;
SELECT 
COUNT(DISTINCT PC.projectID) AS NO_OF_PROJECTS,
BC.releaseID as Release_id,
COUNT(DISTINCT AC.AppID) AS NO_OF_APPLICATIONS,
RST.releaseStatusDesc AS RELEASE_STATUS,
0 as DEVELOPMENT_COSTS,
0 AS COST_SAVINGS
FROM 
BusCapabilities BC
INNER JOIN `release` RS ON
BC.releaseID=RS.releaseID
INNER JOIN `release-status` RST ON
RS.releaseStatusID=RST.releaseStatusID
INNER JOIN `project-to-capabilities` PC ON
BC.BusCapID=pc.busCapID
INNER JOIN `project` PJ ON
PC.projectID=PJ.projectID
INNER JOIN  `apps to capabilities` AC ON
BC.BusCapID=AC.BusCapID
INNER JOIN `application table` AT ON
AC.appID=AT.appID
#INNER JOIN 
#`SubService-To-App` SA ON
#SA.appID=AC.appID
WHERE BC.releaseID=input_release
#and PJ.projStatusID=1
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DMS_DEP_BY_SERVICE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DMS_DEP_BY_SERVICE`(IN In_ReleaseNum INT)
BEGIN
DECLARE input_release INT;
SET input_release = In_ReleaseNum;
SELECT 
0 as NO_OF_SERVICES,
BC.releaseID as Release_id,
COUNT(DISTINCT AC.AppID) AS NO_OF_APPLICATIONS,
RST.releaseStatusDesc AS RELEASE_STATUS,
0 as DEVELOPMENT_COSTS,
0 AS COST_SAVINGS
FROM 
BusCapabilities BC
INNER JOIN `release` RS ON
BC.releaseID=RS.releaseID
INNER JOIN `release-status` RST ON
RS.releaseStatusID=RST.releaseStatusID
INNER JOIN `project-to-capabilities` PC ON
BC.BusCapID=pc.busCapID
INNER JOIN `project` PJ ON
PC.projectID=PJ.projectID
INNER JOIN  `apps to capabilities` AC ON
BC.BusCapID=AC.BusCapID
INNER JOIN `application table` AT ON
AC.appID=AT.appID
#INNER JOIN 
#`SubService-To-App` SA ON
#SA.appID=AC.appID
WHERE BC.releaseID=input_release
#and PJ.projStatusID=1
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DMS_DEP_REL_MGMT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DMS_DEP_REL_MGMT`(IN In_ReleaseNum INT)
BEGIN
DECLARE input_release INT;
SET input_release = In_ReleaseNum;
SELECT 
BC.releaseID as Release_id,
COUNT(DISTINCT BC.BusCapID) AS NO_OF_CAPABILITIES,
0 AS COST_SAVINGS,
COUNT(DISTINCT AC.AppID) AS NO_OF_APPLICATIONS,
0 as DEVELOPMENT_COSTS
FROM 
BusCapabilities BC
INNER JOIN `release` RS ON
BC.releaseID=RS.releaseID
INNER JOIN `release-status` RST ON
RS.releaseStatusID=RST.releaseStatusID
INNER JOIN `project-to-capabilities` PC ON
BC.BusCapID=pc.busCapID
INNER JOIN `project` PJ ON
PC.projectID=PJ.projectID
INNER JOIN  `apps to capabilities` AC ON
BC.BusCapID=AC.BusCapID
INNER JOIN `application table` AT ON
AC.appID=AT.appID
#INNER JOIN 
#`SubService-To-App` SA ON
#SA.appID=AC.appID
WHERE BC.releaseID=input_release
#and PJ.projStatusID=1
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DMS_PROJECT_ACTIVITIES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DMS_PROJECT_ACTIVITIES`(IN In_ReleaseNum INT)
BEGIN
DECLARE input_release INT;
SET input_release = In_ReleaseNum;
SELECT distinct
#BC.releaseID as Release_id,
#PJ.projectID AS PROJ_ID,
PJ.projName AS PROJECT,
'INFRASTRUCTURE' AS PROJ_CATEGORY,
#PJ.projectCategory as PROJ_CATEGORY,
date_format(PJ.projStartDate, '%d-%m-%Y') AS PROJ_REL_DATE,
PJ.projDesc AS PROJ_DESCRIPTION,
#SE.serviceID,
SE.ServiceName AS SERVICE_NAME
#SS.Description
FROM 
BusCapabilities BC
INNER JOIN `release` RS ON
BC.releaseID=RS.releaseID
INNER JOIN `project-to-capabilities` PC ON
BC.BusCapID=pc.busCapID
INNER JOIN `project` PJ ON
PC.projectID=PJ.projectID
INNER JOIN  `apps to capabilities` AC ON
BC.BusCapID=AC.BusCapID
INNER JOIN `application table` AT ON
AC.appID=AT.appID
INNER JOIN  `SubService-To-App` SA ON
SA.appID=AC.appID
INNER JOIN subservice SS ON
SS.subServiceID=SA.subServiceID
INNER JOIN services SE ON
SS.ServiceID=SE.serviceID
WHERE BC.releaseID=input_release
#and PJ.projStatusID=1
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DMS_RELEASE_STATUS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DMS_RELEASE_STATUS`( IN In_ReleaseNum INT)
BEGIN
DECLARE input_release INT;
SET input_release = In_ReleaseNum;
SELECT 
RS.releaseID as release_ID,
RST.releaseStatusDesc as Release_status
FROM 
`release` RS 
INNER JOIN `release-status` RST ON
RS.releaseStatusID=RST.releaseStatusID
WHERE
RS.releaseID=input_release;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_dms_reporting_metrics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_dms_reporting_metrics`(IN In_ReleaseNum INT)
BEGIN
DECLARE input_release INT;
SET input_release = In_ReleaseNum;
SELECT 
BC.releaseID as Release_id,
COUNT(DISTINCT PC.projectID) AS NO_OF_PROJECTS,
COUNT(DISTINCT BC.BusCapID) AS NO_OF_CAPABILITIES,
COUNT(DISTINCT AC.AppID) AS NO_OF_APPLICATIONS,
0 as NO_OF_SERVICES,
0 as NO_OF_CONFLICTS,
0 AS NO_OF_BACKLOGS
FROM 
BusCapabilities BC
INNER JOIN `release` RS ON
BC.releaseID=RS.releaseID
INNER JOIN `project-to-capabilities` PC ON
BC.BusCapID=pc.busCapID
INNER JOIN `project` PJ ON
PC.projectID=PJ.projectID
INNER JOIN  `apps to capabilities` AC ON
BC.BusCapID=AC.BusCapID
INNER JOIN `application table` AT ON
AC.appID=AT.appID
#INNER JOIN 
#`SubService-To-App` SA ON
#SA.appID=AC.appID
WHERE BC.releaseID=input_release
#and PJ.projStatusID=1
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DMS_SERVICE_LIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DMS_SERVICE_LIST`(IN In_ReleaseNum INT)
BEGIN
DECLARE input_release INT;
SET input_release = In_ReleaseNum;
SELECT distinct
#BC.releaseID as Release_id,
SE.serviceID,
SE.ServiceName,
SS.Description
FROM 
BusCapabilities BC
INNER JOIN `release` RS ON
BC.releaseID=RS.releaseID
INNER JOIN `project-to-capabilities` PC ON
BC.BusCapID=pc.busCapID
INNER JOIN `project` PJ ON
PC.projectID=PJ.projectID
INNER JOIN  `apps to capabilities` AC ON
BC.BusCapID=AC.BusCapID
INNER JOIN `application table` AT ON
AC.appID=AT.appID
INNER JOIN  `SubService-To-App` SA ON
SA.appID=AC.appID
INNER JOIN subservice SS ON
SS.subServiceID=SA.subServiceID
INNER JOIN services SE ON
SS.ServiceID=SE.serviceID
WHERE BC.releaseID=input_release
#and PJ.projStatusID=1
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_dms_capabilitylist`
--

/*!50001 DROP VIEW IF EXISTS `vw_dms_capabilitylist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dms_capabilitylist` AS select `bc`.`BusCapID` AS `BusCapID`,`bc`.`busCapabilityName` AS `busCapabilityName` from (`buscapabilities` `bc` join `buscapabilitystatus` `bcs` on((`bc`.`busCapStatusID` = `bcs`.`busCapStatusID`))) where (`bcs`.`busCapStatusDesc` = 'Active') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_dms_releaselist`
--

/*!50001 DROP VIEW IF EXISTS `vw_dms_releaselist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dms_releaselist` AS select `rs`.`releaseID` AS `Release_Id`,`rs`.`releaseNum` AS `Release_Num`,`rs`.`releaseDate` AS `Release_Date`,`rs`.`releaseDescription` AS `Release_Desc` from `release` `rs` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-16 23:06:53
