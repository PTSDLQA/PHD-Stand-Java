SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT;
SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS;
SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION;
SET NAMES utf8;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE=NO_AUTO_VALUE_ON_ZERO */;


CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cofax`;
USE `cofax`;

DROP TABLE IF EXISTS `tblarticlelock`;
CREATE TABLE `tblarticlelock` (
  `itemID` int(11) NOT NULL default '0',
  `userID` tinyint(11) unsigned NOT NULL default '0',
  `lockDate` datetime NOT NULL default '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblarticlelock` DISABLE KEYS */;

/*!40000 ALTER TABLE `tblarticlelock` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblarticleorder`;
CREATE TABLE `tblarticleorder` (
  `itemID` int(11) NOT NULL default '0',
  `mappingCode` int(11) NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  `timeStart` datetime default NULL,
  `timeEnd` datetime default NULL,
  `mappingUpdateDate` datetime default NULL,
  `pubName` varchar(50) default NULL,
  `section` varchar(50) default NULL,
  `pubDate` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`itemID`,`mappingCode`),
  KEY `idx_mappingCode` (`mappingCode`),
  KEY `idx_hind_c_19_3` (`rank`),
  KEY `idx_tblarticleorder` (`itemID`),
  KEY `idx_AllFields` (`mappingCode`,`itemID`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblarticleorder` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblarticlepreload`;
CREATE TABLE `tblarticlepreload` (
  `itemID` int(11) unsigned NOT NULL default '0',
  `mappingCode` int(11) unsigned NOT NULL default '0',
  `shortTime` varchar(20) default NULL,
  `dayOfWeek` varchar(15) default NULL,
  `virtualFolder` varchar(162) default NULL,
  `pubSectionDesc` varchar(255) default NULL,
  `pubYear` varchar(4) default NULL,
  `pubMonth` varchar(2) default NULL,
  `pubDay` varchar(2) default NULL,
  `dateFolder` varchar(10) default NULL,
  `pubDateLong` varchar(32) default NULL,
  `fullLink` varchar(255) default NULL,
  `articleLeadIn` varchar(100) default NULL,
  `sigImage` varchar(255) default NULL,
  `sigImageCaption` varchar(50) default NULL,
  `listImage` varchar(255) default NULL,
  `listImageCaption` varchar(255) default NULL,
  `articleImage` varchar(255) default NULL,
  `articleImageCaption` varchar(255) default NULL,
  `relatedLinksCount` int(11) unsigned default NULL,
  `sectionName` varchar(100) default NULL,
  `sectionDesc` varchar(255) default NULL,
  `sigDir` varchar(255) default NULL,
  `sectionImage` varchar(255) default NULL,
  `sectionType` int(11) unsigned default NULL,
  `pubDesc` varchar(255) default NULL,
  `orderingRank` int(11) unsigned default NULL,
  `hostName` varchar(50) default NULL,
  `commentCount` int(11) default NULL,
  PRIMARY KEY  (`itemID`,`mappingCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblarticlepreload` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblarticles`;
CREATE TABLE `tblarticles` (
  `pubName` varchar(50) NOT NULL default '',
  `pubDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `memo` text,
  `correction` text,
  `headline` text NOT NULL,
  `lead` text,
  `dateline` varchar(100) default NULL,
  `keywords` text,
  `pubStart` datetime default NULL,
  `pubEnd` datetime default NULL,
  `pubData` text,
  `updateDate` datetime default NULL,
  `versionNum` int(11) NOT NULL default '0',
  `docType` int(11) NOT NULL default '0',
  `shortHeadline` varchar(250) default NULL,
  `byline` varchar(255) default NULL,
  `data` text,
  `body` mediumtext NOT NULL,
  `section` varchar(25) NOT NULL default '',
  `disableArticle` tinyint(4) NOT NULL default '0',
  `pubRank` varchar(25) default NULL,
  `headline2` text,
  `bycredit` varchar(255) default NULL,
  `webLead` text,
  `docID` int(11) NOT NULL auto_increment,
  `fileName` varchar(50) NOT NULL default '',
  `approved` varchar(25) NOT NULL default '',
  `disableIndex` int(11) NOT NULL default '0',
  `itemID` int(11) NOT NULL default '0',
  `articleTypeID` int(11) default '0',
  `webHeadline` varchar(255) default NULL,
  `leadIn` varchar(255) default NULL,
  `customURL` varchar(255) default NULL,
  `lifeCycle` tinyint(1) default '0',
  `workflow_state` tinyint(1) default '0',
  PRIMARY KEY  (`pubName`,`pubDate`,`versionNum`,`section`,`fileName`),
  KEY `idx_UpdateDate` (`updateDate`),
  KEY `idx_sectionSelect` (`pubName`,`pubDate`,`disableArticle`,`approved`,`articleTypeID`),
  KEY `idx_pubDate` (`pubDate`),
  KEY `idx_disableApproveItemID` (`disableArticle`,`approved`,`disableIndex`,`itemID`),
  KEY `idx_itemID` (`itemID`),
  KEY `idx_docID` (`docID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblarticles` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblarticletypecategories`;
CREATE TABLE `tblarticletypecategories` (
  `articleTypeCategoryID` int(11) NOT NULL auto_increment,
  `articleTypeCategory` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`articleTypeCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*!40000 ALTER TABLE `tblarticletypecategories` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblarticletypes`;
CREATE TABLE `tblarticletypes` (
  `articleTypeID` int(11) NOT NULL auto_increment,
  `pubName` varchar(50) NOT NULL default '',
  `articleType` varchar(50) NOT NULL default '',
  `articleTypeName` varchar(50) NOT NULL default '',
  `articleTypeDesc` varchar(100) default NULL,
  `articleTypeMappingCode` int(11) default NULL,
  `articleTypeImage` varchar(255) default NULL,
  `articleTypeByline` varchar(50) default NULL,
  `articleTypeTitle` varchar(50) default NULL,
  `articleTypeCategoryID` int(11) default '1',
  `articleTypeCategory` varchar(50) default NULL,
  `articleTypeLeadIn` varchar(100) default NULL,
  `articleTypeEmail` varchar(100) default NULL,
  `articleTypeBio` text,
  `articleTypeShirtTail` text,
  `articleTypeDisplayOnIndex` int(11) NOT NULL default '1',
  `disableArticleType` int(11) NOT NULL default '0',
  `articleTypeUpdateDate` datetime default NULL,
  PRIMARY KEY  (`articleTypeID`,`pubName`,`articleType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*!40000 ALTER TABLE `tblarticletypes` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblarticleversions`;
CREATE TABLE `tblarticleversions` (
  `pubName` varchar(50) NOT NULL default '',
  `pubDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `memo` text,
  `correction` text,
  `headline` text NOT NULL,
  `lead` text,
  `dateline` varchar(100) default NULL,
  `keywords` text,
  `pubStart` datetime default NULL,
  `pubEnd` datetime default NULL,
  `pubData` text,
  `updateDate` datetime default NULL,
  `versionNum` int(11) NOT NULL default '0',
  `docType` int(11) NOT NULL default '0',
  `shortHeadline` varchar(250) default NULL,
  `byline` varchar(255) default NULL,
  `data` text,
  `body` mediumtext NOT NULL,
  `section` varchar(25) NOT NULL default '',
  `disableArticle` tinyint(4) NOT NULL default '0',
  `pubRank` varchar(25) default NULL,
  `headline2` text,
  `bycredit` varchar(255) default NULL,
  `webLead` text,
  `docID` int(11) NOT NULL auto_increment,
  `fileName` varchar(50) NOT NULL default '',
  `approved` varchar(25) NOT NULL default '',
  `disableIndex` int(11) NOT NULL default '0',
  `itemID` int(11) NOT NULL default '0',
  `articleTypeID` int(11) default '0',
  `webHeadline` varchar(255) default NULL,
  `leadIn` varchar(255) default NULL,
  `customURL` varchar(255) default NULL,
  `lifeCycle` tinyint(1) default '0',
  `workflow_state` tinyint(1) default '0',
  PRIMARY KEY  (`pubName`,`pubDate`,`versionNum`,`section`,`fileName`),
  KEY `idx_UpdateDate` (`updateDate`),
  KEY `idx_sectionSelect` (`pubName`,`pubDate`,`disableArticle`,`approved`,`articleTypeID`),
  KEY `idx_pubDate` (`pubDate`),
  KEY `idx_disableApproveItemID` (`disableArticle`,`approved`,`disableIndex`,`itemID`),
  KEY `idx_itemID` (`itemID`),
  KEY `idx_docID` (`docID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblarticleversions` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblmodules`;
CREATE TABLE `tblmodules` (
  `moduleID` tinyint(3) unsigned NOT NULL auto_increment,
  `moduleName` varchar(100) NOT NULL default '',
  `moduleClass` varchar(100) NOT NULL default '',
  `moduleMode` varchar(50) NOT NULL default '',
  `moduleModeInit` varchar(50) NOT NULL default '',
  `enabled` int(1) unsigned default '0',
  PRIMARY KEY  (`moduleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*!40000 ALTER TABLE `tblmodules` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblmonthday`;
CREATE TABLE `tblmonthday` (
  `monthDayID` int(11) NOT NULL auto_increment,
  `monthNameShort` varchar(50) NOT NULL default '',
  `monthID` varchar(50) NOT NULL default '',
  `dayNameShort` varchar(50) default NULL,
  `dayName` varchar(50) default NULL,
  `dayID` varchar(50) default NULL,
  `numberDayOfMonth` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`monthDayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblmonthday` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblmultimedia`;
CREATE TABLE `tblmultimedia` (
  `multimediaID` int(11) NOT NULL auto_increment,
  `type` varchar(50) NOT NULL default '',
  `itemID` int(11) NOT NULL default '0',
  `itemName` varchar(50) NOT NULL default '',
  `caption` varchar(255) default NULL,
  `mimeType` varchar(50) default NULL,
  `rank` int(11) NOT NULL default '999',
  `credit` varchar(100) default NULL,
  `multimediaUpdateDate` datetime default NULL,
  `size` varchar(10) default '0',
  `icon` varchar(100) default '',
  `filename` varchar(255) default NULL,
  PRIMARY KEY  (`multimediaID`,`type`,`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblmultimedia` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblpackagetags`;
CREATE TABLE `tblpackagetags` (
  `tag_name` varchar(50) NOT NULL default '',
  `tag_value` longtext NOT NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `returnError` int(11) NOT NULL default '0',
  PRIMARY KEY  (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblpackagetags` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblpermgrouppublication`;
CREATE TABLE `tblpermgrouppublication` (
  `groupID` int(11) NOT NULL default '0',
  `pubID` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblpermgrouppublication` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblpermgroups`;
CREATE TABLE `tblpermgroups` (
  `groupID` int(11) NOT NULL auto_increment,
  `groupName` varchar(50) NOT NULL default '',
  `groupDesc` varchar(100) NOT NULL default '',
  `groupType` int(11) NOT NULL default '0',
  PRIMARY KEY  (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblpermgroups` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblpermgrouptype`;
CREATE TABLE `tblpermgrouptype` (
  `groupTypeName` varchar(50) NOT NULL default '',
  `groupTypeDesc` varchar(200) default NULL,
  `groupTypeID` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`groupTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblpermgrouptype` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblpermmodes`;
CREATE TABLE `tblpermmodes` (
  `permModesID` int(11) NOT NULL auto_increment,
  `modes` varchar(50) NOT NULL default '',
  `type` int(11) NOT NULL default '0',
  PRIMARY KEY  (`permModesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblpermmodes` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblpermsavedsearches`;
CREATE TABLE `tblpermsavedsearches` (
  `userID` int(11) NOT NULL default '0',
  `search` longtext NOT NULL,
  `searchName` varchar(100) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblpermsavedsearches` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblpermusergroup`;
CREATE TABLE `tblpermusergroup` (
  `userID` int(11) NOT NULL default '0',
  `groupID` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblpermusergroup` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblpermusers`;
CREATE TABLE `tblpermusers` (
  `userID` int(11) NOT NULL auto_increment,
  `userName` varchar(20) NOT NULL default '',
  `userPassword` varchar(32) NOT NULL default '',
  `lastName` varchar(50) NOT NULL default '',
  `firstName` varchar(50) NOT NULL default '',
  `homePub` int(11) NOT NULL default '0',
  `email` varchar(100) default NULL,
  `workPhone` varchar(50) default NULL,
  `cellPhone` varchar(50) default NULL,
  `pager` varchar(50) default NULL,
  `notes` varchar(50) default NULL,
  `login_cookie` text,
  PRIMARY KEY  (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblpermusers` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblpermusersection`;
CREATE TABLE `tblpermusersection` (
  `userID` int(11) NOT NULL default '0',
  `mappingCode` int(11) NOT NULL default '0',
  `Manager` tinyint(1) unsigned default '0',
  PRIMARY KEY  (`userID`,`mappingCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblpermusersection` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblpublications`;
CREATE TABLE `tblpublications` (
  `publication` varchar(50) NOT NULL default '',
  `pubName` varchar(50) NOT NULL default '',
  `pubDesc` text NOT NULL,
  `tagLine` text NOT NULL,
  `keywords` text NOT NULL,
  `homePage` varchar(100) NOT NULL default '',
  `icon` varchar(100) NOT NULL default '',
  `iconWidth` int(11) NOT NULL default '0',
  `iconHeight` int(11) NOT NULL default '0',
  `javaScript` text NOT NULL,
  `pubID` int(11) NOT NULL auto_increment,
  `rolloverTime` int(11) NOT NULL default '5',
  `hostName` varchar(50) NOT NULL default '',
  `defaultSection` varchar(100) NOT NULL default 'home',
  `defaultSectionWithDate` int(11) NOT NULL default '1',
  `pubUpdateDate` datetime default NULL,
  `useDate` tinyint(4) unsigned NOT NULL default '1',
  `workflow_mails` tinyint(1) default '0',
  `workflow_levels` int(1) default '0',
  `workflow_adminEmail` varchar(255) default NULL,
  PRIMARY KEY  (`pubID`),
  KEY `idx_pubName` (`pubName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblpublications` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblrelatedlinks`;
CREATE TABLE `tblrelatedlinks` (
  `itemID` int(11) NOT NULL default '0',
  `link` varchar(255) NOT NULL default '',
  `rank` int(11) NOT NULL default '0',
  `text` text,
  `linkUpdateDate` datetime default NULL,
  PRIMARY KEY  (`itemID`,`link`),
  KEY `idx_tblrelatedlinks0` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblrelatedlinks` DISABLE KEYS */;

/*!40000 ALTER TABLE `tblrelatedlinks` ENABLE KEYS */;

DROP TABLE IF EXISTS `tblsections`;
CREATE TABLE `tblsections` (
  `pubName` varchar(50) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `sectionDesc` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `orderFile` varchar(255) default NULL,
  `sigDir` varchar(255) default NULL,
  `sectionName` varchar(100) NOT NULL default '',
  `mappingCode` int(11) NOT NULL auto_increment,
  `subMapOf` int(11) NOT NULL default '0',
  `sectionType` int(11) NOT NULL default '1',
  `javaScript` varchar(100) default NULL,
  `keywords` text,
  `include` text,
  `promo` text,
  `rank` int(11) NOT NULL default '999',
  `url` varchar(255) default NULL,
  `displayOnIndex` int(11) NOT NULL default '1',
  `sectionUpdateDate` datetime default NULL,
  PRIMARY KEY  (`pubName`,`section`),
  UNIQUE KEY `mappingCode` (`mappingCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tblsections` ENABLE KEYS */;

DROP TABLE IF EXISTS `tbltoolspackagetags`;
CREATE TABLE `tbltoolspackagetags` (
  `tag_name` varchar(50) NOT NULL default '',
  `tag_value` longtext NOT NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `tagID` int(11) NOT NULL default '0',
  `cache` int(11) NOT NULL default '0',
  PRIMARY KEY  (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tbltoolspackagetags` ENABLE KEYS */;

DROP TABLE IF EXISTS `tbltoolspublicationconfig`;
CREATE TABLE `tbltoolspublicationconfig` (
  `pubID` int(11) NOT NULL default '0',
  `domainName` varchar(100) NOT NULL default '',
  `testFTPServer` longtext NOT NULL,
  `testFTPLogin` varchar(100) NOT NULL default '',
  `testFTPPassword` varchar(100) NOT NULL default '',
  `testTemplateFolder` varchar(100) NOT NULL default '',
  `testImagesFolder` varchar(100) NOT NULL default '',
  `liveFTPServer` longtext NOT NULL,
  `liveFTPLogin` varchar(100) NOT NULL default '',
  `liveFTPPassword` varchar(100) NOT NULL default '',
  `liveTemplateFolder` varchar(100) NOT NULL default '',
  `liveImagesFolder` varchar(100) NOT NULL default '',
  `liveImagesServer` longtext NOT NULL,
  `importFTPServer` longtext NOT NULL,
  `importFTPLogin` varchar(100) NOT NULL default '',
  `importFTPPassword` varchar(100) NOT NULL default '',
  `importFTPFilePath` varchar(100) NOT NULL default '',
  `importFTPFileContents` varchar(100) NOT NULL default '',
  `mainCofaxServer` varchar(100) NOT NULL default '',
  `imagesURLPrefix` varchar(100) NOT NULL default '',
  `cacheServers` longtext NOT NULL,
  `errorHeaders` int(11) default NULL,
  `P3PPolicyRef` varchar(255) default NULL,
  `P3PCompactHeader` varchar(255) default NULL,
  PRIMARY KEY  (`pubID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `tbltoolspublicationconfig` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT;
SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS;
SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
