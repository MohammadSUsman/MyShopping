<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="EditLaptop.aspx.cs" Inherits="MyShoppingProject.Admin.EditLaptop" %>
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



<asp:DetailsView ID="DetailsView1" runat="server" Width="100%" Height="50px" AutoGenerateRows="False" class="caption13"
                            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="3" DataKeyNames="LaptopId" DataSourceID="SqlDataSource1" 
                            GridLines="None">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <EditRowStyle Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="LaptopId" HeaderText="LaptopId" 
            InsertVisible="False" ReadOnly="True" SortExpression="LaptopId" />
        <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
            SortExpression="ProductId" ReadOnly="True" />
        <asp:BoundField DataField="Processor" HeaderText="Processor" 
            SortExpression="Processor" />
        <asp:BoundField DataField="Ram" HeaderText="Ram" SortExpression="Ram" />
        <asp:BoundField DataField="Camera" HeaderText="Camera" 
            SortExpression="Camera" />
        <asp:BoundField DataField="HardSize" HeaderText="HardSize" 
            SortExpression="HardSize" />
        <asp:BoundField DataField="Lan" HeaderText="Lan" SortExpression="Lan" />
        <asp:BoundField DataField="Wifi" HeaderText="Wifi" SortExpression="Wifi" />
        <asp:BoundField DataField="Hdmi" HeaderText="Hdmi" SortExpression="Hdmi" />
        <asp:BoundField DataField="BatteryTime" HeaderText="BatteryTime" 
            SortExpression="BatteryTime" />
        <asp:BoundField DataField="ScreenSize" HeaderText="ScreenSize" 
            SortExpression="ScreenSize" />
        <asp:BoundField DataField="OperatingSystem" HeaderText="OperatingSystem" 
            SortExpression="OperatingSystem" />
        <asp:BoundField DataField="GraphicsMemory" HeaderText="GraphicsMemory" 
            SortExpression="GraphicsMemory" />
        <asp:BoundField DataField="Bluetooth" HeaderText="Bluetooth" 
            SortExpression="Bluetooth" />
        <asp:BoundField DataField="DedicatedGraphics" HeaderText="DedicatedGraphics" 
            SortExpression="DedicatedGraphics" />
        <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
        <asp:BoundField DataField="BatteryCell" HeaderText="BatteryCell" 
            SortExpression="BatteryCell" />
        <asp:BoundField DataField="USBPorts" HeaderText="USBPorts" 
            SortExpression="USBPorts" />
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
                            DeleteCommand="DELETE FROM [Laptop] WHERE [LaptopId] = @original_LaptopId AND [ProductId] = @original_ProductId AND (([Processor] = @original_Processor) OR ([Processor] IS NULL AND @original_Processor IS NULL)) AND (([Ram] = @original_Ram) OR ([Ram] IS NULL AND @original_Ram IS NULL)) AND (([Camera] = @original_Camera) OR ([Camera] IS NULL AND @original_Camera IS NULL)) AND (([HardSize] = @original_HardSize) OR ([HardSize] IS NULL AND @original_HardSize IS NULL)) AND (([Lan] = @original_Lan) OR ([Lan] IS NULL AND @original_Lan IS NULL)) AND (([Wifi] = @original_Wifi) OR ([Wifi] IS NULL AND @original_Wifi IS NULL)) AND (([Hdmi] = @original_Hdmi) OR ([Hdmi] IS NULL AND @original_Hdmi IS NULL)) AND (([BatteryTime] = @original_BatteryTime) OR ([BatteryTime] IS NULL AND @original_BatteryTime IS NULL)) AND (([ScreenSize] = @original_ScreenSize) OR ([ScreenSize] IS NULL AND @original_ScreenSize IS NULL)) AND (([OperatingSystem] = @original_OperatingSystem) OR ([OperatingSystem] IS NULL AND @original_OperatingSystem IS NULL)) AND (([GraphicsMemory] = @original_GraphicsMemory) OR ([GraphicsMemory] IS NULL AND @original_GraphicsMemory IS NULL)) AND (([Bluetooth] = @original_Bluetooth) OR ([Bluetooth] IS NULL AND @original_Bluetooth IS NULL)) AND (([DedicatedGraphics] = @original_DedicatedGraphics) OR ([DedicatedGraphics] IS NULL AND @original_DedicatedGraphics IS NULL)) AND (([Color] = @original_Color) OR ([Color] IS NULL AND @original_Color IS NULL)) AND (([BatteryCell] = @original_BatteryCell) OR ([BatteryCell] IS NULL AND @original_BatteryCell IS NULL)) AND (([USBPorts] = @original_USBPorts) OR ([USBPorts] IS NULL AND @original_USBPorts IS NULL))" 
                            InsertCommand="INSERT INTO [Laptop] ([ProductId], [Processor], [Ram], [Camera], [HardSize], [Lan], [Wifi], [Hdmi], [BatteryTime], [ScreenSize], [OperatingSystem], [GraphicsMemory], [Bluetooth], [DedicatedGraphics], [Color], [BatteryCell], [USBPorts]) VALUES (@ProductId, @Processor, @Ram, @Camera, @HardSize, @Lan, @Wifi, @Hdmi, @BatteryTime, @ScreenSize, @OperatingSystem, @GraphicsMemory, @Bluetooth, @DedicatedGraphics, @Color, @BatteryCell, @USBPorts)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Laptop]" 
                            UpdateCommand="UPDATE [Laptop] SET [Processor] = @Processor, [Ram] = @Ram, [Camera] = @Camera, [HardSize] = @HardSize, [Lan] = @Lan, [Wifi] = @Wifi, [Hdmi] = @Hdmi, [BatteryTime] = @BatteryTime, [ScreenSize] = @ScreenSize, [OperatingSystem] = @OperatingSystem, [GraphicsMemory] = @GraphicsMemory, [Bluetooth] = @Bluetooth, [DedicatedGraphics] = @DedicatedGraphics, [Color] = @Color, [BatteryCell] = @BatteryCell, [USBPorts] = @USBPorts WHERE [LaptopId] = @original_LaptopId AND [ProductId] = @original_ProductId AND (([Processor] = @original_Processor) OR ([Processor] IS NULL AND @original_Processor IS NULL)) AND (([Ram] = @original_Ram) OR ([Ram] IS NULL AND @original_Ram IS NULL)) AND (([Camera] = @original_Camera) OR ([Camera] IS NULL AND @original_Camera IS NULL)) AND (([HardSize] = @original_HardSize) OR ([HardSize] IS NULL AND @original_HardSize IS NULL)) AND (([Lan] = @original_Lan) OR ([Lan] IS NULL AND @original_Lan IS NULL)) AND (([Wifi] = @original_Wifi) OR ([Wifi] IS NULL AND @original_Wifi IS NULL)) AND (([Hdmi] = @original_Hdmi) OR ([Hdmi] IS NULL AND @original_Hdmi IS NULL)) AND (([BatteryTime] = @original_BatteryTime) OR ([BatteryTime] IS NULL AND @original_BatteryTime IS NULL)) AND (([ScreenSize] = @original_ScreenSize) OR ([ScreenSize] IS NULL AND @original_ScreenSize IS NULL)) AND (([OperatingSystem] = @original_OperatingSystem) OR ([OperatingSystem] IS NULL AND @original_OperatingSystem IS NULL)) AND (([GraphicsMemory] = @original_GraphicsMemory) OR ([GraphicsMemory] IS NULL AND @original_GraphicsMemory IS NULL)) AND (([Bluetooth] = @original_Bluetooth) OR ([Bluetooth] IS NULL AND @original_Bluetooth IS NULL)) AND (([DedicatedGraphics] = @original_DedicatedGraphics) OR ([DedicatedGraphics] IS NULL AND @original_DedicatedGraphics IS NULL)) AND (([Color] = @original_Color) OR ([Color] IS NULL AND @original_Color IS NULL)) AND (([BatteryCell] = @original_BatteryCell) OR ([BatteryCell] IS NULL AND @original_BatteryCell IS NULL)) AND (([USBPorts] = @original_USBPorts) OR ([USBPorts] IS NULL AND @original_USBPorts IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_LaptopId" Type="Int32" />
                                <asp:Parameter Name="original_ProductId" Type="Int32" />
                                <asp:Parameter Name="original_Processor" Type="String" />
                                <asp:Parameter Name="original_Ram" Type="String" />
                                <asp:Parameter Name="original_Camera" Type="String" />
                                <asp:Parameter Name="original_HardSize" Type="String" />
                                <asp:Parameter Name="original_Lan" Type="String" />
                                <asp:Parameter Name="original_Wifi" Type="String" />
                                <asp:Parameter Name="original_Hdmi" Type="String" />
                                <asp:Parameter Name="original_BatteryTime" Type="String" />
                                <asp:Parameter Name="original_ScreenSize" Type="String" />
                                <asp:Parameter Name="original_OperatingSystem" Type="String" />
                                <asp:Parameter Name="original_GraphicsMemory" Type="String" />
                                <asp:Parameter Name="original_Bluetooth" Type="String" />
                                <asp:Parameter Name="original_DedicatedGraphics" Type="String" />
                                <asp:Parameter Name="original_Color" Type="String" />
                                <asp:Parameter Name="original_BatteryCell" Type="String" />
                                <asp:Parameter Name="original_USBPorts" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ProductId" Type="Int32" />
                                <asp:Parameter Name="Processor" Type="String" />
                                <asp:Parameter Name="Ram" Type="String" />
                                <asp:Parameter Name="Camera" Type="String" />
                                <asp:Parameter Name="HardSize" Type="String" />
                                <asp:Parameter Name="Lan" Type="String" />
                                <asp:Parameter Name="Wifi" Type="String" />
                                <asp:Parameter Name="Hdmi" Type="String" />
                                <asp:Parameter Name="BatteryTime" Type="String" />
                                <asp:Parameter Name="ScreenSize" Type="String" />
                                <asp:Parameter Name="OperatingSystem" Type="String" />
                                <asp:Parameter Name="GraphicsMemory" Type="String" />
                                <asp:Parameter Name="Bluetooth" Type="String" />
                                <asp:Parameter Name="DedicatedGraphics" Type="String" />
                                <asp:Parameter Name="Color" Type="String" />
                                <asp:Parameter Name="BatteryCell" Type="String" />
                                <asp:Parameter Name="USBPorts" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ProductId" Type="Int32" />
                                <asp:Parameter Name="Processor" Type="String" />
                                <asp:Parameter Name="Ram" Type="String" />
                                <asp:Parameter Name="Camera" Type="String" />
                                <asp:Parameter Name="HardSize" Type="String" />
                                <asp:Parameter Name="Lan" Type="String" />
                                <asp:Parameter Name="Wifi" Type="String" />
                                <asp:Parameter Name="Hdmi" Type="String" />
                                <asp:Parameter Name="BatteryTime" Type="String" />
                                <asp:Parameter Name="ScreenSize" Type="String" />
                                <asp:Parameter Name="OperatingSystem" Type="String" />
                                <asp:Parameter Name="GraphicsMemory" Type="String" />
                                <asp:Parameter Name="Bluetooth" Type="String" />
                                <asp:Parameter Name="DedicatedGraphics" Type="String" />
                                <asp:Parameter Name="Color" Type="String" />
                                <asp:Parameter Name="BatteryCell" Type="String" />
                                <asp:Parameter Name="USBPorts" Type="String" />
                                <asp:Parameter Name="original_LaptopId" Type="Int32" />
                                <asp:Parameter Name="original_ProductId" Type="Int32" />
                                <asp:Parameter Name="original_Processor" Type="String" />
                                <asp:Parameter Name="original_Ram" Type="String" />
                                <asp:Parameter Name="original_Camera" Type="String" />
                                <asp:Parameter Name="original_HardSize" Type="String" />
                                <asp:Parameter Name="original_Lan" Type="String" />
                                <asp:Parameter Name="original_Wifi" Type="String" />
                                <asp:Parameter Name="original_Hdmi" Type="String" />
                                <asp:Parameter Name="original_BatteryTime" Type="String" />
                                <asp:Parameter Name="original_ScreenSize" Type="String" />
                                <asp:Parameter Name="original_OperatingSystem" Type="String" />
                                <asp:Parameter Name="original_GraphicsMemory" Type="String" />
                                <asp:Parameter Name="original_Bluetooth" Type="String" />
                                <asp:Parameter Name="original_DedicatedGraphics" Type="String" />
                                <asp:Parameter Name="original_Color" Type="String" />
                                <asp:Parameter Name="original_BatteryCell" Type="String" />
                                <asp:Parameter Name="original_USBPorts" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>










                     <asp:Button ID="Button1" runat="server" Text="Back" 
                            style="margin-left:0px;margin-top:30px;" BackColor="#B7B793" 
                            Height="37px" Width="82px" onclick="Button1_Click"></asp:Button>


                        <br />
                        <br />
                        <br />


                      </div>
					
				
					<div class="cl">&nbsp;</div>
				</section>
				<!-- end of cols -->
			


            

			</div>

           
			
		
		</div><!-- end of main -->
</asp:Content>
