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
    <meta charset="utf-8" />
    <title>艾维商城个人中心</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />

    <link rel="stylesheet" type="text/css" href="css/public.css" />
    <link rel="stylesheet" type="text/css" href="css/personal.css" />

    <script src="js/jquery-3.4.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="js/distpicker.data.js"></script>
    <script type="text/javascript" src="js/distpicker.js"></script>
    <script type="text/javascript" src="js/Center.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">

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
        <li class="a1" style="cursor: pointer"><span class="glyphicon glyphicon-hdd" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;账户详情</li>
        <li class="a2" style="cursor: pointer"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;我的订单</li>
        <li class="a3" style="cursor: pointer"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;我的会员</li>
<%--        <li class="a4"><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;我的积分</li>--%>
<%--        <li class="a5"><span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;拍卖设置</li>--%>
        <li class="a6" style="cursor: pointer"><span class="glyphicon glyphicon-send" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;添加地址</li>
        <li class="a7" style="cursor: pointer"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp&nbsp&nbsp&nbsp&nbsp;账户修改</li>
    </ul>
</div>
<div class="personal-content">
    <div class="account" >
        <img src="/img/footer/footer-email.PNG">
        <p>您好!
            <strong class="nc"></strong>
            <a onclick="window.location.href='user/exit'">退出</a></p>
        <div class="grmz">
            <div>
                <p>账号</p>
                <p><input type="text" style="outline:none" name="username" disabled="disabled"></p>
            </div>
            <div class="usernameError"></div>
        </div>
        <div class="grnc">
            <p>昵称</p>
            <p><input type="text" style="outline:none" name="nichen" disabled="disabled"></p>
        </div>
        <div class="clear"></div>
        <div class="grxxdz">
            <p>电子邮箱</p>
            <p><input type="text" style="outline:none" name="email" disabled="disabled"/></p>
        </div>
        <div class="grsjhm">
            <p>手机号码</p>
            <p><input type="text" style="outline:none" name="phone" disabled="disabled"/></p>
        </div>
<%--        <div class="grdz">--%>
<%--            <p>地址</p>--%>
<%--            <p><input type="text" style="outline:none" name="phone" disabled="disabled"/></p>--%>
<%--        </div>--%>
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
                <td class="zcsj"></td>
                <td>永久</td>
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
<%--            <div class="">--%>
<%--                <p>地址</p>--%>
<%--                <div data-toggle="distpicker">--%>
<%--                    <div class="form-group">--%>
<%--                        <label class="sr-only" for="province2">Province</label>--%>
<%--                        <select class="form-control" id="province2" data-province="---- 选择省 ----"></select>--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label class="sr-only" for="city2">City</label>--%>
<%--                        <select class="form-control" id="city2" data-city="---- 选择市 ----"></select>--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label class="sr-only" for="district2">District</label>--%>
<%--                        <select class="form-control" id="district2" data-district="---- 选择区 ----"></select>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
            <div class="clear"></div>
            <div class="xxdz">
                <p>详细地址</p>
                <p><input  name="xxdz" type="text" placeholder="请具体详细地址信息,如道路、门牌号、小区、楼栋号、单元等信息" /></p>
            </div>
            <div class="">
                <p>手机号码</p>
                <p><input type="text" name="sjhm" /></p>
            </div>

            <div class="button-address">
                <p><input type="button" value="修改地址"  name="xgdz"/></p>
            </div>
        </form>
    </div>

    <div class="zhxq" style="display: none;">
        <p>修改个人信息</p>
        <form action="" method="post">
            <div class="">
                <p>昵称</p>
                <p><input type="text" name="aa"></p>
            </div>
            <div class="clear"></div>
            <div class="xxdz">
                <p>绑定邮箱</p>
                <p><input type="text" placeholder="请输入邮箱账号" name="bb" /></p>
            </div>
            <div class="">
                <p>当前密码</p>
                <p><input type="text" name="cc" /></p>
            </div>
            <div class="">
                <p>新密码</p>
                <p><input type="text" name="dd" /></p>
            </div>
            <div class="">
                <p>确认新密码</p>
                <p><input type="text" name="ee" /></p>
            </div>
            <div class="button-address">
                <p><input type="button" value="保存更改" name="bcxg" /></p>
            </div>
        </form>
    </div>
</div>
<div class="clear"></div>
<jsp:include page="footer.jsp"></jsp:include>
    <script type="text/javascript">

        $(function () {
            var nickname="${sessionScope.user.nickname}";
            var userName="${sessionScope.user.userName}";
            var userMail="${sessionScope.user.userMail}";
            var userPhone="${sessionScope.user.userPhone}";
            if(nickname==null){
                $(".nc").html(userName);
            }else {
                $(".nc").html(nickname);
            }
            $("input[name=username]").val(userName);
            $("input[name=nichen]").val(nickname);
            $("input[name=email]").val(userMail);
            $("input[name=phone]").val(userPhone);
            //$(".nc").html("${sessionScope.user.userName}");
            var userId="${sessionScope.user.userId}";
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
                                "<td>"+this.createddate+"</td>" +
                                "<td>"+(this.oState==1?'已付款':'未付款')+"</td>" +
                                "<td>"+this.oNum+"</td>" +
                                "<td><a href=''>付款</a><span>取消</span></td>" +
                                "</tr>"
                        })
            $(".dds").append(str);
                    }
                })



            $(".a3").click(function () {
                var vId="${sessionScope.user.vId}";
                var time="${sessionScope.user.createddate}";

                $(".zcsj").html(time);
                if(vId==1){
                    $(".hydj").html("普通会员");
                }else if(vId==2){
                    $(".hydj").html("银牌会员");
                }else if(vId==3){
                    $(".hydj").html("金牌会员");
                }else if(vId==4){
                    $(".hydj").html("钻石会员");
                }

            })


            /*
         修改页面一进来时，调用查询方法，将原有数据显示到页面上
      */
           // $(".a6").click(function () {
               $.getJSON("bill/queryaddress",{"uId": userId},function(data){
                   $("input[name=xxdz]").val(data.adAddress);
                   $("input[name=sjhm]").val(data.adPhone);
                   $("input[name=shmz]").val(data.adName);
               })

           // })



            /*修改地址*/
            /*
                提交按钮点击事件
             */
            $("input[name=xgdz]").click(function () {
                var phone = $("input[name=sjhm]").val();
                var  name= $("input[name=shmz]").val();
                var address=$("input[name=xxdz]").val();
                // if(phone == ""){
                //     alert("手机号不能为空！");
                // }else if(name == ""){
                //     alert("收货姓名不能为空！");
                // }else if(address == ""){
                //     alert("收货地址不能为空！");
                // }
                // else{
                    $.ajax({
                        url: "Personal/updateAddress",
                        type: "post",
                        data: {"phone":phone,"name":name,"address":address,"userId":userId},
                        dataType: "json",
                        success: function (data) {
                            if(data){
                                alert("修改成功！");
                                window.location.reload();
                            }else{
                                alert("修改失败！");
                            }
                        }
                    })
                // }
            })


            $("input[name=bcxg]").click(function () {
                var pwd="${sessionScope.user.userPwd}";
                var name = $("input[name=aa]").val();
                var  email= $("input[name=bb]").val();
                var oldpwd=$("input[name=cc]").val();
                var password=$("input[name=dd]").val();
                var repwd=$("input[name=ee]").val();
                if(oldpwd == ""){
                    alert("原密码未输入！");
                }else if(oldpwd!=pwd){
                    alert("密码不正确！")
                }else if(password==""){
                    alert("未输入新密码！")
                }else if(repwd==""||repwd!=password){
                    alert("请再次确认密码！")
                }
                else {
                $.ajax({
                    url:"Personal/updateUser",
                    type:"post",
                    data:{"pwd":password,"name":name,"email":email,"userId":userId},
                    dataType:"json",
                    success:function (data) {
                        if(data){
                            alert("修改成功！");
                            window.location.reload();
                        }else{
                            alert("修改失败！");
                        }
                    }
                })
                }
            })


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
