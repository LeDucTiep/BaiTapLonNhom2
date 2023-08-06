CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_News_Edit (IN newsId char(36),
IN accountId char(36),
IN title varchar(255),
IN newsType int(11),
IN category int(11),
IN imgLink text,
IN cityId char(36),
IN districtId char(36),
IN communeId char(36),
IN content varchar(255),
IN contactInfor varchar(255),
IN viewCount int(11),
IN modifiedDate datetime,
IN modifiedBy varchar(100))

BEGIN

  UPDATE news n
-- 
  SET n.accountId = accountId,
      n.title = title,
      n.newsType = newsType,
      n.category = category,
      n.imgLink = imgLink,
      n.cityId = cityId,
      n.districtId = districtId,
      n.communeId = communeId,
      n.content = content,
      n.contactInfor = contactInfor,
      n.viewCount = viewCount,
      n.modifiedBy = modifiedBy,
      n.modifiedDate = modifiedDate

  WHERE n.newsId = newsId;

END;