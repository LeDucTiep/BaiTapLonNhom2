CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_Comment_Delete (IN commentId char(36))

BEGIN
  DELETE
    FROM comment
  WHERE comment.commentId = commentId;
END; 



