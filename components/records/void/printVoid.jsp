<%@include file= "../../../init/initialize.jsp"%>
<%
	String receipt_id = "";
	String receipt_no = "";
	String invoice_id = "";
	String branch_name = "";
	String date_purchase = "";
	String warranty_duration = "";
	String warrantyEnd = "";
	String duration = "";
	String item_warranty_duration = "";
	String item_sold_id = "";
	String cname = "";
	String year = "";
	String branch_desc = "";
	String invoice_year = "";
	int count_item = 0;
	int count_item1 = 0;
	int count_item2 = 0;
%>
<h1 style="text-align: center;">Void Records</h1>
<table class="table table" id="voidTBL">

		<thead class="thead-light">
		<tr>
			<th>Receipt No.</th>
			<th>Invoice No.</th>
			<th>Customer Name</th>
			<th>Branch</th>
			<th>Transaction Date</th>
			<th>Warranty Duration</th>
		</tr>
		</thead>
				<tbody>
				<%
					querySelect = "SELECT EXTRACT(YEAR FROM `receipt`.`date_entered`)as `year`,`branch_desc`,CONCAT(`fname`,' ',`mname`,'.',' ',`lname`)as `cname`, `receipt`.`receipt_id`,EXTRACT(YEAR FROM `invoice`.`date_entered`)as `invoice_year`,`invoice`.`invoice_id`,`branch_name` FROM `receipt` INNER JOIN `branch` ON `receipt`.`branch_id`=`branch`.`branch_id` INNER JOIN `customer` ON `receipt`.`receipt_id` = `customer`.`receipt_id` INNER JOIN `invoice` ON `receipt`.`receipt_id`=`invoice`.`receipt_id` WHERE `receipt`.`markasdeleted`='0' AND `receipt`.`status`='1' ORDER BY `receipt`.`date_entered` DESC";
					rsSelect = stmt.executeQuery(querySelect);
					while(rsSelect.next())
					{
						receipt_id = rsSelect.getString("receipt_id");
						cname = rsSelect.getString("cname");
						branch_name = rsSelect.getString("branch_name");
						invoice_id = rsSelect.getString("invoice_id");
						year = rsSelect.getString("year");
						branch_desc = rsSelect.getString("branch_desc");
						invoice_year = rsSelect.getString("invoice_year");

							querySelect1 = "SELECT DATE_FORMAT(`date_purchase`,'%M,%d,%Y')as date_purchase,`warranty_duration`,DATE_FORMAT(`warranty_duration`,'%M,%d,%Y')as duration,`appliances_type`.`item_warranty_id`,`item_warranty_duration` FROM `item_sold` INNER JOIN `appliances_type` ON `item_sold`.`appliances_type_id`=`appliances_type`.`appliances_type_id` INNER JOIN `item_warranty` ON `appliances_type`.`item_warranty_id`=`item_warranty`.`item_warranty_id` WHERE `item_sold`.`markasdeleted` ='0' AND `receipt_id`='"+receipt_id+"' ORDER BY `item_warranty_id` DESC LIMIT 1";
							rsSelect1 = stmt1.executeQuery(querySelect1);
							if(rsSelect1.next())
							{
								date_purchase = rsSelect1.getString("date_purchase");
								warranty_duration = rsSelect1.getString("warranty_duration");
								duration = rsSelect1.getString("duration");
								item_warranty_duration = rsSelect1.getString("item_warranty_duration");

								SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

								String datenow = formatter.format(new Date());
								Date dateToday = formatter.parse(datenow);
								Date dateDuration = formatter.parse(warranty_duration);

								
				%>
				<tr>	

					<td><%=year%>-<%=receipt_id%>-<%=branch_desc%></td>
					<td><%=invoice_year%>-<%=invoice_id%></td>
					<td><%=cname%></td>
					<td><%=branch_name%></td>
					<td><%=date_purchase%></td>
					<td><%=duration%></td>
					
		
				</tr>
				<%
							}

					}
				%>
				</tbody>
</table>