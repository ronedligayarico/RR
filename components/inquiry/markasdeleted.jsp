 <%@include file= "../../init/initialize.jsp"%>
 <%
 	String id = request.getParameter("id");

try {
 		queryAction = "UPDATE `feedback` SET `markasdeleted` = '1' WHERE `feedback_id` = '"+id+"'";
   		rsAction = stmt.executeUpdate(queryAction);
			 if(rsAction>0) 
						{
							%>
								<script>
								  swal("Success", "Successfully deleted!", "success");
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