<%--
  Created by IntelliJ IDEA.
  User: Rice
  Date: 2019/11/25
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻上传</title>
    <!--Bootstraponline-->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">

    <style>
        h1 {
            margin: 20px 20px;
        }

        form {
            margin: 0 20px;
        }
    </style>
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
            background-color: rgb(0, 120, 90);
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
            WIDTH: 90%;
        }

        .main p {
            /* font-size: 100px; */
            text-align: justify;
        }

    </style>
</head>
<body>


<div class="containers">

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
        <h1>新闻上传<span class="badge badge-secondary">Update</span></h1>
        <form action="/addNews" method="post">
            <div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0"
                     aria-valuemax="100"></div>
            </div>
            <div class="input-group mb-3" style="display: none">
                <div class="input-group-prepend">
                    <span class="input-group-text">文章ID</span>
                </div>
                <input name="id" type="text" class="form-control" value="${news.id}" placeholder="请输入文章标题"
                       aria-describedby="basic-addon1">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">文章标题</span>
                </div>
                <input name="name" required type="text" class="form-control" value="${news.name}" placeholder="请输入文章标题"
                       aria-describedby="basic-addon1">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">文章作者</span>
                </div>
                <input name="editor" required type="text" class="form-control" value="${news.editor}"
                       placeholder="请输入作者"
                       aria-describedby="basic-addon1">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">上传时间</span>
                </div>
                <input name="showtime" id="show_time" type="datetime-local" required type="text" class="form-control"
                       aria-describedby="basic-addon1">
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">文章内容</label>
                <input id="content" name="content" required class="form-control" value="${news.content}"
                       id="exampleFormControlTextarea1" rows="10"></input>
            </div>
            <div class="input-group mb-3"></div>
            <input type="submit" value="Submit" class="btn btn-primary btn-lg">
        </form>
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
<script>
    //自动给时间块填入当前时间
    let date = new Date();
    let Day = date.getDate();
    if (Day < 10) Day = '0' + Day;
    console.log(Day);
    let times = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + Day + "T" + date.toLocaleTimeString('chinese', {hour12: false});
    times = times.slice(0, 16).toString();
    document.getElementById("show_time").value = times;
    console.log(times);
</script>
</html>
