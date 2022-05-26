<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goods.aspx.cs" Inherits="goods" %>

<%@ Register src="inc/top.ascx" tagname="top" tagprefix="uc1" %>
<%@ Register src="inc/down.ascx" tagname="down" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:top ID="top1" runat="server" />
            <table width="1000" align="center" border="0" class="auto-style1">
            <tr><td rowspan="4" style="width:200px;">
                <asp:Image ID="img" runat="server" />

                </td><td>商品：<asp:Label ID="title" runat="server" Text="Label"></asp:Label>
                </td></tr>
            
            <tr><td>价格：<asp:Label ID="price" runat="server" Text="Label"></asp:Label>
                </td></tr>
            
            <tr><td>库存:<asp:Label ID="num" runat="server" Text="Label"></asp:Label>
                </td></tr>
            
            <tr><td><a href="/user/shopping_add.aspx?id=<%=Request.QueryString["id"] %>">购买</a></td></tr>
            
            </table>

            <table width="1000" align="center" border="0" class="auto-style1">
                <tr><td>
                    <asp:Label ID="detail" runat="server" Text="Label"></asp:Label>
                    </td></tr>
            </table>
            <uc2:down ID="down1" runat="server" />
        </div>
    </form>
</body>
</html>
