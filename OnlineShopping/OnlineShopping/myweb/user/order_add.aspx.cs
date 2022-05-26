using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YF;

public partial class user_order_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int zongjia = 0;
        YF.Model.User myuser = new YF.Model.User();
        myuser = (YF.Model.User)YF.SessionHelper.GetSession("user");//强制转换
        List<YF.Model.Shopping> list = YF.BLL.Shopping.list(myuser.Id);
        for (int i = 0; i < list.Count; i++)
        {
            zongjia = zongjia + list[i].Goods.Price * list[i].Num;
        }
        this.zongjia.Text = zongjia.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        YF.Model.User myuser = new YF.Model.User();
        myuser = (YF.Model.User)YF.SessionHelper.GetSession("user");//强制转换

        string dingdanbianhao = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString();
        YF.Model.Order order = new YF.Model.Order();
        order.Id = dingdanbianhao;
        order.User = myuser;
        order.Amount = int.Parse(this.zongjia.Text);
        order.State = 1;
        order.Adddate = DateTime.Now;

        if (YF.BLL.Order.add(order))
        {
            YF.BLL.Shopping.update_afterorder(order.Id, order.User.Id, 0);
            YF.JsHelper.AlertAndRedirect("下单成功！", "/user/order.aspx");
        }
        else
        {
            YF.JsHelper.AlertAndRedirect("下单失败！", "/user/order.aspx");
        }
    }
}