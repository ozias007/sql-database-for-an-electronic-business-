/*PLease Create the following folder*/ 
/*'C:\DBD281_Project'*/
/*'C:\backup'*/

/*Section A Database Creation*/
Use master
Create database Nel_Unwin
On Primary
(Name = 'Nel_Urwin',
FileName = 'C:\DBD281_Project\dbNel_Unwin.mdf',
SIZE=5MB,
MAXSIZE=20, 
FILEGROWTH=10%)

LOG ON
(NAME='logNel_Unwin' ,
FILENAME = 'C:\DBD281_Project\log_Nel_Unwin.ldf',
SIZE=5MB, MAXSIZE=200, FILEGROWTH=20%);
Go

/*Section B Table Creation*/
Use Nel_Unwin
Go
Create TABLE Nel_Unwin.dbo.Employees (
  EmployeeId INT NOT NULL
 ,LastName VARCHAR(50) NOT NULL
 ,Firstname VARCHAR(50) NOT NULL
 ,TitleID int not NULL
 ,BirthDate DATE NOT NULL
 ,HireDate DATE NOT NULL
 ,Address VARCHAR(30) NOT NULL
 ,City VARCHAR(30) NOT NULL
 ,PostalCode VARCHAR(6) NULL
 ,Phone VARCHAR(10) NOT NULL
 ,[E-mail] VARCHAR(50) NULL
 ,CONSTRAINT PK_Employees_EmployeeId PRIMARY KEY (EmployeeId),
)
GO
CREATE TABLE Nel_Unwin.dbo.EmployeeTitle (
  TitleID INT IDENTITY
 ,TitleName VARCHAR(10) NOT NULL
 ,CONSTRAINT PK_EmployeeTitle_TitleID PRIMARY KEY(TitleID)
)
GO
CREATE TABLE Nel_Unwin.dbo.ProductType (
  TypeId INT IDENTITY
 ,Name VARCHAR(20) NOT NULL
 ,Description VARCHAR(50) NULL
 ,CONSTRAINT PK_ProductType_TypeId PRIMARY KEY(TypeId)
)
GO
CREATE TABLE Nel_Unwin.dbo.Products (
  ProductID INT NOT NULL
 ,ProductName VARCHAR(50) NOT NULL
 ,ListPrice MONEY NOT NULL
 ,SupplierID int not NULL
 ,TypeID int not NULL
 ,Quantiy INT NOT NULL
 ,LastOrderDate DATE NOT NULL
 ,CONSTRAINT PK_Products_ProductID PRIMARY KEY (ProductID)
)
GO

CREATE TABLE Nel_Unwin.dbo.Sales (
  SaleID INT IDENTITY,
  SaleDate DATE NULL,
  EmpId INT NOT NULL,
  MemberID INT NULL,
  CONSTRAINT PK_Sales_SaleID PRIMARY KEY (SaleID),

)
GO
 Create Table [SalesDetail]
 (
  DetailID int,
  ProductId INT NOT NULL,
  Quantity INT NOT NULL,
  SaleId int
 )
 Go
CREATE TABLE Nel_Unwin.dbo.Suppliers (
  SupplierId INT IDENTITY
 ,SupplierName NVARCHAR(20) NOT NULL
 ,Representetive VARCHAR(50) NULL
 ,Phone VARCHAR(10) NOT NULL
 ,CONSTRAINT PK_Suppliers_TitleID PRIMARY KEY (SupplierId)
)
GO
CREATE TABLE Nel_Unwin.dbo.Members (
  MemberId INT NOT NULL
 ,LastName VARCHAR(50) NOT NULL
 ,Firstname VARCHAR(50) NOT NULL
 ,BirthDate DATE NOT NULL
 ,Mermbership_Date DATE NOT NULL
 ,Address VARCHAR(30) NOT NULL
 ,City VARCHAR(30) NOT NULL
 ,PostalCode VARCHAR(6) NULL
 ,Phone VARCHAR(10) NOT NULL
 ,[E-mail] VARCHAR(50) NULL
 ,CONSTRAINT PK_Members PRIMARY KEY (MemberId)
 )
 Go
 Use Nel_Unwin
Go

--Section C Data Insertion
INSERT INTO dbo.EmployeeTitle (TitleName)
  VALUES ('Cashier'), ('Repair'),('Stocker');
 go
 INSERT into dbo.Members(MemberId, LastName, Firstname, BirthDate, Mermbership_Date, Address, PostalCode, Phone, [E-mail],City) VALUES
 (5000, 'Hughes', 'Scot', '1987-11-27', '1996-05-26', '6th Floor', '6740', '0828517256', 'Adam.Acker24@icloud.com','Kroonstad'),
 (5001, 'Rand', 'Adele', '1952-01-07', '1970-01-07', '5th FL', '7648', '0008372300', 'byiswceo_myqdc@gmail.com','Welkom'),
 (5002, 'Longo', 'Luisa', '1952-01-09', '1970-01-09', '6th FL', '5025', '0000807313', 'LealU19@microsoft.com','Pretoria'),
 (5003, 'Moses', 'Marielle', '1957-03-14', '1975-03-15', '64th FL', '5686', '0008837214', 'kkhx3854@gmail.com','Blomfontain'),
 (5004, 'Hughey', 'Lucio', '1952-01-01', '1970-01-01', '6th Floor', '8679', '0808880427', 'owpk8399@icloud.com','Aliwal North'),
 (5005, 'Randall', 'Mel', '1963-06-23', '1996-08-27', '7th Floor', '0087', '0085541744', 'Jennings@gmail.com','Sasolburg'),
 (5006, 'Weaver', 'Parker', '1964-05-16', '2019-01-07', '79th FL', '8707', '0868318428', 'Gee@gmail.com','Parys'),
 (5007, 'Bain', 'Alexia', '2000-03-28', '1982-08-05', '79th Floor', '3601', '0847968379', 'PhilRichey8@gmail.com','Arkasia'),
 (5008, 'Longoria', 'Giovanni', '1995-01-09', '1996-08-14', '4th FL', '6443', '0008068234', 'Babin@icloud.com','Kroonstad'),
 (5009, 'Cade', 'Catina', '1984-06-05', '2004-06-10', '64th Floor', '2626', '0083002739', 'MargaritoAnthony@microsoft.com','Welkom'),
 (5010, 'Gilchrist', 'Elvie', '1969-05-12', '2008-01-16', '6th Floor', '5258', '0000843710', 'GladisReeves33@microsoft.com','Welkom'),
 (5011, 'Baines', 'Avery', '1953-02-21', '1992-02-10', '7th FL', '2524', '0000892527', 'Cordero@gmail.com','Blomfontain'),
 (5019, 'Mosher', 'Rema', '1981-09-13', '1970-10-27', '62th FL', '9683', '0885887134', 'GiannaJenkins@icloud.com','Kroonstad'),
 (5020, 'Cagle', 'Enriqueta', '1980-08-17', '2021-03-30', '41th FL', '7978', '0082558606', 'Crooks@gmail.com','Sasolburg')

 GO
 INSERT into dbo.Suppliers( SupplierName, Representetive, Phone) VALUES 
( 'Defy', 'Mr Harmon', '687-4257' ),
( 'Samsung', 'MrPereira', '856-6675'),
( 'Electrolux', 'Mrs Dougherty', '259-1254'),
( 'Domestic Automotive ', 'Ms Zamora', '575-8920'),
( 'KitchenAid', 'Ms Knowles', '471-1183'),
( 'LG', 'Ms Goble', '862-7381')
Go
INSERT into dbo.Employees(EmployeeId, LastName, Firstname, BirthDate, HireDate, Address, PostalCode, Phone, [E-mail], TitleID,City) VALUES 
(1, 'Baumann', 'Conrad', '1980-01-16', '2012-11-15', '5 Pretorias', '1163', '0827549424', 'Conrad_Frizzell61@gmail.com', 1,'Kroonstad'),
(2, 'Renteria', 'Morgan', '1986-08-14', '2022-11-23', '101 De Ru', '9499', '0804739033', NULL,2,'Welkom'),
(3, 'Neeley', 'Micheal', '1965-01-14', '2021-11-28', '88th FL Jamaca', '9499', '0872672420', 'Schuler@gmail.com', 2, 'Thembisa'),
(4, 'Reyes', 'Adam', '1992-04-27', '2020-04-19', '48th FL Stephan Complex', '9499', '0086004447', 'ZapataF@icloud.com', 1,'Blomfontain'),
(5, 'Mathews', 'Kittie', '1994-02-05', '2019-08-04', '23 Steveovo', '4323', '0000086067', 'Sanford549@gmail.com', 3,'Kroonstad')
go
INSERT dbo.Products(ProductID, ProductName, ListPrice, Quantiy, LastOrderDate, SupplierID, TypeID) VALUES
(1, 'W5Q2U', 3108.99, 36, '2021-04-26',6,2),
(2, 'N259Z', 6736.60, 17, '2021-12-03',2,2),
(3, 'Z9SV2', 29918.99, 29, '2022-03-05',3,2),
(4, '7GBGH', 7581.89, 6, '2021-03-27',3,3),
(5, '14P62-24LA4', 14683.59, 28, '2022-01-23',4,1),
(6, '2BAET', 30861.99, 11, '2021-10-18',5,3),
(7, 'N60TQ-0Y3XD', 6930.69, 29, '2021-09-26',5,1),
(8, 'GPUQ8', 19284.69, 23, '2021-07-02',3,3),
(9, '7R170-EZ55C', 13814.39, 18, '2021-08-06',4,3)
Go
INSERT dbo.ProductType( Name, Description) VALUES 
( 'Indoor', 'Indoor Electronics.'),
( 'Outdoor', 'Outdoor Electronics.'),
( 'Parts', 'Repair Parts.')
GO
Insert Into Sales (SaleDate,EmpId,MemberID)
Values
('2018-06-15',1,5011),
('2020-03-21',1,5001),
('2017-01-14',5,5007),
('2021-03-24',3,5009),
('2022-01-25',4,5003)
GO
Insert [SalesDetail] (DetailID,ProductID,Quantity,SaleId)
Values 
(1,1,5,1),
(2,5,4,2),
(3,4,3,2),
(4,6,12,3),
(5,9,6,1),
(6,7,7,4),
(7,8,9,5)
Go

--Section D Constraint Foreign Keys
ALTER TABLE Nel_Unwin.dbo.Employees
ADD CONSTRAINT FK_Employees_EmployeeTitle_TitleID FOREIGN KEY (TitleID) REFERENCES dbo.EmployeeTitle (TitleID)
GO
ALTER TABLE Nel_Unwin.dbo.Sales
ADD CONSTRAINT FK_Sales_Employees_EmployeeId FOREIGN KEY (EmpId) REFERENCES dbo.Employees (EmployeeId)
GO

ALTER TABLE Nel_Unwin.dbo.Sales
ADD CONSTRAINT FK_MemberId FOREIGN KEY (MemberID) REFERENCES dbo.Members (MemberId)
GO

ALTER TABLE Nel_Unwin.dbo.SalesDetail
ADD CONSTRAINT FK_SalesDetail_Products_ProductID FOREIGN KEY (ProductId) REFERENCES dbo.Products (ProductID)
GO

ALTER TABLE Nel_Unwin.dbo.SalesDetail
ADD CONSTRAINT FK_SalesDetail_Sales_SaleID FOREIGN KEY (SaleId) REFERENCES dbo.Sales (SaleID)
GO

ALTER TABLE Nel_Unwin.dbo.Products
ADD CONSTRAINT FK_Products_ProductType_TypeId FOREIGN KEY (TypeID) REFERENCES dbo.ProductType (TypeId)
GO

ALTER TABLE Nel_Unwin.dbo.Products
ADD CONSTRAINT FK_Products_Suppliers_SupplierId FOREIGN KEY (SupplierID) REFERENCES dbo.Suppliers (SupplierId)
GO

--Section F

--Query to update Product banes
Update Products
set ProductName = (
CASE 
WHEN ProductName= 'W5Q2U' THEN 'Stove'
WHEN ProductName ='N259Z' THEN 'Fridge'
WHEN ProductName ='Z9SV2' THEN 'Television'
WHEN ProductName ='7GBGH' THEN 'Television Repeire '
WHEN ProductName ='14P62-24LA4' THEN 'Electonic Repaire'
WHEN ProductName ='2BAET' THEN 'Microwave'
WHEN ProductName ='N60TQ-0Y3XD' THEN 'Speakers'
WHEN ProductName ='GPUQ8' THEN 'Lights '
ELSE ProductName
end)
Go

-- insert new employee

INSERT INTO Employees(Employeeid,LastName
,FirstName,TitleID,BirthDate,HireDate
,Address,City,PostalCode,Phone,[E-mail])
VALUES(6,'Biaya','Steve','2'
,'1996-03-08','2014-01-07','17 Ottawa'
,'Welkom','0182'
,'0744767054',null);
Alter table Employees
add  Email varchar(50);

--insert new supplier
 INSERT into dbo.Suppliers( SupplierName, Representetive, Phone) VALUES 
( 'Phillips', 'Mr Dennise', '095678392' )
go

--Procedure to insert new products
Drop Proc if exists New_Product
go
Create PROCEDURE New_Products
(@ProductID int,
@ProductName varchar (50),
@ListPrice money,
@Quantity int,
@LastOrderDate date,
@SupplierID int,
@TypeID int)
AS
BEGIN
INSERT INTO Products (Products.ProductID,.ProductName,Products.ListPrice,Products.Quantiy,Products.LastOrderDate,Products.SupplierID,Products.TypeID)
VALUES (@ProductID,@ProductName,@ListPrice,@Quantity,@LastOrderDate,@SupplierID,@TypeID)
END
go

--Procedure to find Position of employees
Drop Proc if exists Get_EmployeeTitle
go
Create Proc Get_EmployeeTitle
@Position nvarchar(20)
As
if (@Position in (Select TitleName from EmployeeTitle))
	begin
	Select Employees.EmployeeId, FirstName, LastName, Employees.TitleID, TitleName
	from Employees
	inner join EmployeeTitle
	on Employees.TitleID = EmployeeTitle.TitleID
	end else
	begin
	Print 'Title Does Not Exist'
	end;
go

--View to See Products
Drop View if Exists ProductDec
go
Create View ProductDesc
As
Select ProductName,ProductType.Description,ListPrice,Quantiy,Products.TypeID
From Products
Inner Join ProductType
On
Products.TypeID = ProductType.TypeId;
go

--View to View total Sales for each Product
Drop view if Exists QuantityPrice
GO
Create View QuantityPrice
As
Select Products.ProductID,Products.ProductName, SUM(SalesDetail.Quantity*Products.ListPrice) AS SaleTotal
From Products
Inner Join SalesDetail
On
Products.ProductID= SalesDetail.ProductID
Inner Join Sales
On
SalesDetail.SaleID= Sales.SaleID
Group by Products.ProductID,Products.ProductName;
GO

--Trigger to prevent the droping of procedures
DROP trigger if exists tr_Maintrig
go
CREATE TRIGGER tr_Maintrig
	ON DATABASE after DROP_TRIGGER
	AS
		PRINT 'User must drop trigger "tr_Maintrig" before droping other triggers'
		ROLLBACK TRANSACTION;
GO

--Trigger to check if member has address
Drop trigger if exists tr_Invalidmember
go
CREATE TRIGGER tr_Invalidmember
	ON Members AFTER Update
	AS
		IF Update(Address)
		BEGIN
				DECLARE @Address nvarchar(50)
				SET @Address = (SELECT Address FROM inserted)
					IF @Address is null
					BEGIN
					PRINT 'Update was successful'
					END
					ELSE
					BEGIN
					PRINT 'Update was unsuccesful. '
					ROLLBACK TRANSACTION
					END
		END;
GO

--Trigger to insert new Member 
Drop Trigger if Exists tr_insertMember
go
Create TRIGGER tr_insertMember ON Members INSTEAD OF INSERT
AS
BEGIN
	DECLARE 
	@LastName NVARCHAR(50),
	@FirstName NVARCHAR(50),
	@BOD DATE,
	@Membershipdate DATE,
	@Address NVARCHAR(100), 
	@City NVARCHAR(50),
	@pCode NVARCHAR(6),
	@Phone NVARCHAR(10),
	@Email NVARCHAR(50);
		SELECT @LastName = LastName,
		 @FirstName = FirstName,
		 @BOD=BirthDate,
		 @Address = Address,
		 @City = City ,
		 @pCode = PostalCode,
		 @Phone = Phone ,
		 @Email = [E-mail],
		 @Membershipdate = Mermbership_Date
		 FROM INSERTED;
			 IF @Membershipdate IS NULL
			 SET @Membershipdate = GETDATE();
			 INSERT INTO Members (LastName, Firstname, BirthDate, Mermbership_Date, Address, City, PostalCode, Phone, [E-mail]) 
			 VALUES( @LastName, @FirstName,@BOD, @Membershipdate, @Address, @City, @pCode,@Phone,@Email);
END
 go

 --Login and Passwords for the database

 Create Login Cashier1 with Password = 'Pass2012'
Create Login Cashier2 with Password = 'Insertnew1'
Create Login Stock with Password = 'STock17'

-- Users for the database
Use Nel_Unwin
Create User Conar for login Cashier1
Create User Kitte for login Stock
Create User Adam for login Cashier2 

-- Inserts and Updates allowed on each User
Use Nel_Unwin
Grant Insert, Update on Sales to Conar,Adam
Grant Insert , Update on SalesDetail to Conar,Adam
Grant Insert , Update on Members to Conar,Adam
Grant Insert , Update on Suppliers to Kitte
Grant Insert , Update on Products to Kitte

--Full Backup of Nel_Unwin Database
USE [master]
GO
BACKUP DATABASE Nel_Unwin
TO DISK = N'C:\backup\Nel_Unwin.bak'
WITH NOFORMAT, NOINIT,
NAME = 'Nel_UNwin Backup', SKIP, NOREWIND, NOUNLOAD, STATS = 10;
GO

--Differential backup for Nel_Unwin
USE [master]
GO
BACKUP DATABASE Nel_Unwin
TO DISK = 'C:\backup\Nel_Unwin' WITH DIFFERENTIAL
GO

--Transaction and Log Backup
USE [master]
GO
BACKUP DATABASE Nel_Unwin
TO DISK = N'C:\backup\Nel_Unwin.bak'
WITH NOFORMAT, NOINIT,
NAME = 'Nel_Unwin Backup', SKIP, NOREWIND, NOUNLOAD, STATS = 10;
GO
ALTER DATABASE Nel_Unwin SET RECOVERY FULL;
BACKUP LOG Nel_Unwin
TO DISK = N'C:\backup\Nel_Unwin.trn'
GO


--Filegroup backup
USE [master]
GO
BACKUP DATABASE Nel_Unwin
TO DISK = N'C:\backup\Nel_Unwin.bak'
WITH NOFORMAT, NOINIT,
NAME = 'Nel_Unwin Backup', SKIP, NOREWIND, NOUNLOAD, STATS = 10;
GO
BACKUP DATABASE Nel_Unwin
FILE = 'Nel_Unwin'
TO DISK = N'C:\backup\Nel_Unwin.bck'
GO


