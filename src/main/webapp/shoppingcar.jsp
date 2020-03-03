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
    <link rel="stylesheet" type="text/css" href="css/购物车.css"/>
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
            <thead>
            <tr>
                <th style="width: 150px;">选中</th>
                <th colspan="2">产品</th>
                <th style="width: 150px;">价格</th>
                <th style="width: 150px;">数量</th>
                <th style="width: 150px;">合计</th>
                <th style="width: 150px;">操作</th>
            </tr>
            </thead>
            <tbody class="list"></tbody>
            <%--            <tr>--%>
            <%--                <td colspan="5">--%>
            <%--                    <hr>--%>
            <%--                </td>--%>
            <%--            </tr>--%>
            <%--            <tr>--%>
            <%--                <td class="image"></td>--%>
            <%--                <td class="sName"><span></span></td>--%>
            <%--                <td class="price">¥<span class="sPrice"></span>.00</td>--%>
            <%--                <td><input type="button" class="minus" name="minus" value="-">--%>
            <%--                    <input type="button" class="amount" name="amount" value=" ">--%>
            <%--                    <input type="button" class="plus" name="plus" value="+"></td>--%>
            <%--                <td>¥<span class="sTotal"></span>.00</td>--%>
            <%--                <td>☠</td>--%>
            <%--            </tr>--%>
        </table>

        <div class="count">
            <%--<div class="chead">
                <span>购物车总计</span>
                <hr>
            </div>--%>
            <div class="cbody">
                <table class="ttwo">
                    <tr style="border-bottom: 1px solid #DDDFE7;">
                        <th>小计</th>
                        <td>¥<span class="sPriceTotal"></span>.00</td>
                    </tr>

                    <tr>
                        <th>合计</th>
                        <td>¥<span class="sPriceTotal"></span>.00</td>
                    </tr>
                </table>


            </div>
            <div class="cfoot">
                <button type="button" class="update">更新购物车</button>
                <button type="button" href="结算页面.html" onclick="jump()">去结算GO☞</button>

            </div>

        </div>

    </div>
</div>
<%----------------------------------------------------------------------------------------------------------------%>
<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript">
    //获取地址栏参数,可以是中文参数
    function getUrlParam(key) {
        // 获取参数
        var url = window.location.search;
        // 正则筛选地址栏
        var reg = new RegExp("(^|&)" + key + "=([^&]*)(&|$)");
        // 匹配目标参数
        var result = url.substr(1).match(reg);
        //返回参数值
        return result ? decodeURIComponent(result[2]) : null;
    }

    var gid = getUrlParam("gid");
    var uid = ${user.userId};
    function jump(){
        var price = $(".ttwo").find(".sPriceTotal").html();
        window.location.href="bill.jsp?uid="+uid+"&price="+price;
    }
    function minus(obj,gId) {
        if (($(obj).parents("tr").find(".amount").val()) <= 1) {
            alert("不能再减了，再减就没有啦！");
        } else {
            $(obj).parents("tr").find(".amount").val(parseInt($(obj).parents("tr").find(".amount").val()) - 1);
            var sprice = $(obj).parents("tr").find(".sPrice").html();
            var num = parseInt($(obj).parents("tr").find(".amount").val());
            var stotalprice = num*sprice;
            $(obj).parents("tr").find(".sTotal").html(stotalprice);
            $.getJSON("shop/updateNumAndTotalPrice",{"gId":gId,"num":num,"totalPrice":stotalprice},function (data) {
                if (data){
                    window.location.reload()
                }
            })
        }
    }

    function plus(obj,gId) {
        console.log(obj)
        $(obj).parents("tr").find(".amount").val(parseInt($(obj).parents("tr").find(".amount").val()) + 1);
        var sprice = $(obj).parents("tr").find(".sPrice").html();
        var num = parseInt($(obj).parents("tr").find(".amount").val());
        var stotalprice = num*sprice;
        $(obj).parents("tr").find(".sTotal").html(stotalprice);
        $.getJSON("shop/updateNumAndTotalPrice",{"gId":gId,"num":num,"totalPrice":stotalprice},function (data) {
            if (data){
                window.location.reload()
            }
        })
    }

    function del(gid) {

        if (confirm("是否确认删除！")) {
            $.getJSON("shop/del", {"gid": gid}, function (data) {

                if (data) {
                    alert("删除成功")
                    window.location.reload();
                } else {
                    alert("删除失败")
                }

            })
        }

    }

    function queryTotal(){
        $.getJSON("shop/queryTotal",{"uId":uid},function (data) {
            $(".sPriceTotal").html(data);
        })
    }

    function updateShoppingCarStatus(gId,sStatus){
        $.getJSON("shop/updateShoppingCarStatus",{"gId":gId,"sStatus":sStatus},function (data) {
            if(data){
                window.location.reload();
            }else {
                alert("更改出错")
            }
        })
    }
    $(
        function () {
            queryTotal();
            $.getJSON("shop/queryId", {"uid": uid}, function (data) {
                var str = "  ";
                $(data).each(function () {
                    if(this.sStatus==0){
                        str += "<tr>\n" +
                            "                <td colspan=\"5\"><hr ></td>\n" +
                            "            </tr>\n" +
                            "            <tr >\n" +"<td style='text-align: center'><div class=\"checkbox\" onclick='updateShoppingCarStatus("+this.gId+","+this.sStatus+")'>\n" +
                            "  <label>\n" +
                            "    <input type=\"checkbox\" value=\"\" >\n" +
                            "    " +
                            "  </label>\n" +
                            "</div></td>"+
                            "                <td class=\"image\"><img src='" + this.images[0].imgUrl + "'class='ione'></td>\n" +
                            "                <td class=\"sName\" style='text-align: center'><span>" + this.sName + "</span></td>\n" +
                            "                <td class=\"price\" style='text-align: center'>¥<span class=\"sPrice\">" + this.sPrice + "</span>.00</td>\n" +
                            "                <td style='text-align: center'><input type=\"button\" class=\"minus\" name=\"minus\" value=\"-\" onclick='minus(this,"+this.gId+")'>\n" +
                            "                    <input type=\"button\" class=\"amount\" name=\"amount\" value='" + this.sNum + "'>\n" +
                            "                    <input type=\"button\" class=\"plus\" name=\"plus\" value=\"+\" onclick='plus(this,"+this.gId+")'></td>\n" +
                            "                <td style='text-align: center'>¥<span class=\"sTotal\">" + (this.sNum) * (this.sPrice) + "</span>.00</td>\n" +
                            "                <td style=\"text-align: center\" class='del' ><span style='cursor:pointer' onclick='del(" + this.gId + ")'>☠</span></td>\n" +
                            "            </tr> "
                    }else {
                        str += "<tr>\n" +
                            "                <td colspan=\"5\"><hr ></td>\n" +
                            "            </tr>\n" +
                            "            <tr >\n" +"<td style='text-align: center'><div class=\"checkbox\">\n" +
                            "  <label>\n" +
                            "    <input type=\"checkbox\" value=\"\" onclick='updateShoppingCarStatus("+this.gId+","+this.sStatus+")'checked>\n" +
                            "    " +
                            "  </label>\n" +
                            "</div></td>"+
                            "                <td class=\"image\"><img src='" + this.images[0].imgUrl + "'class='ione'></td>\n" +
                            "                <td class=\"sName\" style='text-align: center'><span>" + this.sName + "</span></td>\n" +
                            "                <td class=\"price\" style='text-align: center'>¥<span class=\"sPrice\">" + this.sPrice + "</span>.00</td>\n" +
                            "                <td style='text-align: center'><input type=\"button\" class=\"minus\" name=\"minus\" value=\"-\" onclick='minus(this,"+this.gId+")'>\n" +
                            "                    <input type=\"button\" class=\"amount\" name=\"amount\" value='" + this.sNum + "'>\n" +
                            "                    <input type=\"button\" class=\"plus\" name=\"plus\" value=\"+\" onclick='plus(this,"+this.gId+")'></td>\n" +
                            "                <td style='text-align: center'>¥<span class=\"sTotal\">" + (this.sNum) * (this.sPrice) + "</span>.00</td>\n" +
                            "                <td style=\"text-align: center\" class='del' ><span style='cursor:pointer' onclick='del(" + this.gId + ")'>☠</span></td>\n" +
                            "            </tr> "
                    }
                    // $(".sName").html(data[0].sName);
                    // $(".sPrice").html(data[0].sPrice);
                    // var str = "<img src='" + data[0].images[0].imgUrl + "' class='ione'>"
                    // $(".image").append(str)
                    // $("input[name=amount]").val(data[0].sNum);
                    // $(".sTotal").html(sum);
                })
                $(".list").empty().append(str);

            })

            $(".update").click(function () {

                // var am = $("input[name=amount]").val();
                // var num = $(".sPrice").html();
                // var sum = am * num;
                // $.getJSON("shop/updateId", {"uId":uid,"sNum": am,"sTotal":sum}, function (data) {
                //     $(data).each(function () {
                //
                //         $(".sTotal").html(sum);
                //         queryTotal();
                //
                //     })
                //
                // })
            })
        }
    )
</script>

</body>
</html>
