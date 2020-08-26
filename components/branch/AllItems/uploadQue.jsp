<%@include file = "../../../../init/initialize.jsp"%>
<%
	String fName = request.getParameter("fName");
	String item_name = request.getParameter("item_name");
	String appliances_type_id = request.getParameter("appliances_type_id");
	String branch_id = request.getParameter("branch_id");

 	try {
 		queryAction = "INSERT INTO `original_item` (`original_item_pic`,`original_item_name`,`branch_id`,`appliances_type_id`,`entered_by`,`date_entered`) VALUES ('"+fName+"','"+item_name+"','"+branch_id+"','"+appliances_type_id+"','"+session_user_id+"',NOW())";
   		rsAction = stmt.executeUpdate(queryAction);
			 if(rsAction>0) 
						{
							%>
								<script>
						         $('#allModal').modal('hide'); 
								  swal("Success", "Item Added Successfully!", "success");
							      loadAllitem(session_user_id);
							 	</script>
							<%
						}

   		out.print(queryAction);
 	}
 	catch(Exception e) {
 		out.print(e);
 	}


%>