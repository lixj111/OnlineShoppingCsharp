<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ordermanagement.aspx.cs" Inherits="admin_ordermanagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="100%" align="center" border="1">
                <tr align="center">
                    <td class="auto-style4">订单编号</td>
                    <td class="auto-style5">商品明细</td>
                    <td class="auto-style6">状态</td>
                    <td class="auto-style4">价格</td>
                    <td class="auto-style4">日期</td>
                    <td class="auto-style4">操作</td>
                </tr>
                <%

                    if (Request.QueryString["action"] == "fahuo")
                    {
                        string id = Request.QueryString["id"];
                        YF.BLL.Order.updatestate(id, 3);
                        YF.JsHelper.AlertAndRedirect("发货成功！", "ordermanagement.aspx");
                    }


                    List<YF.Model.Order> list = YF.BLL.Order.listall();
                    for (int i = 0; i < list.Count; i++)
                    {
                        string state = "";
                        if (list[i].State == 1)
                        {
                            state = "未付款";
                        }
                        else if (list[i].State == 2)
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

                <tr align="center">
                    <td><%=list[i].Id%></td>
                    <td class="auto-style2">
                        <table>
                            <%
                                List<YF.Model.Shopping> shoppinglist = YF.BLL.Shopping.list(list[i].Id);
                                for (int j = 0; j < shoppinglist.Count; j++)
                                {


                            %>
                            <tr>
                                <td>
                                    <img src="/img/<%=shoppinglist[j].Goods.Img %>" width="50" /></td>
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
                    <td><a href="ordermanagement.aspx?id=<%=list[i].Id%>&action=fahuo">发货</a></td>
                </tr>
                <%} %>
            </table>

        </div>
    </form>
</body>
</html>
