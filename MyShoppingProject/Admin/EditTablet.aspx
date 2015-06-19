<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="EditTablet.aspx.cs" Inherits="MyShoppingProject.Admin.EditTablet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- main -->
		<div class="main">
			
			 <div class="shell">

	
	
				
				 <!-- cols -->
					<section class="cols">

					<div class="col20">

                    <h1 class="caption3">Edit Specification</h1><hr />


                      
                      <asp:DetailsView ID="DetailsView1" runat="server" Width="100%" Height="50px" class="caption13"
                            AutoGenerateRows="False" DataKeyNames="TabletId" 
                            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="None">
                          <AlternatingRowStyle BackColor="#DCDCDC" />
                          <EditRowStyle Font-Bold="True" ForeColor="White" />
                          <Fields>
                              <asp:BoundField DataField="TabletId" HeaderText="TabletId" 
                                  InsertVisible="False" ReadOnly="True" SortExpression="TabletId" />
                              <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                                  SortExpression="ProductId" ReadOnly="True" />
                              <asp:BoundField DataField="Processor" HeaderText="Processor" 
                                  SortExpression="Processor" />
                              <asp:BoundField DataField="Ram" HeaderText="Ram" SortExpression="Ram" />
                              <asp:BoundField DataField="StorageSize" HeaderText="StorageSize" 
                                  SortExpression="StorageSize" />
                              <asp:BoundField DataField="Camera" HeaderText="Camera" 
                                  SortExpression="Camera" />
                              <asp:BoundField DataField="Bluetooth" HeaderText="Bluetooth" 
                                  SortExpression="Bluetooth" />
                              <asp:BoundField DataField="Wifi" HeaderText="Wifi" SortExpression="Wifi" />
                              <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                              <asp:BoundField DataField="BatteryTime" HeaderText="BatteryTime" 
                                  SortExpression="BatteryTime" />
                              <asp:BoundField DataField="OperatingSystem" HeaderText="OperatingSystem" 
                                  SortExpression="OperatingSystem" />
                              <asp:BoundField DataField="BatteryCell" HeaderText="BatteryCell" 
                                  SortExpression="BatteryCell" />
                              <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                              <asp:BoundField DataField="TouchScreen" HeaderText="TouchScreen" 
                                  SortExpression="TouchScreen" />
                              <asp:BoundField DataField="UsbPort" HeaderText="UsbPort" 
                                  SortExpression="UsbPort" />
                              <asp:CommandField ButtonType="Button" ShowEditButton="True">
                             <ControlStyle BackColor="#B7B793" Height="35px" Width="60px" />
                              </asp:CommandField>
                          </Fields>
                          <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                          <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                          <RowStyle BackColor="#EEEEEE" ForeColor="Black" Height="35px" />
                        </asp:DetailsView>
                      
                      
                      
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [Tablet] WHERE [TabletId] = @original_TabletId AND [ProductId] = @original_ProductId AND (([Processor] = @original_Processor) OR ([Processor] IS NULL AND @original_Processor IS NULL)) AND (([Ram] = @original_Ram) OR ([Ram] IS NULL AND @original_Ram IS NULL)) AND (([StorageSize] = @original_StorageSize) OR ([StorageSize] IS NULL AND @original_StorageSize IS NULL)) AND (([Camera] = @original_Camera) OR ([Camera] IS NULL AND @original_Camera IS NULL)) AND (([Bluetooth] = @original_Bluetooth) OR ([Bluetooth] IS NULL AND @original_Bluetooth IS NULL)) AND (([Wifi] = @original_Wifi) OR ([Wifi] IS NULL AND @original_Wifi IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND (([BatteryTime] = @original_BatteryTime) OR ([BatteryTime] IS NULL AND @original_BatteryTime IS NULL)) AND (([OperatingSystem] = @original_OperatingSystem) OR ([OperatingSystem] IS NULL AND @original_OperatingSystem IS NULL)) AND (([BatteryCell] = @original_BatteryCell) OR ([BatteryCell] IS NULL AND @original_BatteryCell IS NULL)) AND (([Color] = @original_Color) OR ([Color] IS NULL AND @original_Color IS NULL)) AND (([TouchScreen] = @original_TouchScreen) OR ([TouchScreen] IS NULL AND @original_TouchScreen IS NULL)) AND (([UsbPort] = @original_UsbPort) OR ([UsbPort] IS NULL AND @original_UsbPort IS NULL))" 
                            InsertCommand="INSERT INTO [Tablet] ([ProductId], [Processor], [Ram], [StorageSize], [Camera], [Bluetooth], [Wifi], [Size], [BatteryTime], [OperatingSystem], [BatteryCell], [Color], [TouchScreen], [UsbPort]) VALUES (@ProductId, @Processor, @Ram, @StorageSize, @Camera, @Bluetooth, @Wifi, @Size, @BatteryTime, @OperatingSystem, @BatteryCell, @Color, @TouchScreen, @UsbPort)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Tablet] WHERE ([ProductId] = @ProductId)" 
                            
                            UpdateCommand="UPDATE [Tablet] SET  [Processor] = @Processor, [Ram] = @Ram, [StorageSize] = @StorageSize, [Camera] = @Camera, [Bluetooth] = @Bluetooth, [Wifi] = @Wifi, [Size] = @Size, [BatteryTime] = @BatteryTime, [OperatingSystem] = @OperatingSystem, [BatteryCell] = @BatteryCell, [Color] = @Color, [TouchScreen] = @TouchScreen, [UsbPort] = @UsbPort WHERE [TabletId] = @original_TabletId AND [ProductId] = @original_ProductId AND (([Processor] = @original_Processor) OR ([Processor] IS NULL AND @original_Processor IS NULL)) AND (([Ram] = @original_Ram) OR ([Ram] IS NULL AND @original_Ram IS NULL)) AND (([StorageSize] = @original_StorageSize) OR ([StorageSize] IS NULL AND @original_StorageSize IS NULL)) AND (([Camera] = @original_Camera) OR ([Camera] IS NULL AND @original_Camera IS NULL)) AND (([Bluetooth] = @original_Bluetooth) OR ([Bluetooth] IS NULL AND @original_Bluetooth IS NULL)) AND (([Wifi] = @original_Wifi) OR ([Wifi] IS NULL AND @original_Wifi IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND (([BatteryTime] = @original_BatteryTime) OR ([BatteryTime] IS NULL AND @original_BatteryTime IS NULL)) AND (([OperatingSystem] = @original_OperatingSystem) OR ([OperatingSystem] IS NULL AND @original_OperatingSystem IS NULL)) AND (([BatteryCell] = @original_BatteryCell) OR ([BatteryCell] IS NULL AND @original_BatteryCell IS NULL)) AND (([Color] = @original_Color) OR ([Color] IS NULL AND @original_Color IS NULL)) AND (([TouchScreen] = @original_TouchScreen) OR ([TouchScreen] IS NULL AND @original_TouchScreen IS NULL)) AND (([UsbPort] = @original_UsbPort) OR ([UsbPort] IS NULL AND @original_UsbPort IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_TabletId" Type="Int32" />
                                <asp:Parameter Name="original_ProductId" Type="Int32" />
                                <asp:Parameter Name="original_Processor" Type="String" />
                                <asp:Parameter Name="original_Ram" Type="String" />
                                <asp:Parameter Name="original_StorageSize" Type="String" />
                                <asp:Parameter Name="original_Camera" Type="String" />
                                <asp:Parameter Name="original_Bluetooth" Type="String" />
                                <asp:Parameter Name="original_Wifi" Type="String" />
                                <asp:Parameter Name="original_Size" Type="String" />
                                <asp:Parameter Name="original_BatteryTime" Type="String" />
                                <asp:Parameter Name="original_OperatingSystem" Type="String" />
                                <asp:Parameter Name="original_BatteryCell" Type="String" />
                                <asp:Parameter Name="original_Color" Type="String" />
                                <asp:Parameter Name="original_TouchScreen" Type="String" />
                                <asp:Parameter Name="original_UsbPort" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ProductId" Type="Int32" />
                                <asp:Parameter Name="Processor" Type="String" />
                                <asp:Parameter Name="Ram" Type="String" />
                                <asp:Parameter Name="StorageSize" Type="String" />
                                <asp:Parameter Name="Camera" Type="String" />
                                <asp:Parameter Name="Bluetooth" Type="String" />
                                <asp:Parameter Name="Wifi" Type="String" />
                                <asp:Parameter Name="Size" Type="String" />
                                <asp:Parameter Name="BatteryTime" Type="String" />
                                <asp:Parameter Name="OperatingSystem" Type="String" />
                                <asp:Parameter Name="BatteryCell" Type="String" />
                                <asp:Parameter Name="Color" Type="String" />
                                <asp:Parameter Name="TouchScreen" Type="String" />
                                <asp:Parameter Name="UsbPort" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                                    Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Processor" Type="String" />
                                <asp:Parameter Name="Ram" Type="String" />
                                <asp:Parameter Name="StorageSize" Type="String" />
                                <asp:Parameter Name="Camera" Type="String" />
                                <asp:Parameter Name="Bluetooth" Type="String" />
                                <asp:Parameter Name="Wifi" Type="String" />
                                <asp:Parameter Name="Size" Type="String" />
                                <asp:Parameter Name="BatteryTime" Type="String" />
                                <asp:Parameter Name="OperatingSystem" Type="String" />
                                <asp:Parameter Name="BatteryCell" Type="String" />
                                <asp:Parameter Name="Color" Type="String" />
                                <asp:Parameter Name="TouchScreen" Type="String" />
                                <asp:Parameter Name="UsbPort" Type="String" />
                                <asp:Parameter Name="original_TabletId" Type="Int32" />
                                <asp:Parameter Name="original_ProductId" Type="Int32" />
                                <asp:Parameter Name="original_Processor" Type="String" />
                                <asp:Parameter Name="original_Ram" Type="String" />
                                <asp:Parameter Name="original_StorageSize" Type="String" />
                                <asp:Parameter Name="original_Camera" Type="String" />
                                <asp:Parameter Name="original_Bluetooth" Type="String" />
                                <asp:Parameter Name="original_Wifi" Type="String" />
                                <asp:Parameter Name="original_Size" Type="String" />
                                <asp:Parameter Name="original_BatteryTime" Type="String" />
                                <asp:Parameter Name="original_OperatingSystem" Type="String" />
                                <asp:Parameter Name="original_BatteryCell" Type="String" />
                                <asp:Parameter Name="original_Color" Type="String" />
                                <asp:Parameter Name="original_TouchScreen" Type="String" />
                                <asp:Parameter Name="original_UsbPort" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                      
                      



                       <asp:Button ID="Button1" runat="server" Text="Back" style="margin-left:0px;margin-top:30px;" BackColor="#B7B793" 
                            Height="37px" Width="82px" onclick="Button1_Click"></asp:Button>




                      
                      </div>
					
				
					<div class="cl">&nbsp;</div>
				</section>
				<!-- end of cols -->
			


            

			</div>

           
			
		
		</div><!-- end of main -->


</asp:Content>
