<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/2/20
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品上传</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style type="text/css">
        table{
            text-align: center;
        }
    </style>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript">

    </script>
</head>
<body>
    <div class="container">
        <div class="row" style="height: 50px;"></div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <form action="upload/uploadIMG" method="POST" enctype="multipart/form-data" >
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
            <div class="col-md-4"></div>
        </div>
    </div>
</body>
</html>
