<%@include file = "../../../init/initialize.jsp"%>
<%
	String item_sold_id = request.getParameter("item_sold_id");

 	try {
 		queryAction = "UPDATE `item_sold` SET `markasused` = '2' WHERE `item_sold_id`='"+item_sold_id+"'";
   		rsAction = stmt.executeUpdate(queryAction);
		
 	}
 	catch(Exception e) {
 		out.print(e);
 	}

%>