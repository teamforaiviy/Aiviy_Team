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
    <link rel="stylesheet" type="text/css" href="css/sale.css"/>

    <script src="js/jquery-3.4.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(function () {
            $.getJSON("goods/queryGoodsWithImages",function (data) {
                console.log(data)
                var newGoods="";
                $(data).each(function () {
                    newGoods +="<div class=\"col-md-3\">" +
                        "           <div class=\"sale-cotent-two-first\">" +
                        "               <a href=\"#\">" +
                        "                   <div class=\"sale-cotent-two-first-1\" style=\"background-image: url("+this.images[0].imgUrl+")\" onmouseout=\"this.style.backgroundImage='url("+this.images[0].imgUrl+")'\" onmouseover=\"this.style.backgroundImage='url("+this.images[1].imgUrl+")'\">" +
                        "                       <span class=\"sale-flash\">新品</span>" +
                        "                   </div>" +
                        "                   <h2>"+this.gName+"</h2>" +
                        "                   <span class=\"price-lable\">价格</span><br />" +
                        "                   <span class=\"price\">￥"+this.gPrice+"</span>" +
                        "               </a>" +
                        "            </div>" +
                        "        </div>";
                })
                $(".sale-cotent-two>div").empty().append(newGoods);
            })
        })
    </script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!----------------------------------content---------------------------------------------->
<div class="bar">
    <div class="container">
				<span class="bar-text">
					<a href="index.html">首页</a>
					&nbsp;&nbsp;/&nbsp;&nbsp;秒杀
				</span>
    </div>
</div>
<div class="sale-content">
    <div class="container">
        <div class="sale-cotent-two">
            <div class="row">
            </div>
        </div>
    </div>
</div>


<!-------------------------------------footer----------------------------------------------->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
