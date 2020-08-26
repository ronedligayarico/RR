 <%@include file= "../../init/initialize.jsp"%>
 <%
 	String user_id = request.getParameter("user_id");

try {
 		queryAction = "UPDATE `users` SET `password` =  MD5('password') WHERE `user_id` = '"+user_id+"'";
   		rsAction = stmt.executeUpdate(queryAction);
			 if(rsAction>0) 
						{
							%>
								<script>
								  swal("Success", "User Password Reset Successfully!", "success");
							      loadUser(session_user_id);
							 	</script>
							<%
						}

   		out.print(queryAction);
 	}
 	catch(Exception e) {
 		out.print(e);
 	}

 %>