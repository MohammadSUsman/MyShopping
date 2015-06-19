<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="Update_Inventory.aspx.cs" Inherits="MyShoppingProject.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 590px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="width:40%; height:auto; 
margin:80px auto;  border: 10px solid #dedede;border-radius:15px;background-color:Silver;" class="shell">
   <h2 style="width:100%; text-align:center; margin-top:20px;">Update Inventory</h2><hr />
    <table  style=" margin-top:30px; Width:100%;">
        <tr style="width:100%;">
            <td style="width:40%; padding-left:45px;">Name of the Product:</td>
            <td style="width:60%"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
         <tr>
            <td style="width:40%; padding-left:45px;">Existing Quantity:</td>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
                 <tr>
            <td style="width:40%; padding-left:45px;">Enter the new Quantity:</td>
            <td class="style1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Put only Integer." 
                    ForeColor="Gray" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" height="30px"
                    Width="68px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button2" runat="server" onclick="Button2_Click" height="30px"
                    Width="68px"
                    Text="Cancel" CausesValidation="False" />
                    
            </td>
        </tr>
    </table>
   
</div>

</asp:Content>
