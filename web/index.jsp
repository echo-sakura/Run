<%--
  Created by IntelliJ IDEA.
  User: 严张豹
  Date: 2019/3/23
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -y->
  <title>Bootstrap 101 Template</title>
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="./css/mycss.css">
  <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
</head>
<body>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

<script type="text/javascript" src="./js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="./js/locales/bootstrap-datetimepicker.fr.js"></script>
<%--固定导航栏--%>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">项目名称</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="section2.jsp">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="../navbar/">Default</a></li>
                <li class="active"><a href="./">Static top <span class="sr-only">(current)</span></a></li>
                <li><a href="../navbar-fixed-top/">Fixed top</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<!-- 16:9 aspect ratio -->

<div class = "bg">

    <div id = "middle" class="jumbotron" style="text-align: center">
        <%--<img src="res/pic/timg%20(1).jpg">--%>
        <%--<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>--%>
        <h3>Notation</h3>
        <p>this is a personal work and aband copying</p>
    </div>
     <form action="actions.SearchAction">
         <div id="behindLB">
             <div class="row">
                 <div class="col-md-1"></div>
                 <div id="choose" class="col-md-10">
                     <span>
                         <label>请选择地点：</label>
                         <select name="address">
                             <option value="1">松林</option>
                             <option value="2">银杏</option>
                         </select>
                     </span>
                     <span>
                         <label>请选择类型：</label>
                         <select name="type">
                             <option value="1">篮球</option>
                             <option value="2">足球</option>
                         </select>
                     </span>

                     <span>
                         <label >请选择现在的人数：</label>
                         <select name="now_people">
                            <option value="1">4</option>
                            <option value="2">5</option>
                     </select>
                     </span>
                    <div>
                        <label for="startDate" style="margin: 0 45%">开始时间：</label>
                        <div class="input-group">
                             <input class="form-control date-picker" id="startDate" data-date-end-date="0m"
                                    type="text" placeholder="选择年月"/>
                             <span class="input-group-addon">
                                    <i class="fa fa-calendar bigger-110"></i>
                             </span>
                        </div>
                     </div>
                    <div>
                         <label for="endDate" style="margin: 0 45%">结束时间：</label>
                         <div class="input-group">
                             <input class="form-control date-picker" id="endDate" data-date-end-date="0m"
                                    type="text" placeholder="选择年月"/>
                                <span class="input-group-addon">
                                    <i class="fa fa-calendar bigger-110" style="margin: 0"></i>
                                </span>
                        </div>
                     </div>
                </div>

             <div class="col-md-1"></div>

            </div>
         </div>

     </form>

    <%--缩略图--%>
    <%--<div class="container mymark">--%>

        <%--<div class="row">--%>
            <%--<div class="col-md-6">--%>
                <%--<div class="thumbnail">--%>
                    <%--<img src="res/pic/jianjie/cyq2.jpg" alt="...">--%>
                    <%--<div class="caption">--%>
                        <%--<h3>Thumbnail label</h3>--%>
                        <%--<p>...asdjklajsdqwojelasd</p>--%>
                        <%--<p>--%>
                            <%--<a href="#" class="btn btn-default" role="button"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span></a>--%>
                            <%--<a href="#" class="btn btn-default" role="button"><span class="glyphicon glyphicon-star" aria-hidden="true"></span></a>--%>
                        <%--</p>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-md-6">--%>
                <%--<div class="thumbnail">--%>
                    <%--<img src="res/pic/jianjie/timg%20(2).jpg" alt="...">--%>
                    <%--<div class="caption">--%>
                        <%--<h3>Thumbnail label</h3>--%>
                        <%--<p>...</p>--%>
                        <%--<p>--%>
                            <%--<a href="#" class="btn btn-default" role="button"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span></a>--%>
                            <%--<a href="#" class="btn btn-default" role="button"><span class="glyphicon glyphicon-star" aria-hidden="true"></span></a>--%>
                        <%--</p>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="row">--%>

            <%--<div class="col-md-6">--%>
                <%--<div class="thumbnail">--%>
                    <%--<img src="res/pic/jianjie/cyq4.jpg" alt="...">--%>
                    <%--<div class="caption">--%>
                        <%--<h3>Thumbnail label</h3>--%>
                        <%--<p>...</p>--%>
                        <%--<p>--%>
                            <%--<a href="#" class="btn btn-default" role="button"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span></a>--%>
                            <%--<a href="#" class="btn btn-default" role="button"><span class="glyphicon glyphicon-star" aria-hidden="true"></span></a>--%>
                        <%--</p>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>


            <%--<div class="col-md-6">--%>
                <%--<div class="thumbnail">--%>
                    <%--<img src="res/pic/jianjie/cyq5.jpg" alt="...">--%>
                    <%--<div class="caption">--%>
                        <%--<h3>Thumbnail label</h3>--%>
                        <%--<p>...</p>--%>
                        <%--<p>--%>
                            <%--<a href="#" class="btn btn-default" role="button"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span></a>--%>
                            <%--<a href="#" class="btn btn-default" role="button"><span class="glyphicon glyphicon-star" aria-hidden="true"></span></a>--%>
                        <%--</p>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>


    <%--</div>--%>

</div>
<script type="text/javascript">
    $('#startDate').datetimepicker({
        weekStart: 0, //一周从哪一天开始
        todayBtn:  1, //
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    $('#endtDate').datetimepicker({
        weekStart: 0, //一周从哪一天开始
        todayBtn:  1, //
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
</script>
</body>

</html>