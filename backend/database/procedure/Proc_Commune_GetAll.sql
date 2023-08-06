
CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_Commune_GetAll ()
COMMENT '
  Output: Danh sách tất cả
  Author: LeDucTiep (16/05/2023)
  Test: CALL `misa.web202303_mf1609_leductiep`.Proc_Commune_GetAll ()
'
BEGIN
  SELECT
    c.CommuneId,
    c.Name,
    c.DistrictId,
    c.CreatedDate,
    c.CreatedBy,
    c.ModifiedDate,
    c.ModifiedBy
  FROM commune c;

END;