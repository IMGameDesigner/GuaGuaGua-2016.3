<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%
 %><%@page import="java.sql.*"%><%
                String dengluorzhuce=request.getParameter("dengluorzhuce");
				String name=request.getParameter("name");
				String password1=request.getParameter("password");
				
				dengluorzhuce=new String(dengluorzhuce.getBytes("iso-8859-1"),"utf-8");
				name=new String(name.getBytes("iso-8859-1"),"utf-8");
				password1=new String(password1.getBytes("iso-8859-1"),"utf-8");
				
				int ni=0;

				try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/ws?characterEncoding=utf-8";
			// 数据库用户名
			String username = "ws";
			// 数据库密码
			String password = "1111";
			
			//查询我的名字
		    Connection conn = DriverManager.getConnection(url,username,password);
		    Statement stmt = conn.createStatement();
			String sql0 = "SELECT * FROM guaguagua2_customer WHERE 1=1 and name='"+name+"'";//where pingfen<=? and pingci>=?";
			ResultSet rs = stmt.executeQuery(sql0);
			
			 rs.last(); //结果集指针知道最后一行数据  
			    ni = rs.getRow();  //ni是搜索到的结果数量
	
			conn.close();
			stmt.close();
			rs.close();

			
			//如果是注册，并且没有我的名字就把我添加进去
			if(dengluorzhuce.equals("zhuce")){
			if(ni==0){
				Connection conn1 = DriverManager.getConnection(url,username,password);
				String sql1="insert into guaguagua2_customer"
						+ "(name,password,score)"
						+ "values(?,?,?)";
				PreparedStatement ps0=conn1.prepareStatement(sql1);
				ps0.setString(1,name);//sql的第一个问号用zhushi代替
				ps0.setString(2,password1);
				ps0.setInt(3, 0);
				ps0.executeUpdate();
				
				ps0.close();
				conn1.close();
				}
				}
				else
			if(dengluorzhuce.equals("denglu")){
				if(ni==1){//ni=0;
				//如果是登录并且有我的名字，就再看下密码对不对
				Connection conn3 = DriverManager.getConnection(url,username,password);
			    Statement stmt3 = conn3.createStatement();
				String sql3 = "SELECT * FROM guaguagua2_customer WHERE 1=1 and name='"+name+"' and password='"+password1+"' ";
				ResultSet rs3 = stmt3.executeQuery(sql3);
				
				rs3.last(); //结果集指针知道最后一行数据  
				
		        ni=rs3.getRow();  //ni是搜索到的结果数量（完全正常）

				conn3.close();
				stmt3.close();
				rs3.close();
				//ni=0;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
if(ni>0&&dengluorzhuce.equals("zhuce"))
		response.sendRedirect("index.jsp?sendfail=1");else
		if(ni==0&&dengluorzhuce.equals("denglu"))
		response.sendRedirect("index.jsp?sendfail=2");else
		{
		   request.setAttribute("name",String.valueOf(name));
		   request.getRequestDispatcher("main.jsp").forward(request, response);
		}
		
%>
