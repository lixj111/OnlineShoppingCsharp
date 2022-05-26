using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YF;

public partial class goods : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        YF.Model.Goods goods = YF.BLL.Goods.GetGoods(int.Parse(id));
        this.title.Text = goods.Title;
        this.price.Text = goods.Price.ToString();
        this.num.Text = goods.Num.ToString();
        this.detail.Text = goods.Detail;
        this.img.ImageUrl = "img/"+goods.Img.ToString();
        this.img.Width = 180;
    }
}