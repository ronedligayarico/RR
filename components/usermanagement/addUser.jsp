 <%@include file= "../../init/initialize.jsp"%>
 <%
 	String fname = request.getParameter("fname");
 	String lname = request.getParameter("lname");
 	String username = request.getParameter("username");
 	String user_type_id = request.getParameter("user_type_id");

try {
 		queryAction = "INSERT INTO `users` (`firstname`,`lastname`,`username`,`user_pic`,`password`,`user_type_id`,`entered_by`,`date_entered`) VALUES ('"+fname+"','"+lname+"','"+username+"','default.jpg',MD5('password'),'"+user_type_id+"','"+session_user_id+"',NOW())";
   		rsAction = stmt.executeUpdate(queryAction);
			 if(rsAction>0) 
						{
							%>
								<script>
								  swal("Success", "Account Created Successfully!", "success");
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