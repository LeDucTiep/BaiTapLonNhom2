CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_Comment_GetById (IN commentId char(36))

BEGIN
  SELECT
    *
  FROM comment c
  WHERE c.commentId = commentId
  ;
END;
