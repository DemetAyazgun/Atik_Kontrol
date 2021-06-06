<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeFile="ButunKullanicilar.aspx.cs" Inherits="Proje.Web.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 42px;
        }
        .auto-style6 {
            width: 232px;
        }
        .auto-style7 {
            width: 105px;
        }
        .auto-style9 {
            width: 32px;
        }
        .auto-style10 {
            width: 231px;
        }
        .auto-style11 {
            width: 21px;
        }
        .auto-style12 {
            width: 176px;
        }
        .auto-style13 {
            width: 59px;
        }
        .auto-style14 {
            width: 113px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="gvUyeler" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="KullaniciID" DataSourceID="dsUyeler" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvUyeler_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField SelectText="Seç" ShowSelectButton="True" />
            <asp:BoundField DataField="KullaniciID" HeaderText="KullaniciID" InsertVisible="False" ReadOnly="True" SortExpression="KullaniciID" />
            <asp:BoundField DataField="Tc" HeaderText="Tc" SortExpression="Tc" />
            <asp:BoundField DataField="Il" HeaderText="Il" SortExpression="Il" />
            <asp:BoundField DataField="Ilce" HeaderText="Ilce" SortExpression="Ilce" />
            <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
            <asp:BoundField DataField="Soyad" HeaderText="Soyad" SortExpression="Soyad" />
            <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
            <asp:BoundField DataField="Eposta" HeaderText="Eposta" SortExpression="Eposta" />
            <asp:BoundField DataField="Sifre" HeaderText="Sifre" SortExpression="Sifre" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="dsUyeler" runat="server" ConnectionString="<%$ ConnectionStrings:AtikUygulamaConnectionString3 %>" DeleteCommand="DELETE FROM [KullaniciKyt] WHERE [KullaniciID] = @KullaniciID" InsertCommand="INSERT INTO KullaniciKyt(ID, Tc, Il, Ilce, Ad, Soyad, Tel, Eposta, Sifre, SifreTekrar, Tc, KullaniciID) VALUES (@ID, @Tc, @Il, @Ilce, @Ad, @Soyad, @Tel, @Eposta, @Sifre,,,)" SelectCommand="SELECT * FROM [KullaniciKyt]" UpdateCommand="UPDATE KullaniciKyt SET Tc = @Tc, Il = @Il, Ilce = @Ilce, Ad = @Ad, Soyad = @Soyad, Tel = @Tel, Eposta = @Eposta, Sifre = @Sifre WHERE (KullaniciID = @KullaniciID)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="ID" Name="KullaniciID" PropertyName="Text" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="Tc" Name="Tc" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Il" Name="Il" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Ilce" Name="Ilce" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Ad" Name="Ad" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Soyad" Name="Soyad" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Tel" Name="Tel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Eposta" Name="Eposta" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Sifre" Name="Sifre" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ID" Name="ID" PropertyName="Text" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="Tc" Name="Tc" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Il" Name="Il" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Ilce" Name="Ilce" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Ad" Name="Ad" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Soyad" Name="Soyad" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Tel" Name="Tel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Eposta" Name="Eposta" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Sifre" Name="Sifre" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ID" Name="KullaniciID" PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <table class="w-100">
            <tr>
                <td class="auto-style11">
                    <asp:Label runat="server" Text="ID:"></asp:Label></td>
                <td class="auto-style13"> <asp:TextBox ID="ID" runat="server" CssClass="offset-sm-0"></asp:TextBox></td>
               <td class="auto-style11">
                    <asp:Label runat="server" Text="Tc:"></asp:Label></td>
                <td class="auto-style10"> <asp:TextBox ID="Tc" runat="server" CssClass="offset-sm-0"></asp:TextBox></td>
               <td class="auto-style9">
                    <asp:Label runat="server" Text="İl:"></asp:Label></td>
                <td class="auto-style14"> <asp:TextBox ID="Il" runat="server"></asp:TextBox></td>
                <td class="auto-style7">
                    <asp:Label runat="server" Text="İlçe:"></asp:Label></td>
                <td class="auto-style6"> <asp:TextBox ID="Ilce" runat="server"></asp:TextBox></td>
                
                
                
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label runat="server" Text="Ad:"></asp:Label></td>
                <td class="auto-style13"> <asp:TextBox ID="Ad" runat="server"></asp:TextBox></td>
                <td class="auto-style11">
                    <asp:Label runat="server" Text="Soyad:"></asp:Label></td>
                <td class="auto-style10"> <asp:TextBox ID="Soyad" runat="server"></asp:TextBox></td>
                <td class="auto-style9">
                    <asp:Label runat="server" Text="Tel:"></asp:Label></td>
                <td class="auto-style14"> <asp:TextBox ID="Tel" runat="server"></asp:TextBox></td>
                <td class="auto-style7">
                    <asp:Label runat="server" Text="Eposta:"></asp:Label></td>
                <td class="auto-style6"> <asp:TextBox ID="Eposta" runat="server"></asp:TextBox></td>
               
                 
            </tr>
           <tr>
                <td class="auto-style5">
                    <asp:Label runat="server" Text="Şifre:"></asp:Label></td>
                <td class="auto-style13"> <asp:TextBox ID="Sifre" runat="server"></asp:TextBox></td>
           </tr>
                <caption>
                    <hr />
                    <tr>
                        <td>
                            <hr />
                        </td>
                        <td class="auto-style13">
                            <hr />
                        </td>
                        <td>
                            <hr />
                        </td>
                        <td>
                            <hr />
                        </td>
                        <td>
                            <hr />
                        </td>
                        <td class="auto-style14">
                            <hr />
                        </td>
                        <td>
                            <hr />
                        </td>
                        <td>
                            <hr />
                        </td>
                    </tr>
                    </tr>
                    <tr>
                       
                        <td>
                            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" OnClick="btnKaydet_Click"/>
                        </td>
                        <td class="auto-style13">
                            <asp:Button ID="btnSil" runat="server" Text="Sil" Width="59px" OnClick="btnSil_Click" />
                            
                        </td>
                        <td>
                            <asp:Label ID="lblUyari" CssClass="alert-danger" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
            </caption>
        </table>
    </asp:Panel>
    <%--    <table class="table table-hover">
        <asp:Repeater runat="server">
            <ItemTemplate>
                <tr>Ad
                    <td>
                        <%#Eval("Ad")  %>
                    </td>
                    <td>
                        <%#Eval("Soyad")  %>
                    </td>
                    <td>
                        <%#Eval("Eposta")  %>
                    </td>
                    <td>
                        <%#Eval("Sifre")  %>
                    </td>
                    <td>
                        <%#Eval("SifreTekrar")  %>
                    </td>
                    <td>
                        <%#Eval("Tel")  %>
                    </td>
                    <td>
                        <%#Eval("Il")  %>
                    </td>
                    <td>
                        <%#Eval("Ilce")  %>
                    </td>
                    <td>
                        <%#Eval("Tc")  %>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>--%>

</asp:Content>
