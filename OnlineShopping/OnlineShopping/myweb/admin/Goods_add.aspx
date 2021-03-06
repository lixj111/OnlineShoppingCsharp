<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Goods_add.aspx.cs" Inherits="admin_Goods_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 209px;
        }
        .auto-style2 {
            width: 60px;
        }
        .auto-style3 {
            width: 60px;
            height: 26px;
        }
        .auto-style4 {
            width: 209px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1";width="80%">
                <tr><td class="auto-style2">名称：</td><td class="auto-style1">
                    <asp:TextBox ID="title" runat="server" Width="400px"></asp:TextBox>
                    </td></tr>
                <tr><td class="auto-style2">价格：</td><td class="auto-style1">
                    <asp:TextBox ID="price" runat="server"></asp:TextBox>
                    </td></tr>
                <tr><td class="auto-style2">数量：</td><td class="auto-style1">
                    <asp:TextBox ID="num" runat="server"></asp:TextBox>
                    </td></tr>
                <tr><td class="auto-style2">封面：</td><td class="auto-style1">
                    <asp:FileUpload ID="img" runat="server" />
                    </td></tr>
                <tr><td class="auto-style2">详情：</td><td class="auto-style1">
                    <asp:TextBox ID="detail" runat="server" Height="80px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                    </td></tr>
                <tr><td class="auto-style2">状态：</td><td class="auto-style1">
                    <asp:DropDownList ID="state" runat="server">
                        <asp:ListItem Value="1">上线</asp:ListItem>
                        <asp:ListItem Value="0">下线</asp:ListItem>
                    </asp:DropDownList>
                    </td></tr>
                <tr><td class="auto-style2">&nbsp;</td><td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="发 布" OnClick="Button1_Click" />
                    </td></tr>
                </table>
        </div>
    </form>
</body>
</html>
