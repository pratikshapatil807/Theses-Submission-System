<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username= request.getParameter("username");
//out.println("Welcome :"+ username);
String password= request.getParameter("password");

try{
	/* String user=null;
	String pass=null; */
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/thesis_updated","root","root");
	System.out.println("DB Connected...!!!!");
	String sql="Select *from hod_login where username='"+username+"' and password='"+password+"'";
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery(sql);
	if(rs.next()) {

/* 		 user=rs.getString(2);
		 System.out.println("User :"+user);
		 pass=rs.getString(3);
		 System.out.println("Pass :"+pass );
		 if(username.equalsIgnoreCase(user) && password.equalsIgnoreCase(pass)) { */
			 System.out.println("login Successfully...!!!");
		 	 session.setAttribute("user", username);
			 response.sendRedirect("Hod_home.html");
			}
			else{
				System.out.println("login Failed...!!!");	
			%>
				Login Failed...<a href="hod_login.html"> Click here to Back</a>
			<%	
			}
	
	 
}
catch(Exception e){
	System.out.println("Exception :"+e);
}

	
	
%>

</body>
</html>