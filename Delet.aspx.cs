using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MVC.Controllers;

namespace Student
{
    public partial class Delet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request["id"];
            Operation Op = new Operation();
            Op.Delet(id);
            Response.Write("<script>alert('您已删除成功！');location.href='../Login_In.aspx'</script>");
        }
    }
}