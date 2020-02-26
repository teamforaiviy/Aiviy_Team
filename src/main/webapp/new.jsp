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
    <title>新品</title>
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
            </div>
        </div>
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
                    "                   <div class=\"new-cotent-two-first-1\" style=\"background-image: url("+this.images[0].imgUrl+")\" onmouseout=\"this.style.backgroundImage='url("+this.images[0].imgUrl+")'\" onmouseover=\"this.style.backgroundImage='url("+this.images[1].imgUrl+")'\">" +
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
