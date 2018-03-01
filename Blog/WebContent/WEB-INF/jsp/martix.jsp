<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 标准标签库，包括通用标签、流程控制标签、循环控制标签 -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- 日期、数字格式化 -->
<!DOCTYPE html>
<html lang="zh-CN">

<head>
	<meta charset="utf-8" />
	<!--meta标签表示页面里的元信息标签，搜索引擎抓取网页时会分析此标签。-->
	<meta name="auther" content="Founder|方正" />
	<!--content的取值为webkit,ie-comp,ie-stand之一，区分大小写，分别代表用webkit内核，IE兼容内核，IE标准内核。-->
	<meta name="renderer" content="webkit" />
	<!--该meta标签的作用是让当前viewport的宽度等于设备的宽度。也许允不允许用户缩放不同的网站有不同的要求，
		但让viewport的宽度等于设备的宽度，这个应该是大家都想要的效果，如果你不这样的设定的话，
		那就会使用那个比屏幕宽的默认viewport，也就是说会出现横向滚动条。		
        width	设置layout viewport  的宽度，为一个正整数，或字符串"width-device"。
        initial-scale	设置页面的初始缩放值，为一个数字，可以带小数。
        minimum-scale	允许用户的最小缩放值，为一个数字，可以带小数。
        maximum-scale	允许用户的最大缩放值，为一个数字，可以带小数。
        height	设置layout viewport  的高度，这个属性对我们并不重要，很少使用。
        user-scalable	是否允许用户进行缩放，值为"no"或"yes", no 代表不允许，yes代表允许。
        -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!--可以改变访问网站时手机状态栏的颜色，默认是白色，你可以修改这个颜色让状态栏变色。-->
	<meta name="theme-color" content="#ffffff">
	<!--以上代码IE=edge告诉IE使用最新的引擎渲染网页，chrome=1则可以激活Chrome Frame。-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<!--站点自己做好PC与手机之间的适配，以及手机各个版式之间的适配。当手机用户通过百度移动搜索或者其他方式访问站点的PC页（首页或者内容页）时，站点将其自动适配到该PC页面对应的手机页，并为之选择合适的页面版本。
        name="mobile-agent"：为更新后的meta声明，建议使用。原有meta规则http-equiv="mobile-agent"能够兼容并继续生效，已标注过的无需修改。
        format=html5：根据手机页的协议语言，选择中的一种。（包括wml|xhtml|html5）
        url=/m：代表当前PC页所对应的手机页/m，两者必须是一一对应关系（而不是统一对应至手机站首页）
        -->
	<meta http-equiv="mobile-agent" content="format=html5; url=http://www.founder.ink/">
	<title>Founder 方正</title>
	<!-- Bootstrap 4.0.0 Alpha 6 -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<!-- FancyBox 3.1.20 弹出框插件 -->
	<link rel="stylesheet" href="assets/css/jquery.fancybox.min.css">
	<!-- Animate.css 3.5.1 -->
	<link rel="stylesheet" href="assets/css/animate.min.css">

	<link rel="stylesheet" href="assets/css/martix.css">
	<link rel="stylesheet" href="assets/css/topic.css">
	<!--第一，使用Canonical标签使网址规范化。
		第二，避免内容重复页面，搜索引擎收录更准确。
		第三，集中传递页面权重。
	-->
	<link rel="canonical" href="/">
	<link rel="shortcut icon" href="assets/img/favicon.ico">
	<!-- jQuery -->
	<script src="assets/js/jquery.min.js"></script>
	<style type="text/css">
		.container-types .index-card-container {
			float: left;
			margin-left: 18px;
			border-radius: 4px;
			margin-bottom: 12px;
		}

		.course-card-container {
			width: 216px;
			height: 252px;
			position: relative;
			transition: .3s all linear;
		}

		a:link,
		a:visited,
		body,
		html {
			color: #14191e;
		}

		:link,
		:visited,
		ins {
			text-decoration: none;
		}

		.course-card-container .course-card-top {
			width: 216px;
			height: 120px;
			position: relative;
			border-radius: 8px;
			transition: all .3s;
		}

		body .bk,
		div {
			background-size: cover;
		}

		.course-card-container .course-card-top .course-banner {
			width: 100%;
			height: 100%;
			background-color: #f3f5f7;
			border-radius: 8px;
		}

		body .bk,
		div {
			background-size: cover;
		}

		.course-card-container .course-card-top .course-banner .img-up {
			left: 0;
			top: 0;
			width: 216px;
			height: 120px;
			z-index: 3;
		}

		.course-card-container .course-card-top .course-banner .img-down,
		.course-card-container .course-card-top .course-banner .img-mid,
		.course-card-container .course-card-top .course-banner .img-up {
			margin: 0 auto;
			position: absolute;
			border-radius: 8px;
			background-size: cover;
			background-repeat: no-repeat;
			background-position: center;
			transition: all .3s;
			-moz-transition: all .3s;
			-webkit-transition: all .3s;
			-o-transition: all .3s;
		}

		.course-card-container .course-card-top .course-banner .img-mid {
			top: 4px;
			left: 4px;
			width: 208px;
			height: 120px;
			opacity: .4;
			z-index: 2;
		}

		.course-card-container .course-card-top .course-banner .img-down {
			top: 8px;
			left: 8px;
			width: 200px;
			height: 120px;
			opacity: .2;
			z-index: 1;
		}

		.course-card-container:hover .course-card-top .course-banner .img-up {
			top: -10px;
			left: 0;
			width: 216px;
		}

		.course-card-container:hover .course-card-top .course-banner .img-mid {
			top: 0;
			left: 8px;
			width: 200px;
		}

		.course-card-container:hover .course-card-top .course-banner .img-down {
			top: 10px;
			left: 16px;
			width: 184px;
		}

		.course-card-container .course-card-top .course-label {
			position: absolute;
			bottom: 6px;
			left: 8px;
			font-size: 12px;
			color: #FFF;
			line-height: 16px;
		}

		.course-card-container .course-card-top .course-label label {
			display: inline-block;
			background: rgba(7, 17, 27, .4);
			border-radius: 12px;
			padding: 4px 8px;
			margin-bottom: 2px;
			margin-right: 0;
			font-weight: 200;
		}

		.course-card-container .course-card-top .course-label1 {
			position: absolute;
			bottom: 3px;
			right: 8px;
			font-size: 12px;
			color: #FFF;
			line-height: 16px;
		}

		.course-card-container .course-card-top .course-label1 label {
			display: block;
			background: rgba(7, 17, 27, .4) url('assets/img/music.png') no-repeat;
			border-radius: 16px;
			padding: 4px 8px;
			margin-bottom: 2px;
			margin-right: 0;
			font-weight: 200;
			width: 32px;
			height: 32px;
		}

		.course-card-container .course-card-content .course-card-info {
			font-size: 12px;
			color: #93999F;
			line-height: 24px;
			margin-top: 8px;
			font-weight: 200;
		}

		course-card-container .course-card-content .course-card-info span {
			display: inline-block;
			margin-right: 12px;
		}

		.course-card-container:hover .course-card-name {
			color: #F01414!important;
		}

		.course-card-price {
			font-size: 12px;
			color: #4D555D;
			line-height: 20px;
			margin-top: 8px;
		}

		.course-card-container .course-card-content .course-card-name {
			font-size: 16px;
			color: #07111B;
			line-height: 24px;
			word-wrap: break-word;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 2;
			-webkit-box-orient: vertical;
			max-height: 46px;
			transition: all .3s;
		}

		.course-card-container .course-card-content {
			padding: 12px 8px;
		}

		.course-card-container .course-card-content .course-card-info {
			font-size: 12px;
			color: #93999F;
			line-height: 24px;
			margin-top: 8px;
			font-weight: 200;
		}

		.course-card-container .course-card-content .course-card-info span {
			display: inline-block;
			margin-right: 12px;
		}

		/* 进度条 */

		.progress {
			width: 100%;
			height: 20px;
			position: fixed;
			bottom: 0;
			left: 0;
			background-color: #fafbfc !important;
			z-index: 999;
		}

		.progress .time {
			position: absolute;
			bottom: 0;
			right: 10px;
			font-size: 14px;
			color: rgb(0, 103, 199);
			height: 20px;
			line-height: 20px;
			/*为了让时间垂直居中*/
			text-align: right;
			/*文字右对齐*/
		}

		.progress .bar {
			position: absolute;
			bottom: 0;
			left: 0;
			height: 16px;
			background: #007fd1;
			background: -webkit-gradient( linear, left top, right top, from( #007fd1), to( #c600ff));
			background: -webkit-linear-gradient( left, #007fd1, #c600ff);
			background: -moz-linear-gradient( left, #007fd1, #c600ff);
			background: -ms-radial-gradient( left, #007fd1, #c600ff);
			background: -o-linear-gradient( left, #007fd1, #c600ff);
			background: linear-gradient( left, #007fd1, #c600ff);
			width: 0%;
			opacity: 0.6;
		}
	</style>
</head>

<body>
	<header id="navigation-wrapper">
		<div class="fixed">
			<nav class="navbar navbar-fixed-top navbar-toggleable-sm navbar-inverse">
				<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar-nav" aria-controls="navbar-nav"
				 aria-expanded="false" aria-label="Toggle Navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<a class="navbar-brand" href="index.html">澈澈</a>
				<div id="navbar-nav" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="nav-item">
							<a class="nav-link" href="sortPages.html">专题广场</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="martix.html">Matrix</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="itools.html">工具箱</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="discuss.html">兴趣小组</a>
						</li>
						<li class="nav-item dropdown">
							<a id="navbar-dropdownmenu" class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">更多</a>
							<div class="dropdown-menu" aria-labelledby="navbar-dropdownmenu">
								<a class="dropdown-item" href="https://segmentfault.com/u/ichi" target="_blank">Segmentfault</a>
								<a class="dropdown-item" href="https://github.com/FounderInxx" target="_blank">GitHub</a>
							</div>
						</li>
					</ul>
				</div>
			</nav>
			<nav class="topic">
				<ul>
					<c:forEach items="${martixTitle }" var="martixTitle">
						<li tab="${martixTitle.martixId }">
							<a href="" onclick="start(this)" name="${martixTitle.martixTitle }">${martixTitle.martixTitle }</a>
						</li>
					</c:forEach>
				</ul>
			</nav>
		</div>
	</header>

	<div class="main">
		<c:forEach items="${martixTitle }" var="martixTitle">
			<div class="popular-artists section" id="${martixTitle.martixId }">
				<ul class="header">
					<li class="artists-tab">${martixTitle.martixTitle }</li>
				</ul>
				<div class="artists" id="artists">
					<div class="clearfix"></div>
					<div class="clearfix"></div>
				</div>
			</div>
		</c:forEach>
	</div>

	<!-- Footer -->
	<footer id="footer-wrapper" class="container">
		<div class="footer-logo">
			<svg width="128px" height="128px" viewBox="0 0 128 128" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
			 xmlns:cc="https://creativecommons.org/licenses/by-nc-nd/4.0/">
				<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
					<g id="logo-system01" class="logo-system">
						<g transform="translate(17, 8)">
							<circle class="logo-orbit" stroke="#404040" stroke-width="0.5" cx="52" cy="56" r="52"></circle>
							<circle class="logo-planet" fill="#404040" cx="52" cy="4" r="4"></circle>
							<circle class="logo-gbp" cx="52" cy="108" r="4"></circle>
						</g>
					</g>
					<g id="logo-system02" class="logo-system">
						<g transform="translate(61, 60) rotate(-120) translate(-61, -60) translate(9, 4)">
							<circle class="logo-orbit" stroke="#404040" stroke-width="0.5" cx="52" cy="56" r="52"></circle>
							<circle class="logo-planet" fill="#404040" cx="52" cy="4" r="4"></circle>
							<circle class="logo-gbp" cx="52" cy="108" r="4"></circle>
						</g>
					</g>
					<g id="logo-system03" class="logo-system">
						<g transform="translate(65, 68) rotate(-240) translate(-65, -68) translate(13, 12)">
							<circle class="logo-orbit" stroke="#404040" stroke-width="0.5" cx="52" cy="56" r="52"></circle>
							<circle class="logo-planet" fill="#404040" cx="52" cy="4" r="4"></circle>
							<circle class="logo-gbp" cx="52" cy="108" r="4"></circle>
						</g>
					</g>
					<path id="logo-spacekid" d="M33.0882861,72.6012144 C33.0882861,69.5610435 32.6082591,67.5769319 31.5842015,64.376752 C31.3281871,63.576707 30.9121637,62.5206477 30.6561493,61.8166081 C29.9841115,59.9285019 28.960054,57.368358 28.960054,55.1282321 C28.960054,52.7921007 29.4720828,51.960054 30.5281421,51.960054 C31.6802069,51.960054 32.0642285,52.9201079 32.0642285,54.7762123 L32.0642285,57.7523796 L32.9922807,57.7523796 L32.9922807,54.7442105 C32.9922807,52.5040846 32.3522447,51 30.5601439,51 C29.0880612,51 28,52.1840666 28,55.0322267 C28,57.3043544 28.6720378,59.0004498 29.7280972,62.0726225 C29.8881061,62.5526495 30.4001349,63.8647232 30.6561493,64.6647682 C31.7442105,67.8649481 32.0962303,69.4330363 32.0962303,72.7292216 C32.0962303,75.3213673 31.4561943,75.9294015 30.5281421,75.9294015 C29.5360864,75.9294015 29.0560594,75.3533691 29.0560594,73.7532792 L29.0560594,70.2970849 L28.1280072,70.2970849 L28.1280072,74.1693025 C28.1280072,75.8333961 29.0240576,76.8574537 30.5281421,76.8574537 C31.9042195,76.8574537 33.0882861,75.9614033 33.0882861,72.6012144 L33.0882861,72.6012144 Z M42.9128384,58.3604138 C42.9128384,55.1282321 42.6248222,53.0481151 42.2408006,52.3760774 C41.7927754,51.5760324 41.3127484,51.0960054 40.416698,51.0960054 L38.3685829,51.0960054 L38.3685829,76.6974447 L39.2966351,76.6974447 L39.2966351,65.5928204 C39.2966351,65.5928204 39.8726675,65.6248222 40.3846963,65.5608186 C41.2487448,65.4328114 41.8247772,64.9847862 42.2728024,64.2487448 C42.816833,63.3206927 42.9128384,61.5605937 42.9128384,58.3604138 L42.9128384,58.3604138 Z M41.9207826,58.3604138 C41.9207826,61.4325865 41.7607736,63.0646783 41.4727574,63.736716 C41.2487448,64.2487448 40.7687178,64.6327664 39.9686729,64.6647682 L39.2966351,64.6647682 L39.2966351,51.9920558 L40.0326765,51.9920558 C40.4486998,51.9920558 41.056734,52.2160684 41.376752,52.8561043 C41.6327664,53.3361313 41.9207826,55.2882411 41.9207826,58.3604138 L41.9207826,58.3604138 Z M48.1931352,70.5530992 L50.94529,70.5530992 L51.3613133,76.6974447 L52.2893655,76.6974447 L50.3372558,51.0960054 L49.3131982,51.0960054 L46.7210525,76.6974447 L47.6491046,76.6974447 L48.1931352,70.5530992 Z M50.9132882,69.7210525 L48.225137,69.7210525 L49.4732072,56.9203328 L49.7292216,53.0801169 L49.9212324,56.9523346 L50.9132882,69.7210525 Z M62.1779214,68.9530093 L61.2498693,68.9530093 L61.2498693,73.1132432 C61.2498693,75.5133781 60.4498243,75.9294015 59.6497793,75.9294015 C58.7537289,75.9294015 58.0816911,75.5133781 58.0496894,73.305254 C58.0496894,72.5692126 57.9856858,65.656824 57.9856858,63.7047142 C57.9856858,61.7846063 58.0176876,55.2882411 58.0176876,54.2001799 C58.0496894,52.760099 58.4337109,51.9280522 59.6177775,51.9280522 C60.7378405,51.9280522 61.1538639,52.6960954 61.1858657,53.9121637 C61.2178675,55.0002249 61.2178675,57.3363562 61.2178675,58.8404408 L62.1459196,58.8404408 L62.1459196,54.0721727 C62.1459196,52.3440756 61.4738819,51 59.7137829,51 C57.9216822,51 57.0576336,52.1520648 57.0576336,54.4881961 L57.0576336,63.6727124 C57.0576336,66.0408456 57.0576336,71.2891406 57.0896354,73.5932702 C57.1216372,75.7373907 57.9216822,76.8574537 59.6177775,76.8574537 C61.1858657,76.8574537 62.1779214,75.7693925 62.1779214,73.2092486 L62.1779214,68.9530093 Z M71.8744666,76.6974447 L71.8744666,75.8013943 L68.4822759,75.8013943 L68.4822759,64.1527394 L71.3624378,64.1527394 L71.3624378,63.2886909 L68.4822759,63.2886909 L68.4822759,51.9920558 L71.8424648,51.9920558 L71.8424648,51.0960054 L67.5542237,51.0960054 L67.5542237,76.6974447 L71.8744666,76.6974447 Z M82.1790459,76.6974447 L78.818857,62.4246423 L82.0190369,51.0960054 L81.1229865,51.0960054 L77.7627976,63.0966801 L77.7627976,51.0960054 L76.8347454,51.0960054 L76.8347454,76.6974447 L77.7627976,76.6974447 L77.7627976,65.7528294 L78.2748264,64.1207376 L81.2189919,76.6974447 L82.1790459,76.6974447 Z M87.8113625,76.6974447 L87.8113625,51.0960054 L86.8833103,51.0960054 L86.8833103,76.6974447 L87.8113625,76.6974447 Z M98.4999634,74.0092935 C98.563967,72.6972198 98.5319652,64.9207826 98.5319652,63.3206927 C98.5319652,61.7206027 98.563967,54.9362213 98.4999634,53.9121637 C98.3719562,52.2160684 97.5399094,51.0960054 95.7478087,51.0960054 L93.7316953,51.0960054 L93.7316953,76.6974447 L96.0358249,76.6974447 C98.0199364,76.6974447 98.4359598,75.2573637 98.4999634,74.0092935 L98.4999634,74.0092935 Z M97.5719112,74.2333061 C97.5399094,75.3853709 96.8998735,75.8013943 96.2598375,75.8013943 L94.6597475,75.8013943 L94.6597475,51.9920558 L95.8758159,51.9920558 C96.8038681,51.9920558 97.5079076,52.8561043 97.5719112,54.3601889 C97.603913,55.3202429 97.603913,62.3286369 97.603913,63.2886909 C97.603913,64.2487448 97.603913,73.2092486 97.5719112,74.2333061 L97.5719112,74.2333061 Z"
					 fill="#404040"></path>
				</g>
			</svg>
		</div>
		<div class="footer-meta">
			<div>
				<p>
					&copy; 2018 方正的小站
					<br>
				</p>
			</div>
			<div class="text-75">
				<a href="https://creativecommons.org/licenses/by-nc-nd/4.0" target="_blank">
					<img src="assets/img/by-nc-nd.svg" width="76" height="16" title="Creative Commons「署名 - 非商业性使用 - 禁止演绎 4.0」许可协议" />
				</a>
			</div>
		</div>
	</footer>
	<div class="progress" style="display: none">
		<div class="time"></div>
		<div class="bar"></div>
	</div>
	<!-- Tether 1.4.0 -->
	<script src="assets/js/tether.min.js"></script>
	<!-- Bootstrap 4.0.0 Alpha 6 -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- FancyBox 3.1.20 -->
	<script src="assets/js/jquery.fancybox.min.js"></script>
	<!-- Retina.js 2.1.2 -->
	<script src="//cdn.bootcss.com/retina.js/2.1.2/retina.min.js"></script>
	<!-- Retina.js CORS Workaround -->
	<script src="assets/js/retina.js"></script>
	<script src="assets/js/script.js"></script>
	<script src="assets/js/util.js"></script>
	<script type="text/javascript">
		$(function ($) {
			//标题栏的切换
			$(".main div:eq(0)").show().siblings().hide();
			$(".topic ul li:eq(0)").addClass("active");
			$(".topic ul li").click(function () {
				$(this).addClass("active").siblings().removeClass("active");
				var tab = $(this).attr("tab");
				$(".popular-artists[id=" + tab + "]").show().siblings().hide();
				return false;
			})
			//点击封面播放音乐
			$(".artists").on("click", ".course-banner", function () {
				debugger;
				var songsnum = $(".course-label2 .songs").length;
				for (i = 0; i < songsnum; i++) {
					var songs = $(".songs:eq(" + i + ")").text();
					musicBox.add(songs);
				}
				$(this).parents(".artist-item").siblings().find(".course-label1").hide("slow,fadeOut");
				if ($(this).find(".course-label1").is(":hidden")) {
					var inxx = $(this).parent().parent().parent().parent().index();
					$(this).find(".course-label1").show("fast,fadeIn");
					$(".progress").show();
					play(inxx);
				} else {
					var inxx = $(this).parent().parent().parent().parent().index();
					$(this).find(".course-label1").hide("slow,fadeOut");
					$(".progress").hide();
					pause();

				}
			});
		})

		$(function () {
			start();
		});
		var m = null;
		function start(obj) {
			var id = null;
			if (obj == null) {
				id = $(".topic ul li:eq(0)").attr("tab");
			} else {
				id = $(obj).parent().attr("tab");
			}
			$.ajax({
				url: "all.html",
				data: { martixId: id },
				type: "post",
				async: false,
				dataType: "json",//xml,html,script,jsonp,text
				success: function (result) {
					var html = '';
					for (var i = 0; i < result.length; i++) {
						html += '<div class="artist-item"> \
                     			  <div class="index-card-container course-card-container container"> \
	                     		      <a target="_blank" class="course-card"> \
									      <div class="course-card-top "> \
										      <div class="course-banner"> \
											      <div class="img-up" style="background-image: url('+ result[i].cover + ');"> \
												      <div class="course-label"> \
														  <label>'+ result[i].song + '</label> \
													  </div> \
													  <div class="course-label1" style="display: none" > \
														  <label></label> \
													  </div> \
													  <div class="course-label2" style="display: none" > \
														  <label class="songs">'+ result[i].music + '</label> \
													  </div> \
							    				  </div> \
											  	  <div class="img-mid" style="background-image: url('+ result[i].cover + ');"></div> \
							              	      <div class="img-down" style="background-image: url('+ result[i].cover + ');"></div> \
								              </div> \
									      </div> \
									      <div class="course-card-content"> \
									      	  <h3 class="course-card-name">'+ result[i].singer + '</h3> \
										      <div class="clearfix course-card-bottom"> \
											      <div class="course-card-info"> \
												      <span>专辑／'+ result[i].album + '</span> \
											      </div> \
										      </div> \
									      </div> \
	                     		      </a> \
							      </div> \
					          </div>';
					}
					$(".artists:eq(0)").html(html);
				},
				error: function (a, b, c) {
				}
			});
		}

		var musicDom = utils.dom('#artists');
		var musicBox = {

			musicDom: null, //播放器对象
			songs: [],        //歌曲目录，用数组来存储
			index: 0,          //当前播放的歌曲索引

			//初始化音乐盒
			init: function (themeIndex) {
				this.musicDom = document.createElement('audio');
				document.body.appendChild(this.musicDom);
			},

			//添加一首音乐
			add: function (src) {
				this.songs.push(src);
			},

			//根据数组下标决定播放哪一首歌
			play: function () {
				this.musicDom.src = this.songs[this.index];
				this.musicDom.play();
			},

			//暂停音乐
			stop: function () {
				this.musicDom.pause();
			}

		}

		musicBox.init(); //初始化	

		//播放按钮
		function play(inxx) {
			//播放音乐
			musicBox.index = inxx;
			musicBox.play();
		}
		//暂停按钮
		function pause() {
			//暂停音乐
			musicBox.stop();
		}
		/**
		  * 当音频时间正常更新的时候
		  */
		musicBox.musicDom.ontimeupdate = function () {
			var currentTime1 = this.currentTime;
			var currentTime = Math.floor(this.currentTime); //获取当前时间取整
			var m = parseInt(currentTime / 60);//分钟
			var s = parseInt(currentTime % 60);//秒钟
			var time = (m < 10 ? ("0" + m) : m) + ":" + (s < 10 ? ("0" + s) : s); //格式化
			document.getElementsByClassName('time')[0].innerHTML = time;
			/*/ 百分比 = 当前时长 ÷ 总时长 × 100%*/
			var total = this.duration;//总时长
			console.log(currentTime + '=======' + total);
			document.getElementsByClassName('time')[0].innerHTML = Math.floor(currentTime1 / total * 100) + "%";
			document.getElementsByClassName('bar')[0].style.width = Math.floor(currentTime1 / total * 100) + "%";
		}

	</script>

</body>

</html>
