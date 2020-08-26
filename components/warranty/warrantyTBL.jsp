<%@include file= "../../../init/initialize.jsp"%>
<script src="/RR/components/warranty/warrantyTBL.js"></script>
<div class="table-responsive" id="inq" >
<table class="table table" id="inquiryTBL">
<%
	String warranty_tbl_id = "";
	String warranty_customer_name = "";
	String warranty_contact = "";
	String warranty_serial_no = "";
	String markasread = "";
	String warranty_message = "";
	String warranty_prod_name = "";
	String warranty_email = "";
%>
		<thead class="thead-light">
		<tr>
			<th>Name</th>
			<th>Message/Concern</th>
			<th>Product Name</th>
			<th>Product Serial no.</th>
			<th>Email</th>
			<th>Contact No.</th>
			<th>Customer picture</th>
			<th>Action</th>

		</tr>
		</thead>
				<tbody>
				<%
				querySelect = "SELECT CONCAT(`warranty_customer_fname`,' ',`warranty_customer_mname`,'.',`warranty_customer_lname`)as `warranty_customer_name`,`warranty_tbl_id`,`markasread`,`warranty_contact`,`warranty_email`,`warranty_serial_no`,`warranty_message`,`warranty_prod_name` FROM `warranty_concern` WHERE `markasdeleted`='0' ORDER BY `warranty_tbl_id` DESC";
				rsSelect = stmt.executeQuery(querySelect);
				while(rsSelect.next())
				{
					warranty_tbl_id = rsSelect.getString("warranty_tbl_id");
					warranty_customer_name = rsSelect.getString("warranty_customer_name");
					warranty_contact = rsSelect.getString("warranty_contact");
					warranty_email = rsSelect.getString("warranty_email");
					warranty_serial_no = rsSelect.getString("warranty_serial_no");
					markasread = rsSelect.getString("markasread");
					warranty_message = rsSelect.getString("warranty_message");
					warranty_prod_name = rsSelect.getString("warranty_prod_name");

					if(markasread.equals("0"))
					{

				%>
				<tr style="background-color: #a3a8ad">	
					<td><b><%=warranty_customer_name%></b></td>		
					<td style="width: 1rem;"><i><%=warranty_message%></i></td>	
					<td><i><%=warranty_prod_name%></i></td>	
					<td><i><%=warranty_serial_no%></i></td>	
					<td><%=warranty_email%></td>		
					<td><u><%=warranty_contact%></u></td>	
					<td>
						<a href="#" target="blank_" onclick="clickMe('<%=warranty_tbl_id%>')">Click me!</a>
					</td>		
					<td><button class="btn btn-primary btn-sm" onclick="markasread('<%=warranty_tbl_id%>')">mark as read</button><button class="btn btn-sm btn-primary" onclick="markasdeleted('<%=warranty_tbl_id%>')"><i class="fas fa-trash-alt"></i></button></td>	
		
				</tr>
				<%
					}
					else
					{
		     	%>
				<tr>	
					<td><b><%=warranty_customer_name%></b></td>		
					<td><i><%=warranty_message%></i></td>	
					<td><i><%=warranty_prod_name%></i></td>	
					<td><i><%=warranty_serial_no%></i></td>	
					<td><%=warranty_email%></td>		
					<td><u><%=warranty_contact%></u></td>	
					<td>
						<a href="#" target="blank_" onclick="clickMe('<%=warranty_tbl_id%>')">Click me!</a>
					</td>		
					<td><button class="btn btn-primary btn-sm" onclick="markasread('<%=warranty_tbl_id%>')">mark as read</button><button class="btn btn-sm btn-primary" onclick="markasdeleted('<%=warranty_tbl_id%>')"><i class="fas fa-trash-alt"></i></button></td>	
		
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
    $('#inquiryTBL').DataTable({
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
         pageLength : 15,
         lengthMenu: [[5, 10, 20, -1], [5, 10, 20, 50]]
    } );
} );
</script>
<div id="thisscript"></div>	    	          		

  