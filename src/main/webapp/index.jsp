<%--
  Created by IntelliJ IDEA.
  User: chensijia
  Date: 2020/2/20
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>

    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>

    <script src="js/jquery-3.4.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="js/Center.js" ></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<!-------------------------------content----------------------------------->
<div class="content-bg">
    <div class="content-body">

        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="2000" >
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <div class="content-body-one">
                        <div class="content-body-two">
                            <div class="content-body-two-left">
                                <div class="content-body-two-left-1">
                                    <p>AdGuard – 超赞广告拦截者<br>3台设备仅需 <span>￥69</span></p>
                                    <ul>
                                        <li>让您网络冲浪更快速，更安全，更安逸</li>
                                        <li>摆脱恼人广告，在线跟踪， 拦截广告和危险网站 </li>
                                        <li>支持全平台设备：WIN/MAC/IOS/ANDROID</li>
                                    </ul>
                                    <a href="#">立即购买</a>
                                </div>
                            </div>
                            <div class="content-body-two-right">
                                <div style="width: 100%;height: 60px;"></div>
                                <img src="/img/index/Aiviy-img_AdGuard-imac.png" width="522px" height="392px" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="content-body-one">
                        <div class="content-body-two">
                            <div class="content-body-two-left">
                                <div class="content-body-two-left-1">
                                    <p>Eagle – 图片管理必备工具<br>2台设备仅需  <span>￥199</span></p>
                                    <ul>
                                        <li>素材管理从未如此简单</li>
                                        <li>快速收藏任何图片，高效整理大量图片</li>
                                        <li>解决素材整理的各种难题</li>
                                    </ul>
                                    <a href="订单页面.jsp">立即购买</a>
                                </div>
                            </div>
                            <div class="content-body-two-right">
                                <div style="width: 100%;height: 100px;"></div>
                                <img src="/img/index/Aiviy-img_EagleMacbook.png" width="570px" height="329px" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="content-body-one">
                        <div class="content-body-two">
                            <div class="content-body-two-left">
                                <div class="content-body-two-left-1">
                                    <p>Mac系统清理必备 – MacBooster 8 <br>现在购买节省  <span>￥180</span></p>
                                    <ul>
                                        <li>一键智能清理系统垃圾</li>
                                        <li>提升您的Mac运行速度</li>
                                        <li>检测并删除恶意软件和病毒</li>
                                    </ul>
                                    <a href="订单页面.html">立即购买</a>
                                </div>
                            </div>
                            <div class="content-body-two-right">
                                <div style="width: 100%;height: 80px;"></div>
                                <img src="/img/index/aiviy_macbooster-slide.png" width="570px" height="328px" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="content-body-one">
                        <div class="content-body-two">
                            <div class="content-body-two-left">
                                <div class="content-body-two-left-1">
                                    <p>快速、漂亮、易用的PDF编辑器<br>PDF Expert for Mac 节省  <span>￥319</span></p>
                                    <ul>
                                        <li>轻松编辑文本、图片、链接</li>
                                        <li>丰富多彩的 PDF 批注工具 </li>
                                        <li>合并、分享您的计划</li>
                                    </ul>
                                    <a href="订单页面.jsp">立即购买</a>
                                </div>
                            </div>
                            <div class="content-body-two-right">
                                <div style="width: 100%;height: 100px;"></div>
                                <img src="/img/index/aiviy_pdfexpert_slide-1024x551.png" width="570px" height="307px" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="content-body-one">
                        <div class="content-body-two">
                            <div class="content-body-two-left">
                                <div class="content-body-two-left-1">
                                    <p>专业远程桌面工具 – Radmin 3 <br>活动期间仅需  <span>￥329</span></p>
                                    <ul>
                                        <li>内网与外网之间快速远程</li>
                                        <li>全天候访问办公室计算机 </li>
                                        <li>PC 机和服务器故障排除</li>
                                    </ul>
                                    <a href="订单页面.jsp">立即购买</a>
                                </div>
                            </div>
                            <div class="content-body-two-right">
                                <div style="width: 100%;height: 60px;"></div>
                                <img src="/img/index/aiviy_radmin_slide.png" width="477px" height="418px" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" style="color: #464855;"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="color: #464855;"></span>
                <span class="sr-only">Next</span>
            </a>

            <!--</div>-->
        </div>
    </div>

    <div style="background-color: #F4F5FA;">
        <div class="container">

            <div class="content-one">
                <div class="content-one-first">
                    <h2>S&nbsp;A&nbsp;L&nbsp;E&nbsp;</h2>
                    <a href="#">#立即查看所有优惠商品#</a>
                </div>
            </div>

            <div class="content-two">
                <div class="row">
                    <div class="col-md-3">
                        <div class="content-two-first">
                            <div class="content-two-first-1">
                                <h2>终极思维导图</h2>
                                <p>iMindQ 8.0 全平台支持</p>
                                <p>概念图、头脑风暴、流程图、应有具有。强大的视觉冲击力并提供整个主题的概述</p>
                                <p>激发创造力，激发头脑从现在开始！</p><br />
                                <img src="/img/index/Aiviy-trial_start-img.png" width="230px" height="130px" />
                                <a href="">立即查看</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="content-two-second">
                            <div class="content-two-second-1">
                                <div class="content-two-second-11">
                                    <h2>Office 2019 家庭&学生版</h2>
                                    <p>一次性购买1台 Mac 设备</p>
                                    <p>支持 60 种以上语言</p>
                                    <p>Office 2019应用程序包含 Word，Excel 和 PowerPoint</p>
                                    <p>平滑切换、缩放定位</p>
                                    <p>一次购买，终身使用！</p>
                                    <a href="">立即购买</a>
                                </div>
                            </div>
                            <div class="content-two-second-2">
                                <img src="/img/index/Aiviy-Office_HomeStudent-bg.png" width="230px" height="310px" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="content-two-third">
                            <div class="content-two-third-1">
                                <a href="">
                                    <img src="/img/index/PDF-Expert-icon.png" />
                                </a>
                            </div>
                            <div class="content-two-third-2">
                                <a href="">
                                    <img src="/img/index/idm-icon.png" />
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!-------------------------------footer----------------------------------->
    <jsp:include page="footer.jsp"></jsp:include>
</body>

</html>