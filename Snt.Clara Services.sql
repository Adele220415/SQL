use SaintClaraServices

/*
CREATE TABLE CustomerHeader (Field_Name varChar(50), Data_Type varChar(50), Description varChar(100))*/

INSERT INTO CustomerHeader
('ClientID', 'int', 'Stores client id. This column is the Primary Key')
('FirstName', 'char', 'Stores fist name of the client')
('LastName', 'char', 'Stores last name of the client')
('MiddleName', 'char', 'Stores middle name of the client')
('Gender', 'char', 'Stores')
('DateOfBirth', 'datetime', 'Stores')
('Address', 'varchar(max)', 'Stores')
('MaritalStatus', 'char', 'Stores')
('Age', 'int', 'Stores')
('CompanyName', 'char', 'Stores')
('CompanyAddresss', 'varchar(max)', 'Stores')
('', 'varchar()max', 'Stores')

SELECT * FROM CustomerHeader