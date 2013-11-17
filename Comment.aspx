<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Comment.aspx.cs" Inherits="Comment" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="Server">
    <form runat="server">
    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">
                    Write <strong>Your Comment</strong></h2>
                <hr>
            </div>
            
            <div class="col-lg-6 col-lg-offset-3">
            <fieldset>
                <div class="form-group">
                    <label class="col-lg-12 control-label">
                        Name:</label>
                    <div class="col-lg-12">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-12 control-label">
                        Government:</label>
                    <div class="col-lg-12">
                        <asp:Label ID="lblGov" runat="server"></asp:Label>
                    </div>
                </div>
                <%--  <div class="form-group">
                <label class="col-lg-3 control-label">Last Name</label>
                <div class="col-lg-9">
                    <asp:TextBox ID="txtLN" runat="server" class="form-control" MaxLength="40" required />
                </div>
            </div>--%>
                <div class="form-group">
                    <label class="col-lg-12 control-label">
                        Budget:</label>
                    <div class="col-lg-12">
                        <asp:Label ID="lblBudget" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-12 control-label">
                        Ratings:</label>
                    <div class="col-lg-12">
                        <asp:DropDownList ID="ddlRatings" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-12 control-label">
                        Comment:</label>
                    <div class="col-lg-12">
                        <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Class="form-control"
                            required />
                    </div>
                </div>
                <div class="col-lg-offset-4 col-lg-2">
                    <asp:Button ID="btnComment" runat="server" CssClass="btn-default" Text="Comment"
                        OnClick="btnComment_Click" />
                </div>
            </fieldset>
            </div>
        </div>
    </div>
    <div class="clearfix">
    </div>
    </form>
</asp:Content>
