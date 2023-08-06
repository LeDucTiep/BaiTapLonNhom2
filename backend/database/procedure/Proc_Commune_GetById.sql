CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_Commune_GetById (IN communeId char(36), IN districtId char(36))
COMMENT '
  Output: Thông tin
  Author: LeDucTiep (17/05/2023)
  Test: CALL Proc_Commune_GetById("3f8e6896-4c7d-15f5-a018-75d8bd200d7c");
'
BEGIN
  SELECT
    c.communeId,
    c.Name,
    c.districtId,
    c.CreatedDate,
    c.CreatedBy,
    c.ModifiedDate,
    c.ModifiedBy
  FROM commune c
  WHERE c.communeId = communeId
  AND c.districtId LIKE concat('%', districtId, '%')
  ;
END;
