<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="CourseMan.aspx.cs" Inherits="Learn__E.CourseMan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin: 0;
            padding: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex flex-column p-2">
        <div class="heading mt-2">
            <h3>Add/Update/Delete Course</h3>
        </div>
        <div class="forms d-flex flex-column mt-1">
            <div class="mt-1 d-flex flex-column">
                <label for="Textbox1">Course ID</label>
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mt-1 d-flex flex-column">
                <asp:Label ID="csdetail" runat="server" Text="Course Title"></asp:Label>
                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mt-1 d-flex flex-column">
                <asp:Label ID="crprice" runat="server" Text="Cost"></asp:Label>
                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mt-1 d-flex flex-column">
                <asp:Label ID="csinstr" runat="server" Text="Author"></asp:Label>
                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="d-flex mt-2">
                <asp:Button ID="btnadd" runat="server" CssClass="btn btn-primary px-3 py-2 mr-2" OnClick="btnadd_Click" Text="Add" />
                <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-secondary px-3 py-2 mr-2" Text="Update" OnClick="btnupdate_Click" />
                <asp:Button ID="btndelete" runat="server" CssClass="btn btn-danger px-3 py-2 mr-2" Text="Delete" OnClick="btndelete_Click" />

            </div>
        </div>

        <div class="mt-3 table-responsive">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-active" AutoGenerateColumns="False" DataKeyNames="course_id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="course_id" HeaderText="course_id" ReadOnly="True" SortExpression="course_id" />
                    <asp:BoundField DataField="Course_detail" HeaderText="Course_detail" SortExpression="Course_detail" />
                    <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                    <asp:BoundField DataField="instructor" HeaderText="Author" SortExpression="instructor" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </div>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString (Learn- E) %>" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
        <div class="modal d-block" runat="server" id="deleteconfirm" visible="false" style="display:block!important;">
            <div class="card modal-body d-flex flex-column">
                <div>
                    <span> Are you are you want to delete?</span>
                </div>
                <hr />
                <div class="mt-2">
                    <asp:Button ID="btndeleteconfirm" CssClass="btn btn-danger px-4 py-2 mr-2" runat="server" Text="Yes continue" OnClick="btndeleteconfirm_Click" />
                    <asp:Button ID="btnno" CssClass="btn btn-secondary px-4 py-2 mr-2" runat="server" Text="Cancel" OnClick="btnno_Click"/>
                </div>
                
            </div>
        </div>
    </div>
</asp:Content>
