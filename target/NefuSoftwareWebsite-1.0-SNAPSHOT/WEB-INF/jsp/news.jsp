<%--
  Created by IntelliJ IDEA.
  User: Rice
  Date: 2019/11/23
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--记住要引入c标签！！！！！！！！！！！！-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>学校新闻</title>
    <style>
        table, th, td
        {
            border: 1px solid blue;
        }

    </style>
</head>
<body>
<p>${news}</p>
<p> 如果没有特意设置显示时间 数据库内将没有显示时间，会默认将插入时间复制给显示时间</p>
<p> 记得 防止脚本注入 以及  req.setCharacterEncoding("UTF-8");</p>
<tr>
    <td>#id</td>
    <td>#名称</td>
    <td>#插入时间</td>
    <td>#显示时间</td>
</tr>
<table>
    <tbody>
    <c:forEach items="${news }" var="u" varStatus="v">
        <tr>
            <td>${u.id}</td>
            <td>${u.name}</td>
            <td>${u.insertTime}</td>
            <td>${u.showTime}</td>
            <td>${u.content}</td>
        </tr>
    </c:forEach>
    </tbody>
    </ul>
</table>
</body>
</html>
