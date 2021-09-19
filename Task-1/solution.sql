CREATE DATABASE Student; /* Creation of Data Base*/

USE Student; /*Selecting Student database for making of tables*/

CREATE TABLE Personal_Information(Student_ID int,First_Name char(30),Last_Name char(30),Email varchar(50),Phone int,City_Name char(50)); /*Creating Table for Personal Information*/

SELECT * FROM Personal_Information; /*Checking the query*/

CREATE TABLE Semester_Registration(Student_Id varchar(30),Semester char(30),Program char(30)); /*Creating Table for Semester Registration*/

SELECT * FROM Semester_Registration; /*Checking the query*/

CREATE TABLE Course_Registration(Student_ID varchar(30),Course_Title char(30),Course_Code varchar(30),Theory_CreditHour int,LabCreditHour int,Registered_In varchar(30));/*Creating Table for Course Registration*/

SELECT * FROM Course_Registration; /*Checking the query*/

INSERT into Personal_Information(Student_ID,First_Name,Last_Name,Email,Phone,City_Name) VALUES(1,'Hammad','Azam','hammadazam@hotmail.com',03023456789,'Lahore');/*Inserting the data but it overflows due to int */

SELECT * FROM Personal_Information;/*Checking the query*/

DROP TABLE Personal_Information;/*Dropping the table */

CREATE TABLE Personal_Information(Student_ID varchar(20),First_Name char(30),Last_Name char(30),Email varchar(50),Phone varchar(30),City_Name char(50));/*Creating the table again*/

SELECT * FROM Personal_Information;/*Checking the query again*/

/*Inserting and checking the queries*/

INSERT into Personal_Information(Student_ID,First_Name,Last_Name,Email,Phone,City_Name) VALUES(1,'Hammad','Azam','hammadazam@hotmail.com','03023456789','Lahore');

SELECT * FROM Personal_Information;

INSERT into Personal_Information(Student_ID,First_Name,Last_Name,Email,Phone,City_Name) VALUES(2,'Hamza','Javaid','hamzajd@gmail.com','03223456389','Lahore');

SELECT * FROM Personal_Information;

INSERT into Personal_Information(Student_ID,First_Name,Last_Name,Email,Phone,City_Name) VALUES(3,'Ibrahim','Ahmad','ibrahim09@gmail.com','03523456389','Lahore');

SELECT * FROM Personal_Information;

INSERT into Semester_Registration(Student_Id,Semester,Program) VALUES ('SP20-BSE-042','FA21','BSE-B');

SELECT * FROM Semester_Registration;

INSERT into Semester_Registration(Student_Id,Semester,Program) VALUES ('SP20-BSE-002','FA21','BSE-B');

SELECT * FROM Semester_Registration;

INSERT into Semester_Registration(Student_Id,Semester,Program) VALUES ('SP20-BCE-089','FA21','BCE-A');

SELECT * FROM Semester_Registration;

INSERT into Course_Registration(Student_ID,Course_Title,Course_Code,Theory_CreditHour,LabCreditHour,Registered_In) VALUES ('SP20-BSE-042','ICT','CSC101',2,1,'ICT'),('SP20-BSE-002','PF','CSC103',3,1,'ICT'),('SP20-BSE-048','MVC','MTH241',3,0,'MVC');

SELECT * FROM Course_Registration;

SELECT * FROM Course_Registration,Personal_Information,Semester_Registration; /*Query to view all the records*/

SELECT Course_Title FROM Course_Registration,Personal_Information,Semester_Registration;/*Query to view the course Titles*/

SELECT Email,First_Name,Last_Name FROM Course_Registration,Personal_Information,Semester_Registration;/*Query to view all the emails*/

SELECT Program FROM Course_Registration,Semester_Registration,Personal_Information;/*Query to view all the programs*/


/*MADE BY : SP20-BSE-042-B
  NAME: MATI UL REHMAN
  CLASS: SP20-BSE-B
*/