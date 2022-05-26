<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<%@ Register src="inc/top.ascx" tagname="top" tagprefix="uc1" %>
<%@ Register src="inc/down.ascx" tagname="down" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            height: 22px;
            width: 447px;
        }
        .auto-style6 {
            height: 29px;
            width: 447px;
        }
        .auto-style7 {
            height: 24px;
            width: 447px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <uc1:top ID="top1" runat="server" />
            <table width="1000" align="center" border="0">
                <tr>
                    <td class="auto-style5" align="right">用户名：</td><td class="auto-style3">
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" align="right">密 码：</td><td class="auto-style4">
                    <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" align="right">姓 名：</td><td class="auto-style1">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" align="right">地 址：</td><td class="auto-style1">
                    <asp:TextBox ID="address" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" align="right">性 别：</td><td class="auto-style1">
                    <asp:DropDownList ID="sex" runat="server">
                        <asp:ListItem Value="1">帅哥</asp:ListItem>
                        <asp:ListItem Value="2">美女</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" align="right">手 机：</td><td class="auto-style1">
                    <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" align="right">邮 箱：</td><td class="auto-style1">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" align="right">Q Q：</td><td class="auto-style1">
                    <asp:TextBox ID="qq" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td><td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="注 册" OnClick="Button1_Click" />
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="登 录" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
            <uc2:down ID="down1" runat="server" />
        </div>

    </form>
</body>
</html>
