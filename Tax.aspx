<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Tax.aspx.cs" Inherits="Tax" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server">
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">How to compute for <strong>Tax</strong></h2>
                    <hr>
                </div>
                <div class="col-lg-12">
                     <img src="" alt="error picture not found" class="img-responsive"/>
                </div>
                <div class="col-md-6">
        
                <h4>Basic Pay</h4>                     
                        <div class="form-group">
                            <div class="col-lg-4">
                                <label>Salary:</label>    
                            </div>
                            <div class="col-lg-8">
                            <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control" required/>
                            </div>    
                        </div>

                        <div class="col-lg-offset-4 col-lg-8">
                            <asp:Button ID="btnCalculate" runat="server" CssClass="btn-default" Text="Calculate" OnClick="btnCalculate_Click"/>
                        </div>


                </div><!-- col end -->
                <div class="col-lg-6">
                    
                    <h4>Your Tax is: <asp:Label ID="tax" runat="server"></asp:Label> </h4> 
                    <br />
                    <h5>Your tax goes to...</h5>
                    <div class="col-lg-offset-1" runat="server" visible="false" id="results">
                        <strong>Congress of the Philippines:&nbsp</strong> <asp:Label runat="server" ID="Label0"></asp:Label><br />
                        <strong>Office of the President:&nbsp</strong> <asp:Label runat="server" ID="Label1"></asp:Label><br />
                        <strong>Office od the Vice-President:&nbsp</strong> <asp:Label runat="server" ID="Label2"></asp:Label><br />
                        <strong>Department of Agrarian Reform:&nbsp</strong> <asp:Label runat="server" ID="Label3"></asp:Label><br />
                        <strong>Department of Agriculture:&nbsp</strong> <asp:Label runat="server" ID="Label4"></asp:Label><br />
                        <strong>Department of Budget and Management:&nbsp</strong> <asp:Label runat="server" ID="Label5"></asp:Label><br />
                        <strong>Department of Education:&nbsp</strong> <asp:Label runat="server" ID="Label6"></asp:Label><br />
                        <strong>State Universities and Colleges:&nbsp</strong> <asp:Label runat="server" ID="Label7"></asp:Label><br />
                        <strong>Department of Energy:&nbsp</strong> <asp:Label runat="server" ID="Label8"></asp:Label><br />
                        <strong>Department of Environment and Natural Resources:&nbsp</strong> <asp:Label runat="server" ID="Label9"></asp:Label><br />
                        <strong>Department of Finance:&nbsp</strong> <asp:Label runat="server" ID="Label10"></asp:Label><br />
                        <strong>Department of Foreign Affairs:&nbsp</strong> <asp:Label runat="server" ID="Label11"></asp:Label><br />
                        <strong>Department of Health:&nbsp</strong> <asp:Label runat="server" ID="Label12"></asp:Label><br />
                        <strong>Department of Interior and Local Government:&nbsp</strong> <asp:Label runat="server" ID="Label13"></asp:Label><br />
                        <strong>Department of Justice:&nbsp</strong> <asp:Label runat="server" ID="Label14"></asp:Label><br />
                        <strong>Department of Labor and Employement:&nbsp</strong> <asp:Label runat="server" ID="Label15"></asp:Label><br />
                        <strong>Department of National Defense:&nbsp</strong> <asp:Label runat="server" ID="Label16"></asp:Label><br />
                        <strong>Department of Public Works and Highways:&nbsp</strong> <asp:Label runat="server" ID="Label17"></asp:Label><br />
                        <strong>Department of Science and Technology:&nbsp</strong> <asp:Label runat="server" ID="Label18"></asp:Label><br />
                        <strong>Department of Social Welfare and Development:&nbsp</strong> <asp:Label runat="server" ID="Label19"></asp:Label><br />
                        <strong>Department of Tourism:&nbsp</strong> <asp:Label runat="server" ID="Label20"></asp:Label><br />
                        <strong>Department of Trade and Industry:&nbsp</strong> <asp:Label runat="server" ID="Label21"></asp:Label><br />
                        <strong>Department of Transportation and Commmuncations:&nbsp</strong> <asp:Label runat="server" ID="Label22"></asp:Label><br />
                        <strong>National Economic Development Authority:&nbsp</strong> <asp:Label runat="server" ID="Label23"></asp:Label><br />
                        <strong>Presidential Communications Operation Office:&nbsp</strong> <asp:Label runat="server" ID="Label24"></asp:Label><br />
                        <strong>Other Executive Offices:&nbsp</strong> <asp:Label runat="server" ID="Label25"></asp:Label><br />
                        <strong>Autonomous Region in Muslim Mindanao:&nbsp</strong> <asp:Label runat="server" ID="Label26"></asp:Label><br />
                        <strong>Joint Legislative-Executive Councils:&nbsp</strong> <asp:Label runat="server" ID="Label27"></asp:Label><br />
                        <strong>The Judiciary:&nbsp</strong> <asp:Label runat="server" ID="Label28"></asp:Label><br />
                        <strong>Civil Service Commission:&nbsp</strong> <asp:Label runat="server" ID="Label29"></asp:Label><br />
                        <strong>Commission on Audit:&nbsp</strong> <asp:Label runat="server" ID="Label30"></asp:Label><br />
                        <strong>Commision on Elections:&nbsp</strong> <asp:Label runat="server" ID="Label31"></asp:Label><br />
                        <strong>Office of the Ombudsman:&nbsp</strong> <asp:Label runat="server" ID="Label32"></asp:Label><br />
                        <strong>Commission on Human Rights:&nbsp</strong> <asp:Label runat="server" ID="Label33"></asp:Label><br />
                        <strong>Special Purposes Funds:&nbsp</strong> <asp:Label runat="server" ID="Label34"></asp:Label><br />

                    </div>
                </div>
                <div class="clearfix"></div>
            </div><!--box end -->
        </div><!-- row end -->
    </form>
</asp:Content>

