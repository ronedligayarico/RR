<%@include file= "../../../init/initialize.jsp"%>
<%
String oldpass = request.getParameter("oldpass");
String newpass = request.getParameter("newpass");
String retypepass = request.getParameter("retypepass");
String password = "";
		
		querySelect = "SELECT `password` FROM `users` WHERE `markasdeleted`='0' AND `user_id` ='"+session_user_id+"' AND `password`= MD5('"+oldpass+"')";
		rsSelect = stmt.executeQuery(querySelect);
		while(rsSelect.next())
		{
			password = rsSelect.getString("password");
		}
				if(oldpass.equals(""))
				{
						%>
						<script>
								swal("Warning!", "Please enter old password!", "warning");
						</script>
						<%	
				}
				else if(password.equals(""))
				{
						%>
						<script>
								swal("Warning!", "Incorrect old password!", "error");
						</script>
						<%	
				}
				else if(newpass.equals(""))
				{
						%>
						<script>
								swal("Warning!", "Please enter New password!", "warning");
						</script>
						<%	
				}
				else if(retypepass.equals(""))
				{
						%>
						<script>
								swal("Warning!", "Please Retype New password!", "warning");
						</script>
						<%	
				}
				else if(!newpass.equals(retypepass))
				{
						%>
						<script>
								swal("Warning!", "Password not match!", "error");
						</script>
						<%	
				}
				else
				{
					queryAction = "UPDATE `users` SET `password` =  MD5('"+newpass+"') WHERE `user_id` = '"+session_user_id+"'";
					rsAction = stmt.executeUpdate(queryAction);
						if(rsAction>0) 
						{
							%>
								<script>
								   swal("Updated!", "Your password has been Change!", "success");   
				   	                cancel(session_user_id);
							 	</script>
							<%
						}
				}

 %>