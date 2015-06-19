<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Ipod.aspx.cs" Inherits="MyShoppingProject.Admin.Ipod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
        }
        .style2
        {
            width: 154px;
        }
        .style3
        {
            width: 401px;
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

                    <h1 class="caption11">Ipod Specification</h1><hr />

&nbsp;<table class="style1" id="table1">
        <tr>
            <td class="style1">
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
            <td class="style1">
                Usb :</td>
            <td class="style3">
                <asp:TextBox ID="Usbtxt" runat="server"  placeholder="Usb"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Usbtxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="Usbtxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="(\d+\.\d+)"></asp:RegularExpressionValidator>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style1">
                Screen Size :</td>
            <td class="style3">
                <asp:TextBox ID="Screentxt" runat="server"  placeholder="ScreenSize"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Screentxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Audio Formats :</td>
            <td class="style3">
                <asp:TextBox ID="Audiotxt" runat="server"  placeholder="AudioFormats"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Audiotxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Video Formats :</td>
            <td class="style3">
                <asp:TextBox ID="Videotxt" runat="server"  placeholder="VideoFormats"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Videotxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Weight :</td>
            <td class="style3">
                <asp:TextBox ID="weighttxt" runat="server"  placeholder="Weight"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="weighttxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="weighttxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Storage Capacity :</td>
            <td class="style3">
                <asp:TextBox ID="Storagetxt" runat="server"  placeholder="StorageCapacity"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="Storagetxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="Storagetxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Battery Life :</td>
            <td class="style3">
                <asp:TextBox ID="Batterylifetxt" runat="server"  placeholder="BatteryLife"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="Batterylifetxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="Batterylifetxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Battery Type :</td>
            <td class="style3">
                <asp:TextBox ID="Batterytypetxt" runat="server" placeholder="BatteryType"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="Batterytypetxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Bluetooth :</td>
            <td class="style3">
                <asp:TextBox ID="Bluetoothtxt" runat="server" placeholder="Bluetooth"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="Bluetoothtxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="Bluetoothtxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Camera :</td>
            <td class="style3">
                <asp:TextBox ID="Cameratxt" runat="server"  
                    placeholder="Camera"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="Cameratxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="Cameratxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                FM Radio :</td>
            <td class="style3">
                <asp:TextBox ID="Fmtxt" runat="server" 
                    placeholder="FMRadio"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="Fmtxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="Fmtxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Video Playback :</td>
            <td class="style3">
                <asp:TextBox ID="Playbacktxt" runat="server"  
                    placeholder="VideoPlayback"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="Playbacktxt" ErrorMessage="Field is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="Playbacktxt" ErrorMessage="Invalid Property." 
                    ValidationExpression="\w+"></asp:RegularExpressionValidator>
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
                <asp:Button ID="Button1" runat="server" Height="30px" Text="Add" 
                    Width="100px" onclick="Button1_Click" />
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
