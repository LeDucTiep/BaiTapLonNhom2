CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_News_GetById (IN newsId char(36))

BEGIN
  SELECT
    *
  FROM news n
  WHERE n.newsId = newsId
  ;
END;
