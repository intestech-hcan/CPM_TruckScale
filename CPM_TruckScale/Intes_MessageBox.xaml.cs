using System;
using System.Collections.Generic;
using System.ComponentModel;
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
using System.Windows.Shapes;
using CPM_TruckScale.Constants;

namespace CPM_TruckScale
{
    public partial class Intes_MessageBox : Window, INotifyPropertyChanged
    {
        int _type;

        protected void OnPropertyChanged(string propertyName)
        {
            if (this.PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }

        public event PropertyChangedEventHandler PropertyChanged;

        public Dictionary<string, string> MessageList;
        private string _messageDetail;
        public string ResponseText
        {
            get { return ResponseTextBox.Text; }
            set { ResponseTextBox.Text = value; }
        }

        private Visibility _isVisible;
        public Visibility IsTxtVisible
        {
            get { return _isVisible; }
            set { _isVisible = value; }
        }

        private string _content1;
        public string Content1
        {
            get { return _content1; }
            set { _content1 = value; }
        }
        private string _content2;
        public string Content2
        {
            get { return _content2; }
            set { _content2 = value; }
        }

        private string _message;
        public string Message
        {
            get { return _message; }
            set
            {
                _message = value;
                OnPropertyChanged("Message");
            }
        }
        private string _header;
        public string Header
        {
            get { return _header; }
            set { _header = value; }
        }
        public Intes_MessageBox()
        {
            InitializeComponent();
        }
        public Intes_MessageBox(string message, string content1, string content2, int type)
        {
            InitializeComponent();
            DataContext = this;
            _type = type;
            _message = message;
            IsTxtVisible = Visibility.Collapsed;
            LoadMessageList();
            FindMessageDetail(message);

            if (content1 != null)
                _content1 = content1;
            else
                this.Button1.Visibility = Visibility.Collapsed;

            if (content2 != null)
                _content2 = content2;
            else
                this.Button2.Visibility = Visibility.Collapsed;

            if (type == (int)Enums.MessageBoxType.Error)
            {
                imgMessage.Source = new BitmapImage(new Uri("/Images/Error.png", UriKind.Relative));
                _header = "Hata";
            }
            if (type == (int)Enums.MessageBoxType.Warning)
            {
                imgMessage.Source = new BitmapImage(new Uri("/Images/Warning.png", UriKind.Relative));
                _header = "Uyarı";
            }
            if (type == (int)Enums.MessageBoxType.Success)
            {
                imgMessage.Source = new BitmapImage(new Uri("/Images/Success.png", UriKind.Relative));
                _header = "Başarılı";
            }
            if (type == (int)Enums.MessageBoxType.Delete)
            {
                imgMessage.Source = new BitmapImage(new Uri("/Images/Delete.png", UriKind.Relative));
                _header = "Silinsin mi?";
                Button2.Background = new SolidColorBrush(Color.FromRgb(217, 87, 87));
            }
            if (type == (int)Enums.MessageBoxType.Confirm)
            {
                imgMessage.Source = new BitmapImage(new Uri("/Images/Confirm.png", UriKind.Relative));
                _header = "Onay";
            }
            if (type == (int)Enums.MessageBoxType.Information)
            {
                imgMessage.Source = new BitmapImage(new Uri("/Images/Information.png", UriKind.Relative));
                _header = "Bilgi";
            }
            if (type == (int)Enums.MessageBoxType.Input)
            {
                imgMessage.Source = new BitmapImage(new Uri("/Images/Input.png", UriKind.Relative));
                _header = "Pin Kodu Giriniz";
                IsTxtVisible = Visibility.Visible;
            }
        }
        private void LoadMessageList()
        {
            MessageList = new Dictionary<string, string>();            
        }

        private void Button1_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            this.Close();
        }

        private void Button2_Click(object sender, RoutedEventArgs e)
        {
            if (_type == (int)Enums.MessageBoxType.Input)
            {
                if (!string.IsNullOrEmpty(ResponseTextBox.Text) && ResponseTextBox.Text.Trim().Length != 0)
                {
                    ResponseText = ResponseTextBox.Text;
                    DialogResult = true;
                    this.Close();
                }
                else
                {
                    txtContent.Foreground = new SolidColorBrush(Colors.Red);
                    txtContent.FontSize = 11;
                    Message = "*Pin giriniz.";
                }
            }
            else
            {
                DialogResult = true;
                this.Close();
            }
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            this.Close();
        }

        

        private void FindMessageDetail(string message)
        {
            if (!string.IsNullOrEmpty(message))
            {
                if (MessageList.ContainsKey(message))
                {
                    DetailMenu.IsEnabled = true;
                    _messageDetail = MessageList.Where(x => x.Key.Contains(message)).FirstOrDefault().Value;
                }
                else DetailMenu.IsEnabled = false;
            }
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {

        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            //new Intes_MessageBoxDetail(_messageDetail).Show();
        }


    }
}
