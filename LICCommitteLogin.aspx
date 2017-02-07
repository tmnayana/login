<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCommon.Master" AutoEventWireup="true" CodeBehind="LICCommitteLogin.aspx.cs" Inherits="E_Affiliation.LICCommitteLogin" %>
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
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
            <br />
            <table style="border: 1px solid #66CCFF; height: 150px; width: 234px;" 
                class="bordered">
                <tr>
                    <td colspan="2" style="background-color: #4682B4; color: #FFFFFF;
                        font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;" 
                       >
                        LIC Committe Login
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
