﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Kullanici.aspx.cs" Inherits="Proje.Web.Kullanici" %>

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
                    :root {
              --input-padding-x: 1.5rem;
              --input-padding-y: .75rem;
            }

            body {
              background: #007bff;
              background: linear-gradient(to right, #0062E6, #33AEFF);
            }

            .card-signin {
              border: 0;
              border-radius: 1rem;
              box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
            }

            .card-signin .card-title {
              margin-bottom: 2rem;
              font-weight: 300;
              font-size: 1.5rem;
            }

            .card-signin .card-body {
              padding: 2rem;
            }

            .form-signin {
              width: 100%;
            }

            .form-signin .btn {
              font-size: 80%;
              border-radius: 5rem;
              letter-spacing: .1rem;
              font-weight: bold;
              padding: 1rem;
              transition: all 0.2s;
            }

            .form-label-group {
              position: relative;
              margin-bottom: 1rem;
            }

            .form-label-group input {
              height: auto;
              border-radius: 2rem;
            }

            .form-label-group>input,
            .form-label-group>label {
              padding: var(--input-padding-y) var(--input-padding-x);
            }

            .form-label-group>label {
              position: absolute;
              top: 0;
              left: 0;
              display: block;
              width: 100%;
              margin-bottom: 0;
              /* Override default `<label>` margin */
              line-height: 1.5;
              color: #495057;
              border: 1px solid transparent;
              border-radius: .25rem;
              transition: all .1s ease-in-out;
            }

            .form-label-group input::-webkit-input-placeholder {
              color: transparent;
            }

            .form-label-group input:-ms-input-placeholder {
              color: transparent;
            }

            .form-label-group input::-ms-input-placeholder {
              color: transparent;
            }

            .form-label-group input::-moz-placeholder {
              color: transparent;
            }

            .form-label-group input::placeholder {
              color: transparent;
            }

            .form-label-group input:not(:placeholder-shown) {
              padding-top: calc(var(--input-padding-y) + var(--input-padding-y) * (2 / 3));
              padding-bottom: calc(var(--input-padding-y) / 3);
            }

            .form-label-group input:not(:placeholder-shown)~label {
              padding-top: calc(var(--input-padding-y) / 3);
              padding-bottom: calc(var(--input-padding-y) / 3);
              font-size: 12px;
              color: #777;
            }

            .btn-google {
              color: white;
              background-color: #ea4335;
            }

            .btn-facebook {
              color: white;
              background-color: #3b5998;
            }

            /* Fallback for Edge
            -------------------------------------------------- */

            @supports (-ms-ime-align: auto) {
              .form-label-group>label {
                display: none;
              }
              .form-label-group input::-ms-input-placeholder {
                color: #777;
              }
            }

            /* Fallback for IE
            -------------------------------------------------- */

            @media all and (-ms-high-contrast: none),
            (-ms-high-contrast: active) {
              .form-label-group>label {
                display: none;
              }
              .form-label-group input:-ms-input-placeholder {
                color: #777;
              }
            }
    </style>
</head>

<body>
<form id="form1" runat="server">  
    <!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->
   <div class="container" style="width:25%;background-color:white;height:350px;margin-top:90px;border-radius:10px;">
       <div class="form-group">
           <h5 class="text-center">Kullanıcı Girişi</h5>
           
       </div>
       <hr />
       <div class="form-group">
           <b>Eposta</b>
           <asp:TextBox ID="TxtGiris" CssClass="form-control" runat="server"></asp:TextBox>

       </div>
       <div class="form-group">
           <b>Şifre</b>
           <asp:TextBox ID="TxtSifre" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
       </div>
       <div class="form-group">
           <asp:CheckBox ID="hatirla" Text="Beni Hatırla" ForeColor="#d5d5d5" runat="server" />
       </div>
       <div class="form-group">
           <asp:Button ID="BtnGiris" CssClass="btn btn-dark form-control" runat="server" Text="Giriş Yap" OnClick="BtnGiris_Click" />
       </div>
       <div class="form-group">
           <div class="form-group" style="float:left;color:lightgray">
               <a href ="KullaniciKyt.aspx">Yeni Kullanıcı</a>
           </div>
       </div>
        <div class="form-group">
           <div class="form-group" style="float:right;color:lightgray">
               <a href ="#">Şifremi Unuttum</a>
           </div>
       </div>
   </div>
 </form>
</body>

</html>
