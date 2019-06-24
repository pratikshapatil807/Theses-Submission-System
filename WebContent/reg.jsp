<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
String firstname= request.getParameter("firstname");
String lastname= request.getParameter("lastname");

String email= request.getParameter("email");
String password= request.getParameter("password");
String mobileno= request.getParameter("mobileno");
String address= request.getParameter("address");


try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://127.0.0.1:3307/thesis_updated","root","root");
	System.out.println("DB Connected...!!!!");
	String sql="insert into registration (firstname,lastname,email,password,mobileno,address) values (?,?,?,?,?,?)";
	PreparedStatement stmt=con.prepareStatement(sql);
	stmt.setString(1, firstname);
	stmt.setString(2, lastname);
	stmt.setString(3, email);
	stmt.setString(4, password);
	stmt.setString(5, mobileno);
	stmt.setString(6, address);
	int i =stmt.executeUpdate();
	if(i>0) {
		 System.out.println("Registartion Successfully...!!!");	
			 response.sendRedirect("login.html");
			}
			else{
				System.out.println("Registration Failed...!!!");	
			%>
				Registration Failed...<a href="reg.html"> Click here to Back</a>
			<%	
			}
	
	
	 
}
catch(Exception e){
	System.out.println("Exception :"+e);
}

	
	
%>
</body>
</html>






























<%-- <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
String firstname= request.getParameter("firstname");
String lastname= request.getParameter("lastname");

String user_name= request.getParameter("user_name");
String password= request.getParameter("password");
String mobileno= request.getParameter("mobileno");
String address= request.getParameter("address");


try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/thesis_updated","root","root");
	System.out.println("DB Connected...!!!!");
	String sql="insert into registration (firstname,lastname,user_name,password,mobileno,address) values (?,?,?,?,?,?)";
	PreparedStatement stmt=con.prepareStatement(sql);
	stmt.setString(1, firstname);
	stmt.setString(2, lastname);
	stmt.setString(3, user_name);
	stmt.setString(4, password);
	stmt.setString(5, mobileno);
	stmt.setString(6, address);
	int i =stmt.executeUpdate();
	if(i>0) {
		 System.out.println("Registartion Successfully...!!!");	
			 response.sendRedirect("login.html");
			}
			else{
				System.out.println("Registration Failed...!!!");	
			%>
				Registration Failed...<a href="reg.html"> Click here to Back</a>
			<%	
			}
	
	
	 
}
catch(Exception e){
	System.out.println("Exception :"+e);
}

	
	
%>
</body>
</html> --%>