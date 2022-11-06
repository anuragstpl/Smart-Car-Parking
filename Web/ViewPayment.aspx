<%@ Page Title="" Language="C#" MasterPageFile="~/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="ViewPayment.aspx.cs" Inherits="PasswordManagerWeb.ViewPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:100px;margin-right:50px;">

        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>User Payment History
                </h1>
               
            </section>

            <!-- General Info -->
            <section class="content">

                <!-- SELECT2 EXAMPLE -->
                <div class="box box-default">
                    <div class="box-header with-border">
                        <h3 class="box-title">Payment History</h3>

                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Enter UserID*</label>
                                    <asp:TextBox runat="server" ID="txtID"  CssClass="form-control" placeholder="Enter UserID"  required></asp:TextBox>

                                </div>                              
                            </div>
                            <!-- /.col -->

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label></label>
                                </div>
                                <div class="form-group">

                                    <asp:Button runat="server" ID="btnViewHistory" Text="View Payment History" CssClass="btn btn-block btn-success" OnClick="btnViewHistory_Click" />
                                </div>
                            </div>

                            <div class="col-md-6" style="width: 100%;">
                                <asp:ListView ID="lstAccount" runat="server" ItemPlaceholderID="groupPlaceHolder1"  OnPagePropertiesChanging="lstAccount_PagePropertiesChanging">
                                    <LayoutTemplate>
                                        <section class="content">
                                            <div class="row">
                                                <div class="col-xs-12" style="width: 100%">
                                                    <div class="box">
                                                        <div class="box-header">
                                                            <h3 class="box-title">View Payment</h3>
                                                        </div>
                                                        <!-- /.box-header -->
                                                        <div class="box-body">
                                                            <table id="example2" class="table table-bordered table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Date</th>
                                                                        <th>Amount</th>
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
                                            <td><%# Eval("TransactionDate") %></td>
                                            <td><%# Eval("TransactionAmount") %></td>
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
