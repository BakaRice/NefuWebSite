<%--
  Created by IntelliJ IDEA.
  User: Rice
  Date: 2019/12/3
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="zh-CN">
<head>
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
    <!--  icon引入  -->
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">

</head>
<body>
<div class="content_main">
    <div class="main">
        <!--大画幅封面 bootstrap4轮播图-->
        <div id="main" class="title_up">
            <div id="pictureShow" class="carousel slide" data-ride="carousel">
                <!-- 轮播图片 -->
                <div class="carousel-inner">
                    <div class="carousel-item active" data-interval="5">
                        <img style="width: 100%" src="resources/static/img/pic_021.jpg">
                    </div>
                    <div class="carousel-item">
                        <img style="width: 100%" src="resources/static/img/pic_05.jpg">
                    </div>
                    <div class="carousel-item">
                        <img style="width: 100%" src="resources/static/img/pic_04.jpg">
                    </div>
                    <div class="carousel-item">
                        <img style="width: 100%" src="resources/static/img/pic_00.jpg">
                    </div>
                    <div class="carousel-item">
                        <img style="width: 100%" src="resources/static/img/pic_03.jpg">
                    </div>
                    <div class="carousel-item">
                        <img style="width: 100%" src="resources/static/img/pic_01.jpg">
                    </div>


                </div>
            </div>
            <div class="mainTitle">
                <div class="mainTitleOuter">
                    <div class="mainTileInner">
                        <h1 class="title"></h1>
                    </div>
                </div>
            </div>
        </div>
        <!--导航栏-->
        <div class="title_nav">
            <div class="nav_up">
                <div class="nav_up_inner">
                    <div id="differentrow" class="row"><!--使用栅格布局,把row默认两边-15px的margin去掉了-->
                        <div class="col-md-3"></div>
                        <div id="nav_up_item" class="col-md-6"><!--定义两元素并列在一行-->
                            <div class="nav_up_inner_logo">
                                <img src="resources/static/img/logo_school.png">
                                <img src="resources/static/img/copyright01-2019.png">
                            </div>
                        </div>
                        <div class="col-md-3"></div>
                    </div>
                </div>
            </div>
            <div class="nav_down"></div>
        </div>
    </div>

    <div class="item">
        <div class="pic_item">
            <div id="picleft01" class="pic_item_left">
                <a href="/lab.html">
                    <div class="picleft_word">
                        <p>软件工程专业综合实验室，服务于专业的课程实验和创新创业项目，</br>培养学生获得软件项目管理和开发经验，完成系统开发的实习、实训。</p>
                        <p style="color: rgb(0,120,90)">了解更多</p>
                    </div>
                </a>
            </div>
            <div id="picright01" class="pic_item_right">
                <a href="/introduce.html">
                    <div class="picright_word">
                        <p>实施灵活的“2+1+1”的培养模式，以一流的软件企业作为依托，</br>进行专业化人才素质培养</p>
                        <p style="color: rgb(0,120,90)">了解更多</p>
                    </div>
                </a>
            </div>
            <div id="picleft02" class="pic_item_left">
                <a href="/introduce.html">
                    <div class="picleft_word">
                        <p>着力推动基于问题、基于项目和基于案例的学习，</br>对于实践性强的课程，采取校企联合“双师制”培养</p>
                        <p style="color: rgb(0,120,90)">了解更多</p>
                    </div>
                </a>
            </div>
            <div id="picright02" class="pic_item_right">
                <a href="/introduce.html">
                    <div class="picright_word">
                        <p>软件工程专业综合实验室，服务于专业的课程实验和创新创业项目，</br>培养学生获得软件项目管理和开发经验，完成系统开发的实习、实训。</p>
                        <p style="color: rgb(0,120,90)">了解更多</p>
                    </div>
                </a>
            </div>
        </div><!--四张图片介绍-->
    </div>
</div>

<div class="Content_main_Out">
    <div class="Content_main_in">
        <h3 class="Content_main_caption">News</h3>
        <ul>
            <c:forEach items="${news }" var="u" varStatus="v" begin="0" end="5">
                <li>
                <span class="Content_main_item_time"><!--格式化显示日期-->
                        <fmt:formatDate value="${u.showTime}" pattern="yyyy-MM-dd"/></span>
                    <span class="content_main_item_name">
                    <a href="/news?flag=find&id=${u.id}">${u.name}</a>
                </span>
                </li>
            </c:forEach>
        </ul>
    </div>
    <div class="Content_main_in">
        <h3 class="Content_main_caption">Events</h3>
        <ul>
            <c:forEach items="${news }" var="u" varStatus="v" begin="6" end="11">
                <li>
                <span class="Content_main_item_time"><!--格式化显示日期-->
                        <fmt:formatDate value="${u.showTime}" pattern="yyyy-MM-dd"/></span>
                    <span class="content_main_item_name">
                    <a href="/news?flag=find&id=${u.id}">${u.name}</a>
                </span>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>

<!--侧边栏-->
<div class="nav_side">
    <div class="nav_side_logo">
        <img src="resources/static/img/logo_school.png">
    </div>
    <ul class="utility">
        <li class="search">
            <a href="/search">
                <div>
                    <div>
                        <i class="material-icons">search</i>
                    </div>
                    <span class="txt">查询</span>
                </div>
            </a>
        </li>
        <li class="map">
            <a href="http://map.nefu.edu.cn/">
                <div>
                    <div>
                        <i class="material-icons">map</i>
                    </div>
                    <span class="txt">地图</span>
                </div>
            </a>
        </li>
        <li class="question">
            <a href="http://tel.nefu.edu.cn/">
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
            <a href="introduce.html">
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
            <div class="second_content_side">
                <ul>
                    <li>
                        <a href="#">
                            <div>
                                <strong>专业简介</strong>
                                <p><span class="second_content_side_span">laboratory</span></p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>方向介绍</strong>
                                <p><span class="second_content_side_span">laboratory</span></p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </li><!--专业介绍-->
        <li>
            <a href="teacher/instructor.html">
                <div>
                    <strong>教师队伍</strong>
                    <p><span class="content_side_span">Demigods</span></p>
                </div>
                <div class="second_content_side">
                    <ul>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>教授</strong>
                                    <p><span class="second_content_side_span">professor</span></p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>副教授</strong>
                                    <p><span class="second_content_side_span">Associate professor</span></p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>讲师</strong>
                                    <p><span class="second_content_side_span">Instructor</span></p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </a>
        </li><!--教师队伍-->
        <li>
            <a href="/listnew">
                <div>
                    <strong>新闻</strong>
                    <p><span class="content_side_span">News</span></p>
                </div>
            </a>
        </li><!--新闻-->
        <li>
            <a href="/lab.html">
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

        </li><!--实验室-->
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
<footer>

    <div>
        <img class="footer_img" src="resources/static/img/footer-bg-2019.png" height="357" width="1920"/>
        <div class="footer_rights">
            <p>Copyright © Nefu.Software Tan All rights reserved.</p>
        </div>

    </div>
</footer>
</body>
</html>