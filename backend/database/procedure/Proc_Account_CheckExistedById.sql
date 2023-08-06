CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_Account_CheckExistedById (IN accountId char(36))

BEGIN
  SELECT
    EXISTS (SELECT
        *
      FROM account a
      WHERE a.accountId = accountId);
END;