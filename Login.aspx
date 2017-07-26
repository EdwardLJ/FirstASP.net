<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MVC.Views.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        #background {
            height: 800px;
            width: 100%;
            position: relative;
            background-image: url(login.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }

        #loginwindow {
            width: 40%;
            height: 40%;
            left: 50%;
            top: 35%;
            position: relative;
            background-color: #DCDCDC;
            border: 10px outset white;
        }

        #login {
            font-family: 微软雅黑;
            font-size: 20px;
            left: 20%;
            top: 22%;
            position: relative;
        }

        #TextBox1 {
            top: 22px;
            left: 35%;
            position: relative;
        }

        #TextBox2 {
            top: 27px;
            left: 35%;
            position: relative;
        }

        #Button1 {
            width: 70px;
            height: 30px;
            left: -8%;
            top: 80px;
            position: relative;
            background-color: #00FF7F;
        }

        #Button2 {
            width: 70px;
            height: 30px;
            left: -4.1%;
            top: 80px;
            position: relative;
            background-color: #00FF7F;
        }
        #Button3 {
            width: 70px;
            height: 30px;
            left: -0.6%;
            top: 80px;
            position: relative;
            background-color: #00FF7F;
        }

        #Label1 {
            color: red;
            left: -15%;
            top: 130px;
            position: relative;
        }
    </style>
</head>


<body>
    <form id="form1" runat="server">
        <div id="background">
            <div id="loginwindow">
                <div id="login">
                    用户名：<br />
                    密&nbsp&nbsp 码：
                </div>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="登录" />
                <asp:Button ID="Button2" runat="server" Text="注册" />
                <input  id="Button3" type="reset" value="重置"/>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
