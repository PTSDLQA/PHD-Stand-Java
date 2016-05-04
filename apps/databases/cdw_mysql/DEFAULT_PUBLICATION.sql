SET NAMES utf8;

INSERT INTO `tblarticletypecategories` (`articleTypeCategoryID`,`articleTypeCategory`) VALUES 
 (1,'columnist');
INSERT INTO `tblarticletypes` (`articleTypeID`,`pubName`,`articleType`,`articleTypeName`,`articleTypeDesc`,`articleTypeMappingCode`,`articleTypeImage`,`articleTypeByline`,`articleTypeTitle`,`articleTypeCategoryID`,`articleTypeCategory`,`articleTypeLeadIn`,`articleTypeEmail`,`articleTypeBio`,`articleTypeShirtTail`,`articleTypeDisplayOnIndex`,`disableArticleType`,`articleTypeUpdateDate`) VALUES 
 (1,'default','default_article','Default Article','Default article type',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,0,NULL);
INSERT INTO `tblmodules` (`moduleID`,`moduleName`,`moduleClass`,`moduleMode`,`moduleModeInit`,`enabled`) VALUES 
 (3,'Activity','org.cofax.module.CofaxToolsExtActivity','activity_','activity_edit_activity',1),
 (4,'Upload files','org.cofax.module.CofaxToolsExtUpload','imageupload_','imageupload_edit_imageupload',1);
INSERT INTO `tblmonthday` (`monthDayID`,`monthNameShort`,`monthID`,`dayNameShort`,`dayName`,`dayID`,`numberDayOfMonth`) VALUES 
 (1,'jan','01','sun','Sunday','1','31'),
 (2,'feb','02','mon','Monday','2','28'),
 (3,'mar','03','tue','Tuesday','3','31'),
 (4,'apr','04','wed','Wednesday','4','30'),
 (5,'may','05','thu','Thursday','5','31'),
 (6,'jun','06','fri','Friday','6','30'),
 (7,'jul','07','sat','Saturday','7','31'),
 (8,'aug','08','today',NULL,NULL,'31'),
 (9,'sep','09',NULL,NULL,NULL,'30'),
 (10,'oct','10',NULL,NULL,NULL,'31'),
 (11,'nov','11',NULL,NULL,NULL,'30'),
 (12,'dec','12',NULL,NULL,NULL,'31');
INSERT INTO `tblpermgrouppublication` (`groupID`,`pubID`) VALUES 
 (4,7);
INSERT INTO `tblpermgroups` (`groupID`,`groupName`,`groupDesc`,`groupType`) VALUES 
 (4,'Local Administrator','Administrator group',5);
INSERT INTO `tblpermgrouptype` (`groupTypeName`,`groupTypeDesc`,`groupTypeID`) VALUES 
 ('Administrators','Administrators can edit users, groups and  publications.',5);
INSERT INTO `tblpermmodes` (`permModesID`,`modes`,`type`) VALUES 
 (8,'admin',5),
 (18,'admin_edit_security',5),
 (19,'admin_edit_user',5),
 (20,'admin_edit_groups',5),
 (21,'admin_edit_publication_info',5),
 (22,'admin_get_group_info',5),
 (23,'admin_set_group_info',5),
 (24,'admin_set_publication_info',5),
 (25,'admin_get_publication_info',5),
 (26,'admin_set_user_info',5),
 (27,'admin_get_user_info',5),
 (28,'admin_edit_group_types',5),
 (29,'admin_get_group_types',5),
 (30,'admin_set_group_types',5),
 (31,'admin_get_group_type_info',5),
 (32,'admin_set_group_type_info',5),
 (33,'article_search_article',5),
 (36,'article_search_for_articles',5),
 (40,'article_edit_article_by_itemID',5),
 (47,'media_get_media',5),
 (51,'media_set_media',5),
 (55,'section_set_section',5),
 (59,'section_get_section',5),
 (61,'articletype_edit_articletype',5),
 (65,'articletype_get_articletype',5),
 (69,'articletype_set_articletype',5),
 (73,'section_get_order_section',5),
 (77,'section_set_order_section',5),
 (81,'admin_set_security',5);
INSERT INTO `tblpermmodes` (`permModesID`,`modes`,`type`) VALUES 
 (96,'article_create_article',5),
 (98,'article_edit_article',5),
 (106,'file_import_file',5),
 (108,'login_change_publication',5),
 (112,'section_edit_section',5),
 (116,'section_order_section',5),
 (120,'article_set_article',5),
 (125,'file_get_import_file',5),
 (136,'media_view_delete_media',5),
 (138,'media_view_upload_media',5),
 (140,'media_delete_media',5),
 (142,'media_upload_media',5),
 (168,'search_save_search',5),
 (197,'login_confirm_publication',5),
 (203,'admin_log_out',5),
 (207,'admin_clear_cache',5),
 (209,'admin_reset_servlet',5),
 (210,'article_section_edit_by_url',5),
 (257,'cofax_navigation',5),
 (261,'admin_update_lifecycles',5),
 (262,'admin_get_mycount',5),
 (266,'admin_set_mycount',5),
 (272,'article_preview_article',5),
 (276,'article_set_article_and_preview',5),
 (287,'article_search_delete',5),
 (294,'section_add_user',5),
 (302,'article_set_article_and_publish',5),
 (310,'article_set_article_and_validate',5),
 (402,'activity_edit_activity',5);
INSERT INTO `tblpermmodes` (`permModesID`,`modes`,`type`) VALUES 
 (410,'unlock_article',5),
 (416,'imageupload_edit_imageupload',5),
 (422,'imageupload_upload_imageupload',5),
 (428,'imageupload_view_imageupload',5),
 (460,'imageupload_delete_imageupload',5);
INSERT INTO `tblpermusergroup` (`userID`,`groupID`) VALUES 
 (4,4);
INSERT INTO `tblpermusers` (`userID`,`userName`,`userPassword`,`lastName`,`firstName`,`homePub`,`email`,`workPhone`,`cellPhone`,`pager`,`notes`,`login_cookie`) VALUES 
 (4,'admin','d2abaa37a7c3db1137d385e1d8c15fd2','Administrator','Administrator',7,'webmaster@cofax.org','xxx xxx xx xx','','','Administrator account','');
INSERT INTO `tblpermusersection` (`userID`,`mappingCode`,`Manager`) VALUES 
 (4,99,1),
 (4,100,1),
 (4,101,1),
 (4,102,1),
 (4,103,1),
 (4,104,1);
INSERT INTO `tblpublications` (`publication`,`pubName`,`pubDesc`,`tagLine`,`keywords`,`homePage`,`icon`,`iconWidth`,`iconHeight`,`javaScript`,`pubID`,`rolloverTime`,`hostName`,`defaultSection`,`defaultSectionWithDate`,`pubUpdateDate`,`useDate`,`workflow_mails`,`workflow_levels`,`workflow_adminEmail`) VALUES 
 ('default','default','Default COFAX website','Default COFAX website','','/content/default/home/','/content/static/default/images/lib/your_logo.jpg',0,0,'',7,1,'','home',0,'2006-12-07 00:00:00',1,1,-1,'webmaster@cofax.org');
INSERT INTO `tblsections` (`pubName`,`section`,`sectionDesc`,`image`,`orderFile`,`sigDir`,`sectionName`,`mappingCode`,`subMapOf`,`sectionType`,`javaScript`,`keywords`,`include`,`promo`,`rank`,`url`,`displayOnIndex`,`sectionUpdateDate`) VALUES 
 ('default','documents','Documents','','','','documents',101,0,1,NULL,'','You&#39;ll find all the COFAX documentation.<br />   ','This section stores COFAX documentation ',2,'',1,'2006-12-07 00:00:00'),
 ('default','home','Home','/content/static/default/images/lib/logo2.gif','','','home',99,0,1,NULL,'','Congratulations your COFAX is correctly running. ','',1,'',1,'2006-12-07 00:00:00'),
 ('default','installation','Installation and Configuration','','','','documents/installation',102,101,1,NULL,'','','',999,'',1,'2006-10-12 00:00:00'),
 ('default','last-pub','Last changes','','','','last-pub',100,0,1,NULL,'','','Recent changes',999,'',1,'2006-02-23 00:00:00'),
 ('default','templating-guide','Templating guide','','','','documents/templating-guide',104,101,1,NULL,'','','',999,'',1,'2006-10-12 00:00:00'),
 ('default','webmaster-documentation','Webmaster documentation','','','','documents/webmaster-documentation',103,101,1,NULL,'','','',999,'',1,'2006-10-12 00:00:00');
INSERT INTO `tbltoolspublicationconfig` (`pubID`,`domainName`,`testFTPServer`,`testFTPLogin`,`testFTPPassword`,`testTemplateFolder`,`testImagesFolder`,`liveFTPServer`,`liveFTPLogin`,`liveFTPPassword`,`liveTemplateFolder`,`liveImagesFolder`,`liveImagesServer`,`importFTPServer`,`importFTPLogin`,`importFTPPassword`,`importFTPFilePath`,`importFTPFileContents`,`mainCofaxServer`,`imagesURLPrefix`,`cacheServers`,`errorHeaders`,`P3PPolicyRef`,`P3PCompactHeader`) VALUES 
 (7,'http://www.cofax.org/','','','','','','','','','','','','','','','','','/content/','/content/static/default/rsc/','/',0,'','');

