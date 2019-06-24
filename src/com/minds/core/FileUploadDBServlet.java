

package com.minds.core;
 
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class FileUploadDBServlet extends HttpServlet {
     
    // database connection settings
    private String dbURL="jdbc:mysql://127.0.0.1:3307/thesis_updated";

    private String dbUser = "root";
    private String dbPass = "root";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
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

     
         
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("thesis");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println("Filename :"+filePart.getName());
            System.out.println("File size :"+filePart.getSize());
            System.out.println("File Content :"+filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "insert into student_info (college,internallecturer,student_name,study_year,usn_no,department,course,course_period,contact_no,postal_address,thesistitle,thesis) values(?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
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

           
             
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                stmt.setBlob(12, inputStream);
            }
 
            // sends the statement to the database server
            int row = stmt.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/view_thesis.jsp").forward(request, response);
        }
    }
}









/*package com.minds.core;
 
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class FileUploadDBServlet extends HttpServlet {
     
    // database connection settings
    private String dbURL="jdbc:mysql://127.0.0.1:3307/thesis_updated";

    private String dbUser = "root";
    private String dbPass = "root";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
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
    	

     
         
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("upload");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println("Filename :"+filePart.getName());
            System.out.println("File size :"+filePart.getSize());
            System.out.println("File Content :"+filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "insert into student_info (college,internallecturer,student_name,study_year,usn_no,department,course,course_period,contact_no,postal_address,thesistitle,thesis) values(?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
        	stmt.setString(1, college);
        	stmt.setString(2, internallecturer);
        	stmt.setString(3, student_name);
        0	stmt.setString(4, study_year);
        	stmt.setString(5, usn_no);
        	stmt.setString(6, department);
        	stmt.setString(7, course);
        	stmt.setString(8, course_period);
        	stmt.setString(9, contact_no);
        	stmt.setString(10, postal_address);
        	stmt.setString(11, thesistitle);
        	

           
             
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                stmt.setBlob(12, inputStream);
            }
 
            // sends the statement to the database server
            int row = stmt.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/view_thesis.jsp").forward(request, response);
        }
    }
}*/