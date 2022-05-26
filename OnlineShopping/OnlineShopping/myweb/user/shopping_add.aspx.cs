using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YF;

public partial class user_shopping_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        YF.Model.User myuser = new YF.Model.User();
        myuser = (YF.Model.User)YF.SessionHelper.GetSession("user");//强制转换
        if (myuser != null)
        {
            YF.Model.Shopping shopping = new YF.Model.Shopping();

            int id = int.Parse(Request.QueryString["id"].ToString());
            YF.Model.Goods goods = YF.BLL.Goods.GetGoods(id);
            shopping.Goods = goods;
            shopping.User = myuser;
            shopping.Num = 1;
            shopping.State = 0;
            shopping.Adddate = DateTime.Now;

            if (YF.BLL.Shopping.list(goods.Id, myuser.Id, 0).Count > 0)
            {
                YF.BLL.Shopping.updatenum(goods.Id, myuser.Id, 0);
                YF.JsHelper.AlertAndRedirect("添加成功！", "/user/shopping.aspx");
            }
            else
            {
                if (YF.BLL.Shopping.add(shopping))
                {
                    YF.JsHelper.AlertAndRedirect("添加成功！", "/user/shopping.aspx");

                }
                else
                {
                    YF.JsHelper.AlertAndRedirect("添加失败！", "/user/shopping.aspx");
                }

            }
        }
        else
        {
            YF.JsHelper.AlertAndRedirect("尚未登录！", "/Login.aspx");
        }
    }
}