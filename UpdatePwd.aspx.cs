using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MVC.Controllers;

namespace Student
{
    public partial class UpdatePwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Click += Button1_Click;
        }

        public void Button1_Click(object sender, EventArgs e) 
        {
            string userName = TextBox1.Text;
            string passWord = TextBox2.Text;
            string newPwd = TextBox3.Text;
            Operation Op = new Operation();
            bool has = Op.Login(userName,passWord);
            if (has)
            {
                Op.UpdatePwd(userName, newPwd);
                Response.Write("<script>alert('恭喜" + userName + ",密码修改成功!请重新登录');location.href='../Login.aspx';</script>");

            }
            else 
            {
                Label1.Text = "，用户密码不存在，请重新输入！";
                return;
            }

        }
    }
}