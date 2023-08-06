CREATE OR REPLACE DEFINER = 'root'@'localhost'
PROCEDURE `tdtl.leductiep2023`.Proc_District_Paging (IN cityId char(36),IN _offset int,
IN _limit int,
IN searchTerm varchar(255),
OUT totalRecord int)

BEGIN
  -- Lấy ra dữ liệu 
  SELECT
    d.DistrictId,
    d.Name,
    d.CityId

  FROM district d

  WHERE d.Name LIKE concat('%', searchTerm, '%')
  AND d.CityId LIKE concat('%', cityId, '%')

  ORDER BY d.Name

  LIMIT _limit

  OFFSET _offset;

  -- Lấy ra số lượng bản ghi

  SELECT
    COUNT(1) INTO totalRecord
  FROM district d
  WHERE d.Name LIKE concat('%', searchTerm, '%')
  AND d.CityId LIKE concat('%', cityId, '%')
  ;
END;
