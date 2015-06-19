<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="EditMobile.aspx.cs" Inherits="MyShoppingProject.EditMobile" %>
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
                            AutoGenerateRows="False" BackColor="White" BorderColor="#999999" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MobileId" 
                            DataSourceID="SqlDataSource1" GridLines="None">
                     <AlternatingRowStyle BackColor="#DCDCDC" />
                     <EditRowStyle Font-Bold="True" ForeColor="White" />
                     <Fields>
                         <asp:BoundField DataField="MobileId" HeaderText="MobileId" 
                             InsertVisible="False" ReadOnly="True" SortExpression="MobileId" />
                         <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                             SortExpression="ProductId" ReadOnly="True" />
                         <asp:BoundField DataField="Processor" HeaderText="Processor" 
                             SortExpression="Processor" />
                         <asp:BoundField DataField="Ram" HeaderText="Ram" SortExpression="Ram" />
                         <asp:BoundField DataField="BuiltInMemory" HeaderText="BuiltInMemory" 
                             SortExpression="BuiltInMemory" />
                         <asp:BoundField DataField="DisplaySize" HeaderText="DisplaySize" 
                             SortExpression="DisplaySize" />
                         <asp:BoundField DataField="Camera" HeaderText="Camera" 
                             SortExpression="Camera" />
                         <asp:BoundField DataField="CallTime" HeaderText="CallTime" 
                             SortExpression="CallTime" />
                         <asp:BoundField DataField="BatteryType" HeaderText="BatteryType" 
                             SortExpression="BatteryType" />
                         <asp:BoundField DataField="Color" HeaderText="Color" 
                             SortExpression="Color" />
                         <asp:BoundField DataField="Sims" HeaderText="Sims" 
                             SortExpression="Sims" />
                         <asp:BoundField DataField="AudioPlayer" HeaderText="AudioPlayer" 
                             SortExpression="AudioPlayer" />
                         <asp:BoundField DataField="VideoPlayer" HeaderText="VideoPlayer" 
                             SortExpression="VideoPlayer" />
                         <asp:BoundField DataField="FmRadio" HeaderText="FmRadio" 
                             SortExpression="FmRadio" />
                         <asp:BoundField DataField="Internet" HeaderText="Internet" 
                             SortExpression="Internet" />
                         <asp:BoundField DataField="Wifi" HeaderText="Wifi" SortExpression="Wifi" />
                         <asp:BoundField DataField="BatteryTiming" HeaderText="BatteryTiming" 
                             SortExpression="BatteryTiming" />
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
                            DeleteCommand="DELETE FROM [Mobile] WHERE [MobileId] = @original_MobileId AND [ProductId] = @original_ProductId AND (([Processor] = @original_Processor) OR ([Processor] IS NULL AND @original_Processor IS NULL)) AND (([Ram] = @original_Ram) OR ([Ram] IS NULL AND @original_Ram IS NULL)) AND (([BuiltinMemory] = @original_BuiltinMemory) OR ([BuiltinMemory] IS NULL AND @original_BuiltinMemory IS NULL)) AND (([DisplaySize] = @original_DisplaySize) OR ([DisplaySize] IS NULL AND @original_DisplaySize IS NULL)) AND (([Camera] = @original_Camera) OR ([Camera] IS NULL AND @original_Camera IS NULL)) AND (([CallTime] = @original_CallTime) OR ([CallTime] IS NULL AND @original_CallTime IS NULL)) AND (([BatteryType] = @original_BatteryType) OR ([BatteryType] IS NULL AND @original_BatteryType IS NULL)) AND (([Color] = @original_Color) OR ([Color] IS NULL AND @original_Color IS NULL)) AND (([Sims] = @original_Sims) OR ([Sims] IS NULL AND @original_Sims IS NULL)) AND (([AudioPlayer] = @original_AudioPlayer) OR ([AudioPlayer] IS NULL AND @original_AudioPlayer IS NULL)) AND (([VideoPlayer] = @original_VideoPlayer) OR ([VideoPlayer] IS NULL AND @original_VideoPlayer IS NULL)) AND (([FmRadio] = @original_FmRadio) OR ([FmRadio] IS NULL AND @original_FmRadio IS NULL)) AND (([Internet] = @original_Internet) OR ([Internet] IS NULL AND @original_Internet IS NULL)) AND (([Wifi] = @original_Wifi) OR ([Wifi] IS NULL AND @original_Wifi IS NULL)) AND (([BatteryTiming] = @original_BatteryTiming) OR ([BatteryTiming] IS NULL AND @original_BatteryTiming IS NULL))" 
                            InsertCommand="INSERT INTO [Mobile] ([ProductId], [Processor], [Ram], [BuiltinMemory], [DisplaySize], [Camera], [CallTime], [BatteryType], [Color], [Sims], [AudioPlayer], [VideoPlayer], [FmRadio], [Internet], [Wifi], [BatteryTiming]) VALUES (@ProductId, @Processor, @Ram, @BuiltinMemory, @DisplaySize, @Camera, @CallTime, @BatteryType, @Color, @Sims, @AudioPlayer, @VideoPlayer, @FmRadio, @Internet, @Wifi, @BatteryTiming)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Mobile] WHERE ([ProductId] = @ProductId)" 
                            
                            
                            UpdateCommand="UPDATE [Mobile] SET  [Processor] = @Processor, [Ram] = @Ram, [BuiltinMemory] = @BuiltinMemory, [DisplaySize] = @DisplaySize, [Camera] = @Camera, [CallTime] = @CallTime, [BatteryType] = @BatteryType, [Color] = @Color, [Sims] = @Sims, [AudioPlayer] = @AudioPlayer, [VideoPlayer] = @VideoPlayer, [FmRadio] = @FmRadio, [Internet] = @Internet, [Wifi] = @Wifi, [BatteryTiming] = @BatteryTiming WHERE [MobileId] = @original_MobileId AND [ProductId] = @original_ProductId AND (([Processor] = @original_Processor) OR ([Processor] IS NULL AND @original_Processor IS NULL)) AND (([Ram] = @original_Ram) OR ([Ram] IS NULL AND @original_Ram IS NULL)) AND (([BuiltinMemory] = @original_BuiltinMemory) OR ([BuiltinMemory] IS NULL AND @original_BuiltinMemory IS NULL)) AND (([DisplaySize] = @original_DisplaySize) OR ([DisplaySize] IS NULL AND @original_DisplaySize IS NULL)) AND (([Camera] = @original_Camera) OR ([Camera] IS NULL AND @original_Camera IS NULL)) AND (([CallTime] = @original_CallTime) OR ([CallTime] IS NULL AND @original_CallTime IS NULL)) AND (([BatteryType] = @original_BatteryType) OR ([BatteryType] IS NULL AND @original_BatteryType IS NULL)) AND (([Color] = @original_Color) OR ([Color] IS NULL AND @original_Color IS NULL)) AND (([Sims] = @original_Sims) OR ([Sims] IS NULL AND @original_Sims IS NULL)) AND (([AudioPlayer] = @original_AudioPlayer) OR ([AudioPlayer] IS NULL AND @original_AudioPlayer IS NULL)) AND (([VideoPlayer] = @original_VideoPlayer) OR ([VideoPlayer] IS NULL AND @original_VideoPlayer IS NULL)) AND (([FmRadio] = @original_FmRadio) OR ([FmRadio] IS NULL AND @original_FmRadio IS NULL)) AND (([Internet] = @original_Internet) OR ([Internet] IS NULL AND @original_Internet IS NULL)) AND (([Wifi] = @original_Wifi) OR ([Wifi] IS NULL AND @original_Wifi IS NULL)) AND (([BatteryTiming] = @original_BatteryTiming) OR ([BatteryTiming] IS NULL AND @original_BatteryTiming IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_MobileId" Type="Int32" />
                                <asp:Parameter Name="original_ProductId" Type="Int32" />
                                <asp:Parameter Name="original_Processor" Type="String" />
                                <asp:Parameter Name="original_Ram" Type="String" />
                                <asp:Parameter Name="original_BuiltinMemory" Type="String" />
                                <asp:Parameter Name="original_DisplaySize" Type="String" />
                                <asp:Parameter Name="original_Camera" Type="String" />
                                <asp:Parameter Name="original_CallTime" Type="String" />
                                <asp:Parameter Name="original_BatteryType" Type="String" />
                                <asp:Parameter Name="original_Color" Type="String" />
                                <asp:Parameter Name="original_Sims" Type="String" />
                                <asp:Parameter Name="original_AudioPlayer" Type="String" />
                                <asp:Parameter Name="original_VideoPlayer" Type="String" />
                                <asp:Parameter Name="original_FmRadio" Type="String" />
                                <asp:Parameter Name="original_Internet" Type="String" />
                                <asp:Parameter Name="original_Wifi" Type="String" />
                                <asp:Parameter Name="original_BatteryTiming" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ProductId" Type="Int32" />
                                <asp:Parameter Name="Processor" Type="String" />
                                <asp:Parameter Name="Ram" Type="String" />
                                <asp:Parameter Name="BuiltinMemory" Type="String" />
                                <asp:Parameter Name="DisplaySize" Type="String" />
                                <asp:Parameter Name="Camera" Type="String" />
                                <asp:Parameter Name="CallTime" Type="String" />
                                <asp:Parameter Name="BatteryType" Type="String" />
                                <asp:Parameter Name="Color" Type="String" />
                                <asp:Parameter Name="Sims" Type="String" />
                                <asp:Parameter Name="AudioPlayer" Type="String" />
                                <asp:Parameter Name="VideoPlayer" Type="String" />
                                <asp:Parameter Name="FmRadio" Type="String" />
                                <asp:Parameter Name="Internet" Type="String" />
                                <asp:Parameter Name="Wifi" Type="String" />
                                <asp:Parameter Name="BatteryTiming" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" 
                                    Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Processor" Type="String" />
                                <asp:Parameter Name="Ram" Type="String" />
                                <asp:Parameter Name="BuiltinMemory" Type="String" />
                                <asp:Parameter Name="DisplaySize" Type="String" />
                                <asp:Parameter Name="Camera" Type="String" />
                                <asp:Parameter Name="CallTime" Type="String" />
                                <asp:Parameter Name="BatteryType" Type="String" />
                                <asp:Parameter Name="Color" Type="String" />
                                <asp:Parameter Name="Sims" Type="String" />
                                <asp:Parameter Name="AudioPlayer" Type="String" />
                                <asp:Parameter Name="VideoPlayer" Type="String" />
                                <asp:Parameter Name="FmRadio" Type="String" />
                                <asp:Parameter Name="Internet" Type="String" />
                                <asp:Parameter Name="Wifi" Type="String" />
                                <asp:Parameter Name="BatteryTiming" Type="String" />
                                <asp:Parameter Name="original_MobileId" Type="Int32" />
                                <asp:Parameter Name="original_ProductId" Type="Int32" />
                                <asp:Parameter Name="original_Processor" Type="String" />
                                <asp:Parameter Name="original_Ram" Type="String" />
                                <asp:Parameter Name="original_BuiltinMemory" Type="String" />
                                <asp:Parameter Name="original_DisplaySize" Type="String" />
                                <asp:Parameter Name="original_Camera" Type="String" />
                                <asp:Parameter Name="original_CallTime" Type="String" />
                                <asp:Parameter Name="original_BatteryType" Type="String" />
                                <asp:Parameter Name="original_Color" Type="String" />
                                <asp:Parameter Name="original_Sims" Type="String" />
                                <asp:Parameter Name="original_AudioPlayer" Type="String" />
                                <asp:Parameter Name="original_VideoPlayer" Type="String" />
                                <asp:Parameter Name="original_FmRadio" Type="String" />
                                <asp:Parameter Name="original_Internet" Type="String" />
                                <asp:Parameter Name="original_Wifi" Type="String" />
                                <asp:Parameter Name="original_BatteryTiming" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>



                           <asp:Button ID="Button1" runat="server" Text="Back"  style="margin-left:0px;margin-top:30px;" BackColor="#B7B793" 
                            Height="37px" Width="82px"
                          onclick="Button1_Click"></asp:Button>

                      </div>
					
				
					<div class="cl">&nbsp;</div>
				</section>
				<!-- end of cols -->
			


            

			</div>

           
			
		
		</div><!-- end of main -->


</asp:Content>
