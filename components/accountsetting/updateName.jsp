<%@include file = "../../../init/initialize.jsp"%>
<%
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");

 	try {
 		queryAction = "UPDATE `users` SET `firstname` = '"+firstname+"', `lastname` = '"+lastname+"' WHERE `user_id` = '"+session_user_id+"'";
   		rsAction = stmt.executeUpdate(queryAction);
			 if(rsAction>0) 
						{
							%>
								<script>
									$('#reloadname').load('/RR/components/accountsetting/reloadName.jsp');
								  swal("Success", "Name Successfully Update!", "success");
							      cancel(session_user_id);
							 	</script>
							<%
						}

   		out.print(queryAction);
 	}
 	catch(Exception e) {
 		out.print(e);
 	}

%>