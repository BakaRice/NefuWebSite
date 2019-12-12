<%--
  Created by IntelliJ IDEA.
  User: Rice
  Date: 2019/11/23
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--记住要引入c标签！！！！！！！！！！！！-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学校新闻</title>
    <style>
        table, th, td {
            padding: 10px;
            border: 1px solid blue;
        }

        h1 {
            padding: 10px;
        }

    </style>
    <!--Bootstraponline-->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<%--<p>${news}</p>--%>
<h1>新闻管理列表 <span class="badge badge-secondary">News</span></h1>
<p> 如果没有特意设置显示时间 数据库内将没有显示时间，会默认将插入时间复制给显示时间</p>
<p> 记得 防止脚本注入 以及 req.setCharacterEncoding("UTF-8");</p>

<%--添加的隐藏的form表单--%>
<form action="" method="post">
    <input type="hidden" name="flag" value="">
    <input type="hidden" name="id" value="">
</form>
<table>
    <tr>
        <td>#id</td>
        <td>#名称</td>
        <td>#插入时间</td>
        <td>#显示时间</td>
        <td>#操作</td>
    </tr>
    <tbody>
    <c:forEach items="${news }" var="u" varStatus="v">
    <tr>
        <td>${u.id}</td>
        <td><a href="/info?flag=find&id=${u.id}">${u.name}</a></td>
        <td>${u.insertTime}</td>
        <td>${u.showTime}</td>
        <td>
            <form action="/info" method="post">
                <input type="hidden" name="id" value="${u.id}">
<%--                <a href="/info?flag=delete&id=${u.id}">--%>
                    <button name="flag" value="delete" type="submit" class="btn btn-danger">删除</button>
<%--                </a>--%>
<%--                <a href="/info?flag=find&id=${u.id}">--%>
                    <button name="flag" value="find" type="submit" class="btn btn-info">查看</button>
<%--                </a>--%>
<%--                <a href="/info?flag=update&id=${u.id}">--%>
                    <button name="flag" type="submit" value="update" class="btn btn-info">修改</button>
<%--                </a>--%>
            </form>
        </td>
        </c:forEach>
    </tbody>
    </ul>
</table>
</body>
</html>
