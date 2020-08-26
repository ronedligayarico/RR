<%@include file = "../../../init/initialize.jsp"%>
<%
	String fName = request.getParameter("fName"); 

 	try {
 		queryAction = "UPDATE `users` SET `user_pic` = '"+fName+"' WHERE `user_id` = '"+session_user_id+"'";
   		rsAction = stmt.executeUpdate(queryAction);
			 if(rsAction>0) 
						{
							%>
								<script>
  							      $('#reloadpic').load('/RR/components/accountsetting/reloadPic.jsp');
								  swal("Sucess", "Profile Picture updated!", "success");
							      reloadAccntSettng(session_user_id);
							 	</script>
							<%
						}

   		out.print(queryAction);
 	}
 	catch(Exception e) {
 		out.print(e);
 	}

%>