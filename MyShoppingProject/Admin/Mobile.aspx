<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Mobile.aspx.cs" Inherits="MyShoppingProject.Admin.mobi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<!-- main -->
		<div class="main">
			
			 <div class="shell">

	
	
				
				 <!-- cols -->
					<section class="cols">

					<div class="col17">

                      <h1 class="caption12">Mobile Specification</h1><hr />
                                                 <table class="style1" id="table1">
                                                    <tr>
                                                        <td class="style3">
                                                            Product ID :</td>
                                                        <td class="style2">
                                                            <asp:TextBox ID="Producttxt" runat="server"  
                                                                placeholder="ProductId" ReadOnly="True"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Processor :</td>
                                                        <td>
                                                            <asp:TextBox ID="Processortxt" runat="server"   
                                                                placeholder="Processor" AutoPostBack="True"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                ControlToValidate="Processortxt" ErrorMessage="Field is required." 
                                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                                ControlToValidate="Processortxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Ram :</td>
                                                        <td>
                                                            <asp:TextBox ID="Ramtxt" runat="server" 
                                                                placeholder="Ram"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                                ControlToValidate="Ramtxt" ErrorMessage="Ram is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                                ControlToValidate="Ramtxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Builtin Memory :</td>
                                                        <td>
                                                            <asp:TextBox ID="Memorytxt" runat="server"   
                                                                placeholder="BuiltinMemory"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                                                ControlToValidate="Memorytxt" ErrorMessage="Memory is requird." ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                                ControlToValidate="Memorytxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Display Size :</td>
                                                        <td>
                                                            <asp:TextBox ID="Sizetxt" runat="server"  
                                                                placeholder="DisplaySize"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                                                ControlToValidate="Sizetxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Camera :</td>
                                                        <td>
                                                            <asp:TextBox ID="Cameratxt" runat="server"   
                                                                placeholder="Camera"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                                ControlToValidate="Cameratxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                                                ControlToValidate="Cameratxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Call Time :</td>
                                                        <td>
                                                            <asp:TextBox ID="Calltxt" runat="server"   
                                                                placeholder="CallTime"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                                ControlToValidate="Calltxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                                                ControlToValidate="Calltxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Battery Type :</td>
                                                        <td>
                                                            <asp:TextBox ID="BatteryTypetxt" runat="server"   
                                                                placeholder="BatteryType"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                                ControlToValidate="BatteryTypetxt" ErrorMessage="Field is required." 
                                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Color :</td>
                                                        <td>
                                                            <asp:TextBox ID="Colortxt" runat="server" 
                                                                placeholder="Color"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                                ControlToValidate="Colortxt" ErrorMessage="Color is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                                                ControlToValidate="Colortxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Sims :</td>
                                                        <td>
                                                            <asp:TextBox ID="Simstxt" runat="server"  
                                                                placeholder="Sims"></asp:TextBox>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                                ControlToValidate="Simstxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                                                                ControlToValidate="Simstxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Audio Player :</td>
                                                        <td>
                                                            <asp:TextBox ID="Audiotxt" runat="server"   
                                                                placeholder="AudioPlayer"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                                ControlToValidate="Audiotxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                                                                runat="server" ControlToValidate="Audiotxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Video Player :</td>
                                                        <td>
                                                            <asp:TextBox ID="Videotxt" runat="server"  
                                                                placeholder="VideoPlayer"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                                ControlToValidate="Videotxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                                                                runat="server" ControlToValidate="Videotxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            FM Radio :</td>
                                                        <td>
                                                            <asp:TextBox ID="Fmtxt" runat="server"   
                                                                placeholder="FMRadio"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                                ControlToValidate="Fmtxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                                                                runat="server" ControlToValidate="Fmtxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Internet :</td>
                                                        <td>
                                                            <asp:TextBox ID="internettxt" runat="server"  
                                                                placeholder="Internet"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                                ControlToValidate="internettxt" ErrorMessage="Field is required." 
                                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                                                                runat="server" ControlToValidate="internettxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Wifi :</td>
                                                        <td>
                                                            <asp:TextBox ID="Wifitxt" runat="server"   
                                                                placeholder="Wifi"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                                ControlToValidate="Wifitxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator14" 
                                                                runat="server" ControlToValidate="Wifitxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            Battery Timing :</td>
                                                        <td>
                                                            <asp:TextBox ID="Batterytxt" runat="server"   
                                                                placeholder="Battery Type"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                                ControlToValidate="Batterytxt" ErrorMessage="Field is required." 
                                                                ForeColor="Red" ToolTip="avc"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator15" 
                                                                runat="server" ControlToValidate="Batterytxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style4">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style4">
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="Button1" runat="server" Height="29px" Text="Add" Width="84px" 
                                                                onclick="Button1_Click" />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                               
                                

                      </div>
					
				
					<div class="cl">&nbsp;</div>
				</section>
				<!-- end of cols -->
			
			</div>

           
			
		
		</div><!-- end of main -->



</asp:Content>
