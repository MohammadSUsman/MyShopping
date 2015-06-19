<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="EditIpod.aspx.cs" Inherits="MyShoppingProject.Admin.EditIpod" %>
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
                            CellPadding="3" DataKeyNames="IpodId" DataSourceID="SqlDataSource1" 
                            GridLines="None">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <EditRowStyle Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="IpodId" HeaderText="IpodId" InsertVisible="False" 
            ReadOnly="True" SortExpression="IpodId" />
        <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
            SortExpression="ProductId" ReadOnly="True" />
        <asp:BoundField DataField="Usb" HeaderText="Usb" SortExpression="Usb" />
        <asp:BoundField DataField="ScreenSize" HeaderText="ScreenSize" 
            SortExpression="ScreenSize" />
        <asp:BoundField DataField="AudioFormats" HeaderText="AudioFormats" 
            SortExpression="AudioFormats" />
        <asp:BoundField DataField="VideoFormats" HeaderText="VideoFormats" 
            SortExpression="VideoFormats" />
        <asp:BoundField DataField="Weight" HeaderText="Weight" 
            SortExpression="Weight" />
        <asp:BoundField DataField="StorageCapacity" HeaderText="StorageCapacity" 
            SortExpression="StorageCapacity" />
        <asp:BoundField DataField="BatteryLife" HeaderText="BatteryLife" 
            SortExpression="BatteryLife" />
        <asp:BoundField DataField="BatteryType" HeaderText="BatteryType" 
            SortExpression="BatteryType" />
        <asp:BoundField DataField="Bluetooth" HeaderText="Bluetooth" 
            SortExpression="Bluetooth" />
        <asp:BoundField DataField="Camera" HeaderText="Camera" 
            SortExpression="Camera" />
        <asp:BoundField DataField="FmRadio" HeaderText="FmRadio" 
            SortExpression="FmRadio" />
        <asp:BoundField DataField="VideoPlayback" HeaderText="VideoPlayback" 
            SortExpression="VideoPlayback" />
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
                            DeleteCommand="DELETE FROM [Ipod] WHERE [IpodId] = @original_IpodId AND [ProductId] = @original_ProductId AND (([Usb] = @original_Usb) OR ([Usb] IS NULL AND @original_Usb IS NULL)) AND (([ScreenSize] = @original_ScreenSize) OR ([ScreenSize] IS NULL AND @original_ScreenSize IS NULL)) AND (([AudioFormats] = @original_AudioFormats) OR ([AudioFormats] IS NULL AND @original_AudioFormats IS NULL)) AND (([VideoFormats] = @original_VideoFormats) OR ([VideoFormats] IS NULL AND @original_VideoFormats IS NULL)) AND (([Weight] = @original_Weight) OR ([Weight] IS NULL AND @original_Weight IS NULL)) AND (([StorageCapacity] = @original_StorageCapacity) OR ([StorageCapacity] IS NULL AND @original_StorageCapacity IS NULL)) AND (([BatteryLife] = @original_BatteryLife) OR ([BatteryLife] IS NULL AND @original_BatteryLife IS NULL)) AND (([BatteryType] = @original_BatteryType) OR ([BatteryType] IS NULL AND @original_BatteryType IS NULL)) AND (([Bluetooth] = @original_Bluetooth) OR ([Bluetooth] IS NULL AND @original_Bluetooth IS NULL)) AND (([Camera] = @original_Camera) OR ([Camera] IS NULL AND @original_Camera IS NULL)) AND (([FmRadio] = @original_FmRadio) OR ([FmRadio] IS NULL AND @original_FmRadio IS NULL)) AND (([VideoPlayback] = @original_VideoPlayback) OR ([VideoPlayback] IS NULL AND @original_VideoPlayback IS NULL))" 
                            InsertCommand="INSERT INTO [Ipod] ([ProductId], [Usb], [ScreenSize], [AudioFormats], [VideoFormats], [Weight], [StorageCapacity], [BatteryLife], [BatteryType], [Bluetooth], [Camera], [FmRadio], [VideoPlayback]) VALUES (@ProductId, @Usb, @ScreenSize, @AudioFormats, @VideoFormats, @Weight, @StorageCapacity, @BatteryLife, @BatteryType, @Bluetooth, @Camera, @FmRadio, @VideoPlayback)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Ipod] WHERE ([ProductId] = @ProductId)" 
                            
                            UpdateCommand="UPDATE [Ipod] SET [Usb] = @Usb, [ScreenSize] = @ScreenSize, [AudioFormats] = @AudioFormats, [VideoFormats] = @VideoFormats, [Weight] = @Weight, [StorageCapacity] = @StorageCapacity, [BatteryLife] = @BatteryLife, [BatteryType] = @BatteryType, [Bluetooth] = @Bluetooth, [Camera] = @Camera, [FmRadio] = @FmRadio, [VideoPlayback] = @VideoPlayback WHERE [IpodId] = @original_IpodId AND [ProductId] = @original_ProductId AND (([Usb] = @original_Usb) OR ([Usb] IS NULL AND @original_Usb IS NULL)) AND (([ScreenSize] = @original_ScreenSize) OR ([ScreenSize] IS NULL AND @original_ScreenSize IS NULL)) AND (([AudioFormats] = @original_AudioFormats) OR ([AudioFormats] IS NULL AND @original_AudioFormats IS NULL)) AND (([VideoFormats] = @original_VideoFormats) OR ([VideoFormats] IS NULL AND @original_VideoFormats IS NULL)) AND (([Weight] = @original_Weight) OR ([Weight] IS NULL AND @original_Weight IS NULL)) AND (([StorageCapacity] = @original_StorageCapacity) OR ([StorageCapacity] IS NULL AND @original_StorageCapacity IS NULL)) AND (([BatteryLife] = @original_BatteryLife) OR ([BatteryLife] IS NULL AND @original_BatteryLife IS NULL)) AND (([BatteryType] = @original_BatteryType) OR ([BatteryType] IS NULL AND @original_BatteryType IS NULL)) AND (([Bluetooth] = @original_Bluetooth) OR ([Bluetooth] IS NULL AND @original_Bluetooth IS NULL)) AND (([Camera] = @original_Camera) OR ([Camera] IS NULL AND @original_Camera IS NULL)) AND (([FmRadio] = @original_FmRadio) OR ([FmRadio] IS NULL AND @original_FmRadio IS NULL)) AND (([VideoPlayback] = @original_VideoPlayback) OR ([VideoPlayback] IS NULL AND @original_VideoPlayback IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_IpodId" Type="Int32" />
                                <asp:Parameter Name="original_ProductId" Type="Int32" />
                                <asp:Parameter Name="original_Usb" Type="String" />
                                <asp:Parameter Name="original_ScreenSize" Type="String" />
                                <asp:Parameter Name="original_AudioFormats" Type="String" />
                                <asp:Parameter Name="original_VideoFormats" Type="String" />
                                <asp:Parameter Name="original_Weight" Type="String" />
                                <asp:Parameter Name="original_StorageCapacity" Type="String" />
                                <asp:Parameter Name="original_BatteryLife" Type="String" />
                                <asp:Parameter Name="original_BatteryType" Type="String" />
                                <asp:Parameter Name="original_Bluetooth" Type="String" />
                                <asp:Parameter Name="original_Camera" Type="String" />
                                <asp:Parameter Name="original_FmRadio" Type="String" />
                                <asp:Parameter Name="original_VideoPlayback" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ProductId" Type="Int32" />
                                <asp:Parameter Name="Usb" Type="String" />
                                <asp:Parameter Name="ScreenSize" Type="String" />
                                <asp:Parameter Name="AudioFormats" Type="String" />
                                <asp:Parameter Name="VideoFormats" Type="String" />
                                <asp:Parameter Name="Weight" Type="String" />
                                <asp:Parameter Name="StorageCapacity" Type="String" />
                                <asp:Parameter Name="BatteryLife" Type="String" />
                                <asp:Parameter Name="BatteryType" Type="String" />
                                <asp:Parameter Name="Bluetooth" Type="String" />
                                <asp:Parameter Name="Camera" Type="String" />
                                <asp:Parameter Name="FmRadio" Type="String" />
                                <asp:Parameter Name="VideoPlayback" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                                    Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Usb" Type="String" />
                                <asp:Parameter Name="ScreenSize" Type="String" />
                                <asp:Parameter Name="AudioFormats" Type="String" />
                                <asp:Parameter Name="VideoFormats" Type="String" />
                                <asp:Parameter Name="Weight" Type="String" />
                                <asp:Parameter Name="StorageCapacity" Type="String" />
                                <asp:Parameter Name="BatteryLife" Type="String" />
                                <asp:Parameter Name="BatteryType" Type="String" />
                                <asp:Parameter Name="Bluetooth" Type="String" />
                                <asp:Parameter Name="Camera" Type="String" />
                                <asp:Parameter Name="FmRadio" Type="String" />
                                <asp:Parameter Name="VideoPlayback" Type="String" />
                                <asp:Parameter Name="original_IpodId" Type="Int32" />
                                <asp:Parameter Name="original_ProductId" Type="Int32" />
                                <asp:Parameter Name="original_Usb" Type="String" />
                                <asp:Parameter Name="original_ScreenSize" Type="String" />
                                <asp:Parameter Name="original_AudioFormats" Type="String" />
                                <asp:Parameter Name="original_VideoFormats" Type="String" />
                                <asp:Parameter Name="original_Weight" Type="String" />
                                <asp:Parameter Name="original_StorageCapacity" Type="String" />
                                <asp:Parameter Name="original_BatteryLife" Type="String" />
                                <asp:Parameter Name="original_BatteryType" Type="String" />
                                <asp:Parameter Name="original_Bluetooth" Type="String" />
                                <asp:Parameter Name="original_Camera" Type="String" />
                                <asp:Parameter Name="original_FmRadio" Type="String" />
                                <asp:Parameter Name="original_VideoPlayback" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>








                   <asp:Button ID="Button1" runat="server" Text="Back" 
                            style="margin-left:0px;margin-top:50px;" BackColor="#B7B793" 
                            Height="37px" Width="82px" onclick="Button1_Click"></asp:Button>


                      </div>
					
				
					<div class="cl">&nbsp;</div>
				</section>
				<!-- end of cols -->
			


            

			</div>

           
			
		
		</div><!-- end of main -->




</asp:Content>
