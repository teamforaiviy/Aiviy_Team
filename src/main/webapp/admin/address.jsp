<%--
  Created by IntelliJ IDEA.
  User: chensijia
  Date: 2020/2/22
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table class="table table-striped" id="myTable1">
    <thead>
    <tr>
        <td colspan="6">
            用户名：<input type="text" name="userName">
            <button type="button" class="btn btn-primary">查询</button>
        </td>
    </tr>
    <tr>
        <th>地址编号</th>
        <th>收货地址</th>
        <th>收货人电话</th>
        <th>收货人姓名</th>
        <th>用户名</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    </tbody>
</table>
<nav aria-label="Page navigation">
    <ul class="pagination">
    </ul>
</nav>
<script src="js/jquery-3.4.1.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    var pn=1;
    var ps=5;
    $(function () {
        queryAddress(pn,ps)
        $("button").click(function () {
            queryAddress(pn,ps)
        })
    })
    function queryAddress(pn,ps) {
        var userName = $("input[name=userName]").val();
        $.getJSON("address/queryAddress",{"pn":pn,"ps":ps,"userName":userName},function (data) {
            var str="";
            var page =eval(data);
            $(page.list).each(function() {
                str += "<tr>" +
                    "<td>"+this.adId+"</td>" +
                    "<td>"+this.adAddress+"</td>" +
                    "<td>"+this.adPhone+"</td>" +
                    "<td>"+this.adUser+"</td>" +
                    "<td>"+this.user.userName+"</td>" +
                    "<td><a href='#'>修改</a>&nbsp;&nbsp;<a href='#'>删除</a></td>" +
                    "</tr>";
            })
            $("#address #myTable1 tbody").empty().append(str);

            var pageStr="";
            pageStr +="<li><a href='javascript:queryAddress(1,"+ps+")'>首页</a></li>";
            if(page.hasPreviousPage){
                pageStr +="<li>" +
                    "<a href='javascript:queryAddress("+(page.pageNum-1)+","+ps+")' aria-label='Previous'>" +
                    "<span aria-hidden=''true'>&laquo;</span>" +
                    "</a>" +
                    "</li>";
            }
            $(page.navigatepageNums).each(function () {
                if(page.pageNum==this){
                    pageStr +="<li><a class='active' href='javascript:queryAddress("+this+","+ps+")'>"+this+"</a></li>";
                }else {
                    pageStr +="<li><a href='javascript:queryAddress("+this+","+ps+")'>"+this+"</a></li>";
                }
            })
            if(page.hasNextPage){
                pageStr +="<li>" +
                    "<a href='javascript:queryAddress("+(page.pageNum+1)+","+ps+")' aria-label='Previous'>" +
                    "<span aria-hidden='true'>&raquo;</span>" +
                    "</a>" +
                    "</li>";
            }
            pageStr +="<li><a href='javascript:queryAddress("+page.pages+","+ps+")'>尾页</a></li>";
            $("#address .pagination").empty().append(pageStr);
        })
    }

</script>