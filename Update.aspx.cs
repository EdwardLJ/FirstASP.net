using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MVC.Models;
using MVC.Controllers;

namespace Student
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            List<Person> list = new Operation().updateByid(id);
            Repeater2.DataSource = list;//指向要绑定的数据
            Repeater2.DataBind();//绑定数据
        }

       protected void Button1_Click(object sender, EventArgs e)
        {
            Person p = new Person();
            p.Id = int.Parse(Request["id"]);
            p.UserName = Request["userName"];
            p.PassWord = Request["passWord"];
            p.NickName = Request["nickName"];
            p.Age = int.Parse(Request["age"]);
            p.Dep = Request["dep"];
            p.Pro = Request["pro"];
            p.Telphone = int.Parse(Request["telephone"]);

            Operation Op = new Operation();
            Op.Update(p);
            Response.Write("<script>alert('恭喜" + p.UserName + ",您已修改成功！');location.href='../Login_In.aspx';</script>");
         
        }
    }
}