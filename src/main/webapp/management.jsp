<%--
  Created by IntelliJ IDEA.
  User: MSI-PC
  Date: 2020/2/28
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>艾维商城个人中心</title>
</head>
<body>
<head>
    <meta charset="utf-8" />
    <title></title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />

    <link rel="stylesheet" type="text/css" href="css/public.css" />
    <link rel="stylesheet" type="text/css" href="css/personal.css" />

    <script src="js/jquery-3.4.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .ddt th{
            border-bottom-color:rgb(221, 223, 231);
            border-bottom-style:solid;
            border-bottom-width:1px;
            border-collapse:collapse;
            border-image-outset:0px;
            border-image-repeat: stretch;
            border-image-slice: 100%;
            border-image-source: none;
            border-image-width: 1;
            border-left-color: rgb(221, 223, 231);
            border-left-style: solid;
            border-left-width: 0px;
            border-right-color: rgb(221, 223, 231);
            border-right-style: solid;
            border-right-width: 0px;
            border-top-color: rgb(221, 223, 231);
            border-top-style: solid;
            border-top-width: 0px;
            box-sizing: border-box;
            color: rgb(70, 72, 85);
            display: inline-block;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
            font-size: 16px;
            font-weight: 500;
            height: 68.2px;
            letter-spacing: 0.3px;
            line-height: 27.36px;
            overflow-wrap: break-word;
            padding-bottom: 20px;
            padding-left: 10px;
            padding-right: 0px;
            padding-top: 20px;
            text-align: left;
            text-size-adjust: 100%;
            text-transform: uppercase;
            vertical-align: text-bottom;
            width: 150px;
            word-break: normal;
            -webkit-border-horizontal-spacing: 0px;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="personal-header">
    <div class="">
        <a href="" class="">首页</a>
        <span>/</span>
        <a href="">我的账户</a>
    </div>
</div>
<div class="personal-body">
    <ul>
        <li class="a1"><span class="glyphicon glyphicon-hdd" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;账户详情</li>
        <li class="a2"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;我的订单</li>
        <li class="a3"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;我的会员</li>
<%--        <li class="a4"><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;我的积分</li>--%>
<%--        <li class="a5"><span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;拍卖设置</li>--%>
        <li class="a6"><span class="glyphicon glyphicon-send" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;添加地址</li>
        <li class="a7"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;账户修改</li>
    </ul>
</div>
<div class="personal-content">
    <div class="account" >
        <img src="img/footer/footer-email.PNG">
        <p>您好!
            <strong class="nc">${user.userName}</strong>
            <a onclick="window.location.href='user/exit'">退出</a></p><br>
        <p>在您的账户，您可查看<a href="order.jsp">最近的订单</a>增加您的<a href="">配送地址 </a>，并可<a href="">修改您的密码和账户详情</a></p>
    </div>

    <div class="wddd" style="display: none;">
        <form>
            <table>
                <thead>
                <tr class="ddt" style="border-bottom: 1px solid #E8DFC4;">
                    <th>订单</th>
                    <th>日期</th>
                    <th>状态</th>
                    <th>合计</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody class="dds">

                </tbody>
            </table>
    <div></div>
    </form>
    </div>

    <div class="vip" style="display: none;">
        <h3 class="zt">您当前的会籍状态</h3>
        <table border="0px" cellspacing="" cellpadding="">
            <tr class="one-one">
                <th>等级</th>
                <th>入会时间</th>
                <th>会籍有效期</th>
                <th>状态</th>
            </tr>
            <tr class="one-two">
                <td class="hydj"></td>
                <td>${sessionScope.user.createddate}</td>
                <td>N/A</td>
                <td>有效</td>
            </tr>
        </table>
        <h3 class="gz">会员晋级规则</h3>
        <table border="" cellspacing="" cellpadding="">
            <tr class="two-one">
                <th class="a">会员级别</th>
                <th class="b">普通会员</th>
                <th class="c">银牌会员</th>
                <th class="d">金牌会员</th>
                <th class="e">钻石会员</th>
            </tr>
            <tr class="two-two">
                <td>入会条件</td>
                <td>注册</td>
                <td>购买次数一次</td>
                <td>消费金额超过<span>1500元</span></td>
                <td>消费金额超过<span>10000元</span></td>
            </tr>
        </table>
        <h3 class="tq">会员特权专享</h3>
        <table border="" cellspacing="" cellpadding="">
            <tr class="three-one">
                <th colspan="2" class="a">会员级别</th>
                <th class="b">普通会员</th>
                <th class="c">银牌会员</th>
                <th class="d">金牌会员</th>
                <th class="e">钻石会员</th>
            </tr>
            <tr class="three-two">
                <td rowspan="2" style="font-size: 16px;">会员专享</td>
                <td style="font-size: 16px;">专享折扣（折上折）</td>
                <td>无</td>
                <td>9.5折</td>
                <td>9.2折</td>
                <td>8.8折</td>
            </tr>
            <tr class="three-three">
                <td style="font-size: 16px;">会员商品</td>
                <td>————————</td>
                <td>————————</td>
                <td>有</td>
                <td>有</td>
            </tr>
        </table>
    </div>

    <div class="wdjf" style="display: none;">
        <div><span>我的积分：0</span></div>
        <div>
            <h3>积分兑换</h3>
            <div class="jfgz">
                <p>积分兑换： 100 积分 = ¥1</p>
                <p>积分兑换优惠券所需的最低积分是100</p>
            </div>
        </div>
    </div>

    <div class="pmsz" style="display: none;">

    </div>

    <div class="address" style="display: none;">
        <form action="" method="post">
            <h3>账单地址</h3>
            <div class="">
                <p>名字</p>
                <p><input type="text" name="shmz"></p>
            </div>
            <div class="">
                <p>地址</p>
                <div data-toggle="distpicker">
                    <div class="form-group">
                        <label class="sr-only" for="province2">Province</label>
                        <select class="form-control" id="province2" data-province="---- 选择省 ----"></select>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="city2">City</label>
                        <select class="form-control" id="city2" data-city="---- 选择市 ----"></select>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="district2">District</label>
                        <select class="form-control" id="district2" data-district="---- 选择区 ----"></select>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
            <div class="xxdz">
                <p>详细地址</p>
                <p><input  name="xxdz" type="text" placeholder="请输入详细地址信息,如道路、门牌号、小区、楼栋号、单元等信息" /></p>
            </div>
<%--            <div class="">--%>
<%--                <p>邮政编码</p>--%>
<%--                <p><input type="text" name="" /></p>--%>
<%--            </div>--%>
            <div class="">
                <p>手机号码</p>
                <p><input type="text" name="sjhm" /></p>
            </div>
<%--            <div class="">--%>
<%--                <p>邮箱地址</p>--%>
<%--                <p><input type="text" name="" /></p>--%>
<%--            </div>--%>
            <div class="button-address">
                <p><input type="button" value="保存地址"  name="xgdz"/></p>
            </div>
        </form>
    </div>

    <div class="zhxq" style="display: none;">
        <p>修改个人信息</p>
        <form action="" method="post">
            <div class="">
                <p>名字</p>
                <p><input type="text"></p>
            </div>
            <div class="">
                <p>显示名称</p>
            </div>
            <div class="clear"></div>
            <div class="xxdz">
                <p>绑定邮箱</p>
                <p><input type="text" placeholder="请输入邮箱账号" /></p>
            </div>
            <div class="">
                <p>当前密码</p>
                <p><input type="text" name="" /></p>
            </div>
            <div class="">
                <p>新密码</p>
                <p><input type="text" name="" /></p>
            </div>
            <div class="">
                <p>确认新密码</p>
                <p><input type="text" name="" /></p>
            </div>
            <div class="button-address">
                <p><input type="button" value="保存更改" /></p>
            </div>
        </form>
    </div>
</div>
<div class="clear"></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/distpicker.data.js"></script>
    <script type="text/javascript" src="js/distpicker.js"></script>
    <script type="text/javascript" src="js/Center.js"></script>
    <script type="text/javascript">

        $(function () {
            var userName=${sessionScope.user.nickname};

            if(userName==null){
                $(".nc").html(${sessionScope.user.userName});
            }else {
                $(".nc").html(${sessionScope.user.nickname});
            }


            var userId=${sessionScope.user.userId};
            var vId=${sessionScope.user.vId};
            $.ajax({
                url:"Personal/order",
                type:"post",
                dataType:"json",
                data:{"userId":userId},
                success:function (data) {
                    var i= this.user.vId;
                    if (i==1){
                        $(".hydj").html("普通会员");
                    }else if (i==2){
                        $(".hydj").html("银牌会员");
                    }else if (i==3){
                        $(".hydj").html("金牌会员");
                    }else if (i==4){
                        $(".hydj").html("钻石会员");
                    }
                }
            })


            /*账单*/
            var str="";
            $.ajax({
                url:"Personal/order",
                type:"post",
                dataType:"json",
                data:{"userId":userId},
                success:function (data) {
                    $(data).each(function () {
                        str+="<tr>" +
                            "<td>"+this.oNo+"</td>" +
                            "<td>"+this.oData+"</td>" +
                            "<td>"+this.oState+"</td>" +
                            "<td>"+this.oNum+"</td>" +
                            "<td><a href=''>付款</a><span>取消</span></td>" +
                            "</tr>"
                    })
                }
            })



            /*
         修改页面一进来时，调用查询方法，将原有数据显示到页面上
      */
            $.getJSON("Personal/queryAddress", {"userId": userId}, function (data) {
                $("input[name=xxdz]").val(data.adAddress);
                $("input[name=sjhm]").val(data.adPhone);
                $("input[name=shmz]").val(data.adName);
            })
        })


         /*修改地址*/
        /*
            提交按钮点击事件
         */
        $("input[name=xgdz]").click(function () {
            var phone = $("input[name=sjhm]").val();
            var  name= $("input[name=shmz]").val();
            var sf=$("#province2").val();
            var cs=$("#city2").val();
            var dq=$("district2").val();
            var address=$("input[name=xgdz]").val();
            var dz=sf+cs+dq+address;
            if(phone == ""){
                alert("手机号不能为空！");
            }else if(name == ""){
                alert("收货姓名不能为空！");
            }else if(dz == ""){
                alert("收货地址不能为空！");
            }
            else{
                $.ajax({
                    url: "Personal/updateAddress",
                    type: "post",
                    data: $("form").serialize(),
                    dataType: "json",
                    success: function (data) {
                        if(data){
                            alert("修改成功！");
                            window.location.href = "index.jsp";
                        }else{
                            alert("修改失败！");
                        }
                    }
                })
            }
        })

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






        $(document).ready(function() {
            $(".header-ul>li>a").click(function() {
             $(this).parent().css("color", "#25C6FC")
            })
        })
    </script>
</body>
</html>
