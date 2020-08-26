<%@include file = "../../../init/initialize.jsp"%>
<%
	String item_sold_id = request.getParameter("item_sold_id");

 	try {
 		queryAction = "UPDATE `item_sold` SET `markasused` = '1' WHERE `item_sold_id` = '"+item_sold_id+"'";
   		rsAction = stmt.executeUpdate(queryAction);
			 if(rsAction>0) 
						{
							%>
								<script>
								  swal("Success", "Warranty Updated!", "success");
          						  $('#recordModal').modal('hide');
							      loadSalesRecord(session_user_id);
							 	</script>
							<%
						}

   		out.print(queryAction);
 	}
 	catch(Exception e) {
 		out.print(e);
 	}

%>