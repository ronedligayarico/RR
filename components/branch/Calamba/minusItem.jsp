<%@include file = "../../../../init/initialize.jsp"%>
<%
	String minusquantity = request.getParameter("minusquantity");
	String original_item_id = request.getParameter("original_item_id");
	String quantity = request.getParameter("quantity");
	int itemNum = Integer.parseInt(quantity);
	int minusQuantity = Integer.parseInt(minusquantity);
	int minus = 0;
 	try {
		 	if(itemNum >= minusQuantity)
		 	{
				minus = itemNum-minusQuantity;
		 		queryAction = "UPDATE `original_item` SET `quantity` = '"+minus+"' WHERE `original_item_id` = '"+original_item_id+"'";
		   		rsAction = stmt.executeUpdate(queryAction);
					 if(rsAction>0) 
								{
									%>
										<script>
										  swal("Success", "Item Successfully Update!", "success");
							      loadCalItems(session_user_id);
									 	</script>
									<%
								}
		 	}else
		 	{
				%>
					<script>
					  swal("Warning", "Quantity number must be less than Item quantity!", "warning");
				 	</script>
				<%
		 	}


	   		out.print(queryAction);
	 	}
	 	catch(Exception e) {
	 		out.print(e);
	 	}

%>