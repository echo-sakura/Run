<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh_CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>欢迎来到XXX</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <!--<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
		<div id="slidershow" class="carousel slide" data-ride="carousel" data-pause = "hover" data-wrap="true" style="margin-top: 5rem; width: 100%;height: 100%; margin-left:auto; margin-right:auto;">
		 <!-- 设置图片轮播的顺序 -->
		 <ol class="carousel-indicators">
		 <li class="active" data-target="#slidershow" data-slide-to="0"></li>
		 <li data-target="#slidershow" data-slide-to="1"></li>
		 <li data-target="#slidershow" data-slide-to="2"></li>
		 </ol>
		 <!-- 设置轮播图片 -->
		 <div class="carousel-inner">
		 <div class="item active">
		 <a href="##"><img src="images/12.jpg" alt="p1"></a>
		 </div>
		 <div class="item">
		 <a href="##"><img src="images/16.jpg" alt="p2"></a>
		 </div>
		 <div class="item">
		 <a href="##"><img src="images/4.jpg" alt="p3"></a>
		 </div>
		 </div>
		 <a class="left carousel-control" href="#slidershow" role="button">
		 <span class="glyphicon glyphicon-chevron-left"></span>
		 </a>
		 <a class="right carousel-control" href="#slidershow" role="button">
		 <span class="glyphicon glyphicon-chevron-right"></span>
		 </a>
		 </div>
	<script type="text/javascript">
		$(function(){
		$("#slidershow").carousel({
		interval:2000
		});
		$("#slidershow a.left").click(function(){
		$(".carousel").carousel("prev");
		});
		$("#slidershow a.right").click(function(){
		$(".carousel").carousel("next");
		});
		});
	</script>
</head>
<body>
 <!-- 设置网页侧边导航栏 -->
<div class="side-nav" role="navigation">
    <ul class="nav-side-nav">
        <li><a class="tooltip-side-nav" href="#pageone"><span class="glyphicon glyphicon-home"></span> top</a> </li>
        <li><a class="tooltip-side-nav" href="#pagetwo"><span class="glyphicon glyphicon-headphones"></span> middle</a> </li>
        <li><a class="tooltip-side-nav" href="#pagethree"><span class="glyphicon glyphicon-plane"></span> bottom</a> </li>
    </ul>
</div>

<div class="onepage" id="pageone">
    <div class="onepage-bg" id="onepagebg"></div>
    <div class="container">
        <div class="row">
            <div class="title-text">
                <div class="col-md-12 headfontsize">
                    <h1 class="headh1content">
                        XXX<small> waiting for you</small><br>
                    </h1>
                    <h3>寻找一起运动的伙伴</h3>
                    <p class="headtext">只要你想，就能拥有陪你运动的小伙伴</p>
                    <p class="btn-app-store">
                        <a class="btn btn-success btn-lg" href="#">立即登录，开始体验</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="twopage" id="pagetwo">
    <div class="twopage-text">
        <h1 class="twopage-text-h1">
            这里有许多热爱运动的小伙伴等你加入
        </h1>
    </div>
    <div class="row">
        <div class="col-md-4 twopages-courses">
            <a href="#">
                <img src="images/8.JPG"/>
                <div class="classicon">
                    <h3>跑步</h3>
                    <h1><strong>挥洒炽热的汗水</strong></h1>
                </div>
            </a>
        </div>
        <div class="col-md-4 twopages-courses">
            <a href="#">
                <img src="images/9.JPG"/>
                <div class="classicon">
                    <h3>自行车</h3>
                    <h1><strong>享受自由的快乐</strong></h1>
                </div>
            </a>
        </div>
        <div class="col-md-4 twopages-courses">
            <a href="#">
                <img src="images/10.JPG"/>
                <div class="classicon">
                    <h3>篮球</h3>
                    <h1><strong>畅享运动的趣味</strong></h1>
                </div>
            </a>
        </div>
    </div>
    <div class="twopagebtn">
        <a id="twopage-easy" href="#" class="btn btn-success btn-lg">现在就开始吧</a>
    </div>
</div>

<div class="threepage" id="pagethree">
    <div class="threepage-bg" id="threepagebg">
        <div class="threepagecontent">
            <div class="threepagetext">
                <h1>为什么要来xxx</h1>
                <p>当你想运动而找不到陪你一起运动的朋友时，当你想记录一段自己的运动瘦身路程时，你都可以来这里！<br/>
                    在这里，你可以在极短的时间内寻找爱好和位置都与你相近的运动伙伴。</p>
            </div>
            <a href="#" class="btn btn-success btn-lg threepagecontentbtn">开始你的运动之旅</a>
        </div>
    </div>
</div>
</body>
</html>