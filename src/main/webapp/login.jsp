<%--
  Created by IntelliJ IDEA.
  User: MSI-PC
  Date: 2020/2/27
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/login.css" />
    <link rel="stylesheet" href="css/tooltip.css" type="text/css" />
</head>
<body>
<div id="background">
    <div class="whole">
        <div class="aiviy"><img src="/img/logo.png"></div>
        <form>
            <div class="register">登录</div>
            <div class="users">
                <div class="user">
                    <input type="text" name="userName" placeholder="用户名/邮箱/手机号" />
                    <b><span id="my-element">i</span></b>
                </div>
                <div class="usernameError"></div>
            </div>
            <div class="passwords">
                <div class="password">
                    <input type="password" name="password" placeholder="密码" />
                    <b><span id="">i</span></b>
                </div>
                <div class="passwordError"></div>
            </div>
            <div class="new">
                <input type="button" class="dl" value="登录">
            </div>
            <div class="zhuce">
                <b><p>没有aiviy账号？</p></b>
            </div>
        </form>
    </div>
</div>
</body>
<script src="js/jquery-3.4.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src='js/tooltip.js' type="text/javascript"></script>
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
    var uId = getUrlParam("user_id");

    $(function () {
``
        $(".dl").click(function () {

            var userName = $("input[name=userName]").val();
            var password = $("input[name=password]").val();
            $.ajax({
                url:"user/login",
                type:"get",
                dataType:"json",
                data:{"userName":userName,"password":password},
                success:function (data) {
                    if (data==0){
                        alert("登录成功！")
                        window.location.href="index.jsp";
                    }else if(data==1){
                        alert("该账户不存在！")
                    }else if (data==2){
                        alert("密码输入错误！")
                    }
                }
            })
        })

    })

    
    function checkName() {
        var name = $("input[name=userName]").val();
        var reg = /^\w{6,16}$/;
        $("div[class=user]").css({
            "border-bottom": "2px solid #cbc5bf",
            "background-color": "#FCFBFA"
        })
        $(".userName").css({
            "margin-bottom": "10px"
        })
        $(".usernameError").css({
            "color": "red"
        })
        if (name == "") {
            $(".usernameError").html("<span style='font-size:14px;padding-left:15px;padding-top:500px;'>账号不能为空</span>");
            $(".usernameError").show();
            return false;
        } else if (!reg.test(name)) {
            $(".usernameError").html("账号不正确");
            $(".usernameError").show();
            return false;
        }
        return true;
    }
    //弹窗
    $(document).ready(function(){
        /* blur失焦事件 focus聚焦事件 */
        $("input[name=username]").blur(checkName).focus(function() {
            $("div[class=user]").css({
                "border-bottom": "2px solid #25D0FD",
            })
            $(".usernameError").html("");
            $(".username").css({
                "margin-bottom": "20px"
            })
            $(".usernameError").hide();
        })

        $('#my-element').tooltip({
            text: '没有账号？<a href="#">注册账号</a>',
            fontSize: '14px',
            theme: 'light',
            fontFamily: "'Roboto-Medium', 'Roboto-Regular', Arial",
            delay: 400,
        });
    });

    $("input[name=password]").blur(checkPassword).focus(function() {
        $("div[class=password]").css({
            "border-bottom": "2px solid #25D0FD",
        })
        $(".passwordError").html("");
        $(".password").css({
            "margin-bottom": "20px"
        })
        $(".passwordError").hide();
    })
    function checkPassword() {
        var name = $("input[name=password]").val();
        var reg = /^\w{6,16}$/;
        $("div[class=password]").css({
            "border-bottom": "2px solid #cbc5bf",
            "background-color": "#FCFBFA"
        })
        $(".password").css({
            "margin-bottom": "10px"
        })
        $(".passwordError").css({
            "color": "red"
        })
        if (name == "") {
            $(".passwordError").html("<span style='font-size:14px;padding-left:15px;padding-top:500px;'>密码不能为空</span>");
            $(".passwordError").show();
            return false;
        } else if (!reg.test(name)) {
            $(".passwordError").html("密码不正确");
            $(".passwordError").show();
            return false;
        }
        return true;
    }
</script>
</body>
</html>
