CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_City_GetAll ()

BEGIN
  SELECT
    c.CityId,
    c.Name,
    c.CreatedDate,
    c.CreatedBy,
    c.ModifiedDate,
    c.ModifiedBy
  FROM city c;

END;