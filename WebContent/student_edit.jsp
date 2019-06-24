<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
  
<%
String user=(String) session.getAttribute("user");
String sid=request.getParameter("id");
int id = Integer.parseInt(sid);
System.out.println("IDIn...!!!!"+id);
  %> 
<head>
  <title>Bootstrap Example</title>
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
      <a class="navbar-brand" href="#">Online Thesis Submission System</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="add_thesis.html">Add Thesis</a></li>
      
       
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



<% 
/* 

String sid= request.getParameter("id");
int id =Integer.parseInt(sid);
 */
try{
	/* String user=null;
	String pass=null; */
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/thesis_updated","root","root");
	System.out.println("DB Connected...!!!!");
	String sql="Select * from student_info where id="+id;
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery(sql);
	while(rs.next()) {
	session.setAttribute("id",rs.getInt("id"));
	System.out.println("IDiot...!!!!"+id);
	%>




  <form method="post" action="student_update.jsp" enctype="multipart/form-data">

   <div class="form-group">
            
      <input type="hidden" class="form-control" id="id" name="id" value="<%=rs.getInt(1)%>">
    </div> 
    
    <div class="form-group">
      <label for="college"> College:</label>
      <input type="college" class="form-control" id="college"  name="college" value="<%=rs.getString(2) %>"required>
    </div>
    
    <div class="form-group">
      <label for="internallecturer">Internal lecturer:</label>
      <input type="text" class="form-control" id="internallecturer"  name="internallecturer" value="<%=rs.getString(3) %>" required>
    </div>
    
     <div class="form-group">
      <label for="student_name">student name:</label>
      <input type="text" class="form-control" id="student_name"  name="student_name"  value="<%=rs.getString(4) %>"required>
    </div>
  
   <div class="form-group">
      <label for="study_year">study year:</label>
      <input type="text" class="form-control" id="study_year" name="study_year"  value="<%=rs.getString(5) %>"required>
    </div>
  
   <div class="form-group">
      <label for="usn_no">usn no:</label>
      <input type="text" class="form-control" id="usn_no" name="usn_no"  value="<%=rs.getString(6) %>"required>
    </div>
    
     <div class="form-group">
      <label for="department">Department:</label>
      <input type="text" class="form-control" id="department"  name="department"  value="<%=rs.getString(7) %>"required >
    </div>
   
   <div class="form-group">
      <label for="course">Course:</label>
      <input type="text" class="form-control" id="course" name="course"  value="<%=rs.getString(8) %>"required >
    </div>
    
    <div class="form-group">
      <label for="course_period">Course_period:</label>
      <input type="text" class="form-control" id="course_period"  name="course_period"  value="<%=rs.getString(9) %>"required >
    </div>
    
     <div class="form-group">
      <label for="contact_no">Contact_no:</label>
      <input type="text" class="form-control" id="contact_no" name="contact_no"  value="<%=rs.getString(10) %>"required >
    </div>
    
     <div class="form-group">
      <label for="postal_address">Postal_address:</label>
      <input type="text" class="form-control" id="postal_address" name="postal_address"  value="<%=rs.getString(11) %>"required >
    </div>
    
    <div class="form-group">
      <label for="thesistitle">Thesis title:</label>
      <input type="text" class="form-control" id="thesistitle" placeholder="thesistitle" name="thesistitle"  value="<%=rs.getString(12) %>"required >
    </div>
    
   <div class="form-group">
    <label for="upload">Upload Thesis:</label>
    <input type="file" class="form-control" id="upload" placeholder="Enter upload " name="upload" value="<%=rs.getString(13) %>">
  </div>
  
   
    
    <button type="submit" class="btn btn-default">Submit</button>
  </form> 

	<%
	}
	}
	catch(Exception e){
		System.out.println("Exception :"+e);
	}

	%>
	
	 </div>
    <div class="col-sm-1 ">
     <!--  <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div> -->
    </div>
  </div>
</div>
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>	 

	
