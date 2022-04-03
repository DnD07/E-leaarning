<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Learn__E.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-lg">
        <div class="mt-2">
            <h3>View/Manage Users</h3>
        </div>
        <div class="d-flex flex-column mt-2">
            <div class="form-group mt-2">
                <label for="name">Name</label>
                <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group mt-2">
                <label for="uname">Name <span style="color:red">*</span></label>
                <asp:TextBox ID="uname" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group mt-2">
                <label for="email">Email <span style="color:red">*</span>
                </label>
                <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
            </div>
            <div class="form-group mt-2">
                <label for="pass">Password <span style="color:red">*</span></label>
                <asp:TextBox ID="pass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group mt-2">
                <label for="drole">Role</label>
                <asp:DropDownList ID="drole" runat="server" CssClass="form-control">
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group mt-2">
                <label for="contact">Contact</label>
                <asp:TextBox ID="contact" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group mt-2">
                <asp:Button ID="btnadduser" runat="server" Text="AddUser"  OnClick="btnadduser_Click"/>
            </div>
        </div>
        <hr />
        <div class="d-flex mt-3 table-responsive">
            <asp:SqlDataSource ID="udatasorce" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString (Learn- E) %>" DeleteCommand="DELETE FROM [registration] WHERE [Id] = @Id" InsertCommand="INSERT INTO [registration] ([Name], [Username], [Email], [Password], [role], [contact]) VALUES (@Name, @Username, @Email, @Password, @role, @contact)" SelectCommand="SELECT * FROM [registration]" UpdateCommand="UPDATE [registration] SET [Name] = @Name, [Username] = @Username, [Email] = @Email, [Password] = @Password, [role] = @role, [contact] = @contact WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="role" Type="String" />
                    <asp:Parameter Name="contact" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="role" Type="String" />
                    <asp:Parameter Name="contact" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:GridView ID="guser" CssClass="table table-success" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="udatasorce">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:TemplateField HeaderText="Password" SortExpression="Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Password") %>' TextMode="Password"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='***************'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                    <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" >
                    <ControlStyle CssClass="btn btn-danger px-3 py-2 ml-2" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </div>
    </div>


</asp:Content>
