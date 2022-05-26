using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YF;
using System.IO;

public partial class admin_Goods_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string goods_id = Request.QueryString["id"];
            YF.Model.Goods mygoods = YF.BLL.Goods.GetGoods(int.Parse(goods_id));
            this.goodsid.Value = mygoods.Id.ToString();
            this.title.Text = mygoods.Title;
            this.price.Text = mygoods.Price.ToString();
            this.num.Text = mygoods.Num.ToString();
            this.detail.Text = mygoods.Detail;
            this.state.Text = mygoods.State.ToString();
            this.imgold.Value = mygoods.Img;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        YF.Model.Goods mygoods = new YF.Model.Goods();
        mygoods.Id = int.Parse(this.goodsid.Value);
        mygoods.Title = this.title.Text;
        mygoods.Price = int.Parse(this.price.Text);
        mygoods.Num = int.Parse(this.price.Text);
        mygoods.Detail = this.detail.Text;
        mygoods.State = int.Parse(this.state.Text);

        if (img.HasFile)
        {
            string filename = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString() + Path.GetExtension(img.FileName);
            string filePath = "~/img/" + filename;
            img.SaveAs(MapPath(filePath));
            mygoods.Img = filename;
        }
        else
        {
            mygoods.Img = this.imgold.Value;
        }

        if (YF.BLL.Goods.update(mygoods))
        {
            YF.JsHelper.AlertAndRedirect("编辑成功", "Goods.aspx");
        }
        else
        {
            YF.JsHelper.AlertAndRedirect("编辑失败", "Goods_add.aspx");
        }
    }
}