using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using CPM_TruckScale.BLL;
using System.ComponentModel;
using CPM_TruckScale.Constants;

namespace CPM_TruckScale
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class Login : Window, INotifyPropertyChanged
    {
        #region binding
        private string _userName;
        public string UserName
        {
            get { return _userName; }
            set
            {
                _userName = value;
                OnPropertyChanged("UserName");
            }
        }

        private string _password;
        protected void OnPropertyChanged(string propertyName)
        {
            if (this.PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }

        public event PropertyChangedEventHandler? PropertyChanged;
        #endregion
        public Login()
        {
            InitializeComponent();
            DataContext = this;
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            _password = txtPassword.Password;
            if (LoginViewModel.Login(UserName, _password))
            {
                MainWindow window = new MainWindow();
                window.Show();
                this.Close();
            }
            else 
            {
                new Intes_MessageBox("Kullanıcı Adı/Şifre bilgisi hatalı.", null, "Tamam", (int)Enums.MessageBoxType.Warning).ShowDialog();
            }    

        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
                this.DragMove();
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }
    }
}
