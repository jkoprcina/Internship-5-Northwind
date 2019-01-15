/*CREATING TABLES*/
CREATE TABLE Titles(
	ID int IDENTITY (1,1) PRIMARY KEY,
	Title nvarchar (25)
)

CREATE TABLE Users(
	ID int IDENTITY (1,1) PRIMARY KEY,
	Name nvarchar (25),
	Lastname nvarchar (25),
	OIB nvarchar (25),
	Phone_Number nvarchar (25),
	Adress nvarchar (50),
	City nvarchar (25),
	Country nvarchar (50),
	Postal_Code nvarchar (25)
)

CREATE TABLE Transactions(
	ID int IDENTITY (1,1) PRIMARY KEY,
	Date_Of_Transaction date,
	State Bit
)

CREATE TABLE Workers(
	ID int IDENTITY (1,1) PRIMARY KEY,
	Name nvarchar (25),
	Lastname nvarchar (25),
	Title nvarchar (25),
	Email nvarchar (50)
)

/*ALTERING TABLES*/
ALTER TABLE Transactions
ADD Description nvarchar(255)

ALTER TABLE Workers
ADD Work_Guide nvarchar (255)

ALTER TABLE Users
ADD UNIQUE(OIB)

/*SELECT*/
SELECT * FROM Workers
WHERE Name LIKE '[A-G]%'

/*INSERTING AND UPDATING INFORMATION*/
INSERT INTO Titles
(Title)
VALUES
(N'Director'), (N'Vice-President'), (N'Financial Consultant'), (N'Investment Analyst ')

SELECT * FROM Titles

INSERT INTO Users
( Name, Lastname, OIB, Phone_Number, Adress, City, Country, Postal_Code)
Values
(N'Jane', N'Smith', 124, 092432234, N'Washington 43', N'Seattle', N'United States of America', 111),
(N'John', N'Walker', 953, 092432234, N'Street of Peace', N'Chicago', N'United States of America', 213),
(N'Barry', N'Allen', 231, 092432234, N'Downtown Abbey 4', N'London', N'England', 3123)

UPDATE Users
SET
	Phone_Number = N'092432234'
WHERE
	Name = 'Jane' 

UPDATE Users
SET
	Phone_Number = N'091523124'
WHERE
	Name = 'John'

UPDATE Users
SET
	Phone_Number = N'099628834'
WHERE
	Name = 'Barry'

SELECT * FROM Users

INSERT INTO Transactions
( Date_Of_Transaction, State, Description)
VALUES
('20001205' , 0, N'Buying ammunition'),('19970623', 1, N'Buying groceries')

SELECT * FROM Transactions

INSERT INTO Workers
( Name, Lastname, Title, Email)
Values
(N'Jane', N'Smith', N'', N'jsmith@pmf.usa'),
(N'John', N'Walker', N'', N'johnWalker@gmail.com'),
(N'Barry', N'Allen', N'', N'fastestmanalive@hotmail.com')

UPDATE Workers
SET Email = N'jasmith<3@pmf.usa'
WHERE Lastname = N'Smith'

SELECT * FROM Workers

/*DELETING INFORMATION*/
DELETE FROM Users
WHERE Name = 'Jane'

DELETE FROM Transactions
WHERE ID = 1