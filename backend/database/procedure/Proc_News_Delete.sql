CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_News_Delete (IN newsId char(36))

BEGIN
  DELETE
    FROM news
  WHERE news.newsId = newsId;
END; 
