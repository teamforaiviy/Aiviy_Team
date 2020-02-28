<%--
  Created by IntelliJ IDEA.
  Good: chensijia
  Date: 2020/2/27
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GoodList</title>
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
        /*table{
            width: 80%;
            margin: auto;
        }*/
        .form-control{
            margin-top: 10px;
            width: 250px;
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
                    <li class="breadcrumb-item active">GoodList            </li>
                </ul>
            </div>
            <!-- Forms Section-->
            <section class="GoodList">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header d-flex align-items-center">
                                    <h3 class="h4">GoodList</h3>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped" id="myTable">
                                            <thead>
                                            <tr>
                                                <th>商品编号</th>
                                                <th>商品名</th>
                                                <th>商品价格</th>
                                                <th>商品描述</th>
                                                <th>上传日期</th>
                                                <th>折扣状态</th>
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
        queryGood(pn,ps)
    })
    function queryGood(pn,ps) {
        $.getJSON("../goods/queryGood",{"pn":pn,"ps":ps},function (data) {
            var page =eval(data);
            var str="";
            $(page.list).each(function() {
                str += "<tr>" +
                    "<td style='width: 82px'>"+this.gId+"</td>" +
                    "<td style='width: 250px'>"+this.gName+"</td>" +
                    "<td style='width: 82px'>"+this.gPrice+"</td>" +
                    "<td style='width: 360px'>"+this.gContent+"</td>" +
                    "<td style='width: 120px'>"+this.uploadtime+"</td>" +
                    "<td style='width: 82px'>"+this.countstatus+"</td>" +
                    "<td style='width: 41px'><a href='#'>修改</a>&nbsp;&nbsp;<a href='#' onclick='del("+this.gId+")'>删除</a></td>" +
                    "</tr>";
            })
            $("#myTable tbody").empty().append(str);

            var pageStr="";
            pageStr +="<li><a href='javascript:queryGood(1,"+ps+")'>首页</a></li>";
            if(page.hasPreviousPage){
                pageStr +="<li>" +
                    "<a href='javascript:queryGood("+(page.pageNum-1)+","+ps+")' aria-label='Previous'>" +
                    "<span aria-hidden=''true'>上一页</span>" +
                    "</a>" +
                    "</li>";
            }
            $(page.navigatepageNums).each(function () {
                if(page.pageNum==this){
                    pageStr +="<li><a class='active' href='javascript:queryGood("+this+","+ps+")'>"+this+"</a></li>";
                }else {
                    pageStr +="<li><a href='javascript:queryGood("+this+","+ps+")'>"+this+"</a></li>";
                }
            })
            if(page.hasNextPage){
                pageStr +="<li>" +
                    "<a href='javascript:queryGood("+(page.pageNum+1)+","+ps+")' aria-label='Previous'>" +
                    "<span aria-hidden='true'>下一页</span>" +
                    "</a>" +
                    "</li>";
            }
            pageStr +="<li><a href='javascript:queryGood("+page.pages+","+ps+")'>尾页</a></li>";
            $(".pagination").empty().append(pageStr);
        })
    }
    /**
     * 删除商品
     */
    function del(gId) {
        $.ajax({
            url:"../goods/del",
            type:"get",
            data:{"gId":gId},
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
</script>
</body>
</html>
