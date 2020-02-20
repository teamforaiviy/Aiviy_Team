<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <nav class="navbar navbar-default" style="background-color: #dbdbdb;">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html"><img src="img/logo.png" width="90px" width="23px" /></a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>您好，请登录！</li>
                    <li><a href="login.html">登录</a></li>
                    <li><a href="register.html">注册</a></li>
                    <li><a href="personal.html">我的账户</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">服务 <span class="glyphicon glyphicon-menu-down"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">常见问题</a></li>
                            <li><a href="#">联系我们</a></li>
                            <li><a href="#">购物指南</a></li>
                            <!--<li role="separator" class="divider"></li>-->
                            <li><a href="#">远程协助</a></li>
                        </ul>
                    </li>
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
            <div class="header-shop">
                <a href="购物车.html">
                    <div class="header-shop-sp1">
                        <span>￥1026</span><br />
                        <span>3件</span>
                    </div>
                    <div class="header-shop-sp2">
                        <span class="glyphicon glyphicon-shopping-cart"></span>
                    </div>
                </a>
            </div>
        </div>
        <div class="clear"></div>
        <div class="header-ul">
            <ul>
                <li><a href="index.html">首页</a></li>
                <li><a href="new.html">新品</a></li>
                <li><a href="sale.html">秒杀</a></li>
                <li><a href="Hot-commodities.html">最畅销</a></li>
                <li><a href="information.html">资讯</a></li>
                <li><a href="#">Mac专区</a></li>
                <li><a href="#">Windows</a></li>
                <li><a href="auctions.html">拍卖会</a></li>
                <li><a href="Group-buying.html">团购</a></li>
            </ul>
        </div>
    </div>
</header>
