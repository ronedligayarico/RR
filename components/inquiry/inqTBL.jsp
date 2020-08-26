<%@include file= "../../../init/initialize.jsp"%>
<script src="/RR/components/inquiry/inqTBL.js"></script>
<div class="table-responsive" id="inq" >
<table class="table table" id="inquiryTBL">
<%
	String name = "";
	String contact_no = "";
	String email = "";
	String message = "";
	String markasread = "";
	String feedback_id = "";
%>
		<thead class="thead-light">
		<tr>
			<th>Name</th>
			<th>Message/Concern</th>
			<th>Email</th>
			<th>Contact No.</th>
			<th>Action</th>

		</tr>
		</thead>
				<tbody>
				<%
				querySelect = "SELECT CONCAT(`fname`,' ',`mname`,'.',`lname`)as `name`,`feedback_id`,`markasread`,`contact_no`,`email`,`message` FROM `feedback` WHERE `markasdeleted`='0' ORDER BY `feedback_id` DESC";
				rsSelect = stmt.executeQuery(querySelect);
				while(rsSelect.next())
				{
					name = rsSelect.getString("name");
					contact_no = rsSelect.getString("contact_no");
					email = rsSelect.getString("email");
					message = rsSelect.getString("message");
					markasread = rsSelect.getString("markasread");
					feedback_id = rsSelect.getString("feedback_id");

					if(markasread.equals("0"))
					{

				%>
				<tr style="background-color: #a3a8ad">	
					<td><b><%=name%></b></td>		
					<td style="max-width: 20rem;"><i><%=message%></i></td>	
					<td><%=email%></td>		
					<td><u><%=contact_no%></u></td>		
					<td><button class="btn btn-primary btn-sm" onclick="markasread('<%=feedback_id%>')">mark as read</button><button class="btn btn-sm btn-primary" onclick="markasdeleted('<%=feedback_id%>')"><i class="fas fa-trash-alt"></i></button></td>	
		
				</tr>
				<%
					}
					else
					{
		     	%>
				<tr>	
					<td><b><%=name%></b></td>		
					<td style="max-width: 20rem;"><i><%=message%></i></td>	
					<td><%=email%></td>		
					<td><u><%=contact_no%></u></td>		
					<td><button class="btn btn-primary btn-sm" onclick="markasread('<%=feedback_id%>')" disabled>Already Read</button><button class="btn btn-sm btn-primary" onclick="markasdeleted('<%=feedback_id%>')"><i class="fas fa-trash-alt"></i></button></td>	
		
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

  