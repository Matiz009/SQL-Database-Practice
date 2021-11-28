Use DreamHome;

Select Registration.dateJoined From Client,Registration where Client.fName='John' ;

Select * From ((Client C  INNER JOIN Branch B ON B.branchNo = (SELECT branchNo FROM Registration WHERE clientNo = 'CR76') AND C.clientNo = (SELECT clientNo FROM Registration WHERE clientNo = 'CR76') ) INNER JOIN Staff S ON S.staffNo = (SELECT staffNo FROM Registration WHERE clientNo = 'CR76'));

Select clientNo FROM Client WHERE clientNo NOT IN (SELECT clientNo FROM Viewing);

Select COUNT(privateOwner.ownerNo) AS no From privateOwner where privateOwner.fName = 'Joe';

Select * From privateOwner where privateOwner.Email = NULL;

Select * From Client,privateOwner where Client.Email = privateOwner.Email;

Select * From Staff,privateOwner where Staff.fName=privateOwner.fName and Staff.lName=privateOwner.lName;

Select TOP 3 (PropertyForRent.rent) from PropertyForRent;

Select * From privateOwner where not exists (Select * From PropertyForRent where PropertyForRent.ownerNo = privateOwner.ownerNo);

Select * From privateOwner where not exists (Select * From Viewing where Viewing.propertyNo = privateOwner.ownerNo);


/*





-----------Submitted by : Mati ul Rehman ----------------------------
-----------Class: SP20-BSE-B-----------------------------------------
-----------Reg: SP20-BSE-042-----------------------------------------




*/








