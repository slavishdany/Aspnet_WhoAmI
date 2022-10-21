<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WhoAmI.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <%
                System.Net.IPHostEntry ipHostInfo = System.Net.Dns.GetHostEntry(System.Net.Dns.GetHostName());
               
                Response.Write("<h2>Server name : <b>" + ipHostInfo.HostName + "</b></h2>");
                Response.Write("<h2>IP Addresses :</h2>");
                Response.Write("<ul>");
                for (int i = 0; i < ipHostInfo.AddressList.Count(); i++)
                {
                     System.Net.IPAddress iPAddress = ipHostInfo.AddressList[i];
                    Response.Write("<li>" + iPAddress.ToString() + "</li>"); 
                }
                
            %>
        </div>
    </form>
</body>
</html>
