<%--
  Created by IntelliJ IDEA.
  User: MSI-PC
  Date: 2020/2/21
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>资讯</title>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>

    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/information.css"/>

    <script src="js/jquery-3.4.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/Center.js" ></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        /*.dwdwdw select{
            float: left;
        }

        .dwdwdw nav{
            float: left;
        }
        .dwdwdw{
            height: 40px;
        }*/

        input[name=pn] {
            width: 30px;
            height: 30px;
        }

        .a {
            float: right;
        }
        .a1{
            float: left;
        }.a2{
             font-size: 20px;
             float: right;
             line-height: 74px;
         }
        .pagination{
            vertical-align: middle;

        }
        .pagination li{

        }
    </style>
    <script type="text/javascript">
        var pn = 1;
        var ps = 12;
        $(function () {
            queryAll(pn,ps);
            $("header-search-btn").click(function () {
                queryAll(pn,ps);
            })
        })

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

        function queryAll(pn,ps) {
            var gName = getUrlParam("gName");
            $.getJSON("goods/queryAllOrBySearch",{"pn":pn,"ps":ps,"gName":gName},function (data) {
                var page = data;
                var newGoods = "";
                $(page.list).each(function () {
                    newGoods +="<div class=\"col-md-3\">" +
                        "           <div class=\"new-cotent-two-first\">" +
                        "               <a href='order.jsp?gid="+this.gId+"'>" +
                        "                   <div class=\"new-cotent-two-first-1\" style=\"background-image: url("+this.images[0].imgUrl+")\" onmouseout=\"this.style.backgroundImage='url("+this.images[0].imgUrl+")'\" onmouseover=\"this.style.backgroundImage='url("+this.images[1].imgUrl+")'\">" +
                        "                       <span class=\"new-flash\">新品</span>" +
                        "                   </div>" +
                        "                   <h2>"+this.gName+"</h2>" +
                        "                   <span class=\"price-lable\">价格</span><br />" +
                        "                   <span class=\"price\">￥"+this.gPrice+"</span>" +
                        "               </a>" +
                        "            </div>" +
                        "        </div>";
                })
                $(".new-cotent-two>div").empty().append(newGoods);

                var pageStr = "";
                pageStr += "<li><a href='javascript:queryAll(1,"+ps+")'>首页</a></li>";
                if(page.hasPreviousPage){
                    pageStr += "<li>" +
                        "<a href='javascript:queryAll("+(page.pageNum-1)+","+ps+")' aria-label='Previous'>" +
                        "<span aria-hidden='true'><<<</span>" +
                        "</a>" +
                        "</li>";
                }
                $(page.navigatepageNums).each(function () {
                    if(page.pageNum==this){
                        pageStr += "<li class='active'><a href='javascript:queryAll("+this+","+ps+")'>"+this+"</a></li>";
                    }else{
                        pageStr += "<li><a href='javascript:queryAll("+this+","+ps+")'>"+this+"</a></li>";
                    }
                })
                if(page.hasNextPage){
                    pageStr += "<li>" +
                        "<a href='javascript:queryAll("+(page.pageNum+1)+","+ps+")' aria-label='Next'>" +
                        "<span aria-hidden='true'>>>></span>" +
                        "</a>" +
                        "</li>";
                }
                pageStr += "<li><a href='javascript:queryAll("+page.pages+","+ps+")'>末页</a></li>";
                $(".pagination").empty();
                $(".pagination").append(pageStr);
            })
        }
    </script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<aside id="secondary" class="widget-area" role="complementary" itemscope="itemscope" itemtype="https://schema.org/WPSideBar">
    <div class="conj-secondary-widget-area__wrapper open-state conj-secondary-widget-area__sticky">
        <div id="/" class="widget woocommerce widget_top_rated_products">
            <span class="widget-title">热门关注</span>
            <ul class="product_list_widget">
                <li> <a href="#"> <img width="418" height="418" src="img/content/Aiviy-iobit-asc-box-418x418.jpg"
                                       class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" srcset="https://www.aiviy.com/wp-content/uploads/2018/09/Aiviy-iobit-asc-box-418x418.jpg 418w, https://www.aiviy.com/wp-content/uploads/2018/09/Aiviy-iobit-asc-box-150x150.jpg 150w, https://www.aiviy.com/wp-content/uploads/2018/09/Aiviy-iobit-asc-box-100x100.jpg 100w"
                                       sizes="(max-width: 418px) 100vw, 418px" /> <span class="product-title">Advanced SystemCare 13 Pro <br>清理优化工具</span>
                </a>
                    <div class="star-rating" role="img" aria-label="评分 5.00 &amp;sol; 5"><span style="width:100%">评分 <strong class="rating">5.00</strong>
									&amp;sol; 5</span></div> <span class="conj-wc-price__wrapper"><span class="woocommerce-Price-amount amount"><span
                            class="woocommerce-Price-currencySymbol">&yen;</span>69.00</span> &ndash; <span class="woocommerce-Price-amount amount"><span
                            class="woocommerce-Price-currencySymbol">&yen;</span>139.00</span><span class="price-label">价格</span></span>
                </li>
                <li> <a href="#"> <img width="418" height="418" src="https://www.aiviy.com/wp-content/uploads/2019/03/Aiviy-CCleaner-box-418x418.jpg"
                                       class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" srcset="https://www.aiviy.com/wp-content/uploads/2019/03/Aiviy-CCleaner-box-418x418.jpg 418w, https://www.aiviy.com/wp-content/uploads/2019/03/Aiviy-CCleaner-box-150x150.jpg 150w, https://www.aiviy.com/wp-content/uploads/2019/03/Aiviy-CCleaner-box-100x100.jpg 100w"
                                       sizes="(max-width: 418px) 100vw, 418px" /> <span class="product-title">正版 CCleaner Professional 专业版<br>
									系统清理优化软件</span> </a>
                    <div class="star-rating" role="img" aria-label="评分 5.00 &amp;sol; 5"><span style="width:100%">评分 <strong class="rating">5.00</strong>
									&amp;sol; 5</span></div> <span class="conj-wc-price__wrapper"><span class="woocommerce-Price-amount amount"><span
                            class="woocommerce-Price-currencySymbol">&yen;</span>139.00</span> &ndash; <span class="woocommerce-Price-amount amount"><span
                            class="woocommerce-Price-currencySymbol">&yen;</span>249.00</span><span class="price-label">价格</span></span>
                </li>
                <li> <a href="#"> <img width="418" height="418" src="https://www.aiviy.com/wp-content/uploads/2013/06/Aiviy-iobit-ul-box-1-418x418.jpg"
                                       class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" srcset="https://www.aiviy.com/wp-content/uploads/2013/06/Aiviy-iobit-ul-box-1-418x418.jpg 418w, https://www.aiviy.com/wp-content/uploads/2013/06/Aiviy-iobit-ul-box-1-150x150.jpg 150w, https://www.aiviy.com/wp-content/uploads/2013/06/Aiviy-iobit-ul-box-1-100x100.jpg 100w"
                                       sizes="(max-width: 418px) 100vw, 418px" /> <span class="product-title">IObit Uninstaller 9 Pro <br>专业卸载器</span>
                </a>
                    <div class="star-rating" role="img" aria-label="评分 5.00 &amp;sol; 5"><span style="width:100%">评分 <strong class="rating">5.00</strong>
									&amp;sol; 5</span></div> <span class="conj-wc-price__wrapper"><span class="woocommerce-Price-amount amount"><span
                            class="woocommerce-Price-currencySymbol">&yen;</span>49.00</span> &ndash; <span class="woocommerce-Price-amount amount"><span
                            class="woocommerce-Price-currencySymbol">&yen;</span>69.00</span><span class="price-label">价格</span></span>
                </li>
                <li> <a href="#"> <img width="418" height="418" src="https://www.aiviy.com/wp-content/uploads/2019/09/Aiviy-wise-care-365-pro-418x418.png"
                                       class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" srcset="https://www.aiviy.com/wp-content/uploads/2019/09/Aiviy-wise-care-365-pro-418x418.png 418w, https://www.aiviy.com/wp-content/uploads/2019/09/Aiviy-wise-care-365-pro-150x150.png 150w, https://www.aiviy.com/wp-content/uploads/2019/09/Aiviy-wise-care-365-pro-100x100.png 100w"
                                       sizes="(max-width: 418px) 100vw, 418px" /> <span class="product-title">正版 Wise Care 365 Pro <br>系统优化清理工具软件</span>
                </a>
                    <div class="star-rating" role="img" aria-label="评分 5.00 &amp;sol; 5"><span style="width:100%">评分 <strong class="rating">5.00</strong>
									&amp;sol; 5</span></div> <span class="conj-wc-price__wrapper"><span class="woocommerce-Price-amount amount"><span
                            class="woocommerce-Price-currencySymbol">&yen;</span>49.00</span> &ndash; <span class="woocommerce-Price-amount amount"><span
                            class="woocommerce-Price-currencySymbol">&yen;</span>129.00</span><span class="price-label">价格</span></span>
                </li>
            </ul>
        </div>
        <div id="recent-posts-6" class="widget widget_recent_entries">
            <span class="widget-title">新闻动态</span>
            <ul>
                <li> <a href="#">艾维商城 &#8211; 七夕节免费领取200元优惠卷</a> </li>
                <li> <a href="#">Microsoft Office 365 E3
                    注册激活下载安装图文教程</a> </li>
                <li> <a href="#">如何快速将 Window 10 家庭版升级到专业版</a> </li>
                <li> <a href="#">艾维商城 &#8211; 五一感恩回馈</a> </li>
                <li> <a href="#">Windows 10
                    无法安装到这个磁盘 选中的磁盘具有MBR分区表解决方法</a> </li>
            </ul>
        </div>
        <div id="woocommerce_product_categories-4" class="widget woocommerce widget_product_categories">
            <span class="widget-title">商品分类</span>
            <ul class="product-categories">
                <li class="cat-item cat-item-146 cat-parent"><a href="#">商务</a>
                    <ul class='children'>
                        <li class="cat-item cat-item-163"><a href="#">办公</a></li>
                        <li class="cat-item cat-item-162"><a href="#">商业</a></li>
                        <li class="cat-item cat-item-161"><a href="#">效率</a></li>
                    </ul>
                </li>
                <li class="cat-item cat-item-147 cat-parent"><a href="#">安全</a>
                    <ul class='children'>
                        <li class="cat-item cat-item-156"><a href="#">杀毒软件</a></li>
                        <li class="cat-item cat-item-160"><a href="#">端点防护</a></li>
                        <li class="cat-item cat-item-157"><a href="#">防火墙</a></li>
                    </ul>
                </li>
                <li class="cat-item cat-item-15 cat-parent"><a href="#">工具</a>
                    <ul class='children'>
                        <li class="cat-item cat-item-158"><a href="#">下载工具</a></li>
                        <li class="cat-item cat-item-159"><a href="#">清理优化</a></li>
                        <li class="cat-item cat-item-151"><a href="#">生活&amp;娱乐</a></li>
                    </ul>
                </li>
                <li class="cat-item cat-item-149 cat-parent"><a href="#">设计</a>
                    <ul class='children'>
                        <li class="cat-item cat-item-148"><a href="#">图形</a></li>
                        <li class="cat-item cat-item-150"><a href="#">开发</a></li>
                        <li class="cat-item cat-item-164"><a href="#">视频</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div id="tag_cloud-4" class="widget widget_tag_cloud">
            <span class="widget-title">标签云</span>
            <div class="tagcloud">
                <ul class="dwdw" role='list'>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-290 tag-link-position-1"
                               style="font-size: 1em;">12.12</a></li>
                        <li style="flex-basis: 30%;"><a href="#" class="tag-cloud-link tag-link-363 tag-link-position-2"
                                                        style="font-size: 1em;">51活动</a></li>
                        <li style="flex-basis: 30%;"><a href="#" class="tag-cloud-link tag-link-174 tag-link-position-3"
                                                        style="font-size: 1em;">Acrobat</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-248 tag-link-position-4"
                               style="font-size: 1em;">idm下载</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-249 tag-link-position-5"
                               style="font-size: 1em;">idm乱码</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-280 tag-link-position-6"
                               style="font-size: 1em;">Mac虚拟机</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-360 tag-link-position-7"
                               style="font-size: 1em;">MBR分区</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-380 tag-link-position-8"
                               style="font-size: 1em;">office 365 E3</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-382 tag-link-position-9"
                               style="font-size: 1em;">office 365商业版</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-256 tag-link-position-10"
                               style="font-size: 1em;">office2019</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-381 tag-link-position-11"
                               style="font-size: 1em;">office企业版</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-279 tag-link-position-12"
                               style="font-size: 1em;">Parallels Desktop</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-281 tag-link-position-13"
                               style="font-size: 1em;">pd14</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-173 tag-link-position-14"
                               style="font-size: 1em;">PDF Expert</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-175 tag-link-position-15"
                               style="font-size: 1em;">PDF编辑</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-257 tag-link-position-16"
                               style="font-size: 1em;">Win10</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-367 tag-link-position-17"
                               style="font-size: 1em;">win10 home Pro</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-356 tag-link-position-18"
                               style="font-size: 1em;">Win10 U盘启动盘</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-359 tag-link-position-19"
                               style="font-size: 1em;">win10下载</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-358 tag-link-position-20"
                               style="font-size: 1em;">win10安装</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-449 tag-link-position-21"
                               style="font-size: 1em;">win10安装密钥</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-447 tag-link-position-22"
                               style="font-size: 1em;">Win10安装教程</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-361 tag-link-position-23"
                               style="font-size: 1em;">win10安装问题</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-362 tag-link-position-24"
                               style="font-size: 1em;">win10无法安装</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-258 tag-link-position-25"
                               style="font-size: 1em;">windows 10</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-364 tag-link-position-26"
                               style="font-size: 1em;">五一活动</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-328 tag-link-position-27"
                               style="font-size: 1em;">优惠代码</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-186 tag-link-position-28"
                               style="font-size: 1em;">优惠劵</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-187 tag-link-position-29"
                               style="font-size: 1em;">优惠活动</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-342 tag-link-position-30"
                               style="font-size: 1em;">会员同步</a></li>
                    </div>

                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-341 tag-link-position-31"
                               style="font-size: 1em;">会员绑定</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-271 tag-link-position-32"
                               style="font-size: 1em;">双11活动</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-357 tag-link-position-33"
                               style="font-size: 1em;">启动盘</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-448 tag-link-position-34"
                               style="font-size: 1em;">安装Windows 10</a></li>
                        <li><a href="#"
                               class="tag-cloud-link tag-link-366 tag-link-position-35" style="font-size: 1em;">家庭版升级专业版</a></li>
                        <li><a href="#"
                               class="tag-cloud-link tag-link-368 tag-link-position-36" style="font-size: 1em;">家庭版升级企业版</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-327 tag-link-position-37"
                               style="font-size: 1em;">小程序</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-291 tag-link-position-38"
                               style="font-size: 1em;">年终盛典</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-326 tag-link-position-39"
                               style="font-size: 1em;">微信小程序</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-233 tag-link-position-40"
                               style="font-size: 1em;">教程</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-289 tag-link-position-41"
                               style="font-size: 1em;">积分兑换</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-365 tag-link-position-42"
                               style="font-size: 1em;">艾维五一活动</a></li>
                    </div>
                    <div style="display: flex;">
                        <li><a href="#" class="tag-cloud-link tag-link-270 tag-link-position-43"
                               style="font-size: 1em;">艾维商城</a></li>
                        <li><a href="#" class="tag-cloud-link tag-link-329 tag-link-position-44"
                               style="font-size: 1em;">艾维商城优惠</a></li>
                    </div>
                </ul>
            </div>
        </div>
    </div>
</aside>




<div class="ccaazz">


        <select style="margin-top: 20px">
            <option selected="selected">默认产品排序</option>
            <option>接受关注度排序</option>
            <option>按好评度排序</option>
            <option>按最新内容排序</option>
            <option>按价格从低到高</option>
            <option>按价格从高到低</option>
        </select>

        <div class="a">
            <div class="a1">
                <nav aria-label="Page navigation">
                    <ul class="pagination">

                    </ul>
                </nav>
            </div>
        </div>

            <div class="new-cotent-two">
                <div class="row">

                </div>
            </div>







    </div>



</div>



<%--<!-------------------------------footer----------------------------------->--%>
<%--<jsp:include page="footer.jsp"></jsp:include>--%>
</body>
</html>
