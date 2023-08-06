CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_Account_GetById (IN accountId char(36))

BEGIN
  SELECT
    *
  FROM account a
  WHERE a.accountId = accountId
  ;
END;
