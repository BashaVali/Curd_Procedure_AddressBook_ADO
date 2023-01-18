--Adding new AddressBook
CREATE PROCEDURE SPAddingNewData(
@FirstName VARCHAR(30),
@LastName VARCHAR(30),
@Address VARCHAR(100),
@City VARCHAR(20),
@State VARCHAR(20),
@ZIP INT,
@PhoneNumber BIGINT,
@Email VARCHAR(50)
)
As
Begin Try
INSERT INTO AddressBookADO(FirstName,LastName,Address,City,State,ZIP,PhoneNumber,Email)
VALUES(@FirstName,@LastName,@Address,@City,@State,@ZIP,@PhoneNumber,@Email)
End Try
Begin Catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH
--Retrieving All Details From AddressBook
CREATE PROCEDURE SPRetrieveAllDetails
As
Begin Try
SELECT * FROM AddressBookADO
End Try
Begin Catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH
--Update Data in AddressBook Database
CREATE PROCEDURE SPUpdateDataInDB(
@FirstName VARCHAR(30),
@City VARCHAR(20),
@State VARCHAR(20)
)
As
Begin Try
UPDATE AddressBookADO SET City=@City,State=@State WHERE FirstName=@FirstName
End Try
Begin Catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH