<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="Coursedetail.aspx.cs" Inherits="Learn__E.Coursedetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-lg m-auto">
        <div class="p-2 d-flex flex-column">
            <div class="heading">
                <h3>Courses</h3>
            </div>
            <div class="m-3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString (Learn- E) %>" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" CssClass="display:grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap:10px" DataKeyField="course_id" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <ItemTemplate>
                        <div class="courses card" style="box-shadow: 0px 2px 10px 4px rgba(0,0,0,0.4); min-height: 320px; max-width:280px;">
                            
                            <div class="card-body course-info">
                                <div class="course-info-head">
                                    <h5 class="card-title course-title"><%# Eval("Course_detail") %></h5>
                                    <div class="course-overview d-flex justify-content-between pb-3">
                                        <div class="d-flex align-items-center">
                                            <asp:Label ID="costLabel" runat="server" Text='<%# Eval("cost") %>' />
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div class="course-card-tail">
                                    <a class="btn btn-primary py-2 px-4" href='<%# string.Format("~/Courseread.aspx?id={0}", Eval("course_id")) %>' runat="server">Learn more</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>

</asp:Content>
