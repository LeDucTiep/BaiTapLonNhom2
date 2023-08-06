CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_Comment_Edit (IN commentId char(36),
IN newsId char(36),
IN accountId char(36),
IN content varchar(255),
IN modifiedDate datetime,
IN modifiedBy varchar(100))

BEGIN

  UPDATE comment c
  SET c.newsId = newsId,
      c.accountId = accountId,
      c.content = content,
      c.modifiedDate = modifiedDate,
      c.modifiedBy = modifiedBy
  WHERE c.commentId = commentId;

END;