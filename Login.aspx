<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCommon.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="E_Affiliation.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript" language="javascript">
    function EncryptPassword(str) {
        if (document.getElementById('<%= txtUserName.ClientID %>').value == '') {
            document.getElementById('<%= txtPassword.ClientID %>').value = ''
            document.getElementById('<%= txtUserName.ClientID %>').focus();
            return false;
        }
        if (document.getElementById('<%= txtPassword.ClientID %>').value == '') {
            document.getElementById('<%= txtPassword.ClientID %>').value = ''
            document.getElementById('<%= txtPassword.ClientID %>').focus();
            return false;
        }
        if (document.getElementById('<%= txtPassword.ClientID %>').value != "") {
            var md5encypt = hex_md5(document.getElementById('<%= txtPassword.ClientID %>').value);
            var passstr = str + (md5encypt);
            document.getElementById('<%= txtPassword.ClientID %>').value = hex_md5(passstr);
        }
        return true;
    }
 </script>
  <script type="text/javascript">
      function fn(txt) {
          if (txt.value.length > 0)
              document.getElementById('<%=btnLogin.ClientID %>').disabled = false;
          else
              document.getElementById('<%=btnLogin.ClientID %>').disabled = true;
      }
    </script>
     <script src="Scripts/md5.js" type="text/javascript"></script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <center>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HL1" runat="server" Font-Bold="True" Target="_blank" 
                NavigateUrl="~/Styles/User_Manual__University_.pdf" Font-Size="11pt">University User Manual</asp:HyperLink>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Target="_blank" 
                NavigateUrl="~/Styles/Microsoft Word - User_Manual__Colleges_Existing_.pdf"  Font-Size="11pt">College User Manual</asp:HyperLink>
            
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Target="_blank" 
                NavigateUrl="~/LICCommitteLogin.aspx" Font-Size="11pt">LIC Committe Login</asp:HyperLink>
            
              <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Target="_blank" 
                NavigateUrl="~/Styles/User_Manual__University_.doc-Revised (1).pdf"  Font-Size="11pt">Revised University User Manual 2017-18</asp:HyperLink>
            
            <br />
              <table style="border: 1px solid #66CCFF; height: 153px; width: 271px;" 
                class="bordered">
                <tr>
                    <td colspan="2" style="background-color: #4682B4; color: #FFFFFF;
                        font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;" 
                       >
                        Login
                    </td>
                </tr>
                <tr>
                    <td style="border: 1px solid #C0C0C0;" align="left" >
                        
                        User Name
                    </td>
                    <td  style="border: 1px solid #C0C0C0">
                      
                        <asp:TextBox ID="txtUserName" runat="server" BorderColor="Black" BorderStyle="Solid"
                            BorderWidth="1px" Height="20px" Width="130px" Font-Bold="True" 
                            Font-Size="Small"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 1px solid #C0C0C0;" align="left">
                       
                        Password
                    </td>
                    <td  style="border: 1px solid #C0C0C0">
                      
                        <asp:TextBox ID="txtPassword" runat="server" BorderColor="Black" BorderStyle="Solid"
                            BorderWidth="1px" Height="20px" Width="131px" TextMode="Password" Font-Names="Times New Roman"
                            Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="border: 1px solid #C0C0C0">
                        <asp:HyperLink ID="Registration" NavigateUrl="~/CollegeRegistration.aspx" Target="_blank" runat="server">Request Form Activate for 2017-18? Click Here</asp:HyperLink>
                    </td>
                </tr>
              <tr>
                <td colspan="2" style="border: 1px solid #C0C0C0">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                        ID="btnLogin" runat="server" Text="Login" BorderColor="#66CCFF" BorderStyle="Groove"
                        Height="22px" Width="53px" OnClick="btnLogin_Click" Font-Bold="True" Font-Names="Times New Roman"
                        Font-Size="Medium" ForeColor="Black" BorderWidth="1px" />
                    &nbsp;<asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
                <%--<asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>--%>
            </table>
            
            <br />
            
        </center>
    </div>
</asp:Content>
