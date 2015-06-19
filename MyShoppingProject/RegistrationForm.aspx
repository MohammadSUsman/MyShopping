<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="MyShoppingProject.regis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 235px;
        }
        .style2
        {
            width: 293px;
        }
        .style4
        {
            width: 372px;
        }
        .style5
        {
            width: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<!-- cols -->
				<section class="cols" >
					<div class="col2" style="margin-left:350px;">

						<h1 class="caption2"> Registration</h1><hr />
                              
					
					    <table align="center" class="style1" id="table" >
                            
                           
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    First Name:</td>
                                <td class="style5">
                                    <asp:TextBox ID="FNametxt" runat="server" Placeholder="FirstName"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldFirstName" runat="server" 
                                        ControlToValidate="FNametxt" ErrorMessage="First Name is required." 
                                        ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="FNametxt" Display="Dynamic" ErrorMessage="Invalid Name." 
                                        ValidationExpression="[A-Z]{1}[a-z]+" ValidationGroup="register"></asp:RegularExpressionValidator>
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Last Name:</td>
                                <td class="style5">
                                    <asp:TextBox ID="LNametxt" runat="server" Placeholder="LastName"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldLastName" runat="server" 
                                        ControlToValidate="LNametxt" ErrorMessage="Last Name is required." 
                                        ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                        ControlToValidate="LNametxt" ErrorMessage="Invalid Name." 
                                        ValidationExpression="[A-Z]{1}[a-z]+" ValidationGroup="register"></asp:RegularExpressionValidator>
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Email :</td>
                                <td class="style5">
                                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                           <ContentTemplate>
                                    <asp:TextBox ID="Emailtxt" runat="server" Placeholder="Email" 
                                        ontextchanged="Emailtxt_TextChanged" AutoPostBack="True"></asp:TextBox>
                                         <asp:Label ID="lbl_message" runat="server"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldEMail" runat="server" 
                                        ControlToValidate="Emailtxt" ErrorMessage="Email is required." 
                                        ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                        ControlToValidate="Emailtxt" ErrorMessage="Invalid Email" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                        Width="100%" ValidationGroup="register"></asp:RegularExpressionValidator>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                    
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Retype Email :</td>
                                <td class="style5">
                                    <asp:TextBox ID="RetypeEmailtxt" runat="server" Placeholder="Email again"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldLastName0" runat="server" 
                                        ControlToValidate="RetypeEmailtxt" ErrorMessage="Email is required." 
                                        ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                        ControlToCompare="Emailtxt" ControlToValidate="RetypeEmailtxt" 
                                        ErrorMessage="Email mismatch." Width="100%" ValidationGroup="register"></asp:CompareValidator>
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Password :</td>
                                <td class="style5">
                                    <asp:TextBox ID="Pwdtxt" runat="server" Placeholder="Password" 
                                        TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldLastName1" runat="server" 
                                        ControlToValidate="Pwdtxt" ErrorMessage="Password is required." 
                                        ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    RetypePassword:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td class="style5">
                                    <asp:TextBox ID="RetypePwdtxt" runat="server" Placeholder="Password again" 
                                        TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldLastName2" runat="server" 
                                        ControlToValidate="RetypePwdtxt" ErrorMessage="Password is required." 
                                        ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                        ControlToCompare="Pwdtxt" ControlToValidate="RetypePwdtxt" 
                                        ErrorMessage="Password mismatch." Width="160%" ValidationGroup="register"></asp:CompareValidator>
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Country :</td>
                                <td class="style5">
                                    <asp:DropDownList ID="CountryDropList" runat="server" 
                                        >
                                        
                                        <asp:ListItem>Pakistan </asp:ListItem>
                                        <asp:ListItem>india</asp:ListItem>
                                        <asp:ListItem>Nepal</asp:ListItem>
                                        <asp:ListItem>Bhautan</asp:ListItem>
                                        <asp:ListItem>Bangladesh</asp:ListItem>
                                        <asp:ListItem>China</asp:ListItem>
                                        <asp:ListItem>South Africa</asp:ListItem>
                                        <asp:ListItem>England</asp:ListItem>
                                        <asp:ListItem>USA</asp:ListItem>
                                        <asp:ListItem>UAE</asp:ListItem>
                                        <asp:ListItem>Hong Kong</asp:ListItem>
                                        <asp:ListItem>Malaisha</asp:ListItem>
                                        <asp:ListItem>Sri Linka</asp:ListItem>
                                        <asp:ListItem>West Indies</asp:ListItem>
                                        <asp:ListItem>Afghanastan</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    City :</td>
                                <td class="style5">
                                    <asp:TextBox ID="Citytxt" runat="server" Placeholder="City"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldCity" runat="server" 
                                        ControlToValidate="Citytxt" ErrorMessage="City  is required." 
                                        ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                        ControlToValidate="Citytxt" ErrorMessage="Invalid City." 
                                        ValidationExpression="[A-Z]{1}[a-z]+" ValidationGroup="register"></asp:RegularExpressionValidator>
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Zip Code :</td>
                                <td class="style5">
                                    <asp:TextBox ID="Zipcodetxt" runat="server" Placeholder="ZipCode"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldZipCode" runat="server" 
                                        ControlToValidate="Zipcodetxt" ErrorMessage="ZipCode is required." 
                                        ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                        ControlToValidate="Zipcodetxt" ErrorMessage="Invalid Zip Code." 
                                        ValidationExpression="\d{5}(-\d{4})?" Width="100%" 
                                        ValidationGroup="register"></asp:RegularExpressionValidator>
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Phone :</td>
                                <td class="style5">
                                    <asp:TextBox ID="Phonetxt" runat="server" Placeholder="Phone"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldPhone" runat="server" 
                                        ControlToValidate="Phonetxt" ErrorMessage="Phone is required." 
                                        ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                        ControlToValidate="Phonetxt" ErrorMessage="Invalid Phone no. " 
                                        ValidationExpression="((\d{3})?)(\d{4}-?(\d{7}))" Width="100%" 
                                        ValidationGroup="register"></asp:RegularExpressionValidator>
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Address :</td>
                                <td class="style5">
                                    <asp:TextBox ID="Addresstxt" runat="server" Columns="23" Rows="6"
                                        Placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldAddress" runat="server" 
                                        ControlToValidate="Addresstxt" ErrorMessage="Address  is required." 
                                        ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style5">
                                    <asp:Button ID="Researchbtn" runat="server" Height="40px" Text="Register" 
                                        Width="89px" onclick="Researchbtn_Click" ValidationGroup="register" />
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            
                        </table>
						
					
					</div>
					
					
				
					<div class="cl">&nbsp;</div>
				</section>
				<!-- end of cols -->





</asp:Content>
