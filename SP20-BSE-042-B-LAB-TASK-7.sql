Use DreamHome;

SELECT * FROM PropertyForRent WHERE  privateOwner = 'CO87';

SELECT * FROM Staff WHERE staffNo = 'SG37';

SELECT rooms FROM PropertyForRent WHERE Type = 'flat';

SELECT * FROM PropertyForRent WHERE  rent <500;

SELECT fName,lName,clientNo,Email FROM Client  WHERE Type = 'flat';

SELECT fName,lName FROM privateOwner ORDER BY fName;

SELECT COUNT(*) FROM Viewing;

SELECT COUNT(*) AS NoOfStaff FROM Staff;

SELECT * From Registration;

SELECT * FROM Staff WHERE DOB >= '1961-01-01';

SELECT * FROM Staff;

UPDATE Branch SET city = 'London' WHERE branchNo = 'B005';

UPDATE Branch SET city = 'Bristol' WHERE branchNo = 'B005';

SELECT * FROM PropertyForRent WHERE  staffNo = '';

SELECT * FROM privateOwner WHERE fName LIKE 'J%';

SELECT * FROM Viewing WHERE comment LIKE '';


/*




------------Submitted by: SP20-BSE-042-B-------------------------------
------------Name: Mati ul Rehman---------------------------------------
------------Class: SP20-BSE-B------------------------------------------



*/