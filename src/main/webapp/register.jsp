<%--
  Created by IntelliJ IDEA.
  User: MSI-PC
  Date: 2020/2/24
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>艾维商城-注册</title>
    <link rel="stylesheet" type="text/css" href="css/register.css"/>
</head>
<body>
<div id="background">
    <div class="whole">
        <div class="aiviy"><img src="/img/logo.png" ></div>
        <form>
            <div class="register">注册</div>
            <div class="username">
                <span>用&nbsp;&nbsp;户&nbsp;名&nbsp;<span>*</span></span>
                <input type="text" name="userName" placeholder="您的用户名即为您的账号" />
                <div class="usernameError"></div>
            </div>
            <div class="email">
                <span>电子邮箱&nbsp;<span>*</span></span>
                <input type="email" name="userMail" placeholder="电子邮箱" />
                <div class="emailError"></div>
            </div>
            <div class="iphone">
                <select>
                    <option value ="" selected>+86 中国大陆</option>
                    <option value ="">+376 安道尔</option>
                    <option value ="">+61 澳大利亚</option>
                    <option value ="">+55 巴西</option>
                    <option value ="">+236 中非</option>
                    <option value ="">+242 刚果</option>
                    <option value ="">+852 香港</option>
                    <option value ="">+886 台湾</option>
                    <option value ="">+82 韩国</option>
                    <option value ="">+81 日本</option>
                    <option value ="">+44 英国</option>
                    <option value ="">+49 德国</option>
                    <option value ="">+84 越南</option>
                    <option value ="">+960 马尔达夫</option>
                    <option value ="">+378 圣马力诺</option>
                    <option value ="">+7哈萨克斯坦</option>
                </select>
                <input type="text" name="userPhone" placeholder="手机账号" />
                <div class="phoneError"></div>
            </div>
            <div class="photocode">
                <input type="text" name="" value="" placeholder="图形验证码"/>
                <span><img src="/img/timg.jpg" ></span>
            </div>
            <div class="iphonecode">
                <input type="text" name="verifyCode" value="" placeholder="手机验证码" />
                <input type="submit" class="btn btn-default" id="btn" name="btn"  value="发送验证码" onclick="sendMessage()" />
            </div>
            <div class="password">
                <span>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;<span>*</span></span>
                <input type="password" name="password" value="" placeholder="以字母开头，长度6~18的字母、数字和下划线"/>
                <div class="passwordError"></div>
            </div>
            <div class="repassword">
                <span>确认密码&nbsp;<span>*</span></span>
                <input type="password" name="userPwd" value="" placeholder="确认密码"/>
                <div class="repasswordError"></div>
            </div>
            <div class="service">
                <input type="checkbox" name="" id="" value="" />我已经同意并接受《服务条款》。
            </div>
            <div class="new">
                <button type="button" class="btn-co">注册</button>
            </div>
        </form>
        <div class="tail">
            <a href="">首页</a>
            <span>|</span>
            <a href="login.html">登录</a>
        </div>
    </div>
</div>
</body>
<script src="js/jquery-3.4.1.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    var InterValObj; //timer变量，控制时间
    var count = 60; //间隔函数，1秒执行
    var curCount;//当前剩余秒数
    function sendMessage() {
        curCount = count;
        $("#btn").attr("disabled", "true");
        $("#btn").val(curCount + "秒后可重新发送");
        InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次请求后台发送验证码 TODO
    }
    //timer处理函数
    function SetRemainTime() {
        if (curCount == 0) {
            window.clearInterval(InterValObj);//停止计时器
            $("#btn").removeAttr("disabled");//启用按钮
            $("#btn").val("重新发送验证码");
        } else {
            curCount--;
            $("#btn").val(curCount + "秒后可重新发送");
        }
    }
    var sms = "";
    $(function () {

        $("#btn").click(function() {
            var phone = $("input[name=phone]").val();
            if (phone != "") {
                $.ajax({
                    url : "message/sendMsg",  //发送请求
                    type : "post",
                    data:{"phoneNumber":phone},
                    success : function(data) {
                        sms = data;
                    }
                });
            } else {
                alert("请输入手机号");
                return false;
            }
        });

        $(".btn-co").click(function() {
            // var name = $("input[name=username]").val();
            // var email = $("input[name=email]").val();
            // var phone = $("input[name=phone]").val();
            // var password = $("input[name=password]").val();

            $.ajax({
                url:"user/insert",
                type: "post",
                data:$("form").serialize(),
                success:function (data) {
                if (data){
                    alert("注册成功！")
                    window.location.href="index.jsp";
                    }
                }
            })
         })
        })


    //     $(".btn-co").click(function() {
    //         var code = $("input[name=verifyCode]").val();
    //         var usernameError=$(".usernameError").html();
    //         var emailError=$(".emailError").html();
    //
    //         if(usernameError!=""){
    //             alert("请确认你的用户名是否正确！")
    //         }else if(emailError!=""){
    //             alert("请确认你的邮箱是否正确！")
    //         }else if($(".phoneError").val()!=""){
    //             alert("请确认你的手机号是否正确！")
    //         }else if($(".repasswordError").val()!=""){
    //             alert("请注意你的密码提示错误！")
    //         }else if (code == "") {
    //             alert("请输入验证码");
    //         } else {
    //             if (sms == code) {
    //                 $.ajax({
    //                     type:"user/insert",
    //                     type:"post",
    //                     data:$("form").serialize(),
    //                     dataType:"json",
    //                     success:function(data){
    //                         if(data){
    //                             alert("注册成功");
    //                             window.location.href="index.jsp";
    //                         }else{
    //                             alert("注册失败")
    //                         }
    //                     }
    //                 })
    //                 // window.location.href = "index.jsp";
    //             } else {
    //                 alert("验证码错误");
    //             }
    //         }
    //     })
    // })


    $("input[name=username]").blur(checkName).focus(function(){
        $("input[name=username]").css({"border-bottom":"2px solid #25D0FD","background-color":"white"})
        $(".usernameError").html("");
        $(".username").css({"margin-bottom":"20px"})
        $(".usernameError").hide();
    })

    function checkName(){
        var name = $("input[name=username]").val();
        var reg = /^\w{6,16}$/;
        $("input[name=username]").css({"border-bottom":"2px solid #cbc5bf","background-color":"#FCFBFA"})
        $(".username").css({"margin-bottom":"10px"})
        $(".usernameError").css({"color":"red"})
        if(name==""){
            $(".usernameError").html("用户名不能为空");
            $(".usernameError").show();
            return false;
        }else if(!reg.test(name)){
            $(".usernameError").html("用户名格式不正确");
            $(".usernameError").show();
            return false;
        }
        return true;
    }


    $("input[name=email]").blur(checkEmail).focus(function(){
        $("input[name=email]").css({"border-bottom":"2px solid #25D0FD","background-color":"white"})
        $(".emailError").html("");
        $(".email").css({"margin-bottom":"20px"})
        $(".emailError").hide();
    })

    function checkEmail(){
        var email = $("input[name=email]").val();
        var reg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
        $("input[name=email]").css({"border-bottom":"2px solid #cbc5bf","background-color":"#FCFBFA"})
        $(".email").css({"margin-bottom":"10px"})
        $(".emailError").css({"color":"red"})
        if(email==""){
            $(".emailError").html("电子邮箱不能为空");
            $(".emailError").show();
            return false;
        }else if(!reg.test(email)){
            $(".emailError").html("邮箱格式不正确");
            $(".emailError").show();
            return false;
        }
        return true;
    }


    $("input[name=phone]").blur(checkPhone).focus(function(){
        $("input[name=phone]").css({"border-bottom":"2px solid #25D0FD","background-color":"white"})
        $(".phoneError").html("");
        $(".phone").css({"margin-bottom":"20px"})
        $(".phoneError").hide();
    })

    function checkPhone(){
        var phone = $("input[name=phone]").val();
        var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
        $("input[name=phone]").css({"border-bottom":"2px solid #cbc5bf","background-color":"#FCFBFA"})
        $(".phone").css({"margin-bottom":"10px"})
        $(".phoneError").css({"color":"red"})
        if(phone==""){
            $(".phoneError").html("手机号不能为空");
            $(".phoneError").show();
            return false;
        }else if(!reg.test(phone)){
            $(".phoneError").html("手机号不存在");
            $(".phoneError").show();
            return false;
        }
        return true;
    }

    $("input[name=password]").blur(checkPassword).focus(function(){
        $("input[name=password]").css({"border-bottom":"2px solid #25D0FD","background-color":"white"})
        $(".passwordError").html("");
        $(".password").css({"margin-bottom":"20px"})
        $(".passwordError").hide();
    })

    function checkPassword(){
        var password = $("input[name=password]").val();
        var reg = /^[a-zA-Z]\w{5,17}$/;
        $("input[name=password]").css({"border-bottom":"2px solid #cbc5bf","background-color":"#FCFBFA"})
        $(".password").css({"margin-bottom":"10px"})
        $(".passwordError").css({"color":"red"})
        if(password==""){
            $(".passwordError").html("密码不能为空");
            $(".passwordError").show();
            return false;
        }else if(!reg.test(password)){
            $(".passwordError").html("密码格式不正确");
            $(".passwordError").show();
            return false;
        }
        return true;
    }


    $("input[name=repassword]").blur(checkRepassword).focus(function(){
        $("input[name=repassword]").css({"border-bottom":"2px solid #25D0FD","background-color":"white"})
        $(".repasswordError").html("");
        $(".repassword").css({"margin-bottom":"20px"})
        $(".repasswordError").hide();
    })

    function checkRepassword(){
        var repassword = $("input[name=repassword]").val();
        var password = $("input[name=password]").val();
        $("input[name=repassword]").css({"border-bottom":"2px solid #cbc5bf","background-color":"#FCFBFA"})
        $(".repassword").css({"margin-bottom":"10px"})
        $(".repasswordError").css({"color":"red"})
        if(repassword==""){
            $(".repasswordError").html("请确认密码");
            $(".repasswordError").show();
            return false;
        }else if(password!=repassword){
            $(".repasswordError").html("两次密码不一样，请重新输入");
            $(".repasswordError").show();
            return false;
        }
        return true;
    }
</script>
</html>
