<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EmployeeLogin.aspx.vb" Inherits="One_Stop_Employee_Self_Service_Portal.EmployeeLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Login</title>
        <style>
        body {
            font-family: Arial;
            background-color: #f5f5f5;
        }
        .login-container {
            width: 350px;
            margin: 100px auto;
            padding: 30px;
            background-color: black;
            color:White;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            border-radius: 10px;
            position:absolute;
            top:7%;
            left:40%;
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 25px;
        }
        .login-container label {
            font-weight: bold;
        }
        .login-container input, .login-container select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .login-container .btn {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            width: 100%;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }
        .login-container .btn:hover {
            background-color: #0056b3;
        }
        .login-container .forgot {
            text-align: center;
            margin-top: 10px;
        }
        .login-container .forgot a {
            color: #007bff;
            text-decoration: none;
        }
        .login-container .forgot a:hover {
            text-decoration: underline;
        }
        .error-message {
            color: red;
            text-align: center;
        }
        #back
        {
            background-repeat:no-repeat;
            background-size:cover;
            }
        #log
        {
            color:Blue;
            }
    </style>
</head>
<body background="images/back.jpg" id="back">
      <form id="form2" runat="server">
        <div class="login-container">
            <h2 id="log">Employee Login</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>

            <label>Username</label>
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter username"></asp:TextBox>

            <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter password"></asp:TextBox>

            <label>User Role</label>
            <asp:DropDownList ID="ddlRole" runat="server">
                <asp:ListItem Text="Select Role" Value="" />
                <asp:ListItem Text="Admin" Value="Admin" />
                <asp:ListItem Text="Employee" Value="Employee" />
            </asp:DropDownList>

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />

            <div class="forgot">
                <asp:HyperLink ID="lnkForgotPassword" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
