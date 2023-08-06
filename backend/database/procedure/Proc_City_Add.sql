CREATE OR REPLACE DEFINER = 'root'@'localhost'
PROCEDURE `tdtl.leductiep2023`.Proc_City_Add (IN cityId char(36),
IN name varchar(255),
IN createdDate datetime,
IN createdBy varchar(100))

BEGIN

  INSERT INTO city (cityId, name, createdDate, createdBy)
    VALUES (cityId, name, createdDate, createdBy);
END
;
