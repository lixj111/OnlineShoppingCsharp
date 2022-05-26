<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_edit.aspx.cs" Inherits="user_user_edit" %>

<%@ Register src="../inc/top.ascx" tagname="top" tagprefix="uc1" %>
<%@ Register src="../inc/down.ascx" tagname="down" tagprefix="uc2" %>

<%@ Register src="../inc/usermenu.ascx" tagname="usermenu" tagprefix="uc3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:top ID="top1" runat="server" />
            <table width="1000" align="center" border="0">
                <tr><td width="200" class="auto-style1">
                    <uc3:usermenu ID="usermenu1" runat="server" />
                    </td>
                    <td align="center">
                <table align="center" width="100%"  border="0" class="auto-style3">
                <tr>
                    <td class="auto-style4" align="right">密 码：</td><td align="left">
                    <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">姓 名：</td><td align="left">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">地 址：</td><td align="left">
                    <asp:TextBox ID="address" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">性 别：</td><td class="auto-style1" align="left">
                    <asp:DropDownList ID="sex" runat="server">
                        <asp:ListItem Value="1">帅哥</asp:ListItem>
                        <asp:ListItem Value="2">美女</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">手 机：</td><td class="auto-style1" align="left">
                    <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">邮 箱：</td><td class="auto-style1" align="left">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="right">Q Q：</td><td class="auto-style1" align="left">
                    <asp:TextBox ID="qq" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td><td align="left">
                    <asp:Button ID="Button1" runat="server" Text="保存信息" OnClick="Button1_Click" style="height: 27px" />
                    &nbsp;&nbsp;</td>
                </tr>
            </table>
                    </td></tr>
                    

            </table>
        </div>
        <uc2:down ID="down1" runat="server" />
    </form>
</body>
</html>
