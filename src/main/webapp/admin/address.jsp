<%--
  Created by IntelliJ IDEA.
  Address: chensijia
  Date: 2020/2/27
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Address</title>
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
                    <li class="breadcrumb-item active">Address            </li>
                </ul>
            </div>
            <!-- Forms Section-->
            <section class="Address">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header d-flex align-items-center">
                                    <h3 class="h4">Address</h3>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped" id="myTable">
                                            <thead>
                                            <tr>
                                                <td colspan="6">
                                                    用户名：<input type="text" name="userName" style="height: 35px">
                                                    <button type="button" class="btn btn-primary">查询</button>
                                                </td>
                                            </tr>
                                            <tr id="head">
                                                <th>地址编号</th>
                                                <th>用户名</th>
                                                <th>收货地址</th>
                                                <th>收货人电话</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                        <nav aria-label="Page navigation" id="page">
                                            <ul class="pagination">
                                            </ul>
                                        </nav>
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
        queryAddress(pn,ps)
        $("button").click(function () {
            queryAddress(pn,ps)
        })
    })
    function queryAddress(pn,ps) {
        var userName = $("input[name=userName]").val();
        $.getJSON("../address/queryAddress",{"pn":pn,"ps":ps,"userName":userName},function (data) {
            var str="";
            var page =eval(data);
            if(page.list!=""){
                $(page.list).each(function() {
                    str += "<tr>" +
                        "<td>"+this.adId+"</td>" +
                        "<td>"+this.user.userName+"</td>" +
                        "<td>"+this.adPhone+"</td>" +
                        "<td>"+this.adAddress+"</td>" +
                        "<td><a href='' onclick='del("+this.adId+")'>删除</a></td>" +
                        "</tr>";
                })
                $("#myTable tbody").empty().append(str);
                $("#head,#page").show();
            }else {
                $("#myTable tbody").empty().html("<h3 style='color: red;margin: 100px 0 100px 100px'>无地址</h3>");
                $("#head,#page").hide();
            }

            var pageStr="";
            pageStr +="<li><a href='javascript:queryAddress(1,"+ps+")'>首页</a></li>";
            if(page.hasPreviousPage){
                pageStr +="<li>" +
                    "<a href='javascript:queryAddress("+(page.pageNum-1)+","+ps+")' aria-label='Previous'>" +
                    "<span aria-hidden=''true'>上一页</span>" +
                    "</a>" +
                    "</li>";
            }
            $(page.navigatepageNums).each(function () {
                if(page.pageNum==this){
                    pageStr +="<li><a class='active' href='javascript:queryAddress("+this+","+ps+")'>"+this+"</a></li>";
                }else {
                    pageStr +="<li><a href='javascript:queryAddress("+this+","+ps+")'>"+this+"</a></li>";
                }
            })
            if(page.hasNextPage){
                pageStr +="<li>" +
                    "<a href='javascript:queryAddress("+(page.pageNum+1)+","+ps+")' aria-label='Previous'>" +
                    "<span aria-hidden='true'>下一页</span>" +
                    "</a>" +
                    "</li>";
            }
            pageStr +="<li><a href='javascript:queryAddress("+page.pages+","+ps+")'>尾页</a></li>";
            $("#address .pagination").empty().append(pageStr);
        })
    }
    /**
     * 删除地址
     */
    function del(adId) {
        if("确认删除地址吗？"){
            $.ajax({
                url:"../address/del",
                type:"get",
                data:{"adId":adId},
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
