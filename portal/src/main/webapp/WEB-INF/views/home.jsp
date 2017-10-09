<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
+ request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame
		Remove this if you use the .htaccess -->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>湖南黄金洞矿业有限责任公司在线考试系统</title>
		<meta name="viewport"
		content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="keywords" content="">
		<link rel="shortcut icon" href="<%=basePath%>resources/images/favicon.ico" />
		<link href="resources/bootstrap/css/bootstrap-huan.css"
		rel="stylesheet">
		<link href="resources/font-awesome/css/font-awesome.min.css"
		rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		<link href="resources/css/slider.css" rel="stylesheet">
		
		<style>
			.question-number {
				color: #5cb85c;
				font-weight: bolder;
				display: inline-block;
				width: 30px;
				text-align: center;
			}

			.question-number-2 {
				color: #5bc0de;
				font-weight: bolder;
				display: inline-block;
				width: 30px;
				text-align: center;
			}
			.question-number-3 {
				color: #d9534f;
				font-weight: bolder;
				display: inline-block;
				width: 30px;
				text-align: center;
			}

			a.join-practice-btn {
				margin: 0;
				margin-left: 20px;
			}

			.content ul.question-list-knowledge {
				padding: 8px 20px;
			}

			.knowledge-title {
				background-color: #EEE;
				padding: 2px 10px;
				margin-bottom: 20px;
				cursor: pointer;
				border: 1px solid #FFF;
				border-radius: 4px;
			}

			.knowledge-title-name {
				margin-left: 8px;
			}

			.point-name {
				width: 200px;
				display: inline-block;
			}
			.col-xs-3 {
				width: 22%;
			}
		</style>

	</head>

	<body>
		<header>
			<div class="container">
				<div class="row">
					<div class="col-xs-5">
						<div class="logo">
							<h1><a href="#"><img alt="" src="resources/images/logo.png"></a></h1>
						</div>
					</div>
					<div class="col-xs-7" id="login-info">
						<c:choose>
							<c:when test="${not empty sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}">
								<div id="login-info-user">
									
									<a href="user-detail/${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}" id="system-info-account" target="_blank">${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}</a>
									<span>|</span>
									<a href="j_spring_security_logout"><i class="fa fa-sign-out"></i> 退出</a>
								</div>
							</c:when>
							<c:otherwise>
								<a class="btn btn-primary" href="user-register">用户注册</a>
								<a class="btn btn-success" href="user-login-page">登录</a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</header>
		<!-- Navigation bar starts -->

		<div class="navbar bs-docs-nav" role="banner">
			<div class="container">
				<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="home"><i class="fa fa-home"></i>主页</a>
						</li>
						<li>
							<a href="student/practice-list"><i class="fa fa-edit"></i>试题练习</a>
						</li>
						<li>
							<a href="exam-list"><i class="fa  fa-paper-plane-o"></i>在线考试</a>
						</li>
						<li>
							<a href="training-list"><i class="fa fa-book"></i>培训资料</a>
						</li>
						<li>
							<a href="student/usercenter"><i class="fa fa-dashboard"></i>会员中心</a>
						</li>
						<li>
							<a href="student/setting"><i class="fa fa-cogs"></i>个人设置</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- Navigation bar ends -->

		<!-- banner -->
		<div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:1300px; height:300px;overflow:hidden;visibility:hidden;">
			<div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1300px;height:300px;overflow:hidden;">
				<div>
					<img data-u="image" src="resources/images/slider/000.png" />
				</div>
				<div>
					<img data-u="image" src="resources/images/slider/000.png" />
				</div>
				<div>
					<img data-u="image" src="resources/images/slider/000.png" />
				</div>
			</div>
			<!-- Bullet Navigator -->
			<div data-u="navigator" class="jssorb032" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
				<div data-u="prototype" class="i" style="width:16px;height:16px;">
					<svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
						<circle class="b" cx="8000" cy="8000" r="5800"></circle>
					</svg>
				</div>
			</div>
			<!-- Arrow Navigator -->
			<div data-u="arrowleft" class="jssora051" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
				<svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
					<polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
				</svg>
			</div>
			<div data-u="arrowright" class="jssora051" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
				<svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
					<polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
				</svg>
			</div>
		</div>

		<center>
		<div style="width: 72%; margin-top: 50px;">

		<div class="row">
			<!-- Left column -->
			<div class="col-l" style="background-color: #f5f5f5; margin-right: 20px; padding: 30px;">
				<div style="margin-bottom: 20px;">
					<h4 style="color: orange;">公司简介</h4>
				</div>
				<div class="company-introduction" style="text-align: left;">
					<h3 style="color: orange;">湖南黄金洞矿业有限责任公司</h3>
					<p style="text-indent:2em;">
						湖南黄金洞矿业有限责任公司地处湖南省平江县黄金洞乡，前身是湖南省黄金洞金矿，是一个具有数百年开采历史的老矿，省属国有重点黄金矿山企业，湖南省三大黄金生产企业之一。目前拥有2000吨/日的采选综合生产能力，黄金产量位居湖南省第二位。公司在高砷高硫难选金矿处理领域具有领先技术优势，是目前国内最大的高砷高硫难选金矿生产企业之一。
						公司充分利用自身技术优势，抓住历史机遇，遵循“矿业为主、规模扩张、纵深发展、做强做优”的发展战略方针，积极占领资源市场，扩大经营规模，建立采、选生产基地。公司目前拥有两家全资子公司：湖南黄金洞大万矿业有限责任公司和浏阳枨冲黄金洞矿业有限责任公司；一家控股子公司：湖南黄金洞欣源矿业有限责任公司。
					</p>
					<br/>
					<h3 style="color: orange;">杨山庄坑口</h3>
					<p style="text-indent:2em;">
						杨山庄坑口位于湖南黄金洞矿业有限责任公司东北方向约6公里的半山腰处，这里群山环绕，空气清新宜人，是公司本部下属第二大坑口。年黄金产量高达400公斤，年生产总值上亿元。坑口基础设备设施健全，现有管理人员及作业人员300多人，是一个集现代化科学管理与传统采掘于一体的单位。坑口始终秉持黄金洞公司“安全第一、预防为主、综合治理、全员参与”的方针，坚持以人为本、持续创新的工作理念，为这大山之中盛开的工业之花而不断开拓进取。
					</p>
				</div>
			</div>
			<!-- Right column -->
			<div class="col-r" style="background-color: #f5f5f5; padding: 30px;">
				<c:if test="${fn:length(newsList) > 0 }">
					<div style="margin-bottom: 20px;">
						<h4 style="color: orange;">最新公告</h4>
					</div>
					<div>
						<ul class="news-list list-group">
							<c:choose>
							<c:when test="${fn:length(newsList) eq 1 }">
							<li class="news-list-item clearfix list-group-item" style="text-align: left">
								<a class="home-link-anchor" href="news/${newsList[0].newsId }" target="_blank">
									<div class="news-list-thumbnail">
										<img src="<%=basePath%>resources/images/index3.jpg">
									</div>
									<div class="news-list-content" style="padding-top: 18px;">
										<div class="news-list-title">
												${newsList[0].title }
										</div>
										<div class="news-list-creater">
											<i class="fa fa-user"></i><span>${newsList[0].creator }</span>
											<i class="fa fa-clock-o"></i><span><fmt:formatDate value="${newsList[0].createTime }" pattern="yyyy-MM-dd HH:mm"/></span>
										</div>
									</div>
								</a>
							</li>
							</c:when>
							<c:otherwise>
							<li class="news-list-item clearfix list-group-item" style="text-align: left">
								<a class="home-link-anchor" href="news/${newsList[0].newsId }" target="_blank">
									<div class="news-list-thumbnail">
										<img src="<%=basePath%>resources/images/index3.jpg">
									</div>
									<div class="news-list-content" style="padding-top: 18px;">
										<div class="news-list-title"">
											${newsList[0].title }
									</div>
									<div class="news-list-creater">
										<i class="fa fa-user"></i><span>${newsList[0].creator }</span>
										<i class="fa fa-clock-o"></i><span><fmt:formatDate value="${newsList[0].createTime }" pattern="yyyy-MM-dd HH:mm"/></span>
									</div>
								</a>
							</li>
							<li class="news-list-item clearfix list-group-item" style="text-align: left">
								<a class="home-link-anchor" href="news/${newsList[1].newsId }">
									<div class="news-list-thumbnail">
										<img src="<%=basePath%>resources/images/index3.jpg">
									</div>
									<div class="news-list-content" style="padding-top: 18px;">
										<div class="news-list-title">
												${newsList[1].title }
										</div>
										<div class="news-list-creater">
											<i class="fa fa-user"></i><span>${newsList[1].creator }</span>
											<i class="fa fa-clock-o"></i><span><fmt:formatDate value="${newsList[1].createTime }" pattern="yyyy-MM-dd HH:mm"/></span>
										</div>
									</div> </a>
							</li>
							</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</c:if>
			</div>
		</div>


		</div>
		</center>

		<div class="content" style="padding:30px 0 0 0; background-color: #f5f5f5; margin-top: 50px;">
			<div class="container">
				<div class="row">
					<div class="select-test col-xs-4">
						<center>
						<div style="width: 70%;">
							<h3> 快速考试入口 </h3>
							<p style=" text-align: left; margin: 10px 0 20px 0;">
								通过已有的准考证快速参加考试，具体的准考证请从相关教师处获取，或者在个人中心的考试信息中查找
							</p>
							<div style="text-align: center;margin-top:20px;">
								<a class="btn btn-info quick-start-btn" href="quick-start" style="color: #FFFFFF; background-color: #f8ad04; border: none; padding: 10px 60px; max-width: 100%;">快速考试入口 <i class="fa fa-arrow-circle-o-right"></i> </a>
							</div>
						</div>
						</center>
					</div>
					<div class=" col-xs-4">
						<center>
						<div style="width: 70%; text-align: left">
							<a class="select-test home-link-anchor" href="student/practice-list">
								<div class="select-test-icon">
									<i class="fa fa-book"></i>
								</div>
								<h3 style=" margin: 10px 0 20px 0;"> 试题练习 </h3>
								<p style=" text-align: left">
									您可以获取对应专业的培训视频或者文档资料，通过在线练习可以考察您的知识掌握程度。
								</p>
							</a>
						</div>
						</center>
					</div>
					<div class=" col-xs-4">
						<center>
						<div style="width: 70%;">
							<a class="select-test home-link-anchor" href="exam-list">
								<div class="select-test-icon">
									<i class="fa fa-trophy"></i>
								</div>
								<h3 style=" margin: 10px 0 20px 0;"> 在线考试 </h3>
								<p style=" text-align: left">
									参加正式或者模拟考试，您的教师可以发布正式的考试，您也可以主动申请这些考试
								</p>
							</a>
						</div>
						</center>
					</div>
				</div>
			</div>
		</div>

		<footer>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="copy">
							<p>
								jidte Copyright © <a href="#" target="_blank">湖南黄金洞矿业有限责任公司</a> - <a href="." target="_blank">主页</a> | <a href="#" target="_blank">关于我们</a> | <a href="#" target="_blank">FAQ</a> | <a href="#" target="_blank">联系我们</a>
							</p>
						</div>
					</div>
				</div>

			</div>

		</footer>

		<!-- Slider Ends -->

		<!-- Javascript files -->
		<!-- jQuery -->
		<script type="text/javascript" src="resources/js/jquery/jquery-1.9.0.min.js"></script>
		<!-- slider -->
		<script type="text/javascript" src="resources/js/slider/jssor.slider.min.js"></script>
		<!-- Bootstrap JS -->
		<script type="text/javascript"
		src="resources/bootstrap/js/bootstrap.min.js"></script>
		<script>
		$(function(){

            var jssor_1_options = {
                $AutoPlay: 1,
                $SlideDuration: 2000,
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

			/*#region responsive code begin*/
            var MAX_WIDTH = 3000;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;
                if (containerWidth) {
                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);
                    jssor_1_slider.$ScaleWidth(expectedWidth);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
			/*#endregion responsive code end*/

			bindQuestionKnowledage();
			var result = checkBrowser();
			if (!result){
				alert("请至少更新浏览器版本至IE8或以上版本");
			}
		});
		
		function checkBrowser() {
			var browser = navigator.appName;
			var b_version = navigator.appVersion;
			var version = b_version.split(";");
			var trim_Version = version[1].replace(/[ ]/g, "");
			if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE7.0") {
				return false;
			} else if (browser == "Microsoft Internet Explorer"
					&& trim_Version == "MSIE6.0") {
				return false;
			} else
				return true;
		}
		
		function bindQuestionKnowledage(){
			$(".knowledge-title").click(function(){
				var ul = $(this).parent().find(".question-list-knowledge");
				
				if(ul.is(":visible")){
					$(this).find(".fa-chevron-down").hide();
					$(this).find(".fa-chevron-up").show();
					
					$(".question-list-knowledge").slideUp();
					
				}else{
					$(".fa-chevron-down").hide();
					$(".fa-chevron-up").show();
					
					$(this).find(".fa-chevron-up").hide();
					$(this).find(".fa-chevron-down").show();
					
					$(".question-list-knowledge").slideUp();
					ul.slideDown();
					
				}
				
				
			});
		}
		</script>
	</body>
</html>
