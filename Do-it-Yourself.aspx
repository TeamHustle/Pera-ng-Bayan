<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Do-it-Yourself.aspx.cs" Inherits="Do_it_Yourself" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <div class="row">
        <div class="box">
          <div class="col-lg-12">
            <hr>
            <h2 class="intro-text text-center"> Set your own budget <strong> </strong></h2>
            <hr>
          </div>
          <form runat="server">
        <div class="col-md-12">
        <div id="error2" runat="server" class="alert alert-danger" visible="false">
                    Make sure to utilize the budget properly.
                </div>
        <div class="col-md-6">
        
        
            Guidelines

            <div class="form-group">
            <div class="col-lg-4">
             <asp:Label ID="Label1" runat="server" Text="Desired Budget" />
             </div>
             <div class="col-lg-6">
             <asp:TextBox runat="server" ID="txtDesired" class="form-control" required type="number"/>
            </div>
            <div class="col-lg-2">
                <asp:Button runat="server" ID="btnOk" Text="Distribute" class="form-horizontal" onclick="btnOk_Click"/>
            </div>
            </div>
            <div class="form-group" runat="server" id="remaining" visible="false">
            <div class="col-lg-4">
             <asp:Label ID="Label0" runat="server" Text="Remaining Budget" />
             </div>
             <div class="col-lg-6">
             <asp:Label ID="lblRemaining" runat="server" text="0"/>
            </div>
            <div class="col-lg-2">
                <asp:Button runat="server" ID="btnCompare" Text="Compare" 
                    onclick="btnCompare_Click"/>
            </div>
            </div>
            </div>
            <br /><br /><br /><br /><br />
            <div id="error" runat="server" class="alert alert-danger" visible="false">
                    Remaining budget is below 0.
                </div>
            <div class="col-md-12" runat="server" id="proposedbudget" visible="false">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Department</th>
                        <th>Your Budget</th>
                        <th></th>
                    </tr>
                </thead>
            </table>
            </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <div class="col-lg-6">
                            <label>
                                Congress of the Philippines</label></div>
                        <div class="col-lg-6">
                            <asp:TextBox ID="TextBox1" runat="server" required Text="0" />
                            <asp:Button ID="btn1" runat="server" Text="Ok" OnClick="btn1_Click" /><br />
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <div class="col-lg-6">
                            <label>
                                Office of the President</label></div>
                        <div class="col-lg-6">
                            <asp:TextBox ID="TextBox2" runat="server" required Text="0" />
                            <asp:Button ID="Button1" runat="server" Text="Ok" OnClick="btn2_Click" /><br />
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <div class="col-lg-6">
                            <label>
                                Office of the Vice-President</label></div>
                    </div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox3" runat="server" required Text="0"  />
                        <asp:Button ID="Button2" runat="server" Text="Ok" OnClick="btn3_Click" /><br />
                    </div>
                </div>
            
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Agrarian Reform</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox4" runat="server" required Text="0" />
                        <asp:Button ID="Button3" runat="server" Text="Ok" OnClick="btn4_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Agriculture</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox5" runat="server" required Text="0"  />
                        <asp:Button ID="Button4" runat="server" Text="Ok" OnClick="btn5_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Budget and Management</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox7" runat="server" required Text="0"  />
                        <asp:Button ID="Button6" runat="server" Text="Ok" OnClick="btn7_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Education</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox8" runat="server" required Text="0"  />
                        <asp:Button ID="Button7" runat="server" Text="Ok" OnClick="btn8_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            State Universities and Colleges</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox9" runat="server" required Text="0"  />
                        <asp:Button ID="Button8" runat="server" Text="Ok" OnClick="btn9_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Energy</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox10" runat="server" required Text="0"  />
                        <asp:Button ID="Button9" runat="server" Text="Ok" OnClick="btn10_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Environment and Natural Resources</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox11" runat="server" required Text="0"  />
                        <asp:Button ID="Button10" runat="server" Text="Ok" OnClick="btn11_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Finance</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox12" runat="server" required Text="0"  />
                        <asp:Button ID="Button11" runat="server" Text="Ok" OnClick="btn12_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Foreign Affairs</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox13" runat="server" required Text="0"  />
                        <asp:Button ID="Button12" runat="server" Text="Ok" OnClick="btn13_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Health</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox14" runat="server" required Text="0" />
                        <asp:Button ID="Button13" runat="server" Text="Ok" OnClick="btn14_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Interior and Local Government</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox15" runat="server" required Text="0" />
                        <asp:Button ID="Button14" runat="server" Text="Ok" OnClick="btn15_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Justice</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox16" runat="server" required Text="0" />
                        <asp:Button ID="Button15" runat="server" Text="Ok" OnClick="btn16_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Labor and Employement</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox17" runat="server" required Text="0" />
                        <asp:Button ID="Button16" runat="server" Text="Ok" OnClick="btn17_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of National Defense</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox18" runat="server" required Text="0" />
                        <asp:Button ID="Button17" runat="server" Text="Ok" OnClick="btn18_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Public Works and Highways</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox19" runat="server" required Text="0" />
                        <asp:Button ID="Button18" runat="server" Text="Ok" OnClick="btn19_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Science and Technology</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox20" runat="server" required Text="0" />
                        <asp:Button ID="Button19" runat="server" Text="Ok" OnClick="btn20_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Social Welfare and Development</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox21" runat="server" required Text="0" />
                        <asp:Button ID="Button20" runat="server" Text="Ok" OnClick="btn21_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Tourism</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox22" runat="server" required Text="0" />
                        <asp:Button ID="Button21" runat="server" Text="Ok" OnClick="btn22_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Trade and Industry</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox23" runat="server" required Text="0" />
                        <asp:Button ID="Button22" runat="server" Text="Ok" OnClick="btn23_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Department of Transportation and Commmuncations</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox24" runat="server" required Text="0" />
                        <asp:Button ID="Button23" runat="server" Text="Ok" OnClick="btn24_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            National Economic Development Authority</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox25" runat="server" required Text="0" />
                        <asp:Button ID="Button24" runat="server" Text="Ok" OnClick="btn25_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Presidential Communications Operation Office</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox26" runat="server" required Text="0" />
                        <asp:Button ID="Button25" runat="server" Text="Ok" OnClick="btn26_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Other Executive Offices</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox27" runat="server" required Text="0" />
                        <asp:Button ID="Button26" runat="server" Text="Ok" OnClick="btn27_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Autonomous Region in Muslim Mindanao</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox28" runat="server" required Text="0" />
                        <asp:Button ID="Button27" runat="server" Text="Ok" OnClick="btn28_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Joint Legislative-Executive Councils</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox29" runat="server" required Text="0" />
                        <asp:Button ID="Button28" runat="server" Text="Ok" OnClick="btn29_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            The Judiciary</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox30" runat="server" required Text="0" />
                        <asp:Button ID="Button29" runat="server" Text="Ok" OnClick="btn30_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Civil Service Commission</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox31" runat="server" required Text="0" />
                        <asp:Button ID="Button30" runat="server" Text="Ok" OnClick="btn31_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Commission on Audit</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox32" runat="server" required Text="0" />
                        <asp:Button ID="Button31" runat="server" Text="Ok" OnClick="btn32_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Commision on Elections</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox33" runat="server" required Text="0" />
                        <asp:Button ID="Button32" runat="server" Text="Ok" OnClick="btn33_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Office of the Ombudsman</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox34" runat="server" required Text="0" />
                        <asp:Button ID="Button33" runat="server" Text="Ok" OnClick="btn34_Click" /><br />
                    </div>
                </div>
            </div>

            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Commission on Human Rights</label></div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox35" runat="server" required Text="0" />
                        <asp:Button ID="Button34" runat="server" Text="Ok" OnClick="btn35_Click" /><br />
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="col-lg-6">
                        <label>
                            Special Purposes Funds</label>
                    </div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox36" runat="server" required Text="0" />
                        <asp:Button ID="Button35" runat="server" Text="Ok" OnClick="btn36_Click" /><br />
                    </div>
                </div>
            </div>
            
          </form>
        
        
        <div class="col-md-12" id="comparison" runat="server" visible="false">
            <div class="col-md-6">
            <h4>Government's Budget</h4>
        <table class = "table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Department</th>
                    <th>Budget</th>
                </tr>
            </thead>
            <tbody>
                <asp:ListView ID="lvGovtBudget" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("Department") %></td>
                            <td><%# Eval("Budget") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </tbody>
        </table>
            </div>
            <div class="col-md-6">
            <div class="col-md-6">
            <h4>Your Proposed Budget</h4>
        <table class = "table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Department</th>
                    <th>Budget</th>
                </tr>
            </thead>
            <tbody>
                <asp:ListView ID="lvProposed" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("Department") %></td>
                            <td><%# Eval("Budget") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </tbody>
        </table>
            </div>
            </div>
            </div>
          </div>
          <div class="col-md-6"><br /><br /><br /><br /><br /><br />
          <div class="col-md-6" runat="server" id="proposed" visible="false">
            <label>Proposed Budget:</label>
            <asp:TextBox ID="txtBudget" runat="server" class="form-control" />
          </div>
          </div>
          <div class="clearfix"></div>
        </form>
        </div>
        
    </div>
    
</asp:Content>

