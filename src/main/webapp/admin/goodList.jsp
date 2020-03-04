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
        table{
            width: 80%;
            margin: auto;
        }
        .form-control{
            margin-top: 10px;
            width: 250px;
        }
        .pagination li {
            margin-left: 10px;
        }
        #updateGood select {
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
                                                <th>状态</th>
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
                                <div class="modal fade" id="updateGood" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" id="myModalLabel1">修改商品</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            </div>
                                            <div class="modal-body">
                                                <form>
                                                    <input type="hidden" class="form-control" name="gId">
                                                    <table>
                                                        <tr>
                                                            <td>商品名：</td>
                                                            <td><input type="text" class="form-control" name="gName"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>商品价格：</td>
                                                            <td><input type="text" class="form-control" name="gPrice"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>商品描述：</td>
                                                            <td><input type="email" class="form-control" name="gContent"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>状态：</td>
                                                            <td>
                                                                <select name="countstatus">
                                                                    <option value="0">默认</option>
                                                                    <option value="1">新品</option>
                                                                    <option value="2">热销</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-primary" onclick="updateGood()">Save</button>
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
        queryGood(pn,ps)
    })
    function queryGood(pn,ps) {
        $.getJSON("../goods/queryGood",{"pn":pn,"ps":ps},function (data) {
            var page =eval(data);
            var str="";
            $(page.list).each(function() {
                var cstatus="";
                if(this.countstatus==0){
                    cstatus="默认";
                }else if(this.countstatus==1){
                    cstatus="新品";
                }else if(this.countstatus==2){
                    cstatus="热销";
                }
                str += "<tr>" +
                    "<td style='width: 82px'>"+this.gId+"</td>" +
                    "<td style='width: 250px'>"+this.gName+"</td>" +
                    "<td style='width: 82px'>"+this.gPrice+"</td>" +
                    "<td style='width: 360px'>"+this.gContent+"</td>" +
                    "<td style='width: 120px'>"+this.uploadtime+"</td>" +
                    "<td style='width: 82px'>"+cstatus+"</td>" +
                    "<td style='width: 41px'><a href='#' data-toggle=\"modal\" data-target=\"#updateGood\" onclick='queryById("+this.gId+")'>修改</a>&nbsp;&nbsp;<a href='#' onclick='del("+this.gId+")'>删除</a></td>" +
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
     * 通过Id查询商品
     */
    function queryById(gId) {
        $.ajax({
            url:"../goods/select",
            type:"get",
            data:{"gid":gId},
            dataType:"json",
            success:function (data) {
                $("#updateGood input[name=gId]").val(data.gId);
                $("#updateGood input[name=gName]").val(data.gName);
                $("#updateGood input[name=gPrice]").val(data.gPrice);
                $("#updateGood input[name=gContent]").val(data.gContent);
                $("#updateGood select").val(data.countstatus);
            }
        })
    }
    /**
     * 修改商品
     */
    function updateGood() {
        $.ajax({
            url:"../goods/update",
            type:"get",
            data:$("#updateGood form").serialize(),
            dataType:"json",
            success:function (data) {
                if(data){
                    alert("修改成功！")
                    window.location.reload();
                }else {
                    alert("修改失败！")
                }
            }
        })
    }
    /**
     * 删除商品
     */
    function del(gId) {
        if("确认删除商品吗？"){
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
    }
</script>
</body>
</html>
