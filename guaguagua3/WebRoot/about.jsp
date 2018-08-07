<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%String name = request.getParameter("name"); 
name=new String(name.getBytes("iso-8859-1"),"utf-8");
%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http//fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<!---start-login-script--->
		<script src="js/login.js"></script>
		<!---//End-login-script--->
		<!-----768px-menu----->
		<link type="text/css" rel="stylesheet" href="css/jquery.mmenu.all.css" />
		<script type="text/javascript" src="js/jquery.mmenu.js"></script>
			<script type="text/javascript">
				//	The menu on the left
				$(function() {
					$('nav#menu-left').mmenu();
				});
		</script>
		<!-----//768px-menu----->
</head>
<body>
		<div class="content">
	<!------start-768px-menu---->
			<div id="page">
					<div id="header">
						<a class="navicon" href="#menu-left"> </a>
					</div>
					<nav id="menu-left">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li class="active"><a href="about.html">About</a></li>
							<li><a href="content.html">Blog</a></li>
							<div class="clear"> </div>
						</ul>
					</nav>
			</div>
		<!------end-768px-menu---->
			<!---start-header---->
			<div class="header">
		   <!---start-wrap---->
				<div class="wrap">
				<div class="header-left">
					<div class="logo">
						<a href="index.html"><img src="images/logo.jpg"/></a>
					</div>
				</div>
				<div class="header-right">
					<div class="top-nav">
					<ul>
				
<li >
<form action="main.jsp" method="post" onsubmit="return check(this);">
<input type="hidden" name="name" value=<%=name%>>
<input type="submit" style= "background-color:transparent;border:0px;color:#ffffff;font-size:15px;"value="主页">
</form>
</li>
<li class="active"><a href="#">关于</a></li>		
<li >
<form action="content.jsp" method="post" onsubmit="return check(this);">
<input type="hidden" name="name" value=<%=name%>>
<input type="submit" style= "background-color:transparent;border:0px;color:#ffffff;font-size:15px;"value="内容">
</form>
</li>
					</ul>
				</div>
				
				<div class="sign-ligin-btns">
					<ul>
						
						<li id="loginContainer"><a class="login" id="loginButton" href="#"><span><%=name %></span></a>
						</li>
						<li id="signupContainer"><a class="signup" id="signupButton" href="#"><span>在线</span></a>
						</li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="clear"> </div>
				</div>
				<div class="clear"> </div>
			</div>
			</div>
			<div class="wrap">
				<div class="section-title">
	                   <h3>关于我们</h3>
	            </div><!--section-title-->
			</div>
		</div>
		<div class="about">
			 <p class="about-title">欢迎来到 呱呱呱3</p>
				<div class="wrap">
                            <div class="row-fluid">
                                <div class="row_side-left">
                                        <h3>我们是谁?<span> </span></h3>
                                        <img src="images/free-money-course.jpg" alt="" />
                                   </div>
                                <div class="row_side-right">
                                    <div class="skills">
                                        <h3>我们的特长<span> </span></h3>
                                        <p>网页前端技术 网络数据库技术 网页平面设计 游戏程序设计</p>
                                        <div class="flx-skill">
                                            <p class="flx-skill-title">网页前端技术</p>
                                            <p class="flx-skill-number">60%</p>
                                            <div class="progress-bar flexible animate"> <span class="progress-60" style="width: 60%"><span> </span></span>  </div>
                                               <div class="clear"> </div>
                                        </div>
                                        <div class="flx-skill">
                                            <p class="flx-skill-title">网页平面设计</p>
                                            <p class="flx-skill-number">50%</p>
                                            <div class="progress-bar flexible animate"> <span class="progress-50" style="width: 50%"><span> </span></span> </div>
                                               <div class="clear"> </div>
                                        </div>
                                        <div class="flx-skill">
                                            <p class="flx-skill-title">游戏程序设计</p>
                                            <p class="flx-skill-number">90%</p>
                                            <div class="progress-bar flexible animate"> <span class="progress-90" style="width: 90%"><span> </span></span> </div>
                                               <div class="clear"> </div>
                                        </div>
                                        <div class="flx-skill">
                                            <p class="flx-skill-title">网络数据库技术</p>
                                            <p class="flx-skill-number">75%</p>
                                            <div class="progress-bar flexible animate"> <span class="progress-75" style="width: 75%"><span> </span></span> </div>
                                               <div class="clear"> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear"> </div>
                            </div> 
                            <div class="team" id="team">
					 		<div class="heading_h">
								<h3><a href="#">我们的团队</a></h3>
							</div>	
					 		<div class="middle-grids">
								<div class="grid_1_of_4 images_1_of_4">
						 			<a href="#">
						 				<span class="rollover"> </span>
									</a>
									<img src="images/pic2.jpg" alt="Image 1">
						 			<h3 style="color:#000">王帅</h3>
						 			<h4>软件工程</h4>
						 			<p>负责技术</p>
								</div>
								<div class="grid_1_of_4 images_1_of_4">
									<a href="#">
						 				<span class="rollover"> </span>
									</a>
									 <img src="images/pic1.png">
									 <h3 style="color:#000">赵正宇</h3>
									 <h4>动画</h4>
									 <p>游戏美术设计</p>
								</div>
								<div class="grid_1_of_4 images_1_of_4">
									<a href="#">
						 				<span class="rollover"> </span>
									</a>
									 <img src="images/pic2.png">
								 	<h3 style="color:#000">其他</h3>
								 	<h4>。。。</h4>
								 	<p>。。。。。。</p>
							    
								</div>
								
								 <div class="clear"> </div>
						</div>
			 		</div>
		</div>        
	</div>
	<div class="footer">
   	    <div class="wrap">
   	    	<div class="footer-left">
				<div class="copy">
			       <p>弈巷 制作</p>
		        </div>
			</div>
			<div class="social_icons">	
		   </div>
		   <div class="clear"> </div>
	    </div>

   </div>
<div style="display:none"><script src='http//v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>