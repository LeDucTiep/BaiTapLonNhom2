CREATE OR REPLACE PROCEDURE `tdtl.leductiep2023`.Proc_Account_Edit (IN accountId char(36),
IN email varchar(255),
IN fullName varchar(100),
IN phoneNumber varchar(50),
IN yearOfBirth int(11),
IN cityId char(36),
IN districtId char(36),
IN communeId char(36),
IN role int(11),
IN modifiedDate datetime,
IN modifiedBy varchar(100))

BEGIN

  UPDATE account a
  SET a.email = email,
      a.fullName = fullName,
      a.phoneNumber = phoneNumber,
      a.yearOfBirth = yearOfBirth,
      a.cityId = cityId,
      a.districtId = districtId,
      a.communeId = communeId,
      a.role = role,
      a.modifiedDate = modifiedDate,
      a.modifiedBy = modifiedBy
  WHERE a.accountId = accountId;

END;