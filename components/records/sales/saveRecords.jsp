<%@include file= "../../../init/initialize.jsp"%>
<%
;
	String branch = request.getParameter("branch");
	String datePurchase = request.getParameter("datePurchase");
	String street = request.getParameter("street");
	String province = request.getParameter("province");
	String city = request.getParameter("city");
	String brgy = request.getParameter("brgy");
	String customerNumber = request.getParameter("customerNumber");
	String staffName = request.getParameter("staffName");
	String fname = request.getParameter("fname");
	String mname = request.getParameter("mname");
	String lname = request.getParameter("lname");
    String appliances [] = request.getParameter("appliances").split(",");
    String model [] = request.getParameter("model").split(",");
    String brand [] = request.getParameter("brand").split(",");
	String receipt_id = "";
	String item_warranty_id = "";
	// String appliances_id = request.getParameter("appliances");




		 	queryAction = "INSERT INTO `receipt`(`staff_id`,`branch_id`,`entered_by`,`date_entered`) VALUES ('"+staffName+"','"+branch+"','"+session_user_id+"',NOW())";
	 		rsAction = stmt.executeUpdate(queryAction);
		    if(rsAction>0) 
			{
					querySelect = "SELECT `receipt_id` FROM `receipt`  WHERE `markasdeleted`='0' ORDER BY `receipt_id` DESC  LIMIT 1 ";
					rsSelect = stmt.executeQuery(querySelect);
					if(rsSelect.next())
					{
						receipt_id = rsSelect.getString("receipt_id");
	 	  
						queryAction5 = "INSERT INTO `customer`(`receipt_id`,`fname`,`mname`,`lname`,`custom_contactNo`,`street`,`province_id`,`city_id`,`brgy_id`,`entered_by`,`date_entered`) VALUES ('"+receipt_id+"','"+fname+"','"+mname+"','"+lname+"','"+customerNumber+"','"+street+"','"+province+"','"+city+"','"+brgy+"','"+session_user_id+"',NOW())";
						rsAction5 = stmt5.executeUpdate(queryAction5);
						if(rsAction5>0)
						{
								queryAction4 = "INSERT INTO `invoice`(`receipt_id`) VALUES ('"+receipt_id+"')";
								rsAction4 = stmt4.executeUpdate(queryAction4);

							 for(int i=0; i<appliances.length; i++)
						     {
								querySelect1 = "SELECT `item_warranty_id` FROM `appliances_type` WHERE `markasdeleted` ='0' AND `appliances_type_id` ='"+appliances[i]+"'";
								rsSelect1 = stmt1.executeQuery(querySelect1);
								if(rsSelect1.next())
					    	 	{
					    	 		item_warranty_id = rsSelect1.getString("item_warranty_id");

					    	 		if(item_warranty_id.equals("1"))
						    	 	{

										queryAction1 = "INSERT INTO `item_sold`(`receipt_id`,`model_id`,`brand_id`,`appliances_type_id`,`date_purchase`,`warranty_duration`,`date_entered`,`entered_by`) VALUES ('"+receipt_id+"','"+model[i]+"','"+brand[i]+"','"+appliances[i]+"','"+datePurchase+"','"+datePurchase+"' + INTERVAL 1 WEEK,NOW(),'"+session_user_id+"')";
										rsAction1 = stmt1.executeUpdate(queryAction1);	
							 		}
						    	    else if(item_warranty_id.equals("2"))
						    	 	{

										queryAction1 ="INSERT INTO `item_sold`(`receipt_id`,`model_id`,`brand_id`,`appliances_type_id`,`date_purchase`,`warranty_duration`,`date_entered`,`entered_by`) VALUES ('"+receipt_id+"','"+model[i]+"','"+brand[i]+"',"+appliances[i]+"','"+datePurchase+"','"+datePurchase+"' + INTERVAL 1 MONTH,NOW(),'"+session_user_id+"')";
										rsAction1 = stmt1.executeUpdate(queryAction1);	
		
							 		}
						    	    else if(item_warranty_id.equals("3"))
						    	 	{

										queryAction1 = "INSERT INTO `item_sold`(`receipt_id`,`model_id`,`brand_id`,`appliances_type_id`,`date_purchase`,`warranty_duration`,`date_entered`,`entered_by`) VALUES ('"+receipt_id+"','"+model[i]+"','"+brand[i]+"','"+appliances[i]+"','"+datePurchase+"','"+datePurchase+"' + INTERVAL 6 MONTH,NOW(),'"+session_user_id+"')";
										rsAction1 = stmt1.executeUpdate(queryAction1);	
			
							 		}
						    	    else if(item_warranty_id.equals("4"))
						    	 	{

										queryAction1 = "INSERT INTO `item_sold`(`receipt_id`,`model_id`,`brand_id`,`appliances_type_id`,`date_purchase`,`warranty_duration`,`date_entered`,`entered_by`) VALUES ('"+receipt_id+"','"+model[i]+"','"+brand[i]+"','"+appliances[i]+"','"+datePurchase+"','"+datePurchase+"' + INTERVAL 1 YEAR,NOW(),'"+session_user_id+"')";
										rsAction1 = stmt1.executeUpdate(queryAction1);	
							 		}
							 		else
							 		{
				 					%>
										<script>
										  swal("Warning", "Sorry theres a Problem Please check your information!", "Warning");
									 	</script>
									<%
							 		}
					    	 	}
					    	 }
						}

		 		
	 	    		}


 	    	}

					    if(rsAction1>0) 
							{

								%>
									<script>
									  swal("Success", "Item Successfully Update!", "success");
								      loadSalesRecord(session_user_id);
								 	</script>
								<%
				 			}
					
	

%>