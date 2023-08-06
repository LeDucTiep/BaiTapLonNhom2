CREATE OR REPLACE DEFINER = 'root'@'localhost'
PROCEDURE `tdtl.leductiep2023`.Proc_Account_Paging (IN _offset int,
IN _limit int,
IN searchTerm varchar(255),
OUT totalRecord int)

BEGIN
  -- Lấy ra dữ liệu 
  SELECT
    *
  FROM account a

  WHERE a.FullName LIKE concat('%', searchTerm, '%')
  AND a.PhoneNumber LIKE concat('%', searchTerm, '%')

  ORDER BY a.FullName

  LIMIT _limit

  OFFSET _offset;

  -- Lấy ra số lượng bản ghi

  SELECT
    COUNT(1) INTO totalRecord
  FROM account a
  WHERE a.FullName LIKE concat('%', searchTerm, '%')
  AND a.PhoneNumber LIKE concat('%', searchTerm, '%')
  ;
END;
