<%--
  Created by IntelliJ IDEA.
  User: chensijia
  Date: 2020/2/27
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Side Navbar -->
<nav class="side-navbar">
    <!-- Sidebar Header-->
    <div class="sidebar-header d-flex align-items-center">
        <div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
        <div class="title">
            <h1 class="h4">Administrator</h1>
            <p>Web Designer</p>
        </div>
    </div>
    <!-- Sidebar Navidation Menus-->
    <span class="heading">Main</span>
    <ul class="list-unstyled">
        <li class="active"><a href="index.jsp"> <i class="icon-home"></i>Home </a></li>
        <li> <a href="user.jsp"> <i class="icon-user"></i>User </a></li>
        <li> <a href="address.jsp"> <i class="icon-padnote"></i>Address </a></li>
        <li><a href="#goodDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Good </a>
            <ul id="goodDropdown" class="collapse list-unstyled ">
                <li><a href="goodList.jsp">GoodList</a></li>
                <li><a href="addGood.jsp">AddGood</a></li>
            </ul>
        </li>
        <li> <a href="orders.jsp"> <i class="icon-list"></i>Order </a></li>
        <li> <a href="comment.jsp"> <i class="icon-check"></i>Comment </a></li>
    </ul>
</nav>
</body>
</html>
