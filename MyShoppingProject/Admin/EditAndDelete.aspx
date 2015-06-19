<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="EditAndDelete.aspx.cs" Inherits="MyShoppingProject.Admin.EditAndDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- main -->
		<div class="main">
			
			 <div >

	
	
				
				 <!-- cols -->
					<section class="cols">

					<div class="col14">

                    <h1 class="caption4">Edit And Delete</h1><hr />


         <asp:TextBox ID="Producttxt" runat="server"></asp:TextBox>

                   
<asp:DetailsView ID="DetailsView1" runat="server" Width="100%" Height="300px" AutoGenerateRows="False" 
                            DataKeyNames="ProductId" DataSourceID="SqlDataSource1" class="caption9" 
                            BackColor="White" BorderColor="#999999" BorderStyle="None" 
                            CellPadding="3" GridLines="None">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <EditRowStyle  Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
            InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="UsbType" HeaderText="UsbType" 
            SortExpression="UsbType" />
        <asp:BoundField DataField="Warranty" HeaderText="Warranty" 
            SortExpression="Warranty" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
            SortExpression="Quantity" />
        <asp:BoundField DataField="Image" HeaderText="Image" 
            SortExpression="Image" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" 
                    ImageUrl='<%# Eval("Image") %>' Width="55px" PostBackUrl='<%# Eval("ProductId", "ImageEdit.aspx?ProductId={0}") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
            ButtonType="Button" >
         <ControlStyle BackColor="#B7B793" Font-Size="17px"  Width="60px" Height="35px"  />
        </asp:CommandField>
    </Fields>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        </asp:DetailsView>







                    	<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [Products] WHERE [ProductId] = @original_ProductId AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([UsbType] = @original_UsbType) OR ([UsbType] IS NULL AND @original_UsbType IS NULL)) AND (([Warranty] = @original_Warranty) OR ([Warranty] IS NULL AND @original_Warranty IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL))" 
                            InsertCommand="INSERT INTO [Products] ([Price], [Name], [UsbType], [Warranty], [Image], [Quantity]) VALUES (@Price, @Name, @UsbType, @Warranty, @Image, @Quantity)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT [ProductId], [Price], [Name], [UsbType], [Warranty], [Image], [Quantity] FROM [Products] WHERE ([ProductId] = @ProductId)" 
                            
                            UpdateCommand="UPDATE [Products] SET [Price] = @Price, [Name] = @Name, [UsbType] = @UsbType, [Warranty] = @Warranty, [Image] = @Image, [Quantity] = @Quantity WHERE [ProductId] = @original_ProductId AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([UsbType] = @original_UsbType) OR ([UsbType] IS NULL AND @original_UsbType IS NULL)) AND (([Warranty] = @original_Warranty) OR ([Warranty] IS NULL AND @original_Warranty IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_ProductId" Type="Int32" />
                                <asp:Parameter Name="original_Price" Type="Int32" />
                                <asp:Parameter Name="original_Name" Type="String" />
                                <asp:Parameter Name="original_UsbType" Type="String" />
                                <asp:Parameter Name="original_Warranty" Type="String" />
                                <asp:Parameter Name="original_Image" Type="String" />
                                <asp:Parameter Name="original_Quantity" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Price" Type="Int32" />
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="UsbType" Type="String" />
                                <asp:Parameter Name="Warranty" Type="String" />
                                <asp:Parameter Name="Image" Type="String" />
                                <asp:Parameter Name="Quantity" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                                    Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Price" Type="Int32" />
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="UsbType" Type="String" />
                                <asp:Parameter Name="Warranty" Type="String" />
                                <asp:Parameter Name="Image" Type="String" />
                                <asp:Parameter Name="Quantity" Type="Int32" />
                                <asp:Parameter Name="original_ProductId" Type="Int32" />
                                <asp:Parameter Name="original_Price" Type="Int32" />
                                <asp:Parameter Name="original_Name" Type="String" />
                                <asp:Parameter Name="original_UsbType" Type="String" />
                                <asp:Parameter Name="original_Warranty" Type="String" />
                                <asp:Parameter Name="original_Image" Type="String" />
                                <asp:Parameter Name="original_Quantity" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>





                        
                    <asp:Button ID="Button1" runat="server" Text="Back" Height="34px" Width="63px" BackColor="#B7B793" Font-Size="17px" 
                            style="margin-left:5px;" onclick="Button1_Click" />

                    	</div>
					
				
					
				</section>
				<!-- end of cols -->
			
			</div>

           
			
		
		</div><!-- end of main -->

   

   

</asp:Content>
