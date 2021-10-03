Create DATABASE DreamHome;
USE DreamHome;

CREATE TABLE Branch(
    branchNo VARCHAR(20) PRIMARY KEY Not NULL,
    street char(20),
    city char(20),
    postcode char(20)
    );

CREATE TABLE Staff(staffNo VARCHAR(20) PRIMARY KEY Not NULL,
 fName char(20),
 lName char(20),
 position char(20),
 sex char(6),
 DOB DATE,
 salary money,
 branchNo varchar(20)
);
CREATE TABLE PropertyForRent(propertyNo char(20) primary key,
  street  VARCHAR(20),
  city char(20),
  postcode VARCHAR(20),
  type varchar(20),
  rooms varchar(20),
  rent money,
  ownerNo varchar(20),
  staffNo varchar(20),
  branchNo varchar(20)
);

CREATE TABLE Client(
    clientNo char(20) primary key,
    fName char(20),
    lName char(20),
    address text,
    telNo char(20),
    Email varchar(20),
    prefType char(20),
    maxRent money


);

CREATE TABLE privateOwner(
    ownerNo char(20) primary key,
    fName char(20),
    lName char(20),
    address text,
    telNo char(20),
    Email varchar(20),

);

CREATE TABLE Viewing(
    clientNo char(20),
    propertyNo char(20),
    CONSTRAINT PK_Viewing PRIMARY KEY (clientNo,propertyNo),
    viewDate DATE,
    comment TEXT
    

);

CREATE TABLE Registration(
    clientNo char(20),
    branchNo char(20),
    CONSTRAINT PK_Registration PRIMARY KEY (clientNo,branchNo),
    staffNo char(20),
    dateJoined DATE,
);

INSERT INTO Branch VALUES('B005','22 Deer Rd','London','SW1 4EH');
INSERT INTO Branch VALUES('B007','16 Argyll','Aberdeen','AB2 3SU');
INSERT INTO Branch VALUES('B003','163 Main St','Glasgow','G11 9QX');
INSERT INTO Branch VALUES('B004','32 Manse Rd','Bristol','BS99 INZ');
INSERT INTO Branch VALUES('B002','56 Clover Dr','London','NW10 6EU');

Select * from Branch;

INSERT INTO Staff values ('SL21','Jhon','White','Manager','M','1945-10-1',30000,'B005'),
						 ('SG37','Ann','Beech','Assistant','F','1960-11-10',12000,'B003'),
						 ('SG14','David','Ford','Supervisor','M','1958-03-24',18000,'B003'),
						 ('SA9','Mary','Howe','Assistant','F','1970-02-19',9000,'B007'),
						 ('SG5','Susan','Brand','Manager','F','1940-06-03',24000,'B003'),
						 ('SL41','Julie','Lee','Assistant','F','1965-06-13',9000,'B005')

insert into PropertyForRent values ('PA14','16 Holland','Aberdeen','AB7 5SU','House',6,650,'CO46','SA9','B007'),
								   ('PL94','6 Agryll St','London','NW2','Flat',4,400,'CO87','SL41','B005'),
								   ('PG4','6 Lawrence St','Glasgow','G11 9QX','Flat',3,350,'CO40','','B003'),
								   ('PG36','2 Manor Rd','Glasgow','G32 4QX','Flat',3,375,'CO93','SG37','B003'),
								   ('PG21','18 Dale Rd','Glasgow','G12','House',5,600,'CO87','SG37','B003'),
								   ('PG16','5 Novar Dr','Glasgow','G12 9AX','Flat',4,450,'CO93','SG14','B003')

insert into Client values ('CR76','John','Kay','0207-774-5632','Flat',425,'john_kay@gmail.com'),
						  ('CR56','Aline','Stewart','0141-848-1825','Flat',350,'astewart@hotmail.com'),
						  ('CR74','Mike','Ritchie','01475-392178','House',750,'mritchie01@yahoo.co.uk'),
						  ('CR62','Mary','Treager','01224-196720','Flat',600,'marty@hotmail.co.uk')


Insert into Registration VALUES('CR76','B005','SL41','2013-01-02');
INSERT INTO Registration VALUES('CR56','B003','SG37','2012-04-11');
INSERT INTO Registration VALUES('CR74','B003','SG37','2011-11-16');
INSERT INTO Registration VALUES('CR62','B007','SA9','2012-03-07');

Select * from Registration;

INSERT INTO Viewing VALUES('CR56','PA14','2013-05-24','too small');
INSERT INTO Viewing VALUES('CR76','PG4','2013-04-20','too remote');
INSERT INTO Viewing VALUES('CR56','PG4','2013-05-26','');
INSERT INTO Viewing VALUES('CR62','PA14','2013-05-14','no dining room');
INSERT INTO Viewing VALUES('CR56','Pg36','2013-04-28','');

Select * from Viewing;

Insert INTO privateOwner VALUES('C093','Tony','Shaw','12 Park P1,Glasgow G4 0QR','0141-225-7025','tony.shaw@ark.com');
Insert INTO privateOwner VALUES('C040','Tina','Murphy','63 Well St,Glasgow G42','0141-357-7419','tinam@hotmail.com');

insert into PrivateOwner values ('CO46','Joe','Keogh','2 Fergus Dr, Abreen AB2 7SX','01224-861212','jkeogh@lhh.com'),('CO87','Carol','Farrel','6 Archray St, Glasgow G32 9DX','0141-357-7419','cfarrel@gmail.com');

