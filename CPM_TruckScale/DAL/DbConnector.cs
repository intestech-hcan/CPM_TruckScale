using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPM_TruckScale.DAL
{
    public class DbConnector
    {
        private static string DataBase = "xxx";
        private static string ServerName = "localhost";
        private static string UserId = "xxx";
        private static string Password = "aaa";

        internal static string ConnectionStr = "Data Source=" + ServerName + ";User ID=" + UserId + ";Password=" + Password + ";Database=" + DataBase + ";TrustServerCertificate=False;ApplicationIntent=ReadWrite;";
        internal static SqlConnection connection = new SqlConnection(ConnectionStr);

        public static DataTable GetData(string command, ref DataTable dataTable)
        {

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(command, connection);

                adp.Fill(dataTable);
                return dataTable;
            }
            catch (Exception ex)
            {
                //IsSucces = false;
                //Globals.ErrorMessage = "Bağlantı hatası. " + ex.Message;
                throw new Exception("Hata");
            }
        }

        public static bool ModifyData(string command)
        {
            //SqlCommand ExecuteNonQuery
            try
            {
                SqlCommand cmd = new SqlCommand(command, connection);

                return cmd.ExecuteNonQuery() > 0;
            }
            catch (Exception ex)
            {
                //Globals.ErrorMessage = ex.Message;
                //new Intes_MessageBox(ex.Message, null, "Tamam", (int)Enums.MessageBoxType.Error).ShowDialog();
                return false;
            }
        }

        public static bool Login(string userName, string password) 
        {
            return true;
        }
        public static bool SaveNewLicencePlate(string licencePlate)
        {
            return true;
        }

        public static string GetLicencePlate() 
        {
            string licencePlate="";
            return licencePlate;
        }

        public static bool IsLicencePlateExist(string licencePlate)
        { 
            return true; 
        }
        
        public static void GetContract()
        {

        }

        public static void GetCustomer() 
        {
        }

        public static void GetCustomerExitDocument() 
        {
        }

        public static void GetStoreTransferReceipt()
        {

        }

        public static void GetProduct() 
        { }

        public static void SaveWeight() 
        { }

        public static void UpdateWeight() 
        { }

        public static int GetTotalWeight() 
        {
            return 0; 
        }

        public static void GetStoreName() 
        { }

    }
}
