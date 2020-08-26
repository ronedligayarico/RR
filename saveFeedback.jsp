<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.List, java.util.Arrays,java.util.*,java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%

  java.sql.Connection conn;
  Class.forName("com.mysql.jdbc.Driver");

  conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/rsws?&autoReconnect=true&failOverReadOnly=false&maxReconnects=10","root", "09236373759");
  java.sql.Statement stmt = conn.createStatement();
  java.sql.Statement stmt1 = conn.createStatement();
  java.sql.Statement stmt2 = conn.createStatement();
  java.sql.Statement stmt3 = conn.createStatement();
  java.sql.Statement stmt4 = conn.createStatement();
  java.sql.Statement stmt5 = conn.createStatement();

  //Declarations
  String querySelect ="";
  String querySelect1 ="";
  String querySelect2 ="";
  String querySelect3 ="";
  String querySelect4 ="";
  String querySelect5 ="";

  String queryAction = "";
  String queryAction1 = "";
  String queryAction2 = "";
  String queryAction3 = "";
  String queryAction4 = "";
  String queryAction5 = "";

  ResultSet rsSelect;
  ResultSet rsSelect1;
  ResultSet rsSelect2;
  ResultSet rsSelect3;
  ResultSet rsSelect4;
  ResultSet rsSelect5;
  int rsAction = 0;
  int rsAction1 = 0;
  int rsAction2 = 0;
  int rsAction3 = 0;
  int rsAction4 = 0;
  int rsAction5 = 0;



 String fname = request.getParameter("fname");
 String mname = request.getParameter("mname");
 String lname = request.getParameter("lname");
 String contact = request.getParameter("contact");
 String email = request.getParameter("email");
 String messages = request.getParameter("messages");

 	try 
  {
        queryAction = "INSERT INTO `feedback`(`fname`,`mname`,`lname`,`contact_no`,`email`,`message`,`date_entered`) VALUES ('"+fname+"','"+mname+"','"+lname+"','"+contact+"','"+email+"','"+messages+"',NOW())";
        rsAction = stmt.executeUpdate(queryAction);
         if(rsAction>0) 
              {
                %>
                  <script>
                    window.location.href='/RR/home.jsp'; 
                    // swal("Success", "Your Inquiry Successfully send! Thank you!", "success");
                  </script>
                <%
              }

   		out.print(queryAction);
 	}
 	catch(Exception e) 
  {
 		out.print(e);
 	}

%>