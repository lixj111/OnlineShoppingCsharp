<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="user_order" %>

<%@ Register src="../inc/top.ascx" tagname="top" tagprefix="uc1" %>
<%@ Register src="../inc/down.ascx" tagname="down" tagprefix="uc2" %>

<%@ Register src="../inc/usermenu.ascx" tagname="usermenu" tagprefix="uc3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 154px;
        }
        .auto-style2 {
            width: 115px;
        }
        .auto-style3 {
            width: 76px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 115px;
            height: 26px;
        }
        .auto-style6 {
            width: 76px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:top ID="top1" runat="server" />
            <table width="1000" align="center" border="0">
                <tr><td width="200" class="auto-style1" valign="top">
                    <uc3:usermenu ID="usermenu1" runat="server" />
                    </td><td align="center">
                        <table width="100%" align="center" border="1">
                            <tr align="center"><td class="auto-style4">订单编号</td><td class="auto-style5">商品明细</td><td class="auto-style6">状态</td><td class="auto-style4">价格</td><td class="auto-style4">日期</td><td class="auto-style4">操作</td></tr>
                            <%

                                string id=Request.QueryString["id"];

                                if (Request.QueryString["action"] == "fukuan")
                                {
                                    YF.BLL.Order.updatestate(id, 2);
                                    YF.JsHelper.AlertAndRedirect("付款成功！", "order.aspx");
                                }
                                else if(Request.QueryString["action"]=="over")
                                {
                                    YF.BLL.Order.updatestate(id, 4);
                                    YF.JsHelper.AlertAndRedirect("订单结束！", "order.aspx");
                                }


                                YF.Model.User myuser = new YF.Model.User();
                                myuser = (YF.Model.User)YF.SessionHelper.GetSession("user");//强制转换
                                List<YF.Model.Order> list = YF.BLL.Order.list(myuser.Id);
                                for (int i = 0; i < list.Count; i++)
                                {
                                    string state = "";
                                    if (list[i].State == 1)
                                    {
                                        state = "未付款";
                                    }else if (list[i].State == 2)
                                    {
                                        state = "已付款";
                                    }
                                    else if (list[i].State == 3)
                                    {
                                        state = "已发货";
                                    }
                                    else
                                    {
                                        state = "已完成";
                                    }
                            %>

                            <tr align="center"><td><%=list[i].Id%></td>
                                <td class="auto-style2">
                                    <table>
                                        <%
                                            List<YF.Model.Shopping> shoppinglist = YF.BLL.Shopping.list(list[i].Id);
                                            for (int j = 0; j < shoppinglist.Count; j++)
                                            {


                                        %>
                                        <tr>
                                            <td><img src="/img/<%=shoppinglist[j].Goods.Img %>" width="50" /></td>
                                            <td><%=shoppinglist[j].Goods.Title %>：</td>
                                            <td><%=shoppinglist[j].Num %>*<%=shoppinglist[j].Goods.Price %></td>
                                            <td>=<%=shoppinglist[j].Num*shoppinglist[j].Goods.Price %></td>
                                        </tr>
                                        <%   }
                                        %>
                                    </table>
                                </td>
                                <td class="auto-style3"><%=state %></td>
                                <td><%=list[i].Amount %></td>
                                <td><%=list[i].Adddate %></td>
                                <td><a href="order.aspx?id=<%=list[i].Id%>&action=fukuan">付款</a>|<a href="order.aspx?id=<%=list[i].Id%>&action=over">完成</a></td>
                            </tr>
                            <%} %>
                        </table>
                        <br />
                        <table width="100%" align="center" border="0">
                            <tr><td align="right">
                                &nbsp;</td></tr>
                        </table>
                    </td></tr>

            </table>
        </div>
        <uc2:down ID="down1" runat="server" />
    </form>
</body>
</html>

