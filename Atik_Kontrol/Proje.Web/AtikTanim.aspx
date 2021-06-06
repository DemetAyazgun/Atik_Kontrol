<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeFile="AtikTanim.aspx.cs" Inherits="Proje.Web.AtikTanim" %>

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

            .button {
                background: #6a6f8c;
                border: none;
                padding: 15px 20px;
                border-radius: 25px;
                width: 100%;
                color: #fff;
                display: block;
            }
            .drop{
                width: 100%;
                border: none;
                 background: rgba(255,255,255,.1);
                  border-radius: 25px;
            }
        </style>
    </head>

    <body>
        <!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->
        <div class="container" style="width: 75%; background-color: cornflowerblue; height: 100%; margin-top: 90px; border-radius: 10px;">
            <div class="form-group">
                <h5 class="text-center">Atık Tanım</h5>

            </div>
            <hr />
            <div class="form-group">
                <div class="form-group">

                    <asp:TextBox ID="TxtPlaka" runat="server" CssClass="input" PlaceHolder="Araç Plaka"></asp:TextBox>
                </div>
                <div class="form-group">

                    <asp:TextBox ID="TxtRuhsat" runat="server" CssClass="input" PlaceHolder="Araç Ruhsat No"></asp:TextBox>
                </div>
                <div>
                   
                            <span>Atığın Bulunduğu Adres</span>
                            <asp:DropDownList ID="dllAdres"  runat="server" CssClass="drop" ></asp:DropDownList>
                       
                </div>
                 <br />
                <div>
                  
                            <span>Atık Türü</span>
                            <asp:DropDownList ID="dllTur" runat="server" CssClass="drop"></asp:DropDownList>
                       
                </div>
                 <br />
                <div>
                    
                            <span>R/D İşleminin Yapılacağı Kurum</span>
                            <asp:DropDownList ID="dllKurum"  runat="server" CssClass="drop"></asp:DropDownList>
                    
                </div>
                <br />
                <div class="form-group">

                    <asp:TextBox ID="TasıyıcıAd" runat="server" CssClass="input" PlaceHolder="Taşıyıcı Ad"></asp:TextBox>
                </div>
                <div class="form-group">

                    <asp:TextBox ID="TasıyıcıSoyad" runat="server" CssClass="input" PlaceHolder="Taşıyıcı Soyad"></asp:TextBox>
                </div>
                <div class="form-group">

                    <asp:TextBox ID="TasıyıcıTel" runat="server" CssClass="input" PlaceHolder="Taşıyıcı Telefon"></asp:TextBox>
                </div>
                <div class="form-group">

                    <asp:TextBox ID="IslemTarihi" runat="server" type="datetime-local" CssClass="input" PlaceHolder="İşlem Tarihi"></asp:TextBox>
                </div>
                <div class="from-group">
                    <br />
                    <asp:Button ID="AKayit" runat="server" Text="Kaydet" CssClass="button" OnClick="AKayit_Click" />
                </div>
                <asp:Label ID="lblUyari1" runat="server" Text=""></asp:Label>
                <br />
            </div>
        </div>

    </body>

    </html>
</asp:Content>
