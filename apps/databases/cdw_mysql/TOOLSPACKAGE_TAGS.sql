INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('deleteArticle','exec s_deleteArticle \'req:ITEMID\' ,\'req:FILENAME\' ','2002-10-01 00:00:00','2002-10-01 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('deleteGroups','exec s_deleteGroup \'req:GROUPID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',60,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('deleteGroupTypes','exec s_deleteGroupType \'req:GROUPTYPEID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',61,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('deleteMap','exec s_deleteMap \'req:ITEMID\', \'req:MAPPINGCODE\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',53,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('deleteMultiMedia','exec s_deleteMultiMedia \'req:MULTIMEDIAID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',51,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('deleteRelatedLinkByItemID','delete from tblrelatedlinks where itemID=\'req:ITEMID\' and link=\'req:LINK\'','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('deleteUserFromTblUsersAndTblUserToGroups','exec s_deleteUser \'req:USERID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',58,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAllFromArticlesbyItemID','SELECT * FROM tblarticles WHERE itemID = \'req:ITEMID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAllFromConfigByPubID','SELECT * FROM tbltoolspublicationconfig WHERE pubID = \'req:PUBID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAllFromGroupToPubByGroupID','SELECT * FROM tblpermgrouppublication WHERE groupId = \'req:pubNameKey\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAllFromMultimediaByItemID','SELECT * FROM tblmultimedia WHERE itemID = \'req:ITEMID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAllFromPermGroupsByGroupID','SELECT * FROM tblpermgroups WHERE groupId = \'req:pubNameKey\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAllFromPermUserToGroup','SELECT * FROM tblpermusergroup ','2001-03-06 00:00:00','2001-03-06 00:00:00',47,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAllFromPublicationsByPubID','SELECT * FROM tblpublications WHERE pubID = \'req:PUBID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAllfromtblarticlesTblOrderByMapAndDate','SELECT a.workflow_state, a.approved, a.headline2, a.lead, a.byline, a.bycredit, a.dateline, a.body, a.leadIn, a.webHeadline, a.keywords, a.webLead, a.pubRank, a.pubData, a.articleTypeID, a.customURL, a.disableArticle, a.disableIndex, a.itemID, a.docID, a.fileName, a.section, a.pubName, a.pubDate, a.headline, o.rank FROM tblarticles a, tblarticleorder o WHERE a.itemID = o.itemID AND o.mappingCode = \'req:MAPPINGCODE\' AND a.pubDate = \'req:startDate\' AND a.approved != \'\' ORDER by o.rank, a.updateDate LIMIT req:results ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAllfromtblarticlesTblOrderByMapAndDates','SELECT a.workflow_state, a.approved, a.headline2, a.lead, a.byline, a.bycredit, a.dateline, a.body, a.leadIn, a.webHeadline, a.keywords, a.webLead, a.pubRank, a.pubData, a.articleTypeID, a.customURL, a.disableArticle, a.disableIndex, a.itemID, a.docID, a.fileName, a.section, a.pubName, a.pubDate, a.headline, o.rank FROM tblarticles a, tblarticleorder o WHERE a.itemID = o.itemID AND o.mappingCode = \'req:MAPPINGCODE\' AND a.pubDate >= \'req:startDate\' AND a.pubDate <= \'req:endDate\' AND a.approved != \'\' ORDER by o.rank, a.updateDate LIMIT req:results ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAllFromTblArticleTypeByArticleTypeID','SELECT * FROM tblarticletypes WHERE articleTypeID = \'req:ARTICLETYPEID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAllFromtblsectionsByMappingCode','SELECT * FROM tblsections WHERE mappingCode = \'req:sectionMappingCode\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAllRelatedLinksByItemIDOrderByRank','Select * FROM tblrelatedlinks WHERE itemID = \'req:ITEMID\' ORDER BY rank','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getAlltblpermgrouptypeByGroupTypeID','SELECT * FROM tblpermgrouptype WHERE groupTypeID = \'req:GROUPTYPEID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getArticleByItemID','SELECT A.pubName, A.itemID, A.fileName, A.section, S.sectionName from tblarticles AS A, tblsections as S where A.itemID=\'req:ITEMID\' and A.section=S.section and A.pubName = S.pubName','2003-05-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getArticleCategoryFromArticleTypeCategories','SELECT articleTypeCategory, articleTypeCategory FROM tblarticletypecategories ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getArticlesToPublish','select A.itemID, A.filename, A.headline, A.section, PUS.userID from tblarticles as A, tblsections as S, tblpermusersection as PUS where A.pubName=\'req:pubName\' and A.workflow_state=1 and A.pubName=S.pubName and A.section=S.section and S.mappingCode=PUS.mappingCode and PUS.userID=\'req:userID\' and PUS.manager=1 order by A.updateDate','2003-05-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getArticleTypeByID','select * from tblarticletypes where articleTypeID = \'request:articleTypeID\'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getArticleTypeDescAndTypeFromArticleTypeByPubName','SELECT articleTypeDesc, articleType FROM tblarticletypes WHERE pubName = \'req:currentPubName\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getArticleTypeDescAndTypeFromArticleTypesByPubName','SELECT articleTypeDesc, articleTypeID FROM tblarticletypes WHERE pubName = \'req:currentPubName\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getArticleTypeIDFromArticleTypeAndPublication',' SELECT articleType FROM tblarticletypes WHERE pubName = \'req:PUBNAME\' AND articleTypeID = \'req:ARTICLETYPEID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getDistinctTypeFromMultimedia','SELECT distinct type FROM tblmultimedia ','2001-03-06 00:00:00','2001-03-06 00:00:00',27,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getEmailFromLogin','select email from tblpermusers where userName=\'req:login\'','2003-05-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getGroupedUsers','SELECT a.userID, b.userName FROM tblpermusergroup a, tblpermusers b WHERE (groupID = \'req:GROUPID\') and a.userID = b.userID','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getGroupNameGroupIDFromPermGroups','SELECT groupName, groupID FROM tblpermgroups ','2001-03-06 00:00:00','2001-03-06 00:00:00',4,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getGroupNameGroupIDFromPermGroupType','SELECT groupTypeName, groupTypeID FROM tblpermgrouptype ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getGroupNameIDByGroupType','SELECT groupName, groupID FROM tblpermgroups where groupType = \'req:GROUPTYPE\'','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getGroupTypeByGroupID','SELECT groupType FROM tblpermgroups where groupID = \'req:GROUPID\'','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getGroupTypeIDFromGroupType','SELECT groupTypeID FROM tblpermgrouptype ','2001-03-06 00:00:00','2001-03-06 00:00:00',14,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getGroupTypeNameFromGroupType','SELECT groupTypeName FROM tblpermgrouptype ','2001-03-06 00:00:00','2001-03-06 00:00:00',15,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getItemIDByFileNameMapCodePubDate','SELECT tblarticles.itemID FROM tblarticles, tblsections WHERE tblarticles.section = tblsections.section AND tblarticles.fileName = \'req:FILENAME\' and tblsections.mappingCode = \'req:MAPPINGCODE\' and tblarticles.pubDate = \'req:PUBDATE\'','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getItemIDFromNameSectionDate','SELECT itemID FROM tblarticles WHERE pubName = \'req:PUBNAME\' and section = \'req:SECTION\' and pubDate = \'req:PUBDATE\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getListManagerSection','select * from tblpermusersection AS PUS, tblpermusers as PU where PUS.mappingCode=\'req:sectionMappingCode\' and PUS.userID=PU.userID and manager=\'req:manager\'','2003-05-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getListSubSection','select S.mappingCode, S.sectionDesc, PUS.manager from tblsections AS S LEFT JOIN tblpermusersection AS PUS on (S.mappingCode=PUS.mappingCode and PUS.userID=\'req:userID\') where S.pubName=\'req:pubName\' and S.subMapOf=\'req:sectionMappingCode\' order by rank','2003-05-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getLoginFromEmail','select userName from tblpermusers where email=\'req:email\'','2003-05-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getMapCodeFromtblsectionsBySectionAndPubName','SELECT mappingCode FROM tblsections WHERE section = \'req:SECTION\' and pubName = \'req:PUBNAME\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getMapCodeFromtblsectionsBySectionNameAndPubName','SELECT mappingCode FROM tblsections WHERE sectionName = \'req:SECTION\' and pubName = \'req:PUBNAME\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getMapCodeRankDatesFromViewAllArticlesByItemID','SELECT tblsections.mappingCode, tblarticleorder.rank as orderingRank from tblsections, tblarticleorder WHERE tblarticleorder.mappingCode = tblsections.mappingCode AND tblarticleorder.itemID = \'req:ITEMID\'','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getMapCodeRankFromViewAllArticlesByItemID','SELECT tblsections.mappingCode, tblarticleorder.rank as orderingRank from tblsections, tblarticleorder WHERE tblarticleorder.mappingCode = tblsections.mappingCode AND tblarticleorder.itemID = \'req:ITEMID\'','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getModeAndTypeFromPermModes','SELECT modes, type FROM tblpermmodes ORDER by modes ','2001-03-06 00:00:00','2001-03-06 00:00:00',16,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getMyLastArticles','select * from tblarticles AS A where A.pubName=\'req:pubname\' and A.approved=\'req:userID\' order by updateDate desc LIMIT 20','2003-05-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getOtherUsersOnSection','select PU.userID, PU.userName, PUS.Manager from tblpermusers AS PU LEFT JOIN tblpermusersection as PUS on (PU.userID=PUS.userID and PUS.mappingCode=\'req:sectionMappingCode\' and PUS.Manager>=req:manager)','2003-05-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getPubDescFromPublicationsByPubID','SELECT pubDesc FROM tblpublications WHERE pubID = \'req:PUBID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getPubDescPubIDFromTblPubs','SELECT pubDesc, pubId FROM tblpublications ','2001-03-06 00:00:00','2001-03-06 00:00:00',6,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getPubDescPubNameFromTblPubsByPubID','SELECT pubDesc, pubName FROM tblpublications WHERE pubID = \'req:PUBID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getPubIDByPubName','SELECT pubID FROM tblpublications WHERE pubName = \'req:PUBNAME\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getPubNameFromPublicationsByPubID','SELECT pubName FROM tblpublications WHERE pubID = \'req:PUBID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getSavedSearchesByUserID','SELECT search, searchName FROM tblpermsavedsearches WHERE userID = \'req:USERID\'  ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getSectionDescAndMapCodeFromSectionsByPubName','SELECT CONCAT(CONCAT(pubName, \' - \'),sectionDesc) AS sectionDesc, mappingCode FROM tblsections WHERE pubName = \'req:PUBNAME\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getSectionDescAndSectionFromSectionsByPubName','SELECT sectionDesc, tblsections.section FROM tblsections,tblpermusersection WHERE tblpermusersection.userID=\'req:currentUserID\' AND tblsections.pubName=\'req:PUBNAME\' AND tblsections.mappingCode=tblpermusersection.mappingCode','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getSectionDescAndSectionFromSectionsByPubNameUser','SELECT CONCAT(sectionDesc, CONCAT(CONCAT(\' [\', section), \']\')) AS sectiondesc, Section FROM tblsections,tblpermusersection WHERE tblpermusersection.userID=\'req:currentUserID\' AND tblsections.pubName=\'req:currentPubName\' AND tblsections.mappingCode=tblpermusersection.mappingCode','2003-05-31 00:00:00','2003-05-31 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getSectionFromtblsectionsByPublicationSectionName','SELECT section FROM tblsections where pubName = \'req:PUBNAME\' and sectionName = \'req:SECTION\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getSectionNameDescFromtblsectionsByMappingCode','Select section, sectionName, sectionDesc FROM tblsections WHERE mappingCode = \'req:MAPPINGCODE\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getTabArticles','select A.* from tblarticles AS A, tblsections AS S, tblarticleorder AS AO where S.mappingCode=AO.mappingCode and AO.itemID=A.itemID and S.mappingCode=\'req:mappingCode\' order by AO.rank','2003-07-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getTabPublications','select distinct P.pubID, P.pubDesc, P.pubName from tblpermusergroup AS PUG, tblpermgrouppublication AS PGP, tblpublications AS P where PUG.userId = \'req:userID\' and PUG.groupID = PGP.groupID and PGP.pubID = \'req:currentPubID\' and PGP.pubID = P.pubID  order by pubDesc','2003-07-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getTabSections','select S.*, manager from tblsections AS S, tblpermusersection AS PUS where S.pubName=\'req:pubName\' and S.subMapOf=0 and S.mappingCode=PUS.mappingCode and PUS.userID=\'req:userID\' order by rank','2003-07-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getTabSubSections','select S.mappingCode, S.sectionDesc, PUS.manager from tblsections AS S, tblpermusersection AS PUS where S.pubName=\'req:pubName\' and S.subMapOf=\'req:sectionMappingCode\' and S.mappingCode=PUS.mappingCode and PUS.userID=\'req:userID\' order by rank','2003-07-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getTypeFromModes','SELECT type FROM tblpermmodes WHERE modes = \'req:MODES\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getUseDateFromPublicationsByPubName','SELECT useDate, pubName FROM tblpublications WHERE pubName = \'req:PUBNAME\' ','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getUserInfoByLogin','SELECT * FROM tblpermusers WHERE userName = \'req:login\'','2006-02-23 00:00:00','2006-02-23 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getUserInfoByLoginPassword','SELECT * FROM tblpermusers WHERE userName = \'req:login\' and userPassword = \'req:password\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getUserInfoByUserID','SELECT * FROM tblpermusers WHERE userID = \'req:USERID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getUserInfoByUserName','SELECT * FROM tblpermusers WHERE userName = \'req:USERNAME\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getUserNameUserIdFromPermUsers','SELECT userName, userID FROM tblpermusers ','2001-03-06 00:00:00','2001-03-06 00:00:00',8,1);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getVectorOfGroupsByUserID','SELECT groupID FROM tblpermusergroup WHERE userID = \'req:USERID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getVectorOfGroupTypesByUserID','select distinct groupType from tblpermgroups AS PGP, tblpermusergroup as PUG where PGP.groupID = PUG.groupID and PUG.userID=\'req:USERID\' ','2003-10-24 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('getVirtualFolderFromViewAllByItemID','SELECT CONCAT(tblarticles.pubName, \'/\', if(tblpublications.useDate=\'1\', DATE_FORMAT(tblarticles.pubDate, \'%Y/%m/%d/\'), \'\'), tblsections.sectionName) as virtualFolder FROM tblarticles, tblsections, tblpublications WHERE tblarticles.pubName = tblsections.pubName AND tblarticles.pubName = tblpublications.pubName AND tblarticles.section = tblsections.section AND tblarticles.itemID = \'req:ITEMID\'','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('insertArticle','exec s_insertArticle2 \'req:PUBNAME\', \'req:SECTION\',\'req:PUBDATE\',\'req:FILENAME\', \'req:APPROVED\', \'req:HEADLINE\', \'req:HEADLINE2\',\'req:LEAD\',\'req:BYLINE\',\'req:BYCREDIT\',\'req:DATELINE\',\'req:BODY\',\'req:LEADIN\', \'req:WEBHEADLINE\',\'req:KEYWORDS\',\'req:WEBLEAD\',\'req:PUBRANK\',\'\',\'req:DISABLEINDEX\',\'req:DISABLEARTICLE\',\'req:RANK\', \'req:ARTICLETYPE\',\'1\',\'req:CUSTOMURL, \'req:OLDSECTION\', \'req:TOVALIDORPUBLISH\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('insertArticleType','exec s_insertArticleType \'req:ARTICLETYPEID\', \'req:PUBNAME\', \'req:articleTypeCode\', \'req:ARTICLETYPENAME\',\'req:ARTICLETYPECATEGORY\', \'req:ARTICLETYPEMAPPINGCODE\', \'req:ARTICLETYPEDISPLAYONINDEX\', \'req:ARTICLETYPEDESC\',\'req:ARTICLETYPEIMAGE\', \'req:ARTICLETYPEBYLINE\', \'req:ARTICLETYPETITLE\', \'req:ARTICLETYPELEADIN\',\'req:ARTICLETYPEEMAIL\', \'req:ARTICLETYPEBIO\', \'req:ARTICLETYPESHIRTTAIL\', \'req:DISABLEARTICLETYPE\'  ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('insertArticleWizard','exec s_insertArticle2 \'req:PUBNAME\', \'req:SECTION\',\'req:PUBDATE\',\'req:FILENAME\', \'Insert Wizard\', \'req:HEADLINE\', \'req:HEADLINE2\',\'req:LEAD\',\'req:BYLINE\',\'req:BYCREDIT\',\'req:DATELINE\',\'req:BODY\',\'req:LEADIN\', \'req:WEBHEADLINE\',\'req:KEYWORDS\',\'req:WEBLEAD\',\'req:RANK\',\'\',\'1\',\'1\',\'1\',\'req:ARTICLETYPEID\',\'1\',\'req:CUSTOMURL\'  ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('insertMap','exec s_insertMap \'req:ITEMID\', \'req:MAPPINGCODE\', \'req:RANK\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('insertMapAndDates','exec s_insertMap \'req:ITEMID\', \'req:MAPPINGCODE\', \'req:RANK\', \'req:STARTDATE\', \'req:ENDDATE\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('insertMappingCode','exec s_insertMappingCode2 \'req:MAPPINGCODE\', \'req:SUBMAPOF\', \'req:PUBNAME\', \'req:SECTION\', \'req:SECTIONNAME\', \'req:SECTIONDESC\', \'req:SECTIONTYPE\', \'req:IMAGE\', \'req:SIGDIR\', \'req:INCLUDE\', \'req:PROMO\', \'req:RANK\', \'req:URL\', \'req:DISPLAYONINDEX\'  ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('insertMultimedia','exec s_insertMultimedia \'req:ITEMID\' ,\'req:multiMediaType\',\'req:articleImageName\', \'req:multiMediaCaption\', \'req:ICON\', \'req:SIZE\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('insertPublication','exec s_insertPublication \'req:PUBLICATION\', \'req:PUBNAME\', \'req:PUBDESC\', \'req:TAGLINE\', \'req:HOMEPAGE\', \'req:ICON\', \'req:ICONWIDTH\',\'req:ICONHEIGHT\', \'req:JAVASCRIPT\', \'req:ROLLOVERTIME\', \'req:DEFAULTSECTION\', \'req:USEDATE\', \'req:DOMAINNAME\',\'req:TESTFTPSERVER\',\'req:TESTFTPLOGIN\', \'req:TESTFTPPASSWORD\', \'req:TESTTEMPLATEFOLDER\', \'req:TESTIMAGESFOLDER\', \'req:LIVEFTPSERVER\', \'req:LIVEFTPLOGIN\',\'req:LIVEFTPPASSWORD\', \'req:LIVETEMPLATEFOLDER\', \'req:LIVEIMAGESFOLDER\',\'req:LIVEIMAGESSERVER\', \'req:IMPORTFTPSERVER\', \'req:IMPORTFTPLOGIN\', \'req:IMPORTFTPPASSWORD\',\'req:IMPORTFTPFILEPATH\', \'req:IMPORTFTPFILECONTENTS\', \'req:MAINCOFAXSERVER\',\'req:IMAGESURLPREFIX\', \'req:CACHESERVERS\', \'req:PUBID\'  ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('insertRelatedLinkByItemID','insert into tblrelatedlinks(itemID, link, rank, text, linkUpdateDate) values(\'req:ITEMID\', \'req:LINK\', \'req:RANK\', \'req:TEXT\', NOW())','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('selectPubNameAndSectionByMappingCode','SELECT pubName, section FROM tblsections WHERE mappingCode = \'req:MAPPINGCODE\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('selectPubNameByMappingCode','SELECT pubName FROM tblsections WHERE mappingCode = \'req:MAPPINGCODE\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('setNewRamdomPassword','update tblpermusers set userPassword=MD5(\'req:password\') where userName=\'req:login\'','2003-05-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('updateArticleDisableIndex','exec s_updateArticleDisableSection \'req:ITEMID\', \'req:DISABLEINDEX\', \'req:DISABLEARTICLE\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('updateArticlePreload','exec s_updateArticlePreload \'req:ITEMID\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('updateGroups','exec s_editGroup \'req:GROUPID\', \'req:GROUPNAME\', \'req:GROUPDESC\', \'req:GROUPTYPE\'  ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('updateGroupToPublication','exec s_editGroupToPub \'req:GROUPID\', \'req:PUBID\', \'req:DELETE\'  ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('updateGroupType','exec s_editGroupType \'req:GROUPTYPEID\', \'req:GROUPTYPENAME\',\'req:GROUPTYPEDESC\'  ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('updateModes','exec s_updateModes \'req:MODES\',\'req:TYPE\', \'req:DELETE\'  ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('updateSavedSearches','exec s_updateSavedSearches \'req:USERID\', \'req:SEARCH\', \'req:SEARCHNAME\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('updateUserGroups','exec s_editUserToGroup \'req:USERID\', \'req:groupID\', \'req:action\'  ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('updateUserInfo','exec s_editUser \'req:USERID\', \'req:USERNAME\', \'req:USERPASSWORD\', \'req:LASTNAME\', \'req:FIRSTNAME\', \'req:HOMEPUB\', \'req:EMAIL\', \'req:WORKPHONE\', \'req:CELLPHONE\', \'req:PAGER\', \'req:NOTES\' ','2001-03-06 00:00:00','2001-03-06 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('updateUserRightSection','exec s_updateUserRightSection \'req:USERID\',\'req:MAPPINGCODE\', \'req:VALUE\'  ','2003-05-31 00:00:00','0000-00-00 00:00:00',0,0);
INSERT INTO `tbltoolspackagetags` (`tag_name`,`tag_value`,`create_date`,`modified_date`,`tagID`,`cache`) VALUES 
  ('updateUserSection','exec s_editUserToSection \'req:USERID\', \'req:MappingCode\', \'req:action\',\'req:director\'','2003-05-31 00:00:00','2003-05-31 00:00:00',0,0);