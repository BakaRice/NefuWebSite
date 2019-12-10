<%--
  Created by IntelliJ IDEA.
  User: Rice
  Date: 2019/12/10
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--记住要引入c标签！！！！！！！！！！！！-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>${news.name}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nefu Software</title>
    <!--Bootstraponline-->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!--css-->
    <link rel="stylesheet" href="resources/css/index.css">
    <link rel="stylesheet" href="resources/css/news.css">
    <!--  icon引入  -->
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">

</head>
<body>

<div class="single_news_top">
    <img src="/resources/static/img/university.jpg">
</div>
<div class="single_news_content_out">
    <div class="single_news_content_in">
        <div class="single_news_content_in_name">
            ${news.name}
        </div>
        <div class="single_news_content_in_date">
            <fmt:formatDate value="${news.showTime}" pattern="yyyy-MM-dd"/>
        </div>
        ${news.content}
    </div>
</div>


<!--侧边栏-->
<div class="nav_side">
    <div style="display: flex" class="nav_side_logo">
        <img src="resources/static/img/logo_school.png">
    </div>
    <ul class="utility">
        <li class="search">
            <a href="test.html">
                <div>
                    <div>
                        <i class="material-icons">search</i>
                    </div>
                    <span class="txt">查询</span>
                </div>
            </a>
        </li>
        <li class="map">
            <a href="test.html">
                <div>
                    <div>
                        <i class="material-icons">map</i>
                    </div>
                    <span class="txt">地图</span>
                </div>
            </a>
        </li>
        <li class="question">
            <a href="test.html">
                <div>
                    <div>
                        <i class="material-icons">question_answer</i>
                    </div>
                    <span class="txt">问询</span>
                </div>
            </a>
        </li>
    </ul>
    <ul class="content_side">
        <li>
            <a href="test.html">
                <div>
                    <strong>关于软件工程</strong>
                    <p><span class="content_side_span">About NEFU SE</span></p>
                </div>
            </a>
        </li>
        <li>
            <a href="test.html">
                <div>
                    <strong>专业介绍</strong>
                    <p><span class="content_side_span">Introduce</span></p>
                </div>
            </a>
        </li>
        <li>
            <a href="test.html">
                <div>
                    <strong>新闻</strong>
                    <p><span class="content_side_span">News</span></p>
                </div>
            </a>
        </li>
        <li>
            <a href="test.html">
                <div>
                    <strong>实验室</strong>
                    <p><span class="content_side_span">laboratory</span></p>
                </div>
            </a>
            <div class="second_content_side">
                <ul>
                    <li>
                        <a href="#">
                            <div>
                                <strong>软件创新实验室</strong>
                                <p><span class="second_content_side_span">laboratory</span></p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>923创新实验室</strong>
                                <p><span class="second_content_side_span">laboratory</span></p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>925移动开发实验室</strong>
                                <p><span class="second_content_side_span">laboratory</span></p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>923实验室</strong>
                                <p><span class="second_content_side_span">laboratory</span></p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>

        </li>
        <li>
            <a href="test.html">
                <div>
                    <strong>教师队伍</strong>
                    <p><span class="content_side_span">Demigods</span></p>
                </div>

            </a>
        </li>
        <li>
            <a href="test.html">
                <div>
                    <strong>就业指南</strong>
                    <p><span class="content_side_span">Research</span></p>
                </div>
            </a>
        </li>
    </ul>
</div>

</body>
</html>
