<?xml version="1.0" encoding="utf-8" ?>
<ContentPage xmlns="http://schemas.microsoft.com/dotnet/2021/maui"
             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
             x:Class="HelloApp.MainPage">
    
    <ContentPage.Resources>
        <ResourceDictionary>
            
            <Color x:Key="textColor">White</Color>
            <Color x:Key="backColor">Blue</Color>
            <Color x:Key="borderColor">LightBlue</Color>
            <x:Double x:Key="BorderWidth">2</x:Double>
            <x:Double x:Key="Radius">5</x:Double>
            <x:Double x:Key="width">130</x:Double>
            <x:Double x:Key="height">40</x:Double>
            <x:Double x:Key="margin">10</x:Double>
            
        </ResourceDictionary>
    </ContentPage.Resources>
    
    <ScrollView>
        
        <StackLayout BackgroundColor="Beige" Padding="10">

        <Label Text="Отправить запрос:" 
                   TextColor="Black" 
                   FontSize="Small"
                   FontFamily="Fira Code"/>
            
            <Entry x:Name="Entry"
                   BackgroundColor="Black"
                   TextColor ="Cyan" 
                   Placeholder="Вопрос: " 
                   Focused="Entry_Focused"
                   Margin="10,10,10,10" />

            <Button Text="Отправить" 
                    BorderWidth = "2"
                    CornerRadius="5"
                    HorizontalOptions="Center"
                    Clicked="OnSendRequestClicked" Margin="0,10" />

            <Label Text="Ответ:" 
                   FontSize="Small" 
                   TextColor="Black"
                   Margin="0,5,0,5"
                   FontFamily="Fira Code"/>
            
            <Editor x:Name="ResponseEditor" 
                    BackgroundColor="Black"
                    IsReadOnly="true" 
                    TextColor ="Cyan"
                    HeightRequest="450" 
                    Margin="10,10,10,10"/>

               </StackLayout>
        
    </ScrollView>
    
</ContentPage>
