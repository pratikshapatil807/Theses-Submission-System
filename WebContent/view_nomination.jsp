<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
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

<h2>Student Thesis table</h2>
<div class="table-responsive-x1 table-responsive-sm table-responsive-md table-responsive-1g">
	<table class="table table-bordered">
	<thead>
		<tr>
			<th> college </th>
			<th> internallecturer </th>
			<th> student_name </th>
			<th> study_year </th>
			<th> usn_no </th>
			<th> department </th>
			<th> course </th>
			<th> course_period </th>
			<th> contact_no </th>
			<th> postal_address </th>
			<th> thesistitle </th>
			<th> thesis </th>
			<th> External </th>
			
			
		</tr>
		</thead>
		
			<%
				try {
					/* String user=null;
					String pass=null; */
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection(
							"jdbc:mysql://127.0.0.1:3307/thesis_updated", "root", "root");
					System.out.println("DB Connected...!!!!");
					String sql = "Select *from student_info" ;
					Statement stmt = con.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					while (rs.next()) {
					%>
					<tbody>
					<tr>
						<td> <%=rs.getString("college") %> </td>
						<td> <%=rs.getString("internallecturer") %> </td>
						<td> <%=rs.getString("student_name") %> </td>
						<td> <%=rs.getString("study_year") %> </td>
						<td> <%=rs.getString("usn_no") %> </td>
						<td> <%=rs.getString("department") %> </td>
						<td> <%=rs.getString("course") %> </td>
						<td> <%=rs.getString("course_period") %> </td>
						<td> <%=rs.getString("contact_no") %> </td>
						<td> <%=rs.getString("postal_address") %> </td>	
						<td> <%=rs.getString("thesistitle") %> </td>
						<td> <%=rs.getString("thesis") %> </td>	
						<td> <%=rs.getString("external") %> </td>		
						
						
						</tr>
					</tbody>
					<%
					}

				} catch (Exception e) {
					System.out.println("Exception :" + e);
				}
			%>
		
	</table>
</body>
</html>