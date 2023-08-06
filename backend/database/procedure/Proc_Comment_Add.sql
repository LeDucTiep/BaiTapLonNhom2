CREATE OR REPLACE DEFINER = 'root'@'localhost'
PROCEDURE `tdtl.leductiep2023`.Proc_Comment_Add (IN commentId char(36),
IN newsId char(36),
IN accountId char(36),
IN content varchar(255),
IN createdBy varchar(100),
IN createdDate datetime)

BEGIN

  INSERT INTO comment (commentId, newsId, accountId, content, createdBy, createdDate)
    VALUES (commentId, newsId, accountId, content, createdBy, createdDate);

END
;
