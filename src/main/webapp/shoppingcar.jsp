<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/24
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>
    <link rel="stylesheet" type="text/css" href="css/购物车.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <script src="js/jquery-3.4.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%----------------------------------------------------------------------------------------------------------------%>
<div class="shopping">
    <div class="shop">
        <table class="tone">
            <tr>
                <th>产品</th>
                <th></th>
                <th style="width: 150px;">价格</th>
                <th style="width: 150px;">数量</th>
                <th style="width: 150px;">合计</th>
            </tr>
            <tr>
                <td colspan="5"><hr ></td>
            </tr>
            <tr>
                <td><img src="/img/购物车.jpg" class="ione"></td>
                <td>DAEMON Tools Ultra 5 虚拟光驱软件 -旗舰版 - Windows, 永久</td>
                <td class="price">¥<span>298.00</span></td>
                <td><input type="button" class="minus" name="minus" value="-">
                    <input type="button" class="amount" name="amount" value="2" >
                    <input type="button" class="plus" name="plus" value="+"></td>
                <td >¥298.00</td>
                <td>☠</td>
            </tr>
        </table>

        <div class="count">
            <div class="chead">
                <span>购物车总计</span>
                <hr >
            </div>
            <div class="cbody">
                <table  class="ttwo">
                    <tr style="border-bottom: 1px solid #DDDFE7;">
                        <th>小计</th>
                        <td>¥298.00</td>
                    </tr>

                    <tr>
                        <th>合计</th>
                        <td><span class="total">¥596.00</span></td>
                    </tr>
                </table>


            </div>
            <div class="cfoot">
                <button type="button" class="update">更新购物车</button>
                <button type="button" href="结算页面.html">去结算GO☞</button>

            </div>

        </div>

    </div>
</div>
<%----------------------------------------------------------------------------------------------------------------%>
<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript">
    $(
        function() {
            $(".minus").click(function minus() {
                if (($(".amount").val()) <= 1) {
                    alert("不能再减了，再减就没有啦！");
                } else {
                    $(".amount").val(parseInt($(".amount").val()) - 1);
                }
            })
            $(".plus").click(function plus() {
                $(".amount").val(parseInt($(".amount").val()) + 1);
            })

            $(".update").click(function(){
                var count = $(".amount").val()*$(".price span").html();
                $(".total").html("￥"+parseFloat(count)+".00");

            })
        }
    )
</script>

</body>
</html>
