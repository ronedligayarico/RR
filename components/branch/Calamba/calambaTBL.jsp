<%@include file= "../../../init/initialize.jsp"%>
<%
	String original_item_id	= "";
	String original_item_pic = "";
	String original_item_name = "";
	String original_item_price = "";
	String appliances_type_name = "";
	String branch_name = "";
	int quantity = 0;
%>
<table class="table table" id="calambaTBL">
		<thead class="thead-light">
		<tr>
			<th>Item</th>
			<th>Appliance Parts</th>
			<th>Item Name</th>
			<th>Branch</th>
			<th>Status</th>
			<th>Quantity</th>
			<th>Action</th>
		</tr>
		</thead>
				<tbody>
				<%
					querySelect = "SELECT 	`original_item_id`,`original_item_pic`,`quantity`,`original_item_name`,`branch_name`,`appliances_type_name` FROM `original_item` INNER JOIN `branch` ON `original_item`.`branch_id`=`branch`.`branch_id` INNER JOIN `appliances_type` ON `original_item`.`appliances_type_id`=`appliances_type`.`appliances_type_id` WHERE `original_item`.`markasdeleted`='0' AND `original_item`.`branch_id`='2'";
					rsSelect = stmt.executeQuery(querySelect);
					while(rsSelect.next())
					{
						original_item_id = rsSelect.getString("original_item_id");
						original_item_pic = rsSelect.getString("original_item_pic");
						original_item_name = rsSelect.getString("original_item_name");
						appliances_type_name = rsSelect.getString("appliances_type_name");
						branch_name = rsSelect.getString("branch_name");
						quantity = rsSelect.getInt("quantity");

				%>
				<tr>	
				<td><img src="../../../RR/components/branch/itemUpload/<%=original_item_pic%>" alt="Rounded Image" class="rounded img-fluid" style="height: 110px; width: 110px;"><div id="myHiddenItemID" hidden><%=original_item_id%></div></td>
				<td style="padding-top: 3rem;"><%=appliances_type_name%></td>
				<td style="padding-top: 3rem;"><%=original_item_name%></td>
				<td style="padding-top: 3rem;"><%=branch_name%></td>
				<%
					if(quantity > 0)
					{
				%>
				<td style="padding-top: 3rem;"><span class="badge badge-pill badge-success">Available</span></td>
				<%
					}
					else
					{
				%>
				<td style="padding-top: 3rem;"><span class="badge badge-pill badge-danger">No Stack</span></td>
				<%	
					}
				%>
				<td style="padding-top: 3rem;"><%=quantity%></td>
				<%
					if(quantity <= 0)
					{
				%>
				<td style="padding-top: 3rem;">
				<button class="btn btn-primary btn-sm" onclick="plusModal('<%=quantity%>','<%=original_item_id%>')"><i class="fas fa-plus"></i></button>
				or
				<button class="btn btn-rose btn-sm" onclick="minusModal('<%=quantity%>','<%=original_item_id%>')" disabled><i class="fas fa-minus"></i></button>
				<!-- <button class="btn" onclick="confirmDeltype()"><i class="fas fa-trash-alt"></i>	Remove</button>	 -->
				</td>
				<%
					}
					else
						{
				%>
					<td style="padding-top: 3rem;">
					<button class="btn btn-primary btn-sm" onclick="plusModal('<%=quantity%>','<%=original_item_id%>')"><i class="fas fa-plus"></i></button>
					or
					<button class="btn btn-rose btn-sm" onclick="minusModal('<%=quantity%>','<%=original_item_id%>')"><i class="fas fa-minus"></i></button>
					<!-- <button class="btn" onclick="confirmDeltype()"><i class="fas fa-trash-alt"></i>	Remove</button>	 -->
					</td>
					<%
						}
					%>
				</tr>
				<%
					}
				%>
				</tbody>
</table>


<script type="text/javascript">
$(document).ready(function() {
    $('#calambaTBL').DataTable({
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
<div id="scriptRead"></div>