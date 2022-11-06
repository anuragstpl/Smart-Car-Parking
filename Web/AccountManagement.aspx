<%@ Page Title="" Language="C#" MasterPageFile="~/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="AccountManagement.aspx.cs" Inherits="PasswordManagerWeb.AccountManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:100px;margin-right:50px;">

        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>Users
                </h1>
               
            </section>

            <!-- General Info -->
            <section class="content">

                <!-- SELECT2 EXAMPLE -->
                <div class="box box-default">
                    <div class="box-header with-border">
                        <h3 class="box-title">General Info</h3>

                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                    </div>
                    <div class="box-header with-border">
                        <h3 class="box-title">
                            <asp:Label runat="server" ID="lblMessage"></asp:Label></h3>


                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-6" style="width: 100%;">
                                <asp:ListView ID="lstAccount" runat="server" ItemPlaceholderID="groupPlaceHolder1" OnItemEditing="lstAccount_ItemEditing" OnItemDeleting="lstAccount_ItemDeleting" OnPagePropertiesChanging="lstAccount_PagePropertiesChanging">
                                    <LayoutTemplate>
                                        <section class="content">
                                            <div class="row">
                                                <div class="col-xs-12" style="width: 100%">
                                                    <div class="box">
                                                        <div class="box-header">
                                                            <h3 class="box-title">Accounts</h3>
                                                        </div>
                                                        <!-- /.box-header -->
                                                        <div class="box-body">
                                                            <table id="example2" class="table table-bordered table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Name</th>
                                                                        <th>Username</th>
                                                                        <th>Email</th>
                                                                        <th>User Type</th>
                                                                        <th>Balance</th>
                                                                        <th>Subscription Type</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>

                                                                    <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>

                                                                </tbody>
                                                                <tfoot>
                                                                    <tr>
                                                                        <td colspan="6">
                                                                            <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lstAccount" PageSize="10">
                                                                                <Fields>
                                                                                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                                                                                        ShowNextPageButton="false" />
                                                                                    <asp:NumericPagerField ButtonType="Link" />
                                                                                    <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton="false" />
                                                                                </Fields>
                                                                            </asp:DataPager>
                                                                        </td>
                                                                    </tr>
                                                                </tfoot>
                                                            </table>

                                                        </div>
                                                        <!-- /.box-body -->
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("Name") %></td>
                                            <td><%# Eval("Username") %></td>
                                            <td><%# Eval("Email") %></td>
                                            <td><%# Eval("UserTypeID") %></td>
                                            <td><%# Eval("Balance") %></td>
                                            <td><%# Eval("SubscriptionType") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:ListView>
                            </div>
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.box-body -->

                </div>
                <!-- /.box -->


            </section>
            <!-- /.content -->
            <!-- General Info -->

            <!-- /.content -->
        </div>

    </div>
</asp:Content>
