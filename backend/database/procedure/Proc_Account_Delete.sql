CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_Account_Delete (IN accountId char(36))

BEGIN
  DELETE
    FROM account
  WHERE account.accountId = accountId;
END; 



