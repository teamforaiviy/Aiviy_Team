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
        var Page="";
        function query(pageNum){
            $.getJSON("goods/quertGoodsWithImagesByCount",{"pageNum":pageNum},function (data) {
                Page = eval(data);
                var newGoods="";
                $(data.list).each(function () {
                    newGoods +="<div class=\"col-md-3\">" +
                        "           <div class=\"sale-cotent-two-first\">" +
                        "               <a href='order.jsp?gid="+this.gId+"'>" +
                        "                   <div class=\"sale-cotent-two-first-1\" style=\"background-image: url("+this.images[0].imgUrl+")\" onmouseout=\"this.style.backgroundImage='url("+this.images[0].imgUrl+")'\" onmouseover=\"this.style.backgroundImage='url("+this.images[1].imgUrl+")'\">" +
                        "                       <span class=\"sale-flash\">优惠</span>" +
                        "                   </div>" +
                        "                   <h2>"+this.gName+"</h2>" +
                        "                   <span class=\"price-lable\">价格</span><br />" +
                        "                   <span class=\"price\">￥"+this.gPrice+"</span>" +
                        "               </a>" +
                        "            </div>" +
                        "        </div>";
                    /*
                * 拼接底部分页条
                * */
                    var ulStr = "";
                    $(".pagination").empty();
                    ulStr += "<li class=\"First\" onclick='query("+1+")'>\n" +
                        "\t<a href=\"#\" aria-label=\"Previous\">\n" +
                        "\t\t<span aria-hidden=\"true\">首页</span>\n" +
                        "\t</a>\n" +
                        " </li>";
                    ulStr+="<li class=\"Previous\" onclick='frontPage("+Page.pageNum+")' \">\n" +
                        "\t<a href=\"#\" aria-label=\"Previous\">\n" +
                        "\t\t<span aria-hidden=\"true\">上一页</span>\n" +
                        "\t</a>\n" +
                        " </li>";
                    $(Page.navigatepageNums).each(function () {
                        ulStr += "<li onclick='query("+this+")'><a href=\"#\">"+this+"</a></li>"
                    });
                    ulStr += "<li class=\"Next\" onclick='nextPage("+Page.pageNum+")'  \">\n" +
                        "\t<a href=\"#\" aria-label=\"Next\">\n" +
                        "\t\t<span aria-hidden=\"true\">下一页</span>\n" +
                        "\t</a>\n" +
                        "</li>\n" +
                        "<li class=\"Last\" onclick='query("+Page.pages+")'\">\n" +
                        "\t<a href=\"#\" aria-label=\"Next\">\n" +
                        "\t\t<span aria-hidden=\"true\">未页</span>\n" +
                        "\t</a>\n" +
                        "</li>"
                    $(".pagination").append(ulStr);
                })
                $(".sale-cotent-two>div").empty().append(newGoods);
            })
        }
        $(function () {
            query(1)
        })
        $(function () {
            query(1);
            $("#query").click(function () {
                param = $("input[name=bookName]").val();
                query(1);
            });
        });
        //上一页
        function frontPage(pageNum) {
            if(!Page.isFirstPage){
                query(pageNum-1);
            }
        }
        //下一页
        function nextPage(pageNum) {
            if(!Page.isLastPage){
                query(pageNum+1);
            }
        }
    </script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!----------------------------------content---------------------------------------------->
<div class="bar">
    <div class="container">
				<span class="bar-text">
					<a href="index.jsp">首页</a>
					&nbsp;&nbsp;/&nbsp;&nbsp;优惠
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
    <div class="container">
        <div class="row" style="height: 80px;margin: auto;">
            <nav aria-label="Page navigation">
                <ul class="pagination"></ul>
            </nav>
        </div>
    </div>
</div>


<!-------------------------------------footer----------------------------------------------->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
