<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%String name=request.getParameter("name");%>
<%String score_s=request.getParameter("score");%>
<%String fail=request.getParameter("fail");//time tree%>
<% 
score_s=new String(score_s.getBytes("iso-8859-1"),"utf-8");
				name=new String(name.getBytes("iso-8859-1"),"utf-8");
				fail=new String(fail.getBytes("iso-8859-1"),"utf-8");
				
int score=0;
try{
Class.forName("com.mysql.jdbc.Driver"); 
String url="jdbc:mysql://localhost:3306/ws?characterEncoding=utf-8";
String username="ws";
String password="1111";

                 //查询我的以前最高分
			    Connection conn = DriverManager.getConnection(url,username,password);
			    Statement stmt = conn.createStatement();
				String sql0 = "SELECT * FROM guaguagua2_customer WHERE 1=1 and name='"+name+"'";//where pingfen<=? and pingci>=?";
				ResultSet rs = stmt.executeQuery(sql0);

				  rs.beforeFirst();
				while(rs.next()){
					score=rs.getInt("score");
				}
				conn.close();
				stmt.close();
				rs.close();
				
				//比较看看自己这次有没有超过之前自己的最高分
				if(score<Integer.valueOf(score_s)){
				Connection conn2 = DriverManager.getConnection(url,username,password);
			            Statement stmt2 = conn2.createStatement();	
					String sql2 = "update guaguagua2_customer set score=? where name=?";
					PreparedStatement ps2 = conn2.prepareStatement(sql2);
					ps2.setInt(1,Integer.valueOf(score_s));
					ps2.setString(2,name);
					ps2.executeUpdate();
					conn2.close();stmt2.close();ps2.close();
				}

}catch (Exception e){
e.printStackTrace();
}		   
if(fail.equals("time"))fail="饿死了";
if(fail.equals("tree"))fail="舌头碰到食人花";
%>

<body background="images/games/background.png">
<div style="border:solid 1px #FFFFFF;background:#000000;
 position:absolute;     top:50%;     left:50%;     
 margin-top:-350px;     margin-left:-300px;      /*此时宽和高都要固定*/
       width:600px;     height:700px; 
       color:#FFFFFF;
">
玩家：<%=name %>  得分：<%=Integer.valueOf(score_s)%> 失败原因：<%=fail %>
<form action="main.jsp" method="post" onsubmit="return check(this);">
    <input type="hidden" name="name" value=<%=name%>>
	<input type="image"height="80px"src="images/games/begin.png" onclick="this.form.submit()">
</form>
<img src="images/games/failoftree.png" width="580" id="endimg"/>
</div>
</body>
<script language="javascript">
var fail="<%=fail%>";
if(fail=="饿死了")
document.getElementById("endimg").src="images/games/failoftime.png";
</script>