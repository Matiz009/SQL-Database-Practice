Use DreamHome;

CREATE TABLE Lease(
    LeaseNo VARCHAR PRIMARY KEY,
    LeaseDate DATE,
    RentstartDate DATE,
    RentendDate DATE,
    MonthlyRent MONEY,
    ClientNo VARCHAR FOREIGN KEY REFERENCES Client(ClientNo),
    PropertyNo VARCHAR FOREIGN KEY REFERENCES PropertyforRent(PropertyNo)
);

INSERT into Lease VALUES ('LA01','2020-11-1','2020-11-1','2021-11-20',650,'CR76','PA14'), ('LA02','2021-1-1','2021-1-1','2022-12-31',375,'CR56','PG36'),('LA03','2020-4-1','2020-4-1','2022-4-1',350,'CR74','PG4'),('LA04','2019-10-1','2019-10-1','2022-10-1',600,'CR76','PG21'), ('LA05','2021-3-1','2021-3-1','2025-3-1',400,'CR62','PL94');

SELECT * FROM Lease;

SELECT * FROM Lease WHERE ClientNo = 'CR76';

SELECT COUNT(LeaseNo) AS [Lease this Year] From Lease WHERE RentstartDate BETWEEN '2020-12-31' AND '2021-12-31';

SELECT * FROM Lease WHERE RentendDate = '2021-11-20';

SELECT TOP 1 * FROM Lease ORDER BY MonthlyRent ASC;

SELECT * FROM PrivateOwner WHERE ownerNo = (SELECT ownerNo FROM PropertyForRent WHERE propertyNo = (SELECT PropertyNo FROM Lease WHERE LeaseDate BETWEEN '2021-10-1' AND '2021-10-31'));

SELECT * FROM PropertyForRent WHERE propertyNo NOT IN (SELECT PropertyNo FROM Lease);

SELECT * FROM Lease WHERE PropertyNo IN (SELECT propertyNo FROM PropertyForRent WHERE staffNo = 'SG5');

SELECT B.branchNo, COUNT(LeaseNo) AS [No. of Lease] FROM Branch B, Lease L WHERE b.branchNo IN (SELECT branchNo FROM PropertyForRent WHERE propertyNo = L.PropertyNo) GROUP BY B.branchNo;



/*





-----------Submitted by : Mati ul Rehman ----------------------------
-----------Class: SP20-BSE-B-----------------------------------------
-----------Reg: SP20-BSE-042-----------------------------------------




*/






