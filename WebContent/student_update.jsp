<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
    
    
<% String sid=request.getParameter("id");
System.out.println("SID...!!!!"+sid);
int id = Integer.parseInt(sid); %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
/* String user=(String) session.getAttribute("user"); */


String user = (String)session.getAttribute("user");

/*  */

String college= request.getParameter("college");
String internallecturer= request.getParameter("internallecturer");
String student_name= request.getParameter("student_name");
String study_year= request.getParameter("study_year");
String usn_no= request.getParameter("usn_no");
String department= request.getParameter("department");
String course= request.getParameter("course");
String course_period= request.getParameter("course_period");
String contact_no= request.getParameter("contact_no");
String postal_address= request.getParameter("postal_address");
String thesistitle= request.getParameter("thesistitle");
String thesis= request.getParameter("thesis");
%>



<% 
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/thesis_updated","root","root");
	System.out.println("DB Connected...!!!!");
	
	String sql="update student_info set college=?,internallecturer=?,student_name=?,study_year=?,usn_no=?,department=?,course=?,course_period=?,contact_no=?,postal_address=?,thesistitle=?,thesis=? where id=?";
	
	System.out.println("ID...!!!!"+sid);
	
	PreparedStatement stmt=con.prepareStatement(sql);

    stmt.setString(1, college);
	stmt.setString(2, internallecturer);
	stmt.setString(3, student_name);
	stmt.setString(4, study_year);
	stmt.setString(5, usn_no);
	stmt.setString(6, department);
	stmt.setString(7, course);
	stmt.setString(8, course_period);
	stmt.setString(9, contact_no);
	stmt.setString(10, postal_address);
	stmt.setString(11, thesistitle);
	stmt.setString(12, thesis);
	stmt.setInt(13, id);

	int i =stmt.executeUpdate();
	System.out.println("Status: " +i);
	if(i>0) {
		 System.out.println("Data Updated Successfully...!!!");	
		
			 response.sendRedirect("view_thesis.jsp");
			}
			else{
				System.out.println("data not Inserted...!!!");	
				 response.sendRedirect("student_edit1.jsp");
			}	
	
				

				} catch (Exception e) {
					System.out.println("Exception :" + e);
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
    <%
String ssid = (String)session.getAttribute("id");
String sid=request.getParameter("id");
System.out.println("SID...!!!!"+sid);
int id = Integer.parseInt(ssid);
  
String college= request.getParameter("college");
String internallecturer= request.getParameter("internallecturer");
String student_name= request.getParameter("student_name");
String study_year= request.getParameter("study_year");
String usn_no= request.getParameter("usn_no");
String department= request.getParameter("department");
String course= request.getParameter("course");
String course_period= request.getParameter("course_period");
String contact_no= request.getParameter("contact_no");
String postal_address= request.getParameter("postal_address");
String thesistitle= request.getParameter("thesistitle");
String thesis= request.getParameter("thesis");
    %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String user=(String) session.getAttribute("user");






try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/thesis_updated","root","root");
	System.out.println("DB Connected...!!!!");
	String sql="update student_info set college=?,internallecturer=?,student_name=?,study_year=?,usn_no=?,department=?,course=?,course_period=?,contact_no=?,postal_address=?,thesistitle=?,thesis=? where id=?";
	
	System.out.println("ID...!!!!"+ssid);
	
	PreparedStatement stmt=con.prepareStatement(sql);

    stmt.setString(1, college);
	stmt.setString(2, internallecturer);
	stmt.setString(3, student_name);
	stmt.setString(4, study_year);
	stmt.setString(5, usn_no);
	stmt.setString(6, department);
	stmt.setString(7, course);
	stmt.setString(8, course_period);
	stmt.setString(9, contact_no);
	stmt.setString(10, postal_address);
	stmt.setString(11, thesistitle);
	stmt.setString(12, thesis);
	stmt.setInt(13, id);
	
	int i =stmt.executeUpdate();
	System.out.println("Status: " +i);
	if(i>0) {
		 System.out.println("Data Updated Successfully...!!!");	
		
			 response.sendRedirect("view_thesis.jsp");
			}
			else{
				System.out.println("data not Inserted...!!!");	
				 response.sendRedirect("student_edit.jsp");
			}	
	
				

				} catch (Exception e) {
					System.out.println("Exception :" + e);
				}
			%>
		
</body>
</html> --%>