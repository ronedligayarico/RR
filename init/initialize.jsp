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




	 //Audit Trail
	int rsAuditTrail = 0;
	String serverComp = request.getLocalAddr();
	String myComp = request.getRemoteAddr();
	String fileName = request.getRequestURI();
	String ipAddress = request.getRemoteAddr();
	String auditTrail = "";
	String session_user_id = (String)session.getAttribute("session_user_id");
		
	if(session_user_id == null)
		{
		%>

		<script type="text/javascript">
				$(document).ready(function()
				{
	         		window.location.href='/RR/home.jsp';
				});
		</script>
		<%
		}

	%>