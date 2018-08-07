<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%String sendfail=request.getParameter("sendfail"); %>
<style>
form{font-size:50px;}
table{font-size:50px;}
input{font-size:50px;background-color:transparent;border:0px;}
</style>
<body background="images/dengluzhuce/uiback.png" >

<div style="border:solid 1px #000000;background:#FFFFFF;

/*margin-left: auto;margin-right: auto;
position:relative;width:600px;height:600px;*/

 position:absolute;     top:50%;     left:50%;     
 margin-top:-300px;     margin-left:-300px;      /*此时宽和高都要固定*/
       width:600px;     height:600px; 
">
<img src="images/dengluzhuce/d.png" style="position:absolute;" id="d"  onclick="button_d();">
<img src="images/dengluzhuce/z.png" style="position:absolute;" id="z"  onclick="button_z();">
<img src="images/dengluzhuce/z_and_d.png" style="position:absolute;" id="z_back"  >
<img src="images/dengluzhuce/z_and_d.png" style="position:absolute;" id="d_back"  >
<%if(sendfail!=null)if(sendfail.equals("1")){%>
<div style="color:#ff0000;font-size:20px;position:absolute;top:220px;left:100px;">此用户名已被注册</div>
<%} %>
 <%if(sendfail!=null)if(sendfail.equals("2")){%>
<div style="color:#ff0000;font-size:20px;position:absolute;top:220px;left:100px;">账号或密码错误</div>
<%} %>
<form action="servlet_customer_in.jsp" style="position:absolute;"method="post" id="form_z" onsubmit="return check(this);">
 
 <input type="hidden" name="dengluorzhuce" value="zhuce">
 <table cellspacing="55">
  <tr><td><input type="text" name="name"  size="15"value="输入账号" onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue; this.style.color='#999'}" style="color:#999"></td></tr>
	<tr><td><input type="text" name="password" size="15"value="输入密码" onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue; this.style.color='#999'}" style="color:#999"></td></tr>
	<tr align="center"><td><input type="image"height="90px"src="images/dengluzhuce/begin.png" onclick="this.form.submit()"></td></tr>
	</table>
  </form>

  <form action="servlet_customer_in.jsp" style="position:absolute;"method="post" id="form_d"onsubmit="return check(this);">
 <input type="hidden" name="dengluorzhuce" value="denglu">
 <table cellspacing="55">
    <tr><td><input type="text" name="name" size="15"value="输入账号" onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue; this.style.color='#999'}" style="color:#999"></td></tr>
	<tr><td><input type="text" name="password" size="15"value="输入密码" onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue; this.style.color='#999'}" style="color:#999"></td></tr>
	<tr align="center"><td><input type="image"height="90px"src="images/dengluzhuce/begin.png" onclick="this.form.submit()"></td></tr>
	</table>
  </form>
  </div>
</body>
<script language="javascript">

d = document.getElementById("d");
d.style.left="350";
d.style.top="50";
d.width = "200";

z = document.getElementById("z");
z.style.left="50";
z.style.top="50";
z.width = "200";


d_back = document.getElementById("d_back");
d_back.style.left="50";
d_back.style.top="240";
d_back.width = "500";

z_back = document.getElementById("z_back");
z_back.style.left="50";
z_back.style.top="360";
z_back.width = "500";;

form_z = document.getElementById("form_z");
form_z.style.left="20";
form_z.style.top="200";
form_z.width = "250";

form_d = document.getElementById("form_d");
form_d.style.left="20";
form_d.style.top="200";
form_d.width = "250";

button_d();
z_back.style.visibility = "hidden";
d_back.style.visibility = "hidden";
function button_d(){
form_z.style.visibility = "hidden";
form_d.style.visibility ="visible";
document.getElementById("d").src="images/dengluzhuce/d.png";
document.getElementById("z").src="images/dengluzhuce/un_z.png";
}
function button_z(){
form_d.style.visibility = "hidden";
form_z.style.visibility ="visible";
document.getElementById("d").src="images/dengluzhuce/un_d.png";
document.getElementById("z").src="images/dengluzhuce/z.png";
}
</script>