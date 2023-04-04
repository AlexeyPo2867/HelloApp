using Microsoft.Maui.Graphics.Text;
using Microsoft.Maui;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using Microsoft.Maui.Storage;

namespace HelloApp
{
    public class StartPage: ContentPage
    {
        string folderPath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);

        public StartPage() 
        {
            string pageXAML = null;
            
            try
            {
                pageXAML = File.ReadAllText("F:\\Applications\\Приложения с#\\HelloApp\\MainPage.xaml"); 
            }catch(Exception ex)
            {
               DisplayAlert("Error", ex.Message, "Ok");
                //return;
            }

            pageXAML ??= "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n" +
                    "<ContentPage xmlns=\"http://schemas.microsoft.com/dotnet/2021/maui\"\n" +
                    "xmlns:x=\"http://schemas.microsoft.com/winfx/2009/xaml\"\n" +
                    "x:Class=\"HelloApp.StartPage\">\n" +
                    "<Label Text=\"Hello METANIT.COM\" FontSize=\"22\" />" +
                    "<Entry x:Name=\"Entry\" BackgroundColor = \"White\" TextColor = \"Black\" WidthRequest=\"300\"  HeightRequest=\"200\" Focused=\"Entry_Focused\" Placeholder = \"Вопрос: \"  Margin = \"10,10,10,10\" />\n" +
                    "</ContentPage>";  

            this.LoadFromXaml(pageXAML);

        }

        private void OnSendRequestClicked(object sender, EventArgs e)
        {

        }

        private void OnSaveToFile(object sender, EventArgs e)
        {

        }

        private void OnViewToFile(object sender, EventArgs e)
        {

        }

        private void Entry_Focused(object sender, FocusEventArgs e)
        {

        }
    }
}
