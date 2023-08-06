CREATE OR REPLACE DEFINER = 'root'@'localhost'
PROCEDURE `tdtl.leductiep2023`.Proc_Comment_Paging (IN _offset int,
IN _limit int,
IN searchTerm varchar(255),
OUT totalRecord int)

BEGIN
  -- Lấy ra dữ liệu 
  SELECT
    *
  FROM comment c

  WHERE c.Content LIKE concat('%', searchTerm, '%')

  ORDER BY c.Content

  LIMIT _limit

  OFFSET _offset;

  -- Lấy ra số lượng bản ghi

  SELECT
    COUNT(1) INTO totalRecord
  FROM comment c
  WHERE c.Content LIKE concat('%', searchTerm, '%')
  ;
END;
