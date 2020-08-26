<%@include file= "../../../init/initialize.jsp"%>
<script src="/RR/components/records/sales/salesrecord.js"></script>
<%
	String receipt_id = "";
	String receipt_no = "";
	String invoice_id = "";
	String invoice_year = "";
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
	int count_item = 0;
	int count_item1 = 0;
	int count_item2 = 0;
%>
<button class="btn btn-danger" onclick="printValid()" style="float: right"><i class="fas fa-print"></i> Print Report</button>
<div class="table-responsive" id="Sales" >

<table class="table table" id="salesTBL">

		<thead class="thead-light">
		<tr>
			<th>Receipt No.</th>
			<th>Invoice No.</th>
			<th>Customer Name</th>
			<th>Branch</th>
			<th>Transaction Date</th>
			<th>Warranty Duration</th>
			<th>Status</th>
			<th>Action</th>
		</tr>
		</thead>
				<tbody>
				<%
					querySelect = "SELECT EXTRACT(YEAR FROM `receipt`.`date_entered`)as `year`,`branch_desc`,CONCAT(`fname`,' ',`mname`,'.',' ',`lname`)as `cname`, `receipt`.`receipt_id`,EXTRACT(YEAR FROM `invoice`.`date_entered`)as `invoice_year`,`invoice`.`invoice_id`,`branch_name` FROM `receipt` INNER JOIN `branch` ON `receipt`.`branch_id`=`branch`.`branch_id` INNER JOIN `customer` ON `receipt`.`receipt_id` = `customer`.`receipt_id` INNER JOIN `invoice` ON `receipt`.`receipt_id`=`invoice`.`receipt_id` WHERE `receipt`.`markasdeleted`='0' AND `receipt`.`status`='0' ORDER BY `receipt`.`date_entered` DESC";
					rsSelect = stmt.executeQuery(querySelect);
					while(rsSelect.next())
					{
						receipt_id = rsSelect.getString("receipt_id");
						cname = rsSelect.getString("cname");
						branch_name = rsSelect.getString("branch_name");
						invoice_id = rsSelect.getString("invoice_id");
						invoice_year = rsSelect.getString("invoice_year");
						year = rsSelect.getString("year");
						branch_desc = rsSelect.getString("branch_desc");

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
					<%
						querySelect3 = "SELECT `warranty_duration`,`item_sold_id` FROM `item_sold` WHERE `markasdeleted` ='0' AND `markasused` ='0' AND `receipt_id` = '"+receipt_id+"'";
						rsSelect3 = stmt3.executeQuery(querySelect3);
						while(rsSelect3.next())
						{
							warrantyEnd = rsSelect3.getString("warranty_duration");
							item_sold_id = rsSelect3.getString("item_sold_id");


							Date warrantyend = formatter.parse(warrantyEnd);

							if(dateToday.after(warrantyend))
							{
								%>
									<script type="text/javascript">
										$(document).ready(function()
										{
											changeMarkasused('<%=item_sold_id%>');
										})
									</script>
								<%
							}
							

						}

							querySelect2 = "SELECT COUNT(*)as count_item FROM `item_sold` WHERE `markasdeleted` ='0' AND `markasused`='0' AND `receipt_id`='"+receipt_id+"'";
							rsSelect2 = stmt2.executeQuery(querySelect2);
							if(rsSelect2.next())
							{
								count_item = rsSelect2.getInt("count_item");
							}

							querySelect4 = "SELECT COUNT(*)as count_item FROM `item_sold` WHERE `markasdeleted` ='0' AND `markasused`='1' AND `receipt_id`='"+receipt_id+"'";
							rsSelect4 = stmt4.executeQuery(querySelect4);
							if(rsSelect4.next())
							{
								count_item1 = rsSelect4.getInt("count_item");
							}
							querySelect5 = "SELECT COUNT(*)as count_item FROM `item_sold` WHERE `markasdeleted` ='0' AND `markasused`='2' AND `receipt_id`='"+receipt_id+"'";
							rsSelect5 = stmt5.executeQuery(querySelect5);
							if(rsSelect5.next())
							{
								count_item2 = rsSelect5.getInt("count_item");
							}

							//Conditioning of Status
							if(dateToday.after(dateDuration))
							{
								%>
								<td><span class="badge badge-pill badge-rose">Void</span></td>
											<script type="text/javascript">
												changeStatus('<%=receipt_id%>');
											</script>
								<%
							}
							else
							{
								if(count_item <= 0)
								{
									%>
									<td><span class="badge badge-pill badge-rose">Void</span></td>
											<script type="text/javascript">
												changeStatus('<%=receipt_id%>');
											</script>
									<%
								}
								else 
								{
									if(count_item1 >= 0)
									{
										%>
										<td><span class="badge badge-pill badge-success">Valid</span></td>
										<%
									}
									else
									{
										if(count_item2 >= 0)
										{
											%>
											<td><span class="badge badge-pill badge-rose">Void</span></td>
											<script type="text/javascript">
												changeStatus('<%=receipt_id%>');
											</script>
											<%
										}
										else
										{
											%>
											<td><span class="badge badge-pill badge-warning">Error</span></td>
											<%
										}
									}

								}
							}

				
					%>
					<td>
					<button class="btn btn-primary btn-sm" onclick="viewRecords('<%=receipt_id%>')"><i class="fas fa-eye"></i> View</button>
					</td>
		
				</tr>
				<%
							}

					}
				%>
				</tbody>
</table>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $('#salesTBL').DataTable({
        initComplete: function () 
        {
            this.api().columns().every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                    .appendTo( $(column.footer()).empty() )
                    .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
        },

         "ordering": false,
         pageLength : 5,
         lengthMenu: [[5, 10, 20, -1], [5, 10, 20, 50]]
    } );
} );
</script>
<div id="ReadMe"></div>
	    	          		

  