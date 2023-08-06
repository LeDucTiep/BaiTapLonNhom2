CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_City_Delete (IN cityId char(36))

BEGIN
  DELETE
    FROM city
  WHERE city.cityId = cityId;
END; 



