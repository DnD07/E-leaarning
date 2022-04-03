<%@ Page Title="" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Learn__E.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            margin-left: 23px;
        }
        .auto-style2 {
            margin-left: 24px;
        }
        .auto-style3 {
            margin-left: 43px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="home.aspx">HOME</a></li>
          </ul>
        </div>
    <form id="form2" runat="server" style=" text-align: center; margin:0; padding:0; background-color: #C0C0C0;">

        <br />
        <br />
        <big> <b>
            <i>
        <br />
        <br />
 Registration<br />
             
                Create new account
            <br />
        <br />
            </i></b></big>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtname" runat="server" Height="26px" Width="180px" BackColor="White" placeholder="Enter Full Name"></asp:TextBox>
        <br />
        <br />
        Username
        <asp:TextBox ID="txtuser" runat="server" Height="26px" Width="180px" padding="20px" BackColor="White" placeholder="Enter Your Username" CssClass="auto-style1"></asp:TextBox>
        <br />
        <br />
        Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtemail" runat="server" Height="26px" Width="180px" padding="20px" BackColor="White" placeholder="Enter Your Username" TextMode="Email"></asp:TextBox>
        <br />
         <br />
        Password
&nbsp;<asp:TextBox ID="txtpass" runat="server" Height="26px" Width="180px" placeholder="Enter Password" CssClass="auto-style2" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:DropDownList ID="drprole" runat="server">
            <asp:ListItem>Student</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Contact<asp:TextBox ID="txtcon" runat="server" Height="26px" Width="180px" CssClass="auto-style3" ></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnRegister" runat="server" Text="Register" Csslass="style-1" OnClick="btnRegister_Click" />
        <br />
        <br />
        <strong>Copyright © 2021-2022 <a href="Home.aspx">E-learning</a>.</strong><br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br /><br />
        <br />
        <br />
        <br />
        
        
        <br />
        <br />
        </form>
   
        
       
       
   
</asp:Content>
