<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="Student.add" %>

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
            background-image: url(register.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }
        
        #em {
           margin:40px auto;           
            top: 10%;
            position: relative;
            font-family: 微软雅黑;
            font-size: 30px; 
        }   
        
       

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="background">
    <center id="em">

    <h2>用户修改</h2>
          <asp:Repeater ID="Repeater2" runat="server">           
            <ItemTemplate>
                <table border="1" style="background-color:Orange" >
                <td><input  type="hidden" name="id" value="<%#Eval("id") %>"/></td>
                 <tr >
                        <td width="103px">用户名</td>
                        <td width="100px"><input id="userName" name="userName" value="<%#Eval("UserName") %>"  style="width:100px; height=300px;" />    </td>
                 </tr>
                 <tr>
                        <td width="103px">密码</td>
                        <td width="100px"><input id="passWord" name="passWord" value="<%#Eval("PassWord") %>" size="10" /></td>
                 </tr>
                 <tr>
                        <td width="103px">姓名</td>
                        <td width="100px"><input id="nickName" name="nickName" value="<%#Eval("NickName") %>" size="10" /> </td>
                 </tr>
                 <tr>
                        <td width="103px">年龄</td>
                        <td width="100px"><input id="age" name="age"  value="<%#Eval("Age") %>" size="10" /></td>
                 </tr>
                 <tr>
                       <td width="103px">院系</td>
                       <td width="100px"><input id="dep" name="dep" value="<%#Eval("Dep") %>" size="10" /></td>
                 </tr>
                 <tr>
                        <td width="103px">专业</td>
                        <td width="100px"><input id="pro" name="pro" value="<%#Eval("Pro") %>" size="10" /></td>
                 </tr>
                 <tr>
                        <td width="103px">电话</td>
                        <td width="100px"><input id="telephone" name="telephone" value="<%#Eval("Telphone") %>" size="10" /></td>
                 </tr>
                 

                </table>
                <table>
                <tr>
                    <td><input  id="Button1" type="button" value="确认修改" runat="server" onserverclick="Button1_Click"/></td>
                    <td><input  id="Button2" type="reset" value="重置" /></td>
                 </tr>
                </table>
            </ItemTemplate>
  
        </asp:Repeater>
        </center>
    </div>
    </form>
</body>
</html>
