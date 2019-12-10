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

    <style>
        h1{
            margin: 20px 20px;
        }
        form{
            margin: 0 20px;
        }
    </style>
</head>
<body>


<div>
</div>
<h1>新闻上传<span class="badge badge-secondary">Update</span></h1>
<form action="/addNews" method="post">
    <div class="progress">
        <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
    </div>

    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text">文章标题</span>
        </div>
        <input name="name" required type="text" class="form-control" placeholder="请输入文章标题"
               aria-describedby="basic-addon1">
    </div>
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text">文章作者</span>
        </div>
        <input name="editor" required type="text" class="form-control" placeholder="请输入作者"
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
        <textarea id="content" name="content" required class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
    </div>
    <div class="input-group mb-3"></div>
    <input type="submit" value="Submit" class="btn btn-primary btn-lg">
</form>
</body>

<script>
    //自动给时间块填入当前时间
    let date = new Date();
    let Day = date.getDate();
    if (Day<10) Day ='0'+Day;
    console.log(Day);
    let times = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + Day + "T" + date.toLocaleTimeString('chinese', {hour12: false});
    times = times.slice(0, 16).toString();
    document.getElementById("show_time").value = times;
    console.log(times);
</script>
</html>
