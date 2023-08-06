CREATE OR REPLACE DEFINER = 'root'@'localhost'
PROCEDURE `tdtl.leductiep2023`.Proc_News_Paging (IN _offset int,
IN _limit int,
IN searchTerm varchar(255),
OUT totalRecord int)

BEGIN
  -- Lấy ra dữ liệu 
  SELECT
    *
  FROM news n

  WHERE n.Title LIKE concat('%', searchTerm, '%')
and n.ContactInfor LIKE concat('%', searchTerm, '%')

  ORDER BY n.Title

  LIMIT _limit

  OFFSET _offset;

  -- Lấy ra số lượng bản ghi

--   SELECT
    COUNT(1) INTO totalRecord
  FROM news n
  WHERE n.Title LIKE concat('%', searchTerm, '%')
and n.ContactInfor LIKE concat('%', searchTerm, '%')
  ;
END;
