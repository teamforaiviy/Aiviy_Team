<%--
  Created by IntelliJ IDEA.
  User: chensijia
  Date: 2020/2/27
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddGood</title>
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
        .table{
            text-align: center;
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
                    <li class="breadcrumb-item active">AddGood            </li>
                </ul>
            </div>
            <!-- Forms Section-->
            <section class="AddGood">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-2"></div>
                        <div class="col-lg-8">
                            <div class="card">
                                <div class="card-header d-flex align-items-center">
                                    <h3 class="h4">AddGood</h3>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <form action="../upload/uploadIMG" method="POST" enctype="multipart/form-data" >
                                            <table class="table table-bordered table-hover">
                                                <tr>
                                                    <td>商品名称:</td>
                                                    <td><input class="form-control" type="text" name="gName"></td>
                                                </tr>
                                                <tr>
                                                    <td>商品价格:</td>
                                                    <td><input class="form-control" type="text" name="gPrice"></td>
                                                </tr>
                                                <tr>
                                                    <td>商品描述:</td>
                                                    <td><textarea class="form-control" name="gContent" style="resize: none;"></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td>图片名称:</td>
                                                    <td><input class="form-control" type="text" name="goodIMGName"></td>
                                                </tr>
                                                <tr>
                                                    <td>图片:</td>
                                                    <td><input class="form-control" type="file" name="goodIMG"></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <button class="btn btn-default btn-primary" type="submit">提交</button>
                                                    </td>
                                                </tr>
                                            </table>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2"></div>
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
    //获取地址栏参数,可以是中文参数
    function getUrlParam(key) {
        // 获取参数
        var url = window.location.search;
        // 正则筛选地址栏
        var reg = new RegExp("(^|&)" + key + "=([^&]*)(&|$)");
        // 匹配目标参数
        var result = url.substr(1).match(reg);
        //返回参数值
        return result ? decodeURIComponent(result[2]) : null;
    }
    var status = getUrlParam("status")==undefined?"":getUrlParam("status");
    $(function () {
        if(status!=""){
            if (status==0){
                alert("商品上传失败!")
            } else {
                alert("商品上传成功!")
                window.location.href="goodList.jsp";
            }
        }
    })
</script>
</body>
</html>
