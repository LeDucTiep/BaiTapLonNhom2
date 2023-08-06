CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_Comment_CheckExistedById (IN commentId char(36))

BEGIN
  SELECT
    EXISTS (SELECT
        *
      FROM comment c
      WHERE c.commentId = commentId);
END;