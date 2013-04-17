<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContractMgr.aspx.cs" Inherits="后台.ContractMgr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        this is a form for users, to finish contract<br />
        # and all of blanks is now being filled through file.<br />
        <asp:TextBox ID="tboxDate" runat="server">date/Contract No.</asp:TextBox>
        <asp:TextBox ID="tboxCost" runat="server">Cost</asp:TextBox>
    
    </div>
    <asp:Button ID="btnCommit" runat="server" onclick="btnCommit_Click" 
        Text="Commit" />
&nbsp;<br />
    click this button to send information.<br />
    <asp:TextBox ID="tboxNo" runat="server">Contract No.</asp:TextBox>
    <asp:Button ID="btnRead" runat="server" onclick="btnRead_Click" Text="Read" />
    <br />
    <asp:Label ID="lbDate" runat="server" Text="Date"></asp:Label>
    <br />
    <asp:Label ID="lbTime" runat="server" Text="Time"></asp:Label>
    </form>
</body>
</html>
