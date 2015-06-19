<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Laptop.aspx.cs" Inherits="MyShoppingProject.Laptop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 159px;
        }
        .style3
        {
            width: 159px;
            height: 24px;
            font-weight: bold;
            font-size: medium;
        }
        .style4
        {
            height: 24px;
        }
        .style5
        {
            width: 159px;
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <!-- main -->
		<div class="main">
			
			 <div class="shell">

	
	
				
				 <!-- cols -->
					<section class="cols">

					<div class="col18">

                    <h1 class="caption11">Laptop Specification</h1><hr />

&nbsp;<table class="style1" id="table1">
        <tr>
            <td class="style5">
                Product ID :</td>
            <td>
                <asp:TextBox ID="Producttxt" runat="server"  ReadOnly="True" 
                     placeholder="ProductId"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Processor :</td>
            <td class="style4">
                <asp:TextBox ID="Processortxt" runat="server" placeholder="Processor"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Processortxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="Processortxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style5">
                Ram :</td>
            <td>
                <asp:TextBox ID="Ramtxt" runat="server" placeholder="Ram"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Ramtxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="Ramtxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Camera :</td>
            <td>
                <asp:TextBox ID="Cameratxt" runat="server"  placeholder="Camera"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Cameratxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="Cameratxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Hard Size:</td>
            <td>
                <asp:TextBox ID="Hardtxt" runat="server"  placeholder="HardSize"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Hardtxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="Hardtxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Lan :</td>
            <td>
                <asp:TextBox ID="Lantxt" runat="server"  placeholder="Lan"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="Lantxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="Lantxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Wifi :</td>
            <td>
                <asp:TextBox ID="Wifitxt" runat="server"  placeholder="Wifi"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="Wifitxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="Wifitxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Hdmi :</td>
            <td>
                <asp:TextBox ID="Hdmitxt" runat="server"  placeholder="Hdmi"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="Hdmitxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="Hdmitxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Battery Time :</td>
            <td>
                <asp:TextBox ID="Batterytxt" runat="server"  placeholder="BatteryTime"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="Batterytxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                    ControlToValidate="Batterytxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Screen Size :</td>
            <td>
                <asp:TextBox ID="Screentxt" runat="server"  placeholder="ScreenSize"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="Screentxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Operating System :</td>
            <td>
                <asp:TextBox ID="Operatingtxt" runat="server"  placeholder="OperatingSystem"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="Operatingtxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                    runat="server" ControlToValidate="Operatingtxt" 
                    ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Graphics Memory :</td>
            <td>
                <asp:TextBox ID="Memorytxt" runat="server"  placeholder="GraphicsMemory"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="Memorytxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                    runat="server" ControlToValidate="Memorytxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Bluetooth :</td>
            <td>
                <asp:TextBox ID="Bluetoothtxt" runat="server"  placeholder="Bluetooth"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="Bluetoothtxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator14" 
                    runat="server" ControlToValidate="Bluetoothtxt" 
                    ErrorMessage="Invalid Property." ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Dedicated Graphics :</td>
            <td>
                <asp:TextBox ID="Graphicstxt" runat="server"  placeholder="Dedicated Graphics"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="Graphicstxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                    runat="server" ControlToValidate="Graphicstxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Color:</td>
            <td>
                <asp:TextBox ID="Colortxt" runat="server" 
                    placeholder="Color"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="Colortxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                    runat="server" ControlToValidate="Colortxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Battery Cells :</td>
            <td>
                <asp:TextBox ID="Cellstxt" runat="server" 
                    placeholder="Battery cells"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="Cellstxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="Cellstxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Usb Ports :</td>
            <td>
                <asp:TextBox ID="Portstxt" runat="server" 
                    placeholder="Usb Ports"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="Portstxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator15" 
                    runat="server" ControlToValidate="Portstxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="(\d+\.\d+)"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="30px" Text="Add" Width="100px" 
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
