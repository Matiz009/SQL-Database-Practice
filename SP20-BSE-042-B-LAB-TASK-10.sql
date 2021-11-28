Use DreamHome;

SELECT * FROM Staff,Branch;

SELECT * FROM Staff,Branch WHERE Branch.city = 'Glasgow' AND Staff.salary > 9000;

SELECT * FROM Viewing,PropertyForRent WHERE PropertyForRent.propertyNo = Viewing.propertyNo;

SELECT * FROM PropertyForRent, privateOwner,Branch;

SELECT * FROM PropertyForRent, privateOwner,Branch WHERE Email LIKE '%@gmail.com' AND fName = 'John' AND Branch.city = 'Glasgow';

SELECT * FROM PropertyForRent, privateOwner,Branch WHERE rent <500 AND rooms > 2 AND city = 'Glasgow';

SELECT * FROM Client,Branch;

SELECT * FROM Client,Branch WHERE Branch.city = 'Aberdeen';

SELECT * FROM Viewing,PropertyForRent WHERE Viewing.comment = '';

SELECT PropertyForRent.propertyNo FROM PropertyForRent,Viewing WHERE Viewing.comment = '';

SELECT * FROM Staff,PropertyForRent;

SELECT * FROM Staff,PropertyForRent WHERE PropertyForRent.propertyNo = 'PL94';

SELECT privateOwner.fName,privateOwner.lName FROM privateOwner,PropertyForRent WHERE PropertyForRent.propertyNo = 'PG4' AND PropertyForRent.propertyNo = 'PG21'; 

SELECT * FROM Staff,privateOwner;

SELECT * FROM Staff,privateOwner WHERE privateOwner.fName = Staff.fName;

SELECT * FROM Client, Registration WHERE  Client.clientNo = Registration.clientNo;


/*





-----------Submitted by : Mati ul Rehman ----------------------------
-----------Class: SP20-BSE-B-----------------------------------------
-----------Reg: SP20-BSE-042-----------------------------------------




*/

