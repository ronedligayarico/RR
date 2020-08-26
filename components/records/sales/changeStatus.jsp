<%@include file = "../../../init/initialize.jsp"%>
<%
	String receipt_id = request.getParameter("receipt_id");

 	try {
 		queryAction = "UPDATE `receipt` SET `status` = '1' WHERE `receipt_id` = '"+receipt_id+"'";
   		rsAction = stmt.executeUpdate(queryAction);
			 if(rsAction>0) 
						{
							%>
								<script>
							      location.reload();
							 	</script>
							<%
						}

 	}
 	catch(Exception e) {
 		out.print(e);
 	}

%>