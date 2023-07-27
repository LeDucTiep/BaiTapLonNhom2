﻿CREATE OR REPLACE PROCEDURE `misa.web202303_mf1609_leductiep`.Proc_Receipt_DeleteMany (IN arrayId text)
COMMENT '
  Param: employeeId: Id chức vụ cần xóa
  Author: LeDucTiep (16/05/2023)
  Test: 
        CALL `misa.web202303_mf1609_leductiep`.Proc_Position_Delete("06306268-f3b5-11ed-a084-d8bbc1b19103");
'
BEGIN

  SET @sql = concat('DELETE
    FROM receipt
  WHERE receipt.receiptId IN (', arrayId, ')');
  PREPARE stmt FROM @sql;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;

END; 



