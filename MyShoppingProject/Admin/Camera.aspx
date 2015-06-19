<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Camera.aspx.cs" Inherits="MyShoppingProject.Camera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
        }
        .style2
        {
            font-weight: bold;
            font-size: medium;
        }
        .style3
        {
            font-weight: bold;
            font-size: medium;
            width: 424px;
        }
        .style4
        {
            width: 206px;
        }
        .style5
        {
            width: 424px;
        }
        .style6
        {
            font-weight: bold;
            font-size: medium;
            width: 206px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <!-- main -->
		<div class="main">
			
			 <div class="shell">

	
	
				
				 <!-- cols -->
					<section class="cols">

					<div class="col20">

                      <h1 class="caption12">Camera Specification</h1><hr />
                                                 <table class="style1" id="table1">
                                                    <tr>
                                                        <td class="style6">
                                                            Product ID :</td>
                                                        <td class="style3">
                                                            <asp:TextBox ID="Producttxt" runat="server" 
                                                                placeholder="ProductId"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style6">
                                                            Mega Pixel :</td>
                                                        <td class="style5">
                                                            <asp:TextBox ID="Megapixeltxt" runat="server" 
                                                                placeholder="MegaPixel"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                ControlToValidate="Megapixeltxt" ErrorMessage="Field is required." 
                                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                                ControlToValidate="Megapixeltxt" ErrorMessage="Invalid property." 
                                                                ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
                                                            <br />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style6">
                                                            Optical Zoom:</td>
                                                        <td class="style5">
                                                            <asp:TextBox ID="Zoomtxt" runat="server" 
                                                                placeholder="OpticalZoom"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                                ControlToValidate="Zoomtxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                                ControlToValidate="Zoomtxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                            <br />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style6">
                                                            Lcd Size :</td>
                                                        <td class="style5">
                                                            <asp:TextBox ID="Lcdtxt" runat="server" 
                                                                placeholder=" LcdSize"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                                ControlToValidate="Lcdtxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <br />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style6">
                                                            Lcd Touchscreen :</td>
                                                        <td class="style5">
                                                            <asp:TextBox ID="Touctscreentxt" runat="server" 
                                                                placeholder="LcdTouchscreen "></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                                ControlToValidate="Touctscreentxt" ErrorMessage="Field is required." 
                                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                                ControlToValidate="Touctscreentxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                            <br />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style6">
                                                            Battery Type :</td>
                                                        <td class="style5">
                                                            <asp:TextBox ID="BatteryTypetxt" runat="server"  
                                                                placeholder="BatteryType"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                                ControlToValidate="BatteryTypetxt" ErrorMessage="Field is required." 
                                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <br />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style6">
                                                            Battery Life :</td>
                                                        <td class="style5">
                                                            <asp:TextBox ID="BattaryLifetxt" runat="server" 
                                                                placeholder="BatteryLife "></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                                ErrorMessage="Field is required." ControlToValidate="BattaryLifetxt" 
                                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                                                ControlToValidate="BattaryLifetxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                            <br />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style6">
                                                            Storage Size :</td>
                                                        <td class="style5">
                                                            <asp:TextBox ID="Storagetxt" runat="server" 
                                                                placeholder="StorageSize"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                                ErrorMessage="Field is required." ControlToValidate="Storagetxt" 
                                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                                                ControlToValidate="Storagetxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                            <br />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style6">
                                                            HD Movie :</td>
                                                        <td class="style5">
                                                            <asp:TextBox ID="Hdtxt" runat="server" 
                                                                placeholder="HDMovie"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                                ErrorMessage="Field is required." ControlToValidate="Hdtxt" 
                                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                                                ControlToValidate="Hdtxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                            <br />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style6">
                                                            Built In Memory :</td>
                                                        <td class="style5">
                                                            <asp:TextBox ID="Memorytxt" runat="server"
                                                                placeholder="BuiltInMemory"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                                ErrorMessage="Field is required." ControlToValidate="Memorytxt" 
                                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                                                ControlToValidate="Memorytxt" ErrorMessage="Invalid Property." 
                                                                ValidationExpression="\w+"></asp:RegularExpressionValidator>
                                                            <br />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style4">
                                                            &nbsp;</td>
                                                        <td class="style5">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style4">
                                                            &nbsp;</td>
                                                        <td class="style5">
                                                            <asp:Button ID="Button2" runat="server" Text="Add" Height="30px" Width="100px" 
                                                                onclick="Button2_Click" />
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
