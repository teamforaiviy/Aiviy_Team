<%--
  Created by IntelliJ IDEA.
  Comment: chensijia
  Date: 2020/2/27
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Comment</title>
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
        #updateComment select {
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
                    <li class="breadcrumb-item active">Comment            </li>
                </ul>
            </div>
            <!-- Forms Section-->
            <section class="Comment">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header d-flex align-items-center">
                                    <h3 class="h4">Comment</h3>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#" data-toggle="modal" data-target="#createComment">添加评论</a>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped" id="myTable">
                                            <thead>
                                            <tr>
                                                <td colspan="6">
                                                    商品名：<input type="text" name="gName">
                                                    <button type="button" class="btn btn-primary">查询</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>评论编号</th>
                                                <th>评论内容</th>
                                                <th>用户名</th>
                                                <th>商品名</th>
                                                <th>评论时间</th>
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
                                <div class="modal fade" id="createComment" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" id="myModalLabel">添加评论</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            </div>
                                            <div class="modal-body">
                                                <form>
                                                    <table>
                                                        <tr>
                                                            <td>评论名：</td>
                                                            <td><input type="text" class="form-control" name="CommentName"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>昵称：</td>
                                                            <td><input type="text" class="form-control" name="nickname"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>密码：</td>
                                                            <td><input type="password" class="form-control" name="CommentPwd"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>邮箱：</td>
                                                            <td><input type="email" class="form-control" name="CommentMail"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>手机号：</td>
                                                            <td><input type="text" class="form-control" name="CommentPhone"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>消费金额：</td>
                                                            <td><input type="text" class="form-control" name="CommentMoney"></td>
                                                        </tr>
                                                    </table>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-primary" onclick="insertComment()">Save</button>
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
        queryComment(pn,ps)
        $("#myTable button").click(function () {
            queryComment(pn,ps)
        })
    })
    function queryComment(pn,ps) {
        var gName = $("#myTable input[name=gName]").val();
        $.getJSON("../comment/queryComment",{"pn":pn,"ps":ps,"gName":gName},function (data) {
            var page =eval(data);
            var str="";
            $(page.list).each(function() {
                str += "<tr>" +
                    "<td>"+this.cId+"</td>" +
                    "<td>"+this.cComment+"</td>" +
                    "<td>"+this.user.userName+"</td>" +
                    "<td>"+this.goods.gName+"</td>" +
                    "<td>"+this.ctime+"</td>" +
                    "<td>&nbsp;&nbsp;<a href='#' onclick='del("+this.cId+")'>删除</a></td>" +
                    "</tr>";
            })
            $("#myTable tbody").empty().append(str);

            var pageStr="";
            pageStr +="<li><a href='javascript:queryComment(1,"+ps+")'>首页</a></li>";
            if(page.hasPreviousPage){
                pageStr +="<li>" +
                    "<a href='javascript:queryComment("+(page.pageNum-1)+","+ps+")' aria-label='Previous'>" +
                    "<span aria-hidden=''true'>上一页</span>" +
                    "</a>" +
                    "</li>";
            }
            $(page.navigatepageNums).each(function () {
                if(page.pageNum==this){
                    pageStr +="<li><a class='active' href='javascript:queryComment("+this+","+ps+")'>"+this+"</a></li>";
                }else {
                    pageStr +="<li><a href='javascript:queryComment("+this+","+ps+")'>"+this+"</a></li>";
                }
            })
            if(page.hasNextPage){
                pageStr +="<li>" +
                    "<a href='javascript:queryComment("+(page.pageNum+1)+","+ps+")' aria-label='Previous'>" +
                    "<span aria-hidden='true'>下一页</span>" +
                    "</a>" +
                    "</li>";
            }
            pageStr +="<li><a href='javascript:queryComment("+page.pages+","+ps+")'>尾页</a></li>";
            $(".pagination").empty().append(pageStr);
        })
    }
    /**
     * 添加评论
     */
    function insertComment() {
        $.ajax({
            url:"../Comment/insert",
            type:"get",
            data:$("#createComment form").serialize(),
            dataType:"json",
            success:function (data) {
                if(data){
                    alert("添加成功！")
                    window.location.reload();
                }else {
                    alert("添加失败！")
                }
            }
        })
    }

    /**
     * 删除评论
     */
    function del(CommentId) {
        if(confirm("确定删除评论吗？")){
            $.ajax({
                url:"../Comment/del",
                type:"get",
                data:{"CommentId":CommentId},
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
