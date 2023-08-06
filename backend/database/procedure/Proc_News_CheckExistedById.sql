CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_News_CheckExistedById (IN newsId char(36))

BEGIN
  SELECT
    EXISTS (SELECT
        *
      FROM news n
      WHERE n.newsId = newsId);
END;