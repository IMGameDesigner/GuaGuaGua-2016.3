
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%
 %><%@page import="java.sql.*"%>

 <%
 String myname = request.getParameter("name");

	myname=new String(myname.getBytes("iso-8859-1"),"utf-8");
	
				int ni=0;
				int[] scores=new int[10];
				int myscore=0;
				String[] names=new String[10];
				try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/ws?characterEncoding=utf-8";
			// 数据库用户名
			String username = "ws";
			// 数据库密码
			String password = "1111";
            //查询前十
			    Connection conn = DriverManager.getConnection(url,username,password);
			    Statement stmt = conn.createStatement();
				String sql0 = "SELECT * FROM guaguagua2_customer  ORDER BY score DESC";//where pingfen<=? and pingci>=?";
				ResultSet rs = stmt.executeQuery(sql0);
				
				 rs.last(); //结果集指针知道最后一行数据  
		         ni = rs.getRow();  //ni是搜索到的结果数量
				  
				  rs.beforeFirst();//将结果集指针指回到开始位置，这样才能通过while获取rs中的数据  
				ni=0;
				while(rs.next()&&ni<=9){//^^^fix
					names[ni]=rs.getString("name");
					scores[ni]=rs.getInt("score");
					ni++;//ni为数量，数组下标最大到ni-1
				}
				conn.close();
				stmt.close();
				rs.close();
				
				//查询我的数据
			    Connection conn2 = DriverManager.getConnection(url,username,password);
			    Statement stmt2 = conn2.createStatement();
				String sql2 = "SELECT * FROM guaguagua2_customer WHERE 1=1 and name='"+myname+"'";//where pingfen<=? and pingci>=?";
				ResultSet rs2 = stmt2.executeQuery(sql2);
				
				rs2.beforeFirst();//将结果集指针指回到开始位置，这样才能通过while获取rs中的数据  
				rs2.next();
				myscore=rs2.getInt("score");

				conn2.close();
				stmt2.close();
				rs2.close();

		} catch (Exception e) {
			e.printStackTrace();
		} 
		//输出：ni,names,scores,myname,myscore
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
							<li><a href="about.html">About</a></li>
							<li class="active"><a href="content.html">Blog</a></li>
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
<input type="hidden" name="name" value=<%=myname%>>
<input type="submit" style= "background-color:transparent;border:0px;color:#ffffff;font-size:15px;"value="主页">
</form>
</li>

<li >
<form action="about.jsp" method="post" onsubmit="return check(this);">
<input type="hidden" name="name" value=<%=myname%>>
<input type="submit" style= "background-color:transparent;border:0px;color:#ffffff;font-size:15px;"value="关于">
</form>
</li>
<li class="active"><a href="#">内容</a></li>		
					</ul>
				</div>
				
				<div class="sign-ligin-btns">
					<ul>
						
						<li id="loginContainer"><a class="login" id="loginButton" href="#"><span><%=myname %></span></a>
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
	                   <h3>内容</h3>
	            </div><!--section-title-->
			</div>
		</div>
<div class="main_bg">
	 <p class="about-title">欢迎来到 呱呱呱3</p>
<div class="wrap">
 <div class="blog">
 	<!-- start main_content -->
	
	            <div class="blog_left">
				<h3 class="style"><a href="#" style="color:#000">玩法攻略</a></h3>
				<div class="blog-img"><a href="details.html"><img src="images/blog-img1.jpg" alt=""></a></div>
			     <div class="blog_grid">

					 <div class="span_2_of_blog">
					   <p class="para">技巧：连续点击两下可以避免青蛙舌头触碰障碍物死亡</p>
					   <p class="para">移动速度分为三个阶段，每得10分进入下一个阶段，速度越来越快</p>
					 </div>	
					 <div class="clear"></div>			
		     	</div>
				
				

			
				
				
				</div>


	<div class="rsidebar span_1_of_3">

               <div class="email_box">
					<form>
						<div class="email">
					  		 <input type="text" value="填写反馈信息" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '填写反馈信息';}">
					  	</div>
					  	 <div class="button">
						   	 <span><input type="submit" value="发送"></span>
						</div>
				    </form>
			 	</div>
			 	<div class="Categories">
			 		<h4>全服排名</h4>
			 		
				 	<ul class="sidebar">
				 	<% 
						// 遍历数据
						for(int i=0;i<=ni-1;i++){
			%>	<div class="hover"><li><a href="#">名次：<%=i+1%> 账号:<%=names[i]%> 最高分:<%=scores[i]%></a></li></div>
				<%}//for%>	
			           	
			          </ul>
		        </div>
		</div>
	<div class="clear"></div>
	<!-- end main_content -->
</div>
</div>
</div>

<!-- start footer -->
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