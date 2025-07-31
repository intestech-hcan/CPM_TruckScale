using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CPM_TruckScale.DAL;

namespace CPM_TruckScale.BLL
{
    public class LoginViewModel
    {
        public static bool Login(string userName, string password) 
        {
            return DbConnector.Login(userName,password);
        }
    }
}
