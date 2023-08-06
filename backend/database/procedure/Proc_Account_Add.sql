CREATE OR REPLACE DEFINER = 'root'@'localhost'
PROCEDURE `tdtl.leductiep2023`.Proc_Account_Add (IN accountId char(36),
IN email varchar(255),
IN fullName varchar(100),
IN phoneNumber varchar(50),
IN yearOfBirth int(11),
IN cityId char(36),
IN districtId char(36),
IN communeId char(36),
IN role int(11),
IN createdBy varchar(100),
IN createdDate datetime)

BEGIN

  INSERT INTO account (accountId, email, fullName, phoneNumber, yearOfBirth, cityId, districtId, communeId, role, createdBy, createdDate)
    VALUES (accountId, email, fullName, phoneNumber, yearOfBirth, cityId, districtId, communeId, role, createdBy, createdDate);

END
;
