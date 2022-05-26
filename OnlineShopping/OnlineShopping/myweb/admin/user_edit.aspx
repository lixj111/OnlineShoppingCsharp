<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_edit.aspx.cs" Inherits="user_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="800" align="center">
                <tr>
                    <td class="auto-style1">密码：<td class="auto-style1">
                    <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">姓名：<td class="auto-style1">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">地址：<td class="auto-style1">
                    <asp:TextBox ID="address" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">性别：<td class="auto-style1">
                    <asp:DropDownList ID="sex" runat="server">
                        <asp:ListItem Value="1">帅哥</asp:ListItem>
                        <asp:ListItem Value="2">美女</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">手机：<td class="auto-style1">
                    <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">邮箱：<td class="auto-style1">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">QQ：<td class="auto-style1">
                    <asp:TextBox ID="qq" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">状态：<td class="auto-style1">
                    <asp:DropDownList ID="state" runat="server">
                        <asp:ListItem Value="1">正常</asp:ListItem>
                        <asp:ListItem Value="2">关闭</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:HiddenField ID="id" runat="server" />
                    <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="保 存" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
