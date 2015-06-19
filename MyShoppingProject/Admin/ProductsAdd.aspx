<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="ProductsAdd.aspx.cs" Inherits="MyShoppingProject.Admin.ProductsAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 44px;
        }
        .style3
        {
            height: 44px;
            font-weight: bold;
            width: 163px;
            font-size: medium;
        }
        .style4
        {
            width: 163px;
        }
        .style5
        {
            width: 163px;
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

					<div class="col21">

                      <h1 class="caption11">&nbsp;Add Product</h1><hr />

                 

                        <table class="style1" id="table">
                            <tr>
                                <td class="style3">
                                    Category Name :</td>
                                <td class="style2">
                                    <asp:DropDownList ID="CategoryDropList" runat="server" AutoPostBack="True" 
                                        DataSourceID="SqlDataSource1" DataTextField="CategoryName" 
                                        DataValueField="CategoryId">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT * FROM [Category]"></asp:SqlDataSource>
                                    <br />
                                    <br />
                                </td>
                                <td class="style2">
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Brand Name :</td>
                                <td>
                                    <asp:DropDownList ID="BrandDropList" runat="server" AutoPostBack="True" 
                                        DataSourceID="SqlDataSource2" DataTextField="BrandName" 
                                        DataValueField="BrandId">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT [BrandId], [BrandName] FROM [Brand] WHERE ([CategoryId] = @CategoryId)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="CategoryDropList" Name="CategoryId" 
                                                PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Name :</td>
                                <td>
                                    <asp:TextBox ID="Nametxt" runat="server"   
                                        placeholder="Name"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="Nametxt" ErrorMessage="Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="Nametxt" ErrorMessage="Invalid Name." 
                                        ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Price :</td>
                                <td>
                                    <asp:TextBox ID="Pricetxt" runat="server"   
                                        placeholder="Price"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="Pricetxt" ErrorMessage="Price is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                        ControlToValidate="Pricetxt" ErrorMessage="Invalid Price." 
                                        ValidationExpression="(\d+\.\d+)|(\d+)"></asp:RegularExpressionValidator>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Usb Type :</td>
                                <td>
                                    <asp:TextBox ID="Usbtxt" runat="server"  
                                        placeholder="UsbType"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="Usbtxt" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                        ControlToValidate="Usbtxt" Display="Dynamic" ErrorMessage="Invalid Type." 
                                        ValidationExpression="(\d+\.\d+)"></asp:RegularExpressionValidator>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Warranty :</td>
                                <td>
                                    <asp:TextBox ID="Warrantytxt" runat="server"  
                                        placeholder="Warranty"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="Warrantytxt" ErrorMessage="Warrenty is required." 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                        ControlToValidate="Warrantytxt" Display="Dynamic" 
                                        ErrorMessage="Invalid Warrenty." 
                                        ValidationExpression="\w+\s*\w*\s*\w*\s*\w*\s*"></asp:RegularExpressionValidator>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Image :</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="FileUpload1" ErrorMessage="Image is required." 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Quantity:</td>
                                <td>
                                    <asp:TextBox ID="Quantitytxt" runat="server"  placeholder="Quantity" ></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="Quantitytxt" ErrorMessage="Quantity is required." 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                        ControlToValidate="Quantitytxt" ErrorMessage="Invalid Quantity." 
                                        ValidationExpression="\d+"></asp:RegularExpressionValidator>
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
                                    <asp:Button ID="Button1" runat="server" Height="33px" Text="Add" 
                                        Width="106px" onclick="Button1_Click" />
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
