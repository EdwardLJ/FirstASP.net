<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePwd.aspx.cs" Inherits="Student.UpdatePwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            width: 40%;
            height: 40%;
            left: 30%;
            top: 10%;
            position: relative;
            background-color: #DCDCDC;
            border: 10px outset white;
        }

        #enroll1 
        {
            margin:40px auto;
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
            height: 40px;
            width: 80px;
            background-color: cyan;
            text-align: center;
            left: 40%;
            top: 20px;
            position: relative;
        }
        #Button1 {
            height: 40px;
            width: 80px;
            background-color: cyan;
            text-align: center;
            left: 32%;
            top: 20px;
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
            top: 80px;
            left: 10%;
            color: red;
            position: relative;
        }
  
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="background">
        <div id="title">修改密码</div>
            <div id="enrollwindow" runat="server">
                <div id="enroll1">
                    &nbsp&nbsp&nbsp 用户名：<asp:TextBox ID="TextBox1" runat="server" Height="20px" ></asp:TextBox><br />
                    原始密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="20px"></asp:TextBox><br />
                     &nbsp&nbsp 新密码：<asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Height="20px"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" Text="确认修改" /><input id="Button2" type="reset" value="重置" />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
             </div>
    </div>
    </form>
</body>
</html>
