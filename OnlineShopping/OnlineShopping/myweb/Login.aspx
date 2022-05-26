<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register src="inc/down.ascx" tagname="down" tagprefix="uc1" %>
<%@ Register src="inc/top.ascx" tagname="top" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            width: 754px;
        }
        .auto-style3 {
            width: 721px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc2:top ID="top1" runat="server" />
            <table width="1000" align="center">
                <tr><td align="right" class="auto-style3">用户名：</td><td class="auto-style2">
                    <asp:TextBox ID="username" runat="server" CssClass="auto-style1"></asp:TextBox>
                    </td></tr>
                <tr><td align="right" class="auto-style3">密 码：</td><td class="auto-style2">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    </td></tr>
                <tr><td class="auto-style3">&nbsp;</td><td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="登 录" OnClick="Button1_Click" />
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="注 册" OnClick="Button2_Click" />
                    </td></tr>
            </table>
            <uc1:down ID="down2" runat="server" />
        </div>

    </form>
</body>
</html>
