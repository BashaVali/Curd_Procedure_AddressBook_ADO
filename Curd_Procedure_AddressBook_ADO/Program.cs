using Curd_Procedure_AddressBook_ADO;
namespace CRUD_StoredProcedures
{
    class Program
    {
        public static void Main(string[] args)
        {
            Contact contact = new Contact()
            {
                FirstName = "Basha",
                LastName = "Vali",
                Address = "Chennai ",
                City = "Chennai City",
                State = "TN",
                Zip = 600097,
                PhoneNUmber = 9966576672,
                Email = "bashavali222@gmail.com"
            };
            AddressBook addressBook = new AddressBook();
            Console.WriteLine("AddressBook Using Stored Procedures");
            bool flag = true;
            while (flag)
            {
                Console.WriteLine("Select \n1.Add_New_Data_in_AddressBook_Databse\n2.Retrieve_Entries_From_AddressBookDB\n3.Update_Data_In_Database\n4.Exit");
                int sel = Convert.ToInt32(Console.ReadLine());
                switch (sel)
                {
                    case 1:
                        addressBook.AddNewContactInDatabase(contact);
                        break;
                    case 2:
                        addressBook.RetrieveEntriesFromAddressBookDB();
                        break;
                    case 3:
                        Contact update = new Contact
                        {
                            FirstName = "Basha",
                            City = "Andaman",
                            State = "AndamanNicobar"
                        };
                        addressBook.UpdateDataInDatabase(update);
                        break;
                    case 4:
                        flag = false;
                        break;
                }
            }
        }
    }
}