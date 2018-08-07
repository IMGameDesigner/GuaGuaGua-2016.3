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
<style name="byws_4line">


.button{
    
display: block;
    
width: 180px;
    
height: 50px;
    
text-decoration: none;
    
line-height: 50px;
    
color:#3d3c3a;
    
font-family: "微软雅黑", Arial, Helvetica, sans-serif;
    
font-weight: bolder;
    
border: 2px solid #3d3c3a;
    
padding-left: 20px;
    
background: url("images/beautiful-allow.png")

no-repeat 130px center;
    
position: relative;
    
transition: 0.4s ease;
    
-webkit-transition: 0.4s ease;
    
-o-transition: 0.4s ease;
    
-moz-transition: 0.4s ease;
    
-ms-transition: 0.4s ease;
}


.button:hover{
    
border:solid 2px #3d3c3a;
    
background-position: 140px center;
}


.line-top{
    
height: 2px;
    
width: 0px;
    
left: -110%;
    
top: -2px;
}



.button:hover 
.line-top{
    
width: 100%;
    
left: -2px;
}




.line-bottom{
    
width: 0px;
    
height: 2px;
    
right: -110%;
    
bottom: -2px;
}



.button:hover 
.line-bottom{
    
width: 100%;
    
right: -2px;
}




.line-left{
    
width: 2px;
    
height: 0;
    
left: -2px;
    
bottom: -110%;
}



.button:hover 
.line-left{
    
height: 100%;
    
bottom: -2px;
}




.line-right{
    
width: 2px;
    
height: 0px;
    
right: -2px;
    
top: -110%;
}



.button:hover 
.line-right{
    
height: 100%;
    
top: -2px;
}


.line{
    
display: block;
    
position: absolute;
    
background: none;
    
transition: 0.4s ease;
    
-webkit-transition: 0.4s ease;
    
-o-transition: 0.4s ease;
    
-moz-transition: 0.4s ease;
    
-ms-transition: 0.4s ease;
}


.button:hover .line{
    
background: #3d3c3a;
}


</style>
	<div class="content">
	<!------start-768px-menu---->
			<div id="page">
					<div id="header">
						<a class="navicon" href="#menu-left"> </a>
					</div>
					<nav id="menu-left">
						<ul>
							<li class="active"><a href="index.html">11主菜单</a></li>
							<li><a href="about.html">11关于</a></li>
							<li><a href="content.html">11内容</a></li>
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
<li class="active"><a href="#">主页</a></li>						
<li >
<form action="about.jsp" method="post" onsubmit="return check(this);">
<input type="hidden" name="name" value=<%=name%>>
<input type="submit" style= "background-color:transparent;border:0px;color:#ffffff;font-size:15px;"value="关于">
</form>
</li>
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
			<div class="main">
				<div class="wrap">
				<div class="main_left">
					<h2>呱呱呱3</h2>
					<p>在一个月黑风高的晚上，小青蛙饿了，想去找点吃的，他会遇到什么呢？</p>		

                            
                            <div class="buttons">
							<form action="game.jsp" method="post" onsubmit="return check(this);">
                            <input class="button"type="submit" style= "background-color:transparent;border:0px;font-size:15px;"value="开始游戏">
                            <input type="hidden" name="name" value=<%=name%>>
                            </form>
                            </div>
                                 

					
				</div>
			<div class="main_right">
						<span> </span>
			</div>
			<div class="clear"> </div>
			<!---//End-header---->
			</div>
		</div>
	</div>
		<div class="buttom">
			<div class="wrap">
				<div class="top-grids">
					<div class="top-grid">
						<a href="#"><img src="images/icon1.png"/></a>
						<h3><a href="#" >怎样控制</a></h3>
						<p >方法1 青蛙站稳后鼠标左键点击青蛙来控制青蛙的吐舌和收舌。方法2 键盘回车键控制青蛙的吐舌和收舌。</p>
					</div>
					<div class="top-grid">
						<a href="#"><img src="images/icon2.png"/></a>
						<h3><a href="#">怎样才会失败</a></h3>
						<p>情况1 舌头碰到食人花。 情况2 太长时间没有吃到蚊子，当饥饿进度条到0的时候。</p>
						</div>
					<div class="top-grid">
						<a href="#"><img src="images/icon3.png"/> </a>
						<h3><a href="#">怎样得分</a></h3>
						<p>舌头吃到蚊子，饥饿进度条将会增加，同时也会获得分数。自己所有游戏中最高的一次得分将会是账号得分。</p>
						</div>
					<div class="clear"> </div>
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

