<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="Courseread.aspx.cs" Inherits="Learn__E.Courseread" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-align-content-lg-around p-2">
        <div class="heading mt-2">
            <h3>
                Course Details
            </h3>

        </div>
        <asp:DataList ID="cdetail" runat="server">
            <ItemTemplate>
                <div class="d-flex mt-3 flex-column">
            <div class="details">
                <span class="h3">
                    <%# Eval("course_detail") %>
                </span>
            </div>
            <div class="d-flex mt-2">
                <span class="lead"><%# Eval("cost") %></span>
                <span class="lead"><%# Eval("instructor") %></span>

            </div>
            <div class="row">
                <asp:Button ID="btnenroll" CssClass="btn btn-primary px-4 py-2" runat="server" Text="Enroll" OnClick="btnenroll_Click" />
            </div>
        </div>
            </ItemTemplate>
        </asp:DataList>

        
    </div>
</asp:Content>
