<%--
  Created by IntelliJ IDEA.
  User: chensijia
  Date: 2020/2/20
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>

    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/new.css"/>

    <script src="js/jquery-3.4.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!----------------------------------content---------------------------------------------->
<div class="new-cotent">
    <div class="container">

        <div class="new-cotent-one">
            <div class="new-cotent-one-first">
                <h2>
                    欢迎访问艾维软件商城<br />在这里您可找到我们最新刊登的应用.<br />我们每周都会上新.
                </h2>
            </div>
        </div>

        <div class="new-cotent-two">
            <div class="row">
                <div class="col-md-3">
                    <div class="new-cotent-two-first">
                        <a href="#">
                            <div class="new-cotent-two-first-1">
                                <span class="new-flash">新品</span>
                            </div>
                            <h2>DAEMON Tools Ultra 5 虚拟光驱软件 -旗舰版</h2>
                            <span class="price-lable">价格</span><br />
                            <span class="price">￥298.00</span>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="new-cotent-two-first">
                        <a href="#">
                            <div class="new-cotent-two-first-2">
                                <span class="discount">优惠 60% OFF!</span>
                                <span class="new-flash">新品</span>
                            </div>
                            <h2>Boom 3D Mac必备 – 个性化音效增强工具</h2>
                            <span class="price-lable">价格</span><br />
                            <span class="price"><span>￥249.00</span>￥99.00</span>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="new-cotent-two-first">
                        <a href="#">
                            <div class="new-cotent-two-first-3">
                                <span class="discount">优惠 22% OFF!</span>
                                <span class="new-flash">新品</span>
                            </div>
                            <h2>正版 AdGuard 广告拦截 隐私保护 软件 3设备</h2>
                            <span class="price-lable">价格</span><br />
                            <span class="price">￥69.00-￥149.00</span>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="new-cotent-two-first">
                        <a href="#">
                            <div class="new-cotent-two-first-4">
                                <span class="discount">优惠 8% OFF!</span>
                                <span class="new-flash">新品</span>
                            </div>
                            <h2>正版 Fences 3 桌面图标文件整理工具软件</h2>
                            <span class="price-lable">价格</span><br />
                            <span class="price"><span>￥74.99</span>￥69.00</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <%--<div class="new-cotent-three">
            <div class="row">
                <div class="col-md-3">
                    <div class="new-cotent-two-first">
                        <a href="#">
                            <div class="new-cotent-two-first-5">
                                <span class="discount">优惠 46% OFF!</span>
                                <span class="new-flash">新品</span>
                            </div>
                            <h2>正版 iMazing 备份管理iPhone 完美替代iTunes</h2>
                            <span class="price-lable">价格</span><br />
                            <span class="price"><span>￥183.00</span>￥99.00</span>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="new-cotent-two-first">
                        <a href="#">
                            <div class="new-cotent-two-first-6">
                                <span class="new-flash">新品</span>
                            </div>
                            <h2>正版 Eagle 图片收藏 素材整理 图库管理软件</h2>
                            <span class="price-lable">价格</span><br />
                            <span class="price">￥199.00</span>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="new-cotent-two-first">
                        <a href="#">
                            <div class="new-cotent-two-first-7">
                                <span class="discount">优惠 20% OFF!</span>
                            </div>
                            <h2>正版 Microsoft Office 365 商业协作版 办公软件</h2>
                            <span class="price-lable">价格</span><br />
                            <span class="price"><span>￥498.00</span>￥398.00</span>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="new-cotent-two-first">
                        <a href="#">
                            <div class="new-cotent-two-first-8">
                                <span class="discount">优惠 70% OFF!</span>
                            </div>
                            <h2>正版 WonderFox DVD Ripper PRO 永久版</h2>
                            <span class="price-lable">价格</span><br />
                            <span class="price"><span>￥199.00</span>￥59.00</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>--%>
    </div>
</div>
</div>

<!-------------------------------------footer----------------------------------------------->
<jsp:include page="footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
    $(function () {
        $.getJSON("goods/queryNew",function (data) {
            var newGoods="";
            $(data).each(function () {
                newGoods +="<div class=\"col-md-3\">" +
                    "           <div class=\"new-cotent-two-first\">" +
                    "               <a href=\"#\">" +
                    "                   <div class=\"new-cotent-two-first-1\">" +
                    "                       <span class=\"new-flash\">新品</span>" +
                    "                   </div>" +
                    "                   <h2>"+this.gName+"</h2>" +
                    "                   <span class=\"price-lable\">价格</span><br />" +
                    "                   <span class=\"price\">￥"+this.gPrice+"</span>" +
                    "               </a>" +
                    "            </div>" +
                    "        </div>";
            })
            $(".new-cotent-two>div").empty().append(newGoods); 
        })
    })
</script>
</html>
