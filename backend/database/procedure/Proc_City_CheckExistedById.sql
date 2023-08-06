CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_City_CheckExistedById (IN cityId char(36))

BEGIN
  SELECT
    EXISTS (SELECT
        *
      FROM city c
      WHERE c.cityId = cityId);
END;