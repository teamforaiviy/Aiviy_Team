var pn=1;
var ps=5;
$(function () {
    $('#myTabs a').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
    })
    queryUser(pn,ps)
})
function queryUser(pn,ps) {
    $.getJSON("user/queryUser",{"pn":pn,"ps":ps},function (data) {
        var page =eval(data);
        var str="";
        $(page.list).each(function() {
            str += "<tr>" +
                "<td>"+this.userId+"</td>" +
                "<td>"+this.userName+"</td>" +
                "<td>"+this.nickname+"</td>" +
                "<td>"+this.userPwd+"</td>" +
                "<td>"+this.userMail+"</td>" +
                "<td>"+this.userPhone+"</td>" +
                "<td>"+(this.userMoney==null?"":this.userMoney)+"</td>" +
                "<td>"+this.member.vName+"</td>" +
                "<td><a href='#' data-toggle='modal' data-target='#insertAddress' onclick='addAdd("+this.userId+")'>添加地址</a>&nbsp;&nbsp;<a href='#'>修改</a>&nbsp;&nbsp;<a href='#'>删除</a></td>" +
                "</tr>";
        })
        $("#user #myTable tbody").empty().append(str);

        var pageStr="";
        pageStr +="<li><a href='javascript:queryUser(1,"+ps+")'>首页</a></li>";
        if(page.hasPreviousPage){
            pageStr +="<li>" +
                "<a href='javascript:queryUser("+(page.pageNum-1)+","+ps+")' aria-label='Previous'>" +
                "<span aria-hidden=''true'>&laquo;</span>" +
                "</a>" +
                "</li>";
        }
        $(page.navigatepageNums).each(function () {
            if(page.pageNum==this){
                pageStr +="<li><a class='active' href='javascript:queryUser("+this+","+ps+")'>"+this+"</a></li>";
            }else {
                pageStr +="<li><a href='javascript:queryUser("+this+","+ps+")'>"+this+"</a></li>";
            }
        })
        if(page.hasNextPage){
            pageStr +="<li>" +
                "<a href='javascript:queryUser("+(page.pageNum+1)+","+ps+")' aria-label='Previous'>" +
                "<span aria-hidden='true'>&raquo;</span>" +
                "</a>" +
                "</li>";
        }
        pageStr +="<li><a href='javascript:queryUser("+page.pages+","+ps+")'>尾页</a></li>";
        $("#user .pagination").empty().append(pageStr);
    })
}
/**
 * 添加用户
 */
function insertUser() {
    $.ajax({
        url:"user/insert",
        type:"get",
        data:$("#myModal form").serialize(),
        dataType:"json",
        success:function (data) {
            if(data){
                alert("添加成功！")
                window.location.reload();
            }else {
                alert("添加失败！")
            }
        }
    })
}
function addAdd(userId) {
    $("#insertAddress input[name=userId]").val(userId)
}

/**
 * 添加地址
 */
function insertAddress() {
    $.ajax({
        url:"address/insert",
        type:"get",
        data:$("#insertAddress form").serialize(),
        dataType:"json",
        success:function (data) {
            if(data){
                alert("添加成功！")
                window.location.reload()
            }else {
                alert("添加失败！")
            }
        }
    })
}