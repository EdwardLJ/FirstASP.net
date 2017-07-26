using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MVC.Controllers;
using MVC.Models;

namespace MVC.Views
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Click += Button1_Click;
        }

        /// <summary>
        /// 注册点击
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void Button1_Click(object sender, EventArgs e)
        {
            foreach (Control Con in enrollwindow.Controls)
            {
                if (Con is TextBox)
                {
                    TextBox TB = Con as TextBox;
                    if (TB.Text == "")
                    {
                        Label1.Text = "输入不能为空！";
                        return;
                    }
                    else
                    {
                        if (TextBox2.Text != TextBox3.Text)
                        {
                            Label1.Text = "两次密码输入不一致！";
                            return;
                        }
                        else
                        {
                            bool Has = new Operation().selectcode(TextBox1.Text);
                            if (Has)
                            {
                                Label1.Text = "账号已存在！";
                                return;
                            }
                        }
                    }
                }
            }
            Person p = new Person();
            p.UserName = TextBox1.Text;
            p.PassWord = TextBox2.Text;
            p.NickName = TextBox4.Text;
            p.Age = int.Parse(TextBox5.Text);
            p.Dep = TextBox6.Text;
            p.Pro = TextBox7.Text;
            p.Telphone = int.Parse(TextBox8.Text);
     
            Operation Op = new Operation();
            Op.insertStd(p);
            Response.Write("<script>alert('恭喜" + TextBox1.Text + ",您已注册成功!请登录！');location.href='../Login.aspx';</script>");
         
        }
    }
}