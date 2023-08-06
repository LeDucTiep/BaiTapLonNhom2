CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_District_GetById (IN districtId char(36), IN cityId char(36))

BEGIN
  SELECT
    d.districtId,
    d.Name,
    d.cityId,
    d.CreatedDate,
    d.CreatedBy,
    d.ModifiedDate,
    d.ModifiedBy
  FROM district d
  WHERE d.districtId = districtId
  AND d.cityId LIKE concat('%', cityId, '%')
  ;
END;
