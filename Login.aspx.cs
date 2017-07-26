using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MVC.Controllers;

namespace MVC.Views
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Click += Button1_Click;//登录点击事件
            Button2.Click += Button2_Click;//注册点击事件
        }

        void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        void Button1_Click(object sender, EventArgs e)
        {
            Operation Op = new Operation();
            bool Has =Op.Login(TextBox1.Text, TextBox2.Text);
            if (Has)
            {                
                string nickName = Op.SelectNickName(TextBox1.Text);
                Session["nickName"] = nickName;
                Response.Redirect("Login_In.aspx");
            }
            else
            {
                if (TextBox1.Text == "" || TextBox2.Text == "")
                {
                    Label1.Text = "用户名密码不能为空！";
                }
                 else
                {
                     Label1.Text = "账号密码错误！";
                }
            }
           

        }
    }
}