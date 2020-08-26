 <%@include file= "../../init/initialize.jsp"%>
 <%
 	String id = request.getParameter("id");

try {
 		queryAction = "UPDATE `feedback` SET `markasread` = '1' WHERE `feedback_id` = '"+id+"'";
   		rsAction = stmt.executeUpdate(queryAction);
			 if(rsAction>0) 
						{
							%>
								<script>
								  swal("Success", "Successfully mark as read!", "success");
							      loadinquiry(); 
							 	</script>
							<%
						}

   		out.print(queryAction);
 	}
 	catch(Exception e) {
 		out.print(e);
 	}

 %>