<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_In.aspx.cs" Inherits="MVC.Views.Login_In" %>

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
            background-image: url(list.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }
    #top
    {
        text-align:right;
        }
</style>
<body>
    <form id="form1" runat="server" >
    <div id="background">
        <h4 id="top">欢迎 <%=Session["nickName"]%> 登录！&nbsp;&nbsp;&nbsp;&nbsp<a href="../Login.aspx">登出</a>&nbsp;&nbsp;&nbsp;&nbsp<a href="UpdatePwd.aspx">修改密码</a></h4>
        <center>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="根据用户名查询" />
        <asp:Repeater ID="Repeater1" runat="server">
           
            <HeaderTemplate>
                <table border="1">
                    <tr style="background-color:Orange">
                        <td width="100px">用户名</td>
                        <td width="100px">密码</td>
                        <td width="100px">姓名</td>
                        <td width="100px">年龄</td>
                        <td width="100px">院系</td>
                        <td width="100px">专业</td>
                        <td width="100px">电话</td>
                        <td width="100px">操作</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table border="1" >
                    <tr style="background-color:cyan">
                        
                        <td width="100px"><%#Eval("UserName") %></td>
                        <td width="100px"><%#Eval("PassWord") %></td>
                        <td width="100px"><%#Eval("NickName") %></td>
                        <td width="100px"><%#Eval("Age") %></td>
                        <td width="100px"><%#Eval("Dep") %></td>
                        <td width="100px"><%#Eval("Pro") %></td>
                        <td width="100px"><%#Eval("Telphone") %></td>
                        <td width="100px"><a href='Update.aspx?id=<%#Eval("Id") %>'>修改</a>/<a  href=" javascript:if(confirm('确认删除啊吗啊？'))location='Delet.aspx?id=<%#Eval("Id") %>'"> 删除</a></td>
                    </tr>
                </table>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <table border="1">
                    <tr style="background-color:Lime">
                      
                        <td width="100px"><%#Eval("UserName") %></td>
                        <td width="100px"><%#Eval("PassWord") %></td>
                        <td width="100px"><%#Eval("NickName") %></td>
                        <td width="100px"><%#Eval("Age") %></td>
                        <td width="100px"><%#Eval("Dep") %></td>
                        <td width="100px"><%#Eval("Pro") %></td>
                        <td width="100px"><%#Eval("Telphone") %></td>
                        <td width="100px"><a href='Update.aspx?id=<%#Eval("Id") %>'>修改</a>/<a  href=" javascript:if(confirm('确认删除啊吗啊？'))location='Delet.aspx?id=<%#Eval("Id") %>'"> 删除</a></td>
                    </tr>
                </table>
            </AlternatingItemTemplate>
            <FooterTemplate></FooterTemplate>
        </asp:Repeater>

        <asp:Repeater ID="Repeater2" runat="server">
           
            <HeaderTemplate>
                <table border="1">
                    <tr style="background-color:Orange">
                        <td width="100px">用户名</td>
                        <td width="100px">密码</td>
                        <td width="100px">姓名</td>
                        <td width="100px">年龄</td>
                        <td width="100px">院系</td>
                        <td width="100px">专业</td>
                        <td width="100px">电话</td>
                        <td width="100px">操作</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table border="1" >
                    <tr style="background-color:cyan">
                        
                        <td width="100px"><%#Eval("UserName") %></td>
                        <td width="100px"><%#Eval("PassWord") %></td>
                        <td width="100px"><%#Eval("NickName") %></td>
                        <td width="100px"><%#Eval("Age") %></td>
                        <td width="100px"><%#Eval("Dep") %></td>
                        <td width="100px"><%#Eval("Pro") %></td>
                        <td width="100px"><%#Eval("Telphone") %></td>
                        <td width="100px"><a href='Update.aspx?id=<%#Eval("Id") %>'>修改</a>/<a  href=" javascript:if(confirm('确认删除啊吗啊？'))location='Delet.aspx?id=<%#Eval("Id") %>'"> 删除</a></td>
                    </tr>
                </table>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <table border="1">
                    <tr style="background-color:Lime">
                      
                        <td width="100px"><%#Eval("UserName") %></td>
                        <td width="100px"><%#Eval("PassWord") %></td>
                        <td width="100px"><%#Eval("NickName") %></td>
                        <td width="100px"><%#Eval("Age") %></td>
                        <td width="100px"><%#Eval("Dep") %></td>
                        <td width="100px"><%#Eval("Pro") %></td>
                        <td width="100px"><%#Eval("Telphone") %></td>
                        <td width="100px"><a href='Update.aspx?id=<%#Eval("Id") %>'>修改</a>/<a  href=" javascript:if(confirm('确认删除啊吗啊？'))location='Delet.aspx?id=<%#Eval("Id") %>'"> 删除</a></td>
                    </tr>
                </table>
            </AlternatingItemTemplate>
            <FooterTemplate></FooterTemplate>
        </asp:Repeater>
        </center>
    </div>
    </form>
    
</body>
</html>
