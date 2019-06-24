<!DOCTYPE html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% String usn_no =request.getParameter("usn_no");
String res="";
System.out.println(usn_no);
%>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"> Online Thesis Submission System</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       <li><a href="home.html">Home</a></li>
        <li class="active"><a href="add_thesis.html">Add Thesis</a></li>
          <li><a href="view_thesis.jsp">view thesis table</a></li>
       <li><a href="login.html">Log Out</a></li>
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-1 ">
    <!--   <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p> -->
    </div>
    <div class="col-sm-10 text-left"> 

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMAIL THESIS REPORT</title>
</head>
<body>
    
  <h2 align="center">EMAIL THESIS</h2>
  <form class="form-horizontal" action="MailerApp" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="username">Email Id:</label>
       <input type="text" class="form-control" id="username"  name="email">
      <div class="col-sm-10">
      <%

      try {
			/* String roll = request.getParameter("id"); */
    	 // int rollno = Integer.parseInt(request.getParameter("studentRollno"));
			System.out.print(usn_no);
    	  String user = (String)session.getAttribute("user");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/thesis_updated","root","root"); 
			
			Statement st = con.createStatement();
			ResultSet rs;
			String sql = "select * from registration";
			System.out.print(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				String email = rs.getString("email"); 
      %>
       
      <%}
      }
      catch(Exception e){
    	  e.printStackTrace();
      }
			%>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd"></label>
      <div class="col-sm-10">
       <%
      try {
			/* String roll = request.getParameter("id"); */
    	 // int rollno = Integer.parseInt(request.getParameter("studentRollno"));
			System.out.print(usn_no);
    	  String user = (String)session.getAttribute("user");
		 Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/thesis_updated","root","root"); 
		
	      
			Statement st = con.createStatement();
			ResultSet rs;
			String sql = "select * from student_info where usn_no ='"+usn_no+"'";
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				String college = rs.getString("college"); 
				String internallecturer = rs.getString("internallecturer"); 
				String student_name = rs.getString("student_name"); 
				String study_year = rs.getString("study_year");
				String usn_no1 = rs.getString("usn_no"); 
				String department = rs.getString("department"); 
				String course = rs.getString("course"); 
				String course_period = rs.getString("course_period"); 
				String contact_no = rs.getString("contact_no");
				String postal_address = rs.getString("postal_address");
				String thesistitle = rs.getString("thesistitle");
				
				res = "<h2> THESIS REPORT </h2>"
		
				+"<table border='1' color='blue' id='example' style='width:60%'>"
				+"<thead>"
				+"<tr><td style='font-weight: bold; color:red;'>Particular</td>"
				+"<td>Information</td></tr>"
				+"</thead>"
				+"<tbody>"
				+"<tr><td class='labelName'>college</td><td>"+college+"</td></tr>"
				+"<tr><td class='labelName'>internallecturer</td>"
				+"<td>"+internallecturer+"</td>"
				+"</tr>"
				+"<tr><td class='labelName'>usn no</td>"
				+"<td>"+usn_no+"</td>"
				+"</tr>"
				+"<tr><td class='labelName'>student_name</td>"
				+"<td>"+student_name+"</td>"
				+"</tr>"
				+"<tr><td class='labelName'>study_year</td>"
				+"<td>"+study_year+"</td>"
				+"</tr>"
				+"<tr><td class='labelName'>department</td>"
				+"<td>"+department+"</td>"
				+"</tr>"
				+"<tr><td class='labelName'>course </td>"
				+"<td>"+course+"</td>"
				+"</tr>"
				+"<tr><td class='labelName'>course_period</td>"
				+"<td>"+course_period+"</td>"
				+"</tr>"
				+"<tr><td class='labelName'>contact_no</td>"
				+"<td>"+contact_no+"</td>"
				+"</tr>"
				+"<tr><td class='labelName'>postal_address</td>"
				+"<td>"+postal_address+"</td>"
				+"</tr>"
				+"<tr><td class='labelName'>thesistitle</td>"
				+"<td>"+thesistitle+"</td>"
				+"</tr>"
				

   				+"</tbody></table>"
   				+"<br>"
   				+"THANK YOU";
   				
	    			
 
			System.out.println(res);	
      %>
      
      <%}
      }
      catch(Exception e){
    	  e.printStackTrace();
      }
			%>          
        
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
      <input type="hidden" class="form-control" id="desc"  value="<%=res %>" name="desc" >
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="viewr_thesis.jsp"> Back</a>
      </div>
    </div>
   </form>

    </div>
    
  </div>
</div>

<br/>
<br/>
<br/>
<br/>
<br/>
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>
