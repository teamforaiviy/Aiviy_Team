<%--
  Created by IntelliJ IDEA.
  User: chensijia
  Date: 2020/2/21
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>

    <script src="js/jquery-3.4.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        #myTable{
            width: 80%;
            margin: 20px;
        }
        table{
            width: 60%;
            margin: auto;
        }
        .form-control{
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Aiviy</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="row">
            <div class="col-lg-12">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#user" aria-controls="user" role="tab" data-toggle="tab">用户管理</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
                    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a></li>
                    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="user">
                        <table class="table table-striped" id="myTable">
                            <thead>
                            <tr>
                                <td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">添加</button></td>
                            </tr>
                            <tr>
                                <th>用户ID</th>
                                <th>用户名</th>
                                <th>昵称</th>
                                <th>密码</th>
                                <th>邮箱</th>
                                <th>手机号</th>
                                <th>消费金额</th>
                                <th>会员等级</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                        </table>
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">添加用户</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <table>
                                                <tr>
                                                    <td>用户名：</td>
                                                    <td><input type="text" class="form-control" name="userName"></td>
                                                </tr>
                                                <tr>
                                                    <td>昵称：</td>
                                                    <td><input type="text" class="form-control" name="nickname"></td>
                                                </tr>
                                                <tr>
                                                    <td>密码：</td>
                                                    <td><input type="password" class="form-control" name="password"></td>
                                                </tr>
                                                <tr>
                                                    <td>邮箱：</td>
                                                    <td><input type="email" class="form-control" name="email"></td>
                                                </tr>
                                                <tr>
                                                    <td>手机号：</td>
                                                    <td><input type="text" class="form-control" name="userPhone"></td>
                                                </tr>
                                                <tr>
                                                    <td>消费金额：</td>
                                                    <td><input type="text" class="form-control" name="userMoney"></td>
                                                </tr>
                                            </table>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Save</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">...</div>
                    <div role="tabpanel" class="tab-pane" id="messages">...</div>
                    <div role="tabpanel" class="tab-pane" id="settings">...</div>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
    $(function () {
        $('#myTabs a').click(function (e) {
            e.preventDefault()
            $(this).tab('show')
        })
    })
</script>
</html>
