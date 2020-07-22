<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Welcome.aspx.vb" Inherits="SampleWeb.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 327px;
        }
        .auto-style3 {
            width: 207px;
            color:firebrick;    
        }
        .auto-style4 {
            width: 284px;
        }
        .auto-style5 {
            width: 207px;
            height: 25px;
        }
        .auto-style6 {
            width: 284px;
            height: 25px;
        }
        .auto-style7 {
            width: 327px;
            height: 25px;
        }
        .auto-style8 {
            height: 25px;
        }
        .auto-style9 {
            width: 207px;
            height: 6px;
        }
        .auto-style10 {
            width: 284px;
            height: 6px;
        }
        .auto-style11 {
            width: 327px;
            height: 6px;
        }
        .auto-style12 {
            height: 6px;
        }
        body {
            /*background-image: url(images/WebBg.jpg)*/
            background-image: url(images/BGBlue.jpg);
            background-repeat: no-repeat;
             width: 1000px;
             height: 1000px;
             padding: 0px 0px 0px 0px;
        }
    </style>
</head>
<body>
    <%--<form id="form1" name="myform" runat="server" method="post" action="About.aspx" onsubmit="return Validate();" >--%>
    <form id="form1" name="myform" runat="server">
    <div>
            <br />
            <br />
            <%--        <img src="images/WebBg.jpg" />--%>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Enter Your Name :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtName" runat="server" Width="254px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Select your Gender: </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="rbMale"  runat="server" GroupName="Gender" Text="Male" />
                        <asp:RadioButton ID="rbFemale" runat="server" GroupName="Gender" Text="Female" />
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Select a theme</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlTheme" runat="server" AutoPostBack="True" Height="18px" Width="141px">
                            <asp:ListItem>---Select---</asp:ListItem>
                            <asp:ListItem>Blue</asp:ListItem>
                            <asp:ListItem>Green</asp:ListItem>
                            <asp:ListItem>Red</asp:ListItem>
                            <asp:ListItem>Brown</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClientClick="return Validate();"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </div>
    </form>
    <script>
        function Validate() {
            var n = document.getElementById("txtName").value;
            var d = document.getElementById("ddlTheme").value;
           //var r = document.getElementById
            //alert("selected value = " + d);
            if (n == "" || n == null) {
                alert("Enter your name, please");
                return false;
            }  

            //var radio = document.getElementsByName("Gender").value;
            //alert(radio);
            //if (radio == undefined) {
            //    alert("Select a Gender");
            //    return false;
            //}
                 
            if (d == "---Select---") {
                alert("Select a theme, please");
                return false;
            }           
        }
    </script>
</body>
</html>
