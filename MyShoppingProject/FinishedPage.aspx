<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="FinishedPage.aspx.cs" Inherits="MyShoppingProject.FinishedPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- main -->
		<div class="main">
			
			<div class="shell">
				<!-- cols -->
				<section class="cols">
					<div class="col11">

						<h1 class="caption5"> <h2>Congratulations!</h2><br />Your order has been received , It is in progress now.</h1><hr />
                              
					
					  <p class="p3">Thank you for your purchase!</p><br />

                     <p class="p4"> we received your order .<br /> we will contact with you with in 24 hours or next working day and confirm this order through the email or phone no.<br/>
                     After the confirmation call , your luggage will be recieved within the 3 days.</p>
						
					

                      <p style="margin-left:760px;"><asp:Button ID="Button1" runat="server" 
                              Text="Continue Shopping" Width="150px" Height="40px" onclick="Button1_Click"></asp:Button></p>

					</div>
					
					
				
					<div class="cl">&nbsp;</div>
				</section>
				<!-- end of cols -->
			</div>
			<!-- end of shell -->
			
		</div>
		<!-- end of main -->

</asp:Content>
