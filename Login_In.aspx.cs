using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MVC.Models;
using MVC.Controllers;

namespace MVC.Views
{
    public partial class Login_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Click += Button1_Click;
            List<Person> list = new Operation().SelectStd();
            Repeater1.DataSource = list;//指向要绑定的数据
            Repeater1.DataBind();//绑定数据
        }

        public void Button1_Click(object sender, EventArgs e)
        {
            Repeater1.DataSource = null;
            Repeater1.DataBind();//绑定数据

            string msg = TextBox1.Text;
            Operation Op = new Operation();
            List<Person> list2 = Op.SelectByMsg(msg);
            Repeater2.DataSource = list2;//指向要绑定的数据
            Repeater2.DataBind();//绑定数据


        }

        //    if(!Page.IsPostBack)
        //    {
        //        List<Person> list = new Operation().SelectStd();
        //        GridView1.DataSource = list;//指向要绑定的数据
        //        GridView1.DataBind();//绑定数据
        //    }

        //}

        ////更改页数
        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //    List<Person> list = new Operation().SelectStd();
        //    //绑定数据  
        //    GridView1.DataSource = list;
        //    GridView1.DataBind();  
        //}
    }
}