CREATE OR REPLACE DEFINER = 'root'@'localhost'
PROCEDURE `tdtl.leductiep2023`.Proc_News_Add (IN newsId char(36),
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
IN createdBy varchar(100),
IN createdDate datetime)

BEGIN

  INSERT INTO news (newsId, accountId, title, newsType, category, imgLink, cityId, districtId, communeId, content, contactInfor, viewCount, createdBy, createdDate)
    VALUES (newsId, accountId, title, newsType, category, imgLink, cityId, districtId, communeId, content, contactInfor, viewCount, createdBy, createdDate);

END
;
