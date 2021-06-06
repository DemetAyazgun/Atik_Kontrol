<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeFile="AtikKayit.aspx.cs" Inherits="Proje.Web.AtikKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>

    <head>

        <meta charset="UTF-8">

        <title>Kullanıcı Giriş</title>
        <link href="Template/css/bootstrap.min.css" rel="stylesheet" />
        <link href="Template/css/all.css" rel="stylesheet" />
        <script src="Template/js/bootstrap.bundle.min.js"></script>
        <script src="Template/js/jquery.slim.min.js"></script>
        <style>
            body {
                margin: 0;
                color: #6a6f8c;
                background: #6a6f8c;
                font: 600 14px/16px 'Open Sans',sans-serif;
            }

            .input {
                border: none;
                padding: 15px 20px;
                border-radius: 25px;
                background: rgba(255,255,255,.1);
                width: 100%;
                color: #fff;
                display: block;
            }

            b {
                
            }
            .button{
                 background: #6a6f8c;
                 border: none;
                    padding: 15px 20px;
                    border-radius: 25px;
                 
                     width: 100%;
                    color: #fff;
                    display: block;
            }
        </style>
    </head>

    <body>
        <!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->
        <div class="container" style="width: 75%; background-color: cornflowerblue; height: 100%; margin-top: 90px; border-radius: 10px;">
            <div class="form-group">
                <h4 class="text-center" style="color:white;padding-top:15px;">Atık Kayıt</h4>

            </div>
            <hr />
            <div class="form-group">
                
                <asp:TextBox ID="TxtAdres" runat="server" CssClass="input" PlaceHolder="Atığın Bulunduğu Adres"></asp:TextBox>
            </div>
            <div class="form-group">
               
                <asp:TextBox ID="TxtTur" runat="server" CssClass="input" PlaceHolder="Atık Türü"></asp:TextBox>
            </div>
            <div class="form-group">
                
                <asp:TextBox ID="TxtIslem" runat="server" CssClass="input"  PlaceHolder="R/D İşleminin Yapılacağı Kurum"></asp:TextBox>
            </div>
            <div class="from-group">
                <br />
                <asp:Button ID="AKayit" runat="server" Text="Kaydet" OnClick="AKayit_Click" CssClass="button" />
            </div>
            <br />
            <div style="color:purple">
                <asp:Label ID="lblUyari1" runat="server" Text=""></asp:Label>
            </div>
            <br />
        </div>

    </body>

    </html>

</asp:Content>
