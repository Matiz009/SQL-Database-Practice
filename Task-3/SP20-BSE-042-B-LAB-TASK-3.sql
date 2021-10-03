
/*TASK-1*/
CREATE DATABASE Dental_Solution;
USE Dental_Solution;

/*TASK-2*/
CREATE TABLE Dentist_Information(
    Dentist_ID VARCHAR(10) NOT NULL PRIMARY KEY,
    First_Name CHAR(20),
    Last_Name CHAR(20),
    Joining_Date DATE,
    PMDC_Number VARCHAR(10) NULL,
    Email VARCHAR(20) NOT NULL,
    City_Name CHAR(20)
    );

ALTER TABLE Dentist_Information
ADD Phone VARCHAR(20) NULL;

SELECT * FROM Dentist_Information;

/*TASK-3*/
CREATE TABLE Dentist_Qualification(
Dentist_ID VARCHAR(20) NOT NULL,
DEGREE VARCHAR(20) NOT NULL,
PRIMARY KEY(Dentist_ID,Degree),
Completion_Date DATE,
College_Name CHAR(20)
);


/*TASK-4*/

CREATE TABLE Dentist_Experience(
Dentist_ID VARCHAR(20) NOT NULL PRIMARY KEY,
Hospital_Name CHAR(20) NOT NULL,
Joining_Date DATE,
Leaving_Date DATE NULL,

);
/*TASK-5*/

CREATE TABLE Patient_Detail(
   Patient_ID VARCHAR(20) NOT NULL PRIMARY KEY,
    First_Name CHAR(20) NOT NULL,
    Last_Name CHAR(20) NOT NULL,
    Email VARCHAR(20)  NULL,
    Phone VARCHAR(20) NOT NULL,
    City_Name CHAR(20) NOT NULL
);

/*TASK-6*/

CREATE TABLE Services(
 Service_ID VARCHAR(20) NOT NULL PRIMARY KEY,
 Service_Name CHAR(20) NOT NULL,
 Service_Detail CHAR(20)
);

/*TASK-7*/

CREATE TABLE Appointments(
    Appointment_ID VARCHAR(20) NOT NULL PRIMARY KEY,
    Patient_ID VARCHAR(20),
    Date DATE NOT NULL,
    Service_ID VARCHAR(20) NOT NULL,
    Dentist_ID VARCHAR(20) NOT NULL,
);

/*TASK-8*/

INSERT INTO Dentist_Information(Dentist_ID,First_Name,Last_Name,Joining_Date,PMDC_Number,Email,City_Name,Phone)
VALUES(
    'Dentist1',
    'Muhammad',
    'Ali',
    '2020-01-01',
    '123456',
    'aliazam89@gmail.com',
    'Lahore',
    '03144567234'

);


INSERT INTO Dentist_Information(Dentist_ID,First_Name,Last_Name,Joining_Date,PMDC_Number,Email,City_Name,Phone)
VALUES(
    'Dentist2',
    'Muhammad',
    'Azam',
    '2021-03-02',
    '123356',
    'azam89@gmail.com',
    'Lahore',
    '03144567234'

);

INSERT INTO Dentist_Information(Dentist_ID,First_Name,Last_Name,Joining_Date,PMDC_Number,Email,City_Name,Phone)
VALUES(
    'Dentist3',
    'Muhammad',
    'Hassan',
    '2020-05-11',
    '123456',
    'hassan29@gmail.com',
    'Lahore',
    '03444567234'

);


SELECT * FROM Dentist_Information;

INSERT INTO Dentist_Qualification(Dentist_ID,Degree,Completion_Date,College_Name)
VALUES(
    'den12',
    'Bachelor of CS',
    '2020-01-01',
    'Lahore University'
),(
    'den13',
    'Bachelor of se',
    '2021-02-12',
    'CUI'
),(
    'den14',
    'Bachelor of IT',
    '2020-03-01',
    'Lahore University'
);

INSERT INTO Dentist_Experience(Dentist_ID,Hospital_Name,Joining_Date,Leaving_Date)
VALUES('den34','AIH','2019-08-12','2021-02-19'),('den35','AIH','2019-08-12','2021-02-19'),('den36','AIH','2019-08-12','2021-02-19');

SELECT * FROM Patient_Detail;
INSERT INTO Patient_Detail(Patient_ID,First_Name,Last_Name,Email,Phone,City_Name)
VALUES(
    'pat12',
    'Muhammad',
    'Ali',
    'mali78@hotmail.com',
    '03144567234',
    'Lahore'
),(
    'pat13',
    'Ahmad',
    'Azam',
    'azam90@gmail.com',
    '03124567234',
    'Kasur'
),(
    'pat14',
    'Gul',
    'Hassan',
    'hassan123@gmail.com',
    '03244567234',
    'Karachi'

);

INSERT INTO Services(Service_ID,Service_Name,Service_Detail)
VALUES(
    'serv1',
    'XRay',
    'Available'
),
(
    'serv2',
    'Tooth Extraction',
    'Available'
),
(
    'serv3',
    'Crown',
    'Available'
);


INSERT INTO Appointments(Appointment_ID,Patient_ID,Date,Service_ID,Dentist_ID)
VALUES(
    'app1',
    'pat101',
    '2021-09-23',
    'serv01',
    'den67'
),(
    'app2',
    'pat131',
    '2021-02-22',
    'serv131',
    'den131'
),(
    'app11',
    'pat7',
    '2020-04-01',
    'serv1',
    'den4'
);

/*TASK-9*/
SELECT * FROM Dentist_Information,Dentist_Qualification,Dentist_Experience,Patient_Detail,Services,Appointments;

/*TASK-10*/

SELECT * FROM Dentist_Information;

/*TASK-11*/

SELECT Dentist_Information.First_Name,Dentist_Information.Last_Name,Dentist_Information.Phone,Dentist_Information.Email FROM Dentist_Information;

/*TASK-12*/

Select * from Appointments where [Date] = '2021-09-23'/*CURDATE ->I tried to use this function but it didn't work*/

/*TASK-13*/

Select * FROM Patient_Detail where [City_Name] = 'Lahore';

/*TASK-14*/

Select * from Services WHERE [Service_Detail] = 'Available';

/*TASK-15*/
Select Dentist_Information.Joining_Date,Dentist_Experience.Joining_Date FROM Dentist_Information,Dentist_Experience where Dentist_Experience.Joining_Date>'2000-01-01' AND Dentist_Information.Joining_Date<'2000-01-01';


/*TASK-16*/

DROP TABLE Patient_Detail;

/*TASK-17*/

CREATE TABLE Patient_Detail(
   Patient_ID VARCHAR(20) NOT NULL PRIMARY KEY,
    First_Name CHAR(20) NOT NULL,
    Last_Name CHAR(20) NOT NULL,
    Email VARCHAR(20)  NULL,
    Phone VARCHAR(20) NOT NULL,
    City_Name CHAR(20) NOT NULL
);


/*




------MADE BY: MAT UL REHMAN------
------SP20-BSE-042-B--------------
------LAB-TASK-3-----------------




*/