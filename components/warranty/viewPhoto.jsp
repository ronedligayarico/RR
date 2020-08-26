<%@include file= "../../../init/initialize.jsp"%>
<%
	String warranty_tbl_id = request.getParameter("warranty_tbl_id");
	String warranty_pic_desc = "";
	String warranty_customer_name = "";
	String warranty_receipt_pic = "";
%>
<div class="main main-raised">
  <div class="section section-basic">
    <div class="container">
			<!-- Content Row -->
        <div class="title">
    	<%
		querySelect = "SELECT *, CONCAT(`warranty_customer_fname`,' ',`warranty_customer_mname`,'.',' ',`warranty_customer_lname`)as `warranty_customer_name`  FROM `warranty_concern` WHERE `markasdeleted`='0' AND `warranty_tbl_id`='"+warranty_tbl_id+"'";
		rsSelect = stmt.executeQuery(querySelect);
		if(rsSelect.next())
		{
			warranty_customer_name = rsSelect.getString("warranty_customer_name");
		}

    	%>	
    	<div class="form-row">
    		<div class="col-md-6">
	            <h3><i>Customer Valid 2x2Picture </i></h3>
		     	<h5>Customer Name: <b><%=warranty_customer_name%></b></h5>
    		</div>
    		<div class="col-md-6" style="padding-left: 1rem;">
    			<h3><i>Receipt Photo</i></h3>
    		</div>
    	</div>

  		  
        </div>
   	<div class="form-row">
   <%
		querySelect1 = "SELECT `warranty_pic_desc` FROM `warranty_picture` WHERE `markasdeleted`='0' AND `warranty_tbl_id` ='"+warranty_tbl_id+"'";
		rsSelect1 = stmt1.executeQuery(querySelect1);
		while(rsSelect1.next())
		{
			warranty_pic_desc = rsSelect1.getString("warranty_pic_desc");

	%>
			<div class="col-md-3">
			<img src="/RR/components/warranty/uploadID/<%=warranty_pic_desc%>" alt="Rounded Image" class="rounded img-fluid" style="height: 210px; width: 210px;">
			</div>


	<%
		}

		querySelect = "SELECT `warranty_receipt_pic` FROM `warranty_receipt` WHERE `markasdeleted`='0' AND `warranty_tbl_id` ='"+warranty_tbl_id+"'";
		rsSelect = stmt.executeQuery(querySelect);
		while(rsSelect.next())
		{
			warranty_receipt_pic = rsSelect.getString("warranty_receipt_pic");
	%>
    		

			<div class="col-md-3" style="padding-left: 1rem;">
			<img src="/RR/components/warranty/receiptPhoto/<%=warranty_receipt_pic%>" alt="Rounded Image" class="rounded img-fluid" style="height: 210px; width: 210px;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>

	<%
		}
	%>
	</div>
	<br>
	<br>
	<br>
	<br>
    </div>
  </div>
</div>

