<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="ImageEdit.aspx.cs" Inherits="MyShoppingProject.ImageEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <!-- main -->
		<div class="main">
			
			 <div class="shell">

	
	
				
				 <!-- cols -->
					<section class="cols">

					<div class="col15">

                    <h1 class="caption4">Edit Image</h1><hr />

                    &nbsp;<table class="style1" id="table">
                            <tr>
                                <td>
                                    ProductId :</td>
                                <td>
                                    <asp:TextBox ID="Producttxt" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    Image Change :</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" Height="20px" />
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="FileUpload1" ErrorMessage="Image is required."></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Back" Height="33px" 
                                        Width="92px" BackColor="#B7B793" Font-Size="17px" 
                                        onclick="Button2_Click" CausesValidation="False"  />
                                </td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Update" Height="31px" 
                                        Width="97px" BackColor="#B7B793" Font-Size="17px" 
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
