<%--
  Created by IntelliJ IDEA.
  Orders: chensijia
  Date: 2020/2/27
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Orders</title>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <style>
        table{
            width: 80%;
            margin: auto;
        }
        .form-control{
            margin-top: 10px;
        }
        .pagination li {
            margin-left: 10px;
        }
        #updateOrders select {
            margin-top: 10px;
            background-color: #e9ecef;
            width: 100px;
            height: 30px;
            border: 0px;
            padding-left: 10px;
        }
    </style>
</head>
<body>
<div class="page">
    <!-- Main Navbar-->
    <jsp:include page="header.jsp"></jsp:include>
    <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <jsp:include page="nav.jsp"></jsp:include>
        <div class="content-inner">
            <!-- Breadcrumb-->
            <div class="breadcrumb-holder container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item active">Order            </li>
                </ul>
            </div>
            <!-- Forms Section-->
            <section class="Orders">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header d-flex align-items-center">
                                    <h3 class="h4">Order</h3>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped" id="myTable">
                                            <thead>
                                            <tr>
                                                <td colspan="6">
                                                    订单号：<input type="text" name="oNo">
                                                    <button type="button" class="btn btn-primary">查询</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>订单ID</th>
                                                <th>订单号</th>
                                                <th>订单状态</th>
                                                <th>商品总价</th>
                                                <th>用户</th>
                                                <th>创建时间</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                        <nav aria-label="Page navigation">
                                            <ul class="pagination">
                                            </ul>
                                        </nav>
                                    </div>
                                </div>

                                <div class="modal fade" id="updateOrders" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" id="myModalLabel1">查看订单</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            </div>
                                            <div class="modal-body">
                                                <form>
                                                    <input type="hidden" class="form-control" name="oId">
                                                    <table>
                                                        <%--<tr>
                                                            <td>订单号：</td>
                                                            <td><input type="text" class="form-control" name="oNo"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>商品名：</td>
                                                            <td><input type="text" class="form-control" name="gName"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>商品总价：</td>
                                                            <td><input type="email" class="form-control" name="gPrice"></td>
                                                        </tr>--%>
                                                        <thead>
                                                        <tr>
                                                            <th>商品名</th>
                                                            <th>商品价格</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody></tbody>
                                                    </table>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
<%--                                                <button type="button" class="btn btn-primary" onclick="updateOrders()">Save</button>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper.js/umd/popper.min.js"> </script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<!-- Main File-->
<script src="js/front.js"></script>
<script type="text/javascript">
    var pn=1;
    var ps=5;
    $(function () {
        queryOrders(pn,ps)
        $("#myTable button").click(function () {
            queryOrders(pn,ps)
        })
    })
    function queryOrders(pn,ps) {
        var oNo = $("#myTable input[name=oNo]").val();
        $.getJSON("../order/queryOrders",{"pn":pn,"ps":ps,"oNo":oNo},function (data) {
            var page =eval(data);
            var str="";
            $(page.list).each(function() {
                str += "<tr>" +
                    "<td>"+this.oId+"</td>" +
                    "<td>"+this.oNo+"</td>" +
                    "<td>"+(this.oState==0?'未支付':'已支付')+"</td>" +
                    "<td>"+this.oNum+"</td>" +
                    "<td>"+this.user.userName+"</td>" +
                    "<td>"+this.createddate+"</td>" +
                    "<td><a href='#' data-toggle=\"modal\" data-target=\"#updateOrders\" onclick='queryById("+this.oNo+")'>查看详情</a>&nbsp;&nbsp;<a href='#' onclick='del("+this.oNo+")'>删除</a></td>" +
                    "</tr>";
            })
            $("#myTable tbody").empty().append(str);

            var pageStr="";
            pageStr +="<li><a href='javascript:queryOrders(1,"+ps+")'>首页</a></li>";
            if(page.hasPreviousPage){
                pageStr +="<li>" +
                    "<a href='javascript:queryOrders("+(page.pageNum-1)+","+ps+")' aria-label='Previous'>" +
                    "<span aria-hidden=''true'>上一页</span>" +
                    "</a>" +
                    "</li>";
            }
            $(page.navigatepageNums).each(function () {
                if(page.pageNum==this){
                    pageStr +="<li><a class='active' href='javascript:queryOrders("+this+","+ps+")'>"+this+"</a></li>";
                }else {
                    pageStr +="<li><a href='javascript:queryOrders("+this+","+ps+")'>"+this+"</a></li>";
                }
            })
            if(page.hasNextPage){
                pageStr +="<li>" +
                    "<a href='javascript:queryOrders("+(page.pageNum+1)+","+ps+")' aria-label='Previous'>" +
                    "<span aria-hidden='true'>下一页</span>" +
                    "</a>" +
                    "</li>";
            }
            pageStr +="<li><a href='javascript:queryOrders("+page.pages+","+ps+")'>尾页</a></li>";
            $(".pagination").empty().append(pageStr);
        })
    }
    /**
     * 通过Id查询订单
     */
    function queryById(oNo) {
        $.ajax({
            url:"../order/queryOrderWithGood",
            type:"get",
            data:{"oNo":oNo},
            dataType:"json",
            success:function (data) {
                /*$("#updateOrders input[name=OrdersId]").val(data.OrdersId);
                $("#updateOrders input[name=OrdersName]").val(data.OrdersName);
                $("#updateOrders input[name=nickname]").val(data.nickname);*/
                var ostr="";
                $(data).each(function () {
                    ostr +="<tr>" +
                        "<td>"+this.gName+"</td>" +
                        "<td>"+this.gPrice+"</td>" +
                        "</tr>";
                })
                $("#updateOrders tbody").empty().append(ostr);
            }
        })
    }
    /**
     * 删除订单
     */
    function del(oNo) {
        if(confirm("确定删除订单吗？")){
            $.ajax({
                url:"../order/del",
                type:"get",
                data:{"oNo":oNo},
                dataType:"json",
                success:function (data) {
                    if(data){
                        alert("删除成功！")
                        window.location.reload();
                    }else {
                        alert("删除失败！")
                    }
                }
            })
        }
    }
</script>
</body>
</html>
