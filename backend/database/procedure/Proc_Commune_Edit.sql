CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_Commune_Edit (IN communeId char(36),
IN name varchar(255),
IN districtId char(36),
IN modifiedDate datetime,
IN modifiedBy varchar(100))

BEGIN

  UPDATE commune c
  SET c.name = name,
      c.districtId = districtId,
      c.modifiedDate = modifiedDate,
      c.modifiedBy = modifiedBy
  WHERE c.communeId = communeId;

END;