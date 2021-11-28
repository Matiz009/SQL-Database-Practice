Use DreamHome;
SELECT * FROM PropertyForRent;

INSERT into PropertyForRent values ('ha14','18 Holland','Aberdeen','AB7 5SU','House',36,6150,'CO346','SA19','B017');

UPDATE PropertyForRent SET city = 'Liverpool';	

ALTER TABLE PropertyForRent DROP COLUMN city;

SELECT DISTINCT propertyNo FROM Viewing;

SELECT ownerNo, propertyNo FROM PropertyForRent ORDER BY ownerNo desc;

SELECT rent*12 FROM PropertyForRent AS yearlyRent; 

SELECT * FROM  Branch WHERE branchNo <= 'CO346';

SELECT * FROM PropertyForRent WHERE branchNo LIKE '%CO%';

SELECT street From Branch WHERE street='22 Deer Rd' OR street='16 Argyll';

SELECT street From Branch WHERE street='22 Deer Rd' AND street='16 Argyll';

SELECT rent FROM PropertyForRent WHERE rent BETWEEN 1000 AND 2000;

SELECT MIN(rent) AS minimumRent FROM PropertyForRent;

 

/*




------------Submitted by: SP20-BSE-042-B-------------------------------
------------Name: Mati ul Rehman---------------------------------------
------------Class: SP20-BSE-B------------------------------------------



*/





