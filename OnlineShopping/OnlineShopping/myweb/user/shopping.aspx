<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shopping.aspx.cs" Inherits="user_shopping" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:top ID="top1" runat="server" />
            <table width="1000" align="center" border="0">
                <tr><td width="200" class="auto-style1" valign="top">
                    <uc3:usermenu ID="usermenu1" runat="server" />
                    </td><td align="center"  valign="top">
                        <table width="100%" align="center" border="1" >
                            <tr align="center"><td>编号</td><td class="auto-style2">商品</td><td class="auto-style3">图片</td><td>价格</td><td>数量</td><td>操作</td></tr>
                            <%

                                string id=Request.QueryString["id"];
                                if (id != null)
                                {

                                    YF.BLL.Shopping.del(int.Parse(id));
                                    YF.JsHelper.AlertAndRedirect("删除成功！", "shopping.aspx");
                                }

                                
                                YF.Model.User myuser = new YF.Model.User();
                                myuser = (YF.Model.User)YF.SessionHelper.GetSession("user");//强制转换
                                List<YF.Model.Shopping> list = YF.BLL.Shopping.list(myuser.Id);
                                for (int i = 0; i < list.Count; i++)
                                {

                            %>

                            <tr align="center"><td><%=i+1%></td><td class="auto-style2"><%=list[i].Goods.Title %></td><td class="auto-style3"><img src="/img/<%=list[i].Goods.Img %>" width="60" /></td><td><%=list[i].Goods.Price %></td><td><%=list[i].Num %></td><td><a href="shopping.aspx?id=<%=list[i].Id %>">删除</a></td></tr>
                            <%} %>
                        </table>
                        <br />
                        <table width="100%" align="center" border="0">
                            <tr><td align="right">
                                <asp:Button ID="Button1" runat="server" Text="我要下单" OnClick="Button1_Click" />
                                </td></tr>
                        </table>
                    </td></tr>

            </table>
        </div>
        <uc2:down ID="down1" runat="server" />
    </form>
</body>
</html>

