<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Tablet.aspx.cs" Inherits="MyShoppingProject.Admin.Tablet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
        .style2
        {
            font-size: medium;
            font-weight: bold;
        }
        .style3
        {
            width: 374px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 <!-- main -->
		<div class="main">
			
			 <div class="shell">

	
	
				
				 <!-- cols -->
					<section class="cols">

					<div class="col19">

                    <h1 class="caption11">Tablet Specification</h1><hr />

&nbsp;<table class="style1" id="table1">
        <tr>
            <td class="style2">
                Product ID :</td>
            <td class="style3">
                <asp:TextBox ID="Producttxt" runat="server"
                    placeholder="ProductId" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Processor :</td>
            <td class="style3">
                <asp:TextBox ID="Processortxt" runat="server" placeholder="Processor"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Processortxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                    ControlToValidate="Processortxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style2">
                Ram :</td>
            <td class="style3">
                <asp:TextBox ID="Ramtxt" runat="server"  placeholder="Ram"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Ramtxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="Ramtxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Storage Size :</td>
            <td class="style3">
                <asp:TextBox ID="Storagetxt" runat="server"  placeholder="StorageSize"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Storagetxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="Sizetxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Camera :</td>
            <td class="style3">
                <asp:TextBox ID="Cameratxt" runat="server"  placeholder="Camera"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Cameratxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Bluetooth :</td>
            <td class="style3">
                <asp:TextBox ID="Bluetoothtxt" runat="server" placeholder="Bluetooth"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="Bluetoothtxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="Bluetoothtxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Wifi :</td>
            <td class="style3">
                <asp:TextBox ID="Wifitxt" runat="server"  placeholder="Wifi"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="Wifitxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="Wifitxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Size :</td>
            <td class="style3">
                <asp:TextBox ID="Sizetxt" runat="server"  placeholder="Size"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="Sizetxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Battery Time :</td>
            <td class="style3">
                <asp:TextBox ID="Batterytxt" runat="server"  placeholder="BatteryTime"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="Batterytxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                    runat="server" ControlToValidate="Batterytxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Operating System :</td>
            <td class="style3">
                <asp:TextBox ID="Operatingsystemtxt" runat="server"  placeholder="OperatingSystem"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="Operatingsystemtxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="Operatingsystemtxt" ErrorMessage="invalid Property." 
                    ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Battery Cell:</td>
            <td class="style3">
                <asp:TextBox ID="Batterycelltxt" runat="server" 
                    placeholder="Battery Cell"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="Batterycelltxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="Batterycelltxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Color :</td>
            <td class="style3">
                <asp:TextBox ID="Colortxt" runat="server" 
                    placeholder="Color"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="Colortxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                    runat="server" ControlToValidate="Colortxt" ErrorMessage="InvalidProperty." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Touch screen :</td>
            <td class="style3">
                <asp:TextBox ID="Screentxt" runat="server" 
                    placeholder="Touchscreen"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="Screentxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="Screentxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Usb port :</td>
            <td class="style3">
                <asp:TextBox ID="Porttxt" runat="server"  
                    placeholder="Usbport"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="Porttxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="Porttxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="(\d+\.\d+)"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Height="30px" Text="Add" Width="98px" 
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
