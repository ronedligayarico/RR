<%@include file = "../../../../init/initialize.jsp"%>
<%
	String addquantity = request.getParameter("addquantity");
	String original_item_id = request.getParameter("original_item_id");
	String quantity = request.getParameter("quantity");
	int itemNum = Integer.parseInt(quantity);
	int addingQuantity = Integer.parseInt(addquantity);
	int add = 0;
	

	add = itemNum+addingQuantity;


 	try {
 		queryAction = "UPDATE `original_item` SET `quantity` = '"+add+"' WHERE `original_item_id` = '"+original_item_id+"'";
   		rsAction = stmt.executeUpdate(queryAction);
			 if(rsAction>0) 
						{
							%>
								<script>
								  swal("Success", "Item Successfully Update!", "success");
							      allItems(session_user_id);
							 	</script>
							<%
						}

   		out.print(queryAction);
 	}
 	catch(Exception e) {
 		out.print(e);
 	}

%>