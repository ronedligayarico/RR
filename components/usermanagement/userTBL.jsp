<%@include file= "../../init/initialize.jsp"%>
 <%
    String name = "";
    String username = "";
    String user_type_desc = "";
    String user_id = "";
 %>
<table class="table table" id="userTBL">
		<thead class="thead-light">
		<tr>
			<th>Name</th>
			<th>Username</th>
			<th>Position</th>
			<th>Reset Password</th>
		</tr>
		</thead>
				<tbody>
                  <%
                    querySelect = "SELECT CONCAT(`firstname`,' ',`lastname`)as name, `user_id`,`username`,`user_type_desc` FROM `users` INNER JOIN `user_type` ON `users`.`user_type_id` = `user_type`.`user_type_id` WHERE `users`.`markasdeleted` ='0'";
                    rsSelect = stmt.executeQuery(querySelect);
                    while(rsSelect.next())
                    {
                        name = rsSelect.getString("name");
                        username = rsSelect.getString("username");
                        user_type_desc = rsSelect.getString("user_type_desc");
                        user_id = rsSelect.getString("user_id");
                  %>
				<tr>	
					<td><%=name%></td>
					<td><%=username%></td>
					<td><%=user_type_desc%></td>
					<td style="padding-left: 3rem;"><a href="#" onclick="resetPass('<%=user_id%>')"><i class="fas fa-sync-alt"></i></a></td>
				</tr>
                  <%
                    }
                  %>
				</tbody>
</table>


<script type="text/javascript">
$(document).ready(function() {
    $('#userTBL').DataTable({
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
         pageLength : 4,
         lengthMenu: [[4, 10, 20, -1], [5, 10, 20, 50]]
    } );
} );
</script>