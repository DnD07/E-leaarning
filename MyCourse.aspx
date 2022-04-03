<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="MyCourse.aspx.cs" Inherits="Learn__E.MyCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-lg">
        <div class="heading m-2">
            <h3>My Courses</h3>
        </div>
        <div class="d-flex mt-3 flex-column">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString (Learn- E) %>" SelectCommand="SELECT * FROM [EnrolledView] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:CookieParameter CookieName="uid" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                    <div class="courses card" style="box-shadow: 0px 2px 10px 4px rgba(0,0,0,0.4); min-height: 320px; max-width: 280px;">

                        <div class="card-body course-info">
                            <div class="course-info-head">
                                <h5 class="card-title course-title"><%# Eval("Course_detail") %></h5>
                                <span>Instructor: <%# Eval("instructor") %> </span>
                                <div class="course-overview d-flex justify-content-between pb-3">
                                    <div class="d-flex align-items-center justify-content-between">
                                        <asp:Label ID="enrolldateLabel" runat="server" Text='<%# Eval("enrolldate") %>' />
                                        <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />

                                        <asp:Label ID="costLabel" runat="server" Text='<%# Eval("cost") %>' />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
