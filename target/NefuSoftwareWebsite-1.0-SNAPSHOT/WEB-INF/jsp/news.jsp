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
            border: 1px solid rgb(0,120,90)
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

    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">

    <style>
        * {
            padding: 0px;
            margin: 0;
        }

        .containers {
            display: flex;
            /* padding-right: 15px; */
            /* padding-left: 15px; */
            /* margin-right: auto; */
            /* margin-left: auto;
            */
        }


        .nav {
            position: fixed;
            top: 0px;
            height: 100%;
            width: 7%;
            background-color: rgb(0,120,90);
            text-align: center;
            margin: 0px auto;
            display: flex;
            justify-content: center;
        }

        .main_item {
            padding: 10px 0;

        }

        .nav_icon {
            width: min-content;
            height: min-content;
        }

        .nav_icon #show {
            transition: transform .3s;
        }

        .nav_icon:hover #show {
            transform: rotate(180deg);
        }

        .main_item a i {
            font-size: 350%;
            color: white;
        }

        .down_item a i {
            font-size: 250%;
            color: white;
        }

        .down_item div {
            padding: 2px 0;
        }

        .item_r a i {
            font-size: 250%;
            color: red;
        }

        .main {
            /*border: 1px solid red; */
            margin-left: 9%;
        }

        .main p {
            /* font-size: 100px; */
            text-align: justify;
        }

    </style>
</head>
<body>

<div class="containers" >

    <div class="nav">
        <div class="nav_icon">
            <div class="main_item"><!--上面大按钮-->
                <a href="#"><i id="show" class="material-icons">face</i></a>
                <!--do_not_disturb_on-->
            </div>
            <div class="down_item" style="display: none;"><!--底下小按钮-->
                <div class="item_d">
                    <a href="/home"><i class="material-icons">camera</i></a>
                </div>
                <div class="item_d">
                    <a href="/add"><i class="material-icons">directions_boat</i></a>
                </div>
                <div class="item_r">
                    <a href="#"><i class="material-icons">content_cut</i></a>
                </div>
            </div>
        </div>
    </div>

    <div class="main">

        <h1>新闻管理列表 <span class="badge badge-secondary">News</span></h1>
        <div class="alert alert-primary" role="alert">
            禁止发布涉密信息
        </div>
        <p> </p>
        <p> req.setCharacterEncoding("UTF-8");</p>

        <%--添加的隐藏的form表单--%>

        <a href="/add">
            <button name="flag" value="delete" type="submit" class="btn btn-danger">新增新闻</button>
        </a>
        <div style="padding: 10px">
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
                    <td><a href="/news?flag=find&id=${u.id}">${u.name}</a></td>
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
        </div>
    </div>
</div>

</body>
<script type="text/javascript">
    $(document).ready(function () {
        $("#show").mouseenter(function () {
            //应该该是动态改变文本内容 从而改变图标
            $("#show").text('do_not_disturb_on');
            //$("#hidden").show();
            //$("#show").hide();
            $(".down_item").show(100);

        });
        $(".nav_icon").hover(function () {
            //进入悬浮时 无任何动作产生
        }, function () {
            //离开悬浮时 消除底下的小图片 同时将上方大图标改回来并且旋转
            $("#show").text('face');
            $(".down_item").hide();
        });
    });
</script>
</html>
