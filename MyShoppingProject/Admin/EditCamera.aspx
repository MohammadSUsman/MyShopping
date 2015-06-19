<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="EditCamera.aspx.cs" Inherits="MyShoppingProject.Admin.EditCamera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



 <!-- main -->
		<div class="main">
			
			 <div class="shell">

	
	
				
				 <!-- cols -->
					<section class="cols">

					<div class="col21">

                    <h1 class="caption3">Edit Specification</h1><hr />

                


<asp:DetailsView ID="DetailsView1"  runat="server"  Width="100%" Height="407px" 
                            AutoGenerateRows="False" class="caption13"
                            DataKeyNames="CameraId" DataSourceID="SqlDataSource1" BackColor="White" 
                            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                            GridLines="None">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <EditRowStyle Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="CameraId" HeaderText="CameraId" 
            InsertVisible="False" ReadOnly="True" SortExpression="CameraId" />
        <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
            SortExpression="ProductId" ReadOnly="True" />
        <asp:BoundField DataField="MegaPixel" HeaderText="MegaPixel" 
            SortExpression="MegaPixel" />
        <asp:BoundField DataField="OpticalZoom" HeaderText="OpticalZoom" 
            SortExpression="OpticalZoom" />
        <asp:BoundField DataField="LcdSize" HeaderText="LcdSize" 
            SortExpression="LcdSize" />
        <asp:BoundField DataField="LcdTouchscreen" HeaderText="LcdTouchscreen" 
            SortExpression="LcdTouchscreen" />
        <asp:BoundField DataField="BatteryType" HeaderText="BatteryType" 
            SortExpression="BatteryType" />
        <asp:BoundField DataField="BatteryLife" HeaderText="BatteryLife" 
            SortExpression="BatteryLife" />
        <asp:BoundField DataField="StorageSize" HeaderText="StorageSize" 
            SortExpression="StorageSize" />
        <asp:BoundField DataField="HdMovie" HeaderText="HdMovie" 
            SortExpression="HdMovie" />
        <asp:BoundField DataField="BuiltInMemory" HeaderText="BuiltInMemory" 
            SortExpression="BuiltInMemory" />
        <asp:CommandField ButtonType="Button" ShowEditButton="True">
         <ControlStyle BackColor="#B7B793" Height="35px" Width="60px" />
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
                            DeleteCommand="DELETE FROM [Camera] WHERE [CameraId] = @original_CameraId AND [ProductId] = @original_ProductId AND (([MegaPixel] = @original_MegaPixel) OR ([MegaPixel] IS NULL AND @original_MegaPixel IS NULL)) AND (([OpticalZoom] = @original_OpticalZoom) OR ([OpticalZoom] IS NULL AND @original_OpticalZoom IS NULL)) AND (([LcdSize] = @original_LcdSize) OR ([LcdSize] IS NULL AND @original_LcdSize IS NULL)) AND (([LcdTouchscreen] = @original_LcdTouchscreen) OR ([LcdTouchscreen] IS NULL AND @original_LcdTouchscreen IS NULL)) AND (([BatteryType] = @original_BatteryType) OR ([BatteryType] IS NULL AND @original_BatteryType IS NULL)) AND (([BatteryLife] = @original_BatteryLife) OR ([BatteryLife] IS NULL AND @original_BatteryLife IS NULL)) AND (([StorageSize] = @original_StorageSize) OR ([StorageSize] IS NULL AND @original_StorageSize IS NULL)) AND (([HdMovie] = @original_HdMovie) OR ([HdMovie] IS NULL AND @original_HdMovie IS NULL)) AND (([BuiltInMemory] = @original_BuiltInMemory) OR ([BuiltInMemory] IS NULL AND @original_BuiltInMemory IS NULL))" 
                            InsertCommand="INSERT INTO [Camera] ([ProductId], [MegaPixel], [OpticalZoom], [LcdSize], [LcdTouchscreen], [BatteryType], [BatteryLife], [StorageSize], [HdMovie], [BuiltInMemory]) VALUES (@ProductId, @MegaPixel, @OpticalZoom, @LcdSize, @LcdTouchscreen, @BatteryType, @BatteryLife, @StorageSize, @HdMovie, @BuiltInMemory)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Camera] WHERE ([ProductId] = @ProductId)" 
                            
                            UpdateCommand="UPDATE [Camera] SET  [MegaPixel] = @MegaPixel, [OpticalZoom] = @OpticalZoom, [LcdSize] = @LcdSize, [LcdTouchscreen] = @LcdTouchscreen, [BatteryType] = @BatteryType, [BatteryLife] = @BatteryLife, [StorageSize] = @StorageSize, [HdMovie] = @HdMovie, [BuiltInMemory] = @BuiltInMemory WHERE [CameraId] = @original_CameraId AND [ProductId] = @original_ProductId AND (([MegaPixel] = @original_MegaPixel) OR ([MegaPixel] IS NULL AND @original_MegaPixel IS NULL)) AND (([OpticalZoom] = @original_OpticalZoom) OR ([OpticalZoom] IS NULL AND @original_OpticalZoom IS NULL)) AND (([LcdSize] = @original_LcdSize) OR ([LcdSize] IS NULL AND @original_LcdSize IS NULL)) AND (([LcdTouchscreen] = @original_LcdTouchscreen) OR ([LcdTouchscreen] IS NULL AND @original_LcdTouchscreen IS NULL)) AND (([BatteryType] = @original_BatteryType) OR ([BatteryType] IS NULL AND @original_BatteryType IS NULL)) AND (([BatteryLife] = @original_BatteryLife) OR ([BatteryLife] IS NULL AND @original_BatteryLife IS NULL)) AND (([StorageSize] = @original_StorageSize) OR ([StorageSize] IS NULL AND @original_StorageSize IS NULL)) AND (([HdMovie] = @original_HdMovie) OR ([HdMovie] IS NULL AND @original_HdMovie IS NULL)) AND (([BuiltInMemory] = @original_BuiltInMemory) OR ([BuiltInMemory] IS NULL AND @original_BuiltInMemory IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_CameraId" Type="Int32" />
                                <asp:Parameter Name="original_ProductId" Type="Int32" />
                                <asp:Parameter Name="original_MegaPixel" Type="String" />
                                <asp:Parameter Name="original_OpticalZoom" Type="String" />
                                <asp:Parameter Name="original_LcdSize" Type="String" />
                                <asp:Parameter Name="original_LcdTouchscreen" Type="String" />
                                <asp:Parameter Name="original_BatteryType" Type="String" />
                                <asp:Parameter Name="original_BatteryLife" Type="String" />
                                <asp:Parameter Name="original_StorageSize" Type="String" />
                                <asp:Parameter Name="original_HdMovie" Type="String" />
                                <asp:Parameter Name="original_BuiltInMemory" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ProductId" Type="Int32" />
                                <asp:Parameter Name="MegaPixel" Type="String" />
                                <asp:Parameter Name="OpticalZoom" Type="String" />
                                <asp:Parameter Name="LcdSize" Type="String" />
                                <asp:Parameter Name="LcdTouchscreen" Type="String" />
                                <asp:Parameter Name="BatteryType" Type="String" />
                                <asp:Parameter Name="BatteryLife" Type="String" />
                                <asp:Parameter Name="StorageSize" Type="String" />
                                <asp:Parameter Name="HdMovie" Type="String" />
                                <asp:Parameter Name="BuiltInMemory" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                                    Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="MegaPixel" Type="String" />
                                <asp:Parameter Name="OpticalZoom" Type="String" />
                                <asp:Parameter Name="LcdSize" Type="String" />
                                <asp:Parameter Name="LcdTouchscreen" Type="String" />
                                <asp:Parameter Name="BatteryType" Type="String" />
                                <asp:Parameter Name="BatteryLife" Type="String" />
                                <asp:Parameter Name="StorageSize" Type="String" />
                                <asp:Parameter Name="HdMovie" Type="String" />
                                <asp:Parameter Name="BuiltInMemory" Type="String" />
                                <asp:Parameter Name="original_CameraId" Type="Int32" />
                                <asp:Parameter Name="original_ProductId" Type="Int32" />
                                <asp:Parameter Name="original_MegaPixel" Type="String" />
                                <asp:Parameter Name="original_OpticalZoom" Type="String" />
                                <asp:Parameter Name="original_LcdSize" Type="String" />
                                <asp:Parameter Name="original_LcdTouchscreen" Type="String" />
                                <asp:Parameter Name="original_BatteryType" Type="String" />
                                <asp:Parameter Name="original_BatteryLife" Type="String" />
                                <asp:Parameter Name="original_StorageSize" Type="String" />
                                <asp:Parameter Name="original_HdMovie" Type="String" />
                                <asp:Parameter Name="original_BuiltInMemory" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>



             
                    <asp:Button ID="Button1" runat="server" Text="Back" 
                            style="margin-left:0px;margin-top:40px;" BackColor="#B7B793" 
                            Height="37px" Width="82px" onclick="Button1_Click"></asp:Button>




                      </div>
					
				
					<div class="cl">&nbsp;</div>
				</section>
				<!-- end of cols -->
			


            

			</div>

           
			
		
		</div><!-- end of main -->


</asp:Content>
