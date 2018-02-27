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
    <meta name="auther" content="founder|方正" />
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
    <meta http-equiv="mobile-agent" content="format=html5; url=http://founder.market/">
    <title>澈澈 | 方正的个人博客</title>
    <!-- Bootstrap 4.0.0 Alpha 6 -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- FancyBox 3.1.20 弹出框插件 -->
    <link rel="stylesheet" href="assets/css/jquery.fancybox.min.css">
    <!-- Animate.css 3.5.1 -->
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <!--第一，使用Canonical标签使网址规范化。
　　                      第二，避免内容重复页面，搜索引擎收录更准确。
　　                      第三，集中传递页面权重。
        -->
    <link rel="canonical" href="/">
    <!-- <link rel="alternate" type="application/rss+xml" title="太空小孩" href="/feed.xml">-->
    <link rel="shortcut icon" href="assets/img/favicon.ico">
    <!-- jQuery 1.11.3 -->
    <script src="assets/js/jquery.min.js"></script>
    <!-- HTML5 Shiv 3.7.3 -->
    <!--[if lt IE 9]>
        <script src="//cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <![endif]-->
    <style type="text/css">
        /*设置粒子动态背景*/

        #intro-wrapper {
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(rgba(0, 0, 0, .85)), to(rgba(0, 0, 0, .75)));
            background-image: -webkit-linear-gradient(rgba(0, 0, 0, .85), rgba(0, 0, 0, .75));
            background-image: -moz-linear-gradient(rgba(0, 0, 0, .85), rgba(0, 0, 0, .75));
            background-image: -o-linear-gradient(rgba(0, 0, 0, .85), rgba(0, 0, 0, .75));
            background-image: linear-gradient(rgba(0, 0, 0, .85), rgba(0, 0, 0, .75));
        }

        #particles-js {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
        }
    </style>
</head>

<body>
    <header id="navigation-wrapper">
        <nav class="navbar navbar-fixed-top navbar-toggleable-sm navbar-inverse">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar-nav" aria-controls="navbar-nav"
                aria-expanded="false" aria-label="Toggle Navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="/">Founder | 澈澈</a>
            <div id="navbar-nav" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="sortPages.html">专题广场</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="martix.html">Matrix</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/internet-slangs/">工具箱</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/internet-slangs/">兴趣小组</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a id="navbar-dropdownmenu" class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">更多</a>
                        <div class="dropdown-menu" aria-labelledby="navbar-dropdownmenu">
                            <a class="dropdown-item" href="https://www.zhihu.com/people/spacekid" target="_blank">知乎</a>
                            <a class="dropdown-item" href="https://weibo.com/kevindeng" target="_blank">微博</a>
                            <a class="dropdown-item" href="https://fanfou.com/anegie" target="_blank">饭否</a>
                            <a class="dropdown-item" href="https://www.douban.com/people/dksnow2002" target="_blank">豆瓣</a>
                            <a class="dropdown-item" href="https://twitter.com/anegie" target="_blank">Twitter</a>
                            <a class="dropdown-item" href="https://github.com/ispacekid" target="_blank">GitHub</a>
                            <a class="dropdown-item" href="https://zhuanlan.zhihu.com/spacekid" target="_blank">知乎专栏 – 太空小孩</a>
                            <a class="dropdown-item" href="http://zhuanlan.zhihu.com/quote" target="_blank">知乎专栏 – 太空语录</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/categories/">分类</a>
                            <a class="dropdown-item" href="/tags/">标签</a>
                            <a class="dropdown-item" href="/feed.xml">RSS 订阅</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <div>
        <header id="intro-wrapper" class="index-intro">
            <div>
                <div id="particles-js"></div>
                <div class="intro-heading">
                    <h1 class="intro-title">澈澈</h1>
                    <span class="intro-meta hidden-sm-down">因为有明天/我们才能熬过长夜</span>
                </div>
            </div>
        </header>

        <c:forEach items="${IndexList}" var="index">
            <form action="content.html" method="post" name="index-main" class="post">
                <article class="container container-index post entry">
                    <a class="entry-link">
                        <header class="entry-header" style="background-image: linear-gradient(rgba(0, 0, 0, 0.25), rgba(0, 0, 0, 0.25)), url('${index.fictionBackground }');}">
                            <input type="hidden" value="${index.fictionId }" name="fictionId" />
                            <h2 class="entry-title" name="fictionTitle">
                                ${index.fictionTitle }
                            </h2>
                            <span class="entry-info">
                                <time class="entry-date">${index.fictionDate }</time>
                            </span>
                        </header>
                    </a>
                </article>
            </form>
        </c:forEach>

        <nav id="pagination-wrapper" class="container">
            <hr/>
            <ul class="pager" id="pager">
                <!-- <li class="pager-prev text-left disabled">
		        		<span class="page-link float-left"></span>
		      		</li>    	    
		      		<li class="pager-next text-right">
		        		<a class="page-link float-right" href="/page-2">下一页</a>
		      		</li>	 -->
            </ul>
            <hr/>
        </nav>

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
                        &copy; 2018 澈澈
                        <br>
                        <small class="text-muted">Hosted by
                            <a href="https://pages.coding.me">Coding Pages</a>
                        </small>
                    </p>
                </div>
                <div class="text-75">
                    <a href="https://creativecommons.org/licenses/by-nc-nd/4.0" target="_blank">
                        <img src="assets/img/by-nc-nd.svg" width="76" height="16" title="Creative Commons「署名 - 非商业性使用 - 禁止演绎 4.0」许可协议" />
                    </a>
                </div>
            </div>
        </footer>
    </div>
    <div id='page' style="background: black;color: blue"></div>
    <!-- Tether 1.4.0 -->
    <script src="assets/js/tether.min.js"></script>
    <!-- Bootstrap 4.0.0 Alpha 6 -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- FancyBox 3.1.20 -->
    <script src="assets/js/jquery.fancybox.min.js"></script>
    <!-- Particles 2.0.0 -->
    <!--粒子动态背景-->
    <script src="assets/js/particles.min.js"></script>
    <!-- Retina.js 2.1.2 -->
    <!-- <script src="//cdn.bootcss.com/retina.js/2.1.2/retina.min.js"></script> -->
    <!-- Retina.js CORS Workaround -->
    <script src="assets/js/retina.js"></script>
    <script src="assets/js/script.js"></script>
    <script type="text/javascript">
        $(function () {
            $('article').click(function () {
                $(this).parent().submit();
            });
        });
        function Paging(index) {
            var RankInfo = document.getElementsByTagName("article");
            var totalPage = RankInfo.length; //总条数 
            console.log(totalPage);
            var pageSize = 6;//每页显示条数  
            var pageNumber = Math.ceil(totalPage / pageSize); //总页数
            /* 
            Math.ceil()
			功能：对一个数进行上取整。
			语法：Math.ceil(x)
			参数：
				x：一个数值。
			返回值：返回大于或等于x，并且与之最接近的整数。
			注：如果x是正数，则把小数“入”；如果x是负数，则把小数“舍”。
		    */
            var currentPage = index;//当前页数  
            var start_row = (currentPage - 1) * pageSize;//开始显示的行  
            var end_row = currentPage * pageSize;//结束显示的行  
            end_row = (end_row > totalPage) ? totalPage : end_row;
            /*  
            如：（a==b）?a:b 
            三目运算：也就是说，先判断a是否等于b，如果是（true），那么返回a,如果否（false），则返回b 
            */
            for (var i = 0; i < totalPage; i++) {
                var irow = RankInfo[i];
                if (i >= start_row && i < end_row) {
                    irow.style.display = 'block';
                } else {
                    irow.style.display = 'none';
                }
            }
            var pageHTML = '';
            var up = parseInt(currentPage) - 1;
            if (up < 1) {
                up = 1;
            }
            /* pageHTML+="<span>"+currentPage+"/"+pageNumber+"</span>"; */
            var next = parseInt(currentPage) + 1;
            if (next > pageNumber) { next = pageNumber; }
            if (currentPage == 1) {
                pageHTML += "<li class='pager-next text-right'><a class='page-link float-right' href=\"javascript:Paging(" + next + ")\" title=\"下一页\">下一页</a></li>";
            } else if (currentPage == pageNumber) {
                pageHTML += "<li class='pager-prev text-left'><a class='page-link float-left' href=\"javascript:Paging(" + up + ")\" title=\"上一页\">上一页</a></li>";
            } else {
                pageHTML += "<li class='pager-prev text-left'><a class='page-link float-left' href=\"javascript:Paging(" + up + ")\" title=\"上一页\">上一页</a></li><li class='pager-next text-right'><a class='page-link float-right' href=\"javascript:Paging(" + next + ")\" title=\"下一页\">下一页</a></li>";
            }

            if (totalPage == 0) {
                document.getElementById("pager").innerHTML = '';
            } else {
                document.getElementById("pager").innerHTML = pageHTML;
            }
        }
        Paging(1);
    </script>
</body>

</html>