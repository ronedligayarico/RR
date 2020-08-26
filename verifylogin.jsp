<%@ page  contentType="text/html; charset=UTF-8" language="java"  pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ page import="java.io.*,java.util.*"%>
<!-- @include file= "../init/initialize.jsp" -->
<%java.sql.Connection conAdminLogin;
java.sql.Connection conCoreLogin;

conAdminLogin = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/rsws?&autoReconnect=true&failOverReadOnly=false&maxReconnects=10","root", "09236373759");

java.sql.Statement stmtAdminLogin = conAdminLogin.createStatement();
java.sql.Statement stmtAdminLogin1 = conAdminLogin.createStatement();

String querySelect = "";
ResultSet rsSelect = null;
ResultSet rsSelect1 = null;

	String username = request.getParameter("username");
	String password = request.getParameter("password");
	try
	{
		if(username.equals(""))
		{
				%>
				<script>
					swal("Warning!", "Please Enter Username!", "warning");
				</script>
				<%
		}

		else if(password.equals(""))
		{
			%>
				<script>
					swal("Warning!", "Please Enter Password!", "warning");
				</script>
				<%
		}
		else
			{
				querySelect = "SELECT * FROM `rsws`.`users` WHERE `username` = '"+username+"' AND `markasdeleted` = 0";
				rsSelect = stmtAdminLogin1.executeQuery(querySelect);
				if(rsSelect.next())
				{
						querySelect = "SELECT `user_id` FROM `rsws`.`users` WHERE `username` = '"+username+"' AND `password` = MD5('"+password+"') AND `markasdeleted` = 0 ";
						rsSelect1 = stmtAdminLogin.executeQuery(querySelect);
						if(rsSelect1.next())
						{

							String user_id = rsSelect1.getString("user_id");

							session.setAttribute("session_user_id", user_id);

							//String session_user_id = (String)session.getAttribute("session_user_id");
								%>
								<script>
									$(document).ready(function(){
										window.location.href='index.jsp';
									});
									
								</script>
								<%
						}
						else
						{
							%>
							<script>
								$(document).ready(function(){
										swal("Warning!", "Incorrect password", "error");
								
									});
								
							</script>
							<%
						
						}
				
				}
				else
				{
						%>
						<script>
							swal("Warning!", "Incorrect Username or Password!", "error");
						</script>
						<%
				}
			}

	}
	catch(Exception e)
	{
		%>
		<script>
			swal("Error!", "<%=e%>", "error");
		</script>
		<%
	}
%>