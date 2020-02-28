<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/28
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结算</title>
    <link rel="stylesheet" type="text/css" href="css/结算页面.css" />
</head>
<body>
<div class="head">
    <img src="/img/logo.png">
</div>
<div class="bfather">
    <div class="body">
        <form>
            <h3>账单详情</h3>
            <hr>
            <div class="name">
                <h4>名字&nbsp; <span class="x">*</span></h4>
                <input type="text" name="name" />
            </div>
            <div class="name">
                <h4>姓氏&nbsp; <span class="x">*</span></h4>
                <input type="text" name="name" />
            </div>
            <div class="address">
                <h4>详细地址&nbsp; <span class="x">*</span></h4>
                <input type="text" name="address" placeholder="城市地区及街道名称和房屋编号...（可随意填写）" />
            </div>
            <div class="phone">
                <h4>电话号码&nbsp; <span class="x">*</span></h4>
                <input type="text" name="phone" />
            </div>
            <div class="mail">
                <h4>邮箱地址&nbsp; <span class="x">*</span></h4>
                <input type="text" name="mail" />
            </div>
            <div class="text">
                <h4>订单备注（可选） </h4>
                <textarea rows="20" cols="5" placeholder="若需发票，请在此处务必填贵司的「开票」相关信息，信息不完整则无法正常开票。默认增值税普通发票（电子）通过邮箱发送，如增值税专用发票（需加税点），请联系在线客服。"></textarea>
            </div>
            <div class="pay">
                <ul>
                    <li> <input type="radio" checked id="px1" name="1"><label for="px1"><span>支付宝</span><img src="/img/支付宝.png" style="width: 140px; height: 49px;"></label></li>
                    <hr >
                    <li> <input type="radio" id="px2" name="1"><label for="px2"><span>微信</span><img src="/img/微信.png" style="width: 140px; height: 49px;"></label></li>
                </ul>
                <p>您的个人资料将用于处理您的订单、改进您在本网站的使用体验，以及用于在我们的 <span class="clause">隐私政策</span> 中描述的其他用途。</p>
                <label><input type="checkbox"/><span class="end">我已经读了并同意本网站的 <span class="clause">条款和条件 </span><span class="x">*</span></span></label>
            </div>
        </form>
    </div>
</div>
<div class="close">
    <button type="button" class="ok">确认订单</button>
</div>

</body>
</html>
