CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_City_Edit (IN cityId char(36),
IN name varchar(255),
IN modifiedDate datetime,
IN modifiedBy varchar(100))

BEGIN

  UPDATE city c
  SET c.name = name,
      c.modifiedDate = modifiedDate,
      c.modifiedBy = modifiedBy
  WHERE c.cityId = cityId;

END;