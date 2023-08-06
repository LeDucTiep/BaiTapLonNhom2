CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_City_GetById (IN cityId char(36))

BEGIN
  SELECT
    c.cityId,
    c.Name,
    c.CreatedDate,
    c.CreatedBy,
    c.ModifiedDate,
    c.ModifiedBy
  FROM city c
  WHERE c.cityId = cityId
  ;
END;
