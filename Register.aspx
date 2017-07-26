<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MVC.Views.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
        * {
            margin: 0px;
            padding: 0px;
        }

        #background {
            width: 100%;
            height: 790px;
            background-image: url(register2.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }

        #title {
            width: 30%;
            height: 10%;
            font-family: 微软雅黑;
            font-size: 60px;
            color: #00EE76;
            left: 40%;
            top: 2%;
            position: relative;
        }

        #enrollwindow {
            width: 60%;
            height: 80%;
            left: 20%;
            top: 5%;
            position: relative;
            background-color: #DCDCDC;
            border: 10px outset white;
        }

        #enroll1 {
            left: 32%;
            top: 5%;
            position: relative;
            font-family: 微软雅黑;
            font-size: 20px;
        }

        #enroll2 {
            left: 32%;
            top: 10%;
            position: relative;
            font-family: 微软雅黑;
            font-size: 20px;
        }

        #Button2 {
            height: 50px;
            width: 80px;
            background-color: green;
            text-align: center;
            left: 12%;
            top: 100px;
            position: relative;
        }
        #Button1 {
            height: 50px;
            width: 80px;
            background-color: green;
            text-align: center;
            left: 6%;
            top: 100px;
            position: relative;
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
            top: 30px;
            left: 10%;
            color: red;
            position: relative;
        }
    </style>

<body>
    <form id="form1" runat="server">
        <div id="background">
            <div id="title">在线注册</div>
            <div id="enrollwindow" runat="server">
                <div id="enroll1">
                    &nbsp&nbsp&nbsp 用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                    &nbsp&nbsp&nbsp 密&nbsp&nbsp 码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><br />
                    确认密码：<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <hr style="top: 30px; position: relative;" />
                <div id="enroll2">
                    &nbsp&nbsp&nbsp 姓&nbsp&nbsp 名：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
                    &nbsp&nbsp&nbsp 年&nbsp&nbsp 龄：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
                    &nbsp&nbsp&nbsp 院&nbsp&nbsp 系：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
                    &nbsp&nbsp&nbsp 专&nbsp&nbsp 业：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br />
                    &nbsp&nbsp&nbsp 电&nbsp&nbsp 话：<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><br />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="注册" /><input id="Button2" type="reset" value="重置" />
                    
                </div>
            </div>
        </div>
    </form>
</body>
</html>
