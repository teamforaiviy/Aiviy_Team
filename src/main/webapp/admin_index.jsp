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
    <script src="js/admin.js" type="text/javascript" charset="UTF-8"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        #myTable,#myTable1{
            width: 80%;
            margin: 20px auto;
        }
        .tab-content nav{
            width: 80%;
            margin: auto;
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
                    <li role="presentation"><a href="#address" aria-controls="address" role="tab" data-toggle="tab">地址管理</a></li>
                    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a></li>
                    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="user">
                        <table class="table table-striped" id="myTable">
                            <thead>
                            <tr>
                                <td colspan="9"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#createUser">添加用户</button></td>
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
                            <tbody>
                            </tbody>
                        </table>
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                            </ul>
                        </nav>
                        <div class="modal fade" id="createUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                                                    <td><input type="password" class="form-control" name="userPwd"></td>
                                                </tr>
                                                <tr>
                                                    <td>邮箱：</td>
                                                    <td><input type="email" class="form-control" name="userMail"></td>
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
                                        <button type="button" class="btn btn-primary" onclick="insertUser()">Save</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal fade" id="insertAddress" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel1">添加地址</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <table>
                                                <tr>
                                                    <td>收货地址：</td>
                                                    <td><input type="text" class="form-control" name="adAddress"></td>
                                                </tr>
                                                <tr>
                                                    <td>收货人电话：</td>
                                                    <td><input type="tel" class="form-control" name="adPhone"></td>
                                                </tr>
                                                <tr>
                                                    <td>收货人姓名：</td>
                                                    <td><input type="text" class="form-control" name="adUser"></td>
                                                </tr>
                                            </table>
                                            <input type="hidden" name="userId" value="">
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary" onclick="insertAddress()">Save</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="address">
                        <jsp:include page="admin/address.jsp"></jsp:include>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages">...</div>
                    <div role="tabpanel" class="tab-pane" id="settings">...</div>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
    var pn=1;
    var ps=5;
    $(function () {
        $('#myTabs a').click(function (e) {
            e.preventDefault()
            $(this).tab('show')
        })
        queryUser(pn,ps)
    })
    function queryUser(pn,ps) {
        $.getJSON("user/queryUser",{"pn":pn,"ps":ps},function (data) {
            var page =eval(data);
            var str="";
            $(page.list).each(function() {
                str += "<tr>" +
                    "<td>"+this.userId+"</td>" +
                    "<td>"+this.userName+"</td>" +
                    "<td>"+this.nickname+"</td>" +
                    "<td>"+this.userPwd+"</td>" +
                    "<td>"+this.userMail+"</td>" +
                    "<td>"+this.userPhone+"</td>" +
                    "<td>"+(this.userMoney==null?"":this.userMoney)+"</td>" +
                    "<td>"+this.member.vName+"</td>" +
                    "<td><a href='#' data-toggle='modal' data-target='#insertAddress' onclick='addAdd("+this.userId+")'>添加地址</a>&nbsp;&nbsp;<a href='#'>修改</a>&nbsp;&nbsp;<a href='#'>删除</a></td>" +
                    "</tr>";
            })
            $("#user #myTable tbody").empty().append(str);

            var pageStr="";
            pageStr +="<li><a href='javascript:queryUser(1,"+ps+")'>首页</a></li>";
            if(page.hasPreviousPage){
                pageStr +="<li>" +
                    "<a href='javascript:queryUser("+(page.pageNum-1)+","+ps+")' aria-label='Previous'>" +
                    "<span aria-hidden=''true'>&laquo;</span>" +
                    "</a>" +
                    "</li>";
            }
            $(page.navigatepageNums).each(function () {
                if(page.pageNum==this){
                    pageStr +="<li><a class='active' href='javascript:queryUser("+this+","+ps+")'>"+this+"</a></li>";
                }else {
                    pageStr +="<li><a href='javascript:queryUser("+this+","+ps+")'>"+this+"</a></li>";
                }
            })
            if(page.hasNextPage){
                pageStr +="<li>" +
                    "<a href='javascript:queryUser("+(page.pageNum+1)+","+ps+")' aria-label='Previous'>" +
                    "<span aria-hidden='true'>&raquo;</span>" +
                    "</a>" +
                    "</li>";
            }
            pageStr +="<li><a href='javascript:queryUser("+page.pages+","+ps+")'>尾页</a></li>";
            $("#user .pagination").empty().append(pageStr);
        })
    }
</script>
</html>
