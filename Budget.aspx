<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Budget.aspx.cs" Inherits="Budget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <form runat=server>
  <div class="row">
        <div class="box">
          <div class="col-lg-12">
            <hr>
                <h2 class="intro-text text-center">Let your voice be heard <strong></strong></h2>
            <hr>
          </div>
            <ul class="nav navbar-nav navbar-right">
                <li>
            <asp:DropDownList ID="ddlColumns" runat="server" class="form-control">
                <asp:ListItem Text="ID" Value="ID"/>
                <asp:ListItem Text="Budget" Value="Budget"/>
                <asp:ListItem Text="Rating" Value="Rating"/>
                <asp:ListItem Text="No. of Comment" Value="NoCom"></asp:ListItem>
            </asp:DropDownList>
            </li>
            <li>
            <asp:TextBox ID="txtKeyword" runat="server" class="form-control" placeholder="keyword..." />
            </li>
            <li>
            <asp:Button ID="btnSearch" runat= "server" Text="Search" class="btn btn-info" OnClick="btnSearch_Click"/>
            </li>
            </ul>
                <table class="table table-responsive">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Department</th>
                    <th>Budget</th>
                    <th>Ratings</th>
                    <th>Number of Comments</th>
                    <th>Comment</th>
                </tr>
            </thead>
            <tbody>
                <asp:ListView ID="lvProdCategory" runat="server" >
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("Department") %></td>
                            <td><%# Eval("Budget") %></td>
                            <td><%# Eval("Rating") %></td>
                            <td><%# Eval("NoCom") %></td>
                            
                            <td>
                                <a href='Comment.aspx?ID=<%# Eval("ID") %>'>
                                <i class="fa-comment"></i>
                                </a>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <tr>
                            <td colspan="2"><center><h2>No Records Found.</h2></center></td>
                        </tr>
                    </EmptyDataTemplate>
                </asp:ListView>
            </tbody>
        </table>
        </div>
        </div>
</form>
</asp:Content>

