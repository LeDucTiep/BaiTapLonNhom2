CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_District_GetAll ()

BEGIN
  SELECT
    d.DistrictId,
    d.Name,
    d.CityId,
    d.CreatedDate,
    d.CreatedBy,
    d.ModifiedDate,
    d.ModifiedBy
  FROM district d;

END;