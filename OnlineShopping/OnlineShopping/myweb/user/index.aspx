<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="user_index" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:top ID="top1" runat="server" />
            <table width="1000" align="center" border="0">
                <tr><td width="200" class="auto-style1">
                    <uc3:usermenu ID="usermenu1" runat="server" />
                    </td><td align="center">欢迎 <asp:Label ID="username" runat="server" Text="Label"></asp:Label>
                        &nbsp;登录系统！</td></tr>

            </table>
        </div>
        <uc2:down ID="down1" runat="server" />
    </form>
</body>
</html>
