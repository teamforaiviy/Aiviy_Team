<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/21
  Time: 8:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单页面</title>
    <link rel="stylesheet" type="text/css" href="css/order.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/order-comment.css"/>
    <link rel="stylesheet" type="text/css" href="css/comment.css"/>


    <script src="js/jquery-3.4.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/order.js" type="text/javascript" charset="utf-8"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%-------------------------------------------------------------------------------------------------------%>
<div class="background">

    <div class="fone">
       <div id="foneback"> </div>
        <ul>
<%--            <li><img src=" " style="line-height: 27.5px;"></li>--%>
<%--            <li><img src=" "></li>--%>
<%--            <li><img src=" "></li>--%>
<%--            <li><img src=" "></li>--%>
        </ul>
    </div>
    <div class="ftwo">
        <h3 name="gName"> </h3>
        ♕♕♕♕♕（999条用户评价）
        <p><span class="qian">￥<span name="gPrice"></span>.00</span></p>
        <span class="PC" name="gContent"></span>
        <h5><span>用户：</span></h5>
        <select name="">
            <option value="" selected>windows</option>
        </select>
        <h5><span>许可</span>：</h5>
        <select name="">
            <option value="" selected>一年</option>
        </select>
        <span class="yuanjia">￥49.00</span><span class="qian">￥<span name="gPrice"></span>.00</span>
        <div class="add">
            <input type="button" class="minus" name="minus" value="-">
            <input type="text" class="amount" name="amount" value="1">
            <input type="button" class="plus" name="plus" value="+">
            <input type="submit" value="加入购物车"/>
        </div>

    </div>
</div>
<div class="middle">
    <div class="top">
        <div class="left">
            <ul>
                <li>商品详情</li>
                <li>商品属性</li>
                <li>用户评论</li>
            </ul>
        </div>

        <div>
            <div class="d1">
                Advanced SystemCare 13 是一款易于使用的Windows电脑优化工具。它帮助用户清洁、优化、加速和保护系统,以及保护用户的在线隐私。<br/>
                只需要几次点击，用户轻松清理垃圾文件、碎片、注册表等垃圾, 并优化启动项、系统资源、互联网连接大大加快电脑启动、响应和浏览速度。Advanced SystemCare 11
                可以帮助用户释放更多磁盘空间。重新设计性能监视器给准确的实时数据的CPU、硬盘和主板的温度来帮助用户了解系统资源情况，另外提供了一个快速访问系统资源管理和故障诊断系统的性能功能。<br/>
                新的 FaceID功能、冲浪保护、广告删除以及加强电脑安全保护。FaceID
                自动捕获入侵者访问你的电脑窃听你的隐私。冲浪保护&广告清理带给你一个全新安全干净的在线冲浪体验。更大的隐私扫描数据库,间谍软件删除、实时保护帮助用户删除更多的威胁和解决隐私问题。<br/>
                <div style="width: 700px;height: 400px;">

                </div>
<%--                <img src="img/order/intro002.png">--%>
                <!-- <img src="img/order/intro003.png" > -->
            </div>
            <div class="d3">
                <p><span class="address">下载地址：</span></p>
                <a href="">免费下载</a><br/>
                <p><span class="address">系统要求：</span></p>
                <span class="window">Windows Vista SP1 (32 位和 64 位)
					   Windows 7 (32 位和 64 位)<br/>
					   Windows 8 (32 位和 64 位)<br/>
					   Windows 8.1 (32 位和 64 位)<br/>
					   Windows 10 (32 位和 64 位)<br/></span>
                <p><span class="address">语言界面：</span></p>
                <span class="window">
						   中文简体、英语、德语、西班牙语、法语、意大利语、俄语、葡萄牙语、波兰语、荷兰、日本
					   </span>
                <p><span class="address">操作说明：</span></p>
                <span class="window">
							1. 单击 “下载链接” 下载后安装程序;<br/>
							2. 打开应用程序单击下方：“输入注册码”;<br/>
							3. 在提示框中输入您的注册码;<br/>
							4. 单击激活按钮完成:)
						</span>
                <p><span class="address">其他信息：</span></p>
                <span class="window">
							找回许可证：登录艾维商城 -> 点击我的帐户 -> 我的订单 -> 查看订单 -> 找到许可证。<br/>
							重置许可证：https://www.aiviy.com/contact/<br/>
						</span>
            </div>
            <div class="d4">
                <h4>评价</h4>
                <div class="talk">
                    <div class="talk_box">
                        <div class="talk_tit">评论</div>
                        <textarea name="talk" id="textareaBox" placeholder="写下你的评论..."></textarea>
                        <button id="talk_submit">发布</button>
                        <button id="cancelbtn" class="cancelbtn hidden none">取消</button>
                    </div>
                    <div id="talk_content" class="talk_content">

                    </div>
                </div>
<%--                <p>🔔 目前还没有评论</p>--%>
            </div>

        </div>
    </div>
</div>
<div class="foot">
    <span class="wenzi">相关产品</span>
    <hr/>
    <div class="xg">
        <ul>
            <li>
                <div class="footimg">
                </div>
                <h2 class="q">正版 TeamViewer 14 远程控制工具软件 许可证代码</h2>
                <div class="footspan">
                    <span class="money">价钱</span><br/>
                    <span class="renmingbi"><span class="yuan">￥1776.00</span>—<span
                            class="yuan">￥15820.00</span></span>
                </div>
            </li>
            <li>
                <div class="footimgtwo">
                </div>
                <h2 class="q">AMC Security 手机管家- 清理、加速、安全</h2>
                <div class="footspan">
                    <span class="money">价钱</span><br/>
                    <span class="renmingbi"><span class="yuana">￥99.00</span>&nbsp;<span
                            class="yuan">￥69.00</span></span>
                </div>
            </li>
            <li>
                <div class="footimgthree">
                </div>
                <h2 class="q">Gilisoft Video Editor 视频编辑软件 中文版</h2>
                <div class="footspan">
                    <span class="money">价钱</span><br/>
                    <span class="renmingbi"><span class="yuana">￥279.00</span>&nbsp;<span
                            class="yuan">￥99.00</span></span>
                </div>
            </li>
            <li>
                <div class="footimgfour">
                </div>
                <h2 class="q">Iris Pro 防蓝光护眼神器 保护视力 Win/Mac必备推荐 中文版</h2>
                <div class="footspan">
                    <span class="money">价钱</span><br/>
                    <span class="renmingbi"><span class="yuana">￥99.00</span>&nbsp;<span
                            class="yuan">￥69.00</span></span>
                </div>
            </li>
        </ul>

    </div>
</div>
<%-------------------------------------------------------------------------------------------------------------------------------%>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">

    function bg(url) {
       $("div[id=foneback]").css({"background-image":"url("+url+")",
           "background-size":"cover"}
       )

    }

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
    var uid = ${user.userId}

    //评论提交
    function fnDate(){
        var date=new Date();
        var year=date.getFullYear();//当前年份
        var month=date.getMonth();//当前月份
        var data=date.getDate();//天
        var hours=date.getHours();//小时
        var minute=date.getMinutes();//分
        var second=date.getSeconds();//秒
        var time=year+"-"+fnW((month+1))+"-"+fnW(data)+" "+fnW(hours)+":"+fnW(minute)+":"+fnW(second);
        return time;
    }

    //补位 当某个字段不是两位数时补0
    function fnW(str){
        var num;
        str>10?num=str:num="0"+str;
        return num;
    }

    $(function() {
        $.getJSON("user/ifLogin",{},function (data) {
            if (!data){
                alert("请登录，否则无法购买")
            }
        })

        $.getJSON("comment/queryAll",{"gId":gid},function (data) {
            var str = "";

                $(data).each(function () {
                    str +="<span>"+this.userName+"</span>&nbsp;&nbsp;&nbsp;&nbsp;"+
                        "<span>"+this.ctime+"</span><br>"+
                        "<span>"+this.cComment+"</span><br>"+
                        "<span>&nbsp;&nbsp;&nbsp;&nbsp;</span><br>";
                })
            $("#talk_content").append(str);
        })

        $("#talk_submit").click(function () {

            var str = "";
            var date = fnDate();
            var content = $("#textareaBox").val();

            if (content == "") {
                return false;
            }
            str += "<span>"+uid+"</span>&nbsp;&nbsp;&nbsp;&nbsp;"+
                "<span>"+date+"</span><br>"+
                "<span>"+content+"</span><br>"+
                "<span>&nbsp;&nbsp;&nbsp;&nbsp;</span><br>";
            $("#talk_content").append(str);
            $("#textareaBox").val("");

        $.ajax({
                url:"comment/insert",
                type:"post",
                data:{"cComment":content,
                      "gId":gid,
                      "ctime":date,
                       "uid":uid},
                dataType:"json",
                success:function (data) {
                    if(data){
                    }else {
                        alert("保存失败！")
                    }
                }
            })
        })

            $("input[type=submit]").click(function () {
                var sName=$("h3[name=gName]").html();
                var sPrice=$("span[name=gPrice]").html();
                var sNum=$("input[name=amount]").val();
                $.getJSON("shop/add",{"sName":sName,"sPrice":sPrice,"sNum":sNum,"gId":gid},function (data) {
                    if (data){
                        window.location.href="shoppingcar.jsp?gid="+gid+"&uid="+uid;
                    }

                })

            })

         // $("div[id=foneback]").css("background","url(/img/order/大1.jpg)")
            $.getJSON("goods/select",{"gid":gid},function (data) {
                $("h3[name=gName]").html(data.gName);
                $("span[name=gContent]").html(data.gContent);
                $("span[name=gPrice]").html(data.gPrice);

            })
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

            $.getJSON("img/query",{"gid":gid},function (data) {
                $("div[id=foneback]").css({"background-image":"url('"+data[0].imgUrl+"')",
                    "background-size":"578px 386px"}
                )
                $(".d1 div").css({"background-image":"url('"+data[1].imgUrl+"')",
                    "background-size":"700px 500px"}
                )
                var str ="";
                $(data).each(function () {
                    str +="<li onclick='bg(\""+this.imgUrl+"\")'><img src='"+this.imgUrl+"' style='line-height: 27.5px;' ></li>"
                    //str +=`<li onclick="bg('`+this.imgUrl+`')"><img src='`+this.imgUrl+`' style='line-height: 27.5px;' ></li>`
                })
                $(".fone ul").append(str);

            })

        }
    )
</script>
</body>
</html>
