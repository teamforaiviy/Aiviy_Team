<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    a:hover{
       cursor: pointer;
    }
</style>
<header>
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp"><img src="/img/logo.png" width="90px" width="23px" /></a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${user==null}">
                        <li>您好，请登录！</li>
                        <li><a href="login.jsp">登录</a></li>
                    </c:if>
                    <c:if test="${user!=null}">
                        <li>您好，${user.userName}</li>
                        <li><a onclick="window.location.href='user/exit'">退出登录</a></li>
                    </c:if>
                    <li><a href="register.jsp">注册</a></li>
                    <li><a href="management.jsp">个人中心</a></li>
                    <%--<li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">服务 <span class="glyphicon glyphicon-menu-down"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">常见问题</a></li>
                            <li><a href="#">联系我们</a></li>
                            <li><a href="#">购物指南</a></li>
                            <!--<li role="separator" class="divider"></li>-->
                            <li><a href="#">远程协助</a></li>
                        </ul>
                    </li>--%>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
    </nav>

    <div class="container">
        <div class="header-bg">
            <div class="header-search">
                <div class="header-search-sch">
                    <span class="glyphicon glyphicon-search"></span>
                    <input type="text" placeholder="搜索产品..." />
                </div>
                <div class="header-search-button">
                    <input type="button" value="搜索" class="header-search-btn" />
                </div>
            </div>
            <%--<div class="header-shop">
                <a href="购物车.jsp">
                    <div class="header-shop-sp1">
                        <span>￥1026</span><br />
                        <span>3件</span>
                    </div>
                    <div class="header-shop-sp2">
                        <span class="glyphicon glyphicon-shopping-cart"></span>
                    </div>
                </a>
            </div>--%>
            <div class="header-shop">
                <a onclick="checkIfLogin()">
                    <div class="header-shop-sp2">
                        <span class="glyphicon glyphicon-shopping-cart"></span>
                    </div>
                </a>
            </div>
        </div>
        <div class="clear"></div>
        <div class="header-ul">
            <ul>
                <li><a href="index.jsp">首页</a></li>
                <li><a href="new.jsp">新品</a></li>
                <li><a href="sale.jsp">最畅销</a></li>
                <li><a href="information.jsp">全部商品</a></li>
<%--                <li><a href="Group-buying.jsp">团购</a></li>--%>
            </ul>
        </div>
    </div>
</header>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
    function checkIfLogin(){
        $.getJSON("user/ifLogin",{},function (data) {
            if (!data){
                alert("请登录，否则无法购买")
            }else {
                window.location.href="shoppingcar.jsp"
            }
        })
    }
    $(function () {
        $(".header-bg input[type=button]").click(function () {
            var gName = $(".header-bg input[type=text]").val();
            if(gName==""){
                window.location.href="information.jsp";
            }else {
                $.getJSON("goods/queryByName",{"gName":gName},function (data) {
                    if(data.length>1){
                        window.location.href="information.jsp?gName="+gName;
                    }else {
                        window.location.href="order.jsp?gid="+data[0].gId;
                    }
                })
            }
        })
    })
</script>