Use DreamHome;

/*Task-1*/

Select * From Staff,Branch;

/*Task-2*/

Select * From Staff,Branch where Staff.branchNo= Branch.branchNo and Branch.city='London';

/*Task-3*/

Select * From Staff,Branch where Staff.branchNo= Branch.branchNo and Staff.staffNo='SG37';

/*Task-4*/

Select PropertyForRent.*, privateOwner.* From PropertyForRent, privateOwner where PropertyForRent.ownerNo = privateOwner.ownerNo;

/*Task-5*/

Select PropertyForRent.*, Staff.* From PropertyForRent, Staff where PropertyForRent.ownerNo = Staff.staffNo;

/*Task-6*/

Select PropertyForRent.*, Branch.* FROM PropertyForRent, Branch where PropertyForRent.ownerNo = Branch.branchNo;

/*Task-7*/

Select Client.*, PropertyForRent.* FROM Client, PropertyForRent where Client.clientNo=PropertyForRent.ownerNo;

/*Task-8*/

Select Client.*, Viewing.* FROM Client, Viewing where Client.clientNo=Viewing.propertyNo;

/*Task-9*/

Select * From Staff,Branch where Staff.branchNo= Branch.branchNo and Staff.sex='M';

/*Task-10*/

Select Branch.*, PropertyForRent.* FROM Branch, PropertyForRent where Branch.branchNo=PropertyForRent.propertyNo;
/*Task-11*/

Select privateOwner.*, PropertyForRent.* FROM privateOwner, PropertyForRent where privateOwner.ownerNo=PropertyForRent.ownerNo;

/*Task-12*/
Select Staff.*, PropertyForRent.* FROM Staff, PropertyForRent where Staff.staffNo=PropertyForRent.ownerNo and PropertyForRent.propertyNo='';

/*Task-13*/

Select SUM(Staff.salary) from staff where branchNo='B003';

/*Task-14*/
Select SUM(Staff.salary) from staff;


/*Task-15*/

SELECT MAX(Staff.salary) FROM Staff;


/*Task-16*/

SELECT MIN(Staff.salary) FROM Staff;

/*Task-17*/

Select AVG(salary) FROM Staff where branchNo= 'B005';



/*





-----------Submitted by : Mati ul Rehman ----------------------------
-----------Class: SP20-BSE-B-----------------------------------------
-----------Reg: SP20-BSE-042-----------------------------------------




*/


