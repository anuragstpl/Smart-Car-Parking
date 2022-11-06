<%@ Page Title="" Language="C#" MasterPageFile="~/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="PasswordManagerWeb.Dashboard" %>

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
                             <div class="col-md-6">
                                <div class="form-group">
                                    <label>Available Slots</label>
                                    <asp:Label runat="server" ID="txtAvailableSlots" CssClass="form-control"></asp:Label>

                                </div>

                            </div>
                            <div class="col-md-6" style="width: 100%;">
                                <asp:ListView ID="lstAccount" runat="server" ItemPlaceholderID="groupPlaceHolder1"  OnPagePropertiesChanging="lstAccount_PagePropertiesChanging1">
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
                                                                            <asp:LinkButton ID="LinkButton1" CssClass="form-control" runat="server" PostBackUrl="~/AccountManagement.aspx">View All</asp:LinkButton>
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
