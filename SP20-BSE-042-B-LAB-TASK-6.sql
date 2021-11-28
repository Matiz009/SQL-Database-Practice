Use DreamHome;

Select branchNo from Staff;

ALTER TABLE Staff ADD FOREIGN KEY (branchNo) REFERENCES Branch(branchNo);

Select branchNo from Branch WHERE  branchNo = 'B005';

Select branchNo from Branch WHERE  city = 'London';

SELECT * FROM Branch WHERE branchNo in ('B005' , 'B003');

Select city from Branch;

Select * FROM Staff WHERE salary > 18000;

Select * FROM Staff WHERE sex = 'M';

SELECT fName,lName,branchNo FROM Staff where position = 'manager';

SELECT * FROM privateOwner;

SELECT * FROM PropertyForRent;

SELECT fName,lName FROM Staff ORDER by fName;


/*




------------Submitted by: SP20-BSE-042-B-------------------------------
------------Name: Mati ul Rehman---------------------------------------
------------Class: SP20-BSE-B------------------------------------------



*/