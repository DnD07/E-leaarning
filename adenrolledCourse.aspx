<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="adenrolledCourse.aspx.cs" Inherits="Learn__E.adenrolledCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-lg p-2">
        <h3>Enrolled Course</h3>
    </div>
    <div class="mt-2 table-responsive">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString (Learn- E) %>" DeleteCommand="DELETE FROM [Enrolled] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Enrolled] ([userid], [enrolldate], [status], [course]) VALUES (@userid, @enrolldate, @status, @course)" SelectCommand="SELECT * FROM [Enrolled]" UpdateCommand="UPDATE [Enrolled] SET [userid] = @userid, [enrolldate] = @enrolldate, [status] = @status, [course] = @course WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userid" Type="Int32" />
                <asp:Parameter Name="enrolldate" Type="DateTime" />
                <asp:Parameter Name="status" Type="Int32" />
                <asp:Parameter Name="course" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userid" Type="Int32" />
                <asp:Parameter Name="enrolldate" Type="DateTime" />
                <asp:Parameter Name="status" Type="Int32" />
                <asp:Parameter Name="course" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="table table-active" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                <asp:BoundField DataField="enrolldate" HeaderText="enrolldate" SortExpression="enrolldate" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True">
                <ControlStyle BorderStyle="None" CssClass="btn btn-primary" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
