<%@include file = "../../../init/initialize.jsp"%>
<%
	String fName1 = request.getParameter("fName1");
	String fName2 = request.getParameter("fName2");
	String fName3 = request.getParameter("fName3");
	String wfname = request.getParameter("wfname");
	String wmname = request.getParameter("wmname");
	String wlname = request.getParameter("wlname");
	String warrantyContact = request.getParameter("warrantyContact");
	String warrantyEmail = request.getParameter("warrantyEmail");
	String warrantySerial = request.getParameter("warrantySerial");
	String warrantyMessage = request.getParameter("warrantyMessage");
	String warrantyProduct = request.getParameter("warrantyProduct");
	String warranty_tbl_id = request.getParameter("warranty_tbl_id");



		 		queryAction = "INSERT INTO `warranty_concern` (`warranty_customer_fname`,`warranty_customer_mname`,`warranty_customer_lname`,`warranty_contact`,`warranty_email`,`warranty_serial_no`,`warranty_message`,`warranty_prod_name`,`date_entered`) VALUES ('"+wfname+"','"+wmname+"','"+wlname+"','"+warrantyContact+"','"+warrantyEmail+"','"+warrantySerial+"','"+warrantyMessage+"','"+warrantyProduct+"',NOW())";
		   		rsAction = stmt.executeUpdate(queryAction);
					 if(rsAction>0) 
								{
									querySelect = "SELECT `warranty_tbl_id` FROM `warranty_concern` ORDER BY `warranty_tbl_id` DESC LIMIT 1";
									rsSelect = stmt.executeQuery(querySelect);
									if(rsSelect.next())
									{
										warranty_tbl_id = rsSelect.getString("warranty_tbl_id");

										 		queryAction1 = "INSERT INTO `warranty_picture` (`warranty_tbl_id`,`warranty_pic_desc`,`date_entered`) VALUES ('"+warranty_tbl_id+"','"+fName1+"',NOW())";
										   		rsAction1 = stmt1.executeUpdate(queryAction1);
													 if(rsAction1>0) 
													 {

														queryAction2 = "INSERT INTO `warranty_picture` (`warranty_tbl_id`,`warranty_pic_desc`,`date_entered`) VALUES ('"+warranty_tbl_id+"','"+fName2+"',NOW())";
														rsAction2 = stmt2.executeUpdate(queryAction2);
														if(rsAction2>0) 
														{
															queryAction3 = "INSERT INTO `warranty_receipt` (`warranty_tbl_id`,`warranty_receipt_pic`,`date_entered`) VALUES ('"+warranty_tbl_id+"','"+fName3+"',NOW())";
															rsAction3 = stmt3.executeUpdate(queryAction3);	
															if(rsAction3>0)
															{
															%>
															<script type="text/javascript">
																	$(document).ready(function(){
																		window.location.href='/RR/home.jsp'; 
																	});
															</script>
															<%	
															}
														}
														
													 }
									}
								}




%>