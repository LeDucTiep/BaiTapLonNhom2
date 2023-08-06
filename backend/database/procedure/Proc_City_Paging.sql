CREATE OR REPLACE DEFINER = 'root'@'localhost'
PROCEDURE `tdtl.leductiep2023`.Proc_City_Paging (IN _offset int,
IN _limit int,
IN searchTerm varchar(255),
OUT totalRecord int)

BEGIN
  -- Lấy ra dữ liệu 
  SELECT
    c.CityId,
    c.Name
  FROM city c

  WHERE c.Name LIKE concat('%', searchTerm, '%')

  ORDER BY c.Name

  LIMIT _limit

  OFFSET _offset;

  -- Lấy ra số lượng bản ghi

  SELECT
    COUNT(1) INTO totalRecord
  FROM city c
  WHERE c.Name LIKE concat('%', searchTerm, '%')
  ;
END;
