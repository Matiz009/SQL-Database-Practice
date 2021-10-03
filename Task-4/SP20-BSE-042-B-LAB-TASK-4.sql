
USE Dental_Solution;


/*LAB TASK-4*/

-- --------------------------------------------------

   /*Checking columns in each table*/
   Select * from Dentist_Information;
   Select * from Dentist_Qualification;
   Select * from Dentist_Experience;
   Select * from Patient_Detail;
   Select * from Services;
   Select * from Appointments;



-- --------------------------------------------------

   /*Adding columns in each table*/
   ALTER TABLE Dentist_Information 
   ADD Department_Name CHAR(20) NULL;

   ALTER TABLE Dentist_Qualification
   ADD Hobby CHAR(20) NULL;

   Alter Table Dentist_Experience
   Add salary VARCHAR(20) NULL;

   ALTER TABLE Patient_Detail
   ADD Blood_Group VARCHAR(20) NULL;

    
   ALTER TABLE Services
   ADD DATE_OF_ACTIVATION DATE NULL;

    
   ALTER TABLE Appointments
   ADD Room_No VARCHAR(50) NULL;



-- --------------------------------------------------

   /*Changing datatype of a column*/



  ALTER TABLE Patient_Detail
  Alter column Blood_Group CHAR(20) NULL;


-- --------------------------------------------------

/*Truncating */

TRUNCATE TABLE Dentist_Information;
TRUNCATE TABLE Dentist_Qualification;


-- --------------------------------------------------

/*Droping table*/

  DROP Table Services;

/*



-- --------------------------------------------------


------MADE BY: MAT UL REHMAN------
------SP20-BSE-042-B--------------
------LAB-TASK-4-----------------




*/