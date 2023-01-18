CREATE Database AddressBook
USE AddressBook;

CREATE TABLE AddressBookADO(
FirstName VARCHAR(30) PRIMARY KEY NOT NULL,
LastName VARCHAR(30),
Address VARCHAR(100) NOT NULL,
City VARCHAR(20) NOT NULL,
State VARCHAR(20) NOT NULL,
ZIP INT NOT NULL,
PhoneNumber BIGINT NOT NULL,
Email VARCHAR(50) NOT NULL
);
SELECT * FROM AddressBookADO

INSERT INTO AddressBookADO(FirstName,LastName,Address,City,State,ZIP,PhoneNumber,Email)VALUES
('Basha','shaik','Rampuri Colony','Chennai','TN',600097,9966576672,'Basha@gmail.com'),
('Vali','Basha','Rampuri Colony','Banglore','KA',515001,9876543210,'vali@gmail.com'),
('Shaik','Pari','Line Paar','Hyederabad','TS',400008,897456123,'pari@gmail.com'),
('Shanas','Sadik','Hasanpur','Cochin','KL',616161,963852741,'shanas@gmail.com'),
('Pyari','AA','Manak Mau','Delhi','UP',110000,721654987,'Pyari@gmail.com')