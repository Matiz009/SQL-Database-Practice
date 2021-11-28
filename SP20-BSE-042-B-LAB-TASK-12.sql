Use DreamHome;

Select * From Branch where Branch.postcode=NULL;

Select * From Branch where city Like '%n';

Select * From Staff,Branch;

Select sex AS Gender, COUNT(branchNo) AS [Total Employee] FROM Staff GROUP BY sex;

Select (salary + salary*0.15) from Staff as increment;

Select branchNo, COUNT(branchNo) AS Available From PropertyForRent GROUP BY branchNo;

Select street,city From Branch where branchNo = (Select branchNo from PropertyForRent where propertyNo='PL4');

SELECT COUNT(staffNo) AS [NO Registery] FROM Staff WHERE staffNO IN (SELECT staffNo from Staff Except SELECT DISTINCT staffNo from PropertyForRent);

Select * From Client;

select clientNo,fName, lName, telNo, prefType, maxRent, eMail from Client where maxRent= (select min (maxRent) from Client);

select * from Registration, Viewing where Registration.clientNo = Viewing.clientNo;

select * from Client,Registration where Registration.dateJoined > '2013-04-11';

Select * from PrivateOwner where fName = 'Carol';


/*





-----------Submitted by : Mati ul Rehman ----------------------------
-----------Class: SP20-BSE-B-----------------------------------------
-----------Reg: SP20-BSE-042-----------------------------------------




*/





