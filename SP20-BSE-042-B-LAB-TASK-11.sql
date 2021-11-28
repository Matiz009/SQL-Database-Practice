SELECT branchNo, sum(salary) as [Total salary]from Staff group by branchNo;

SELECT ownerNo, count(propertyNo) As [Total Properties] from PropertyForRent group by ownerNo;

SELECT clientNo, count(propertyNo) As [Total properties Viewed] from Viewing group by clientNo;

SELECT branchNo, count(PropertyNo) As [Total Properties] from PropertyForRent group by branchNo;

SELECT city, count(branchNo) as [Total Brannches] from branch GROUP by city;

SELECT branchNo, count(staffNo) as [Total Staff] from Staff GROUP BY branchNo;

SELECT count(ownerNo) as [Total Owners from Glasglow] from PrivateOwner where address like '%Glasglow%';

SELECT position, count(staffNo) as [Total Employee] from Staff group by [position];

SELECT ownerNo, count(propertyNo) As [Total Properties] from PropertyForRent group by ownerNo WHERE  propertyNo ALIKE "PG4" AND propertyNo ALIKE "PG5";

SELECT COUNT (PrivateOwner.fName) AS [Members with same name] from PrivateOwner, Staff WHERE PrivateOwner.fName = Staff.fName;

SELECT Client.fName, Client.lName, Registration.dateJoined from Client, Registration where client.clientNo = Registration.clientNo;


/*





-----------Submitted by : Mati ul Rehman ----------------------------
-----------Class: SP20-BSE-B-----------------------------------------
-----------Reg: SP20-BSE-042-----------------------------------------




*/