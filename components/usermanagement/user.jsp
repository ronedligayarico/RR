 <%@include file= "../../init/initialize.jsp"%>
 <script src="/RR/components/usermanagement/user.js"></script>
 <%
 	String user_type_id = "";
 	String user_type_desc = "";
 %>
 <div class="main main-raised">
    <div class="section section-basic">
      <div class="container">
      
        <div class="col-md-12">
            <div class="form-row">

              <div class="col-md-5">
                <div class="card card-nav-tabs">

                   <div class="card-body" style="box-shadow: 50px;">
			                <div class="card-header card-header-primary">
			                  <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
			                  <div class="nav-tabs-navigation">
			                    <div class="nav-tabs-wrapper">
			                      <ul class="nav nav-tabs" data-tabs="tabs" style="justify-content: center;">
			                      			<b><h5><i class="fas fa-users"></i> User Management</h5></b>
			                      </ul>
			                    </div>
			                  </div>
			                </div>
	                    	<br>
								<div class="form-row">
						            <div class="col-lg-11 col-sm-4">
						              <div class="form-group">
						                <div class="input-group">
						                  <div class="input-group-prepend">
						                    <span class="input-group-text">
						                    <b>Firstname:</b>
						                    </span>
						                  </div>
						                  <input type="text" class="form-control" style="padding-left: 1rem;" id="fname" placeholder="Input Firstname">
						                </div>
						              </div>
						            </div>
					            </div>

								<div class="form-row">
		            	            <div class="col-lg-11 col-sm-4">
						              <div class="form-group">
						                <div class="input-group">
						                  <div class="input-group-prepend">
						                    <span class="input-group-text">
						                     <b>Lastname:</b>
						                    </span>
						                  </div>
						                  <input type="text" style="padding-left: 1rem;" value="" class="form-control" id="lname" placeholder="Input Lastname">
						                </div>
						              </div>
						            </div>
			            		</div>

								<div class="form-row">
		            	            <div class="col-lg-11 col-sm-4">
						              <div class="form-group">
						                <div class="input-group">
						                  <div class="input-group-prepend">
						                    <span class="input-group-text">
						                     <b>Username:</b>
						                    </span>
						                  </div>
						                  <input type="text" style="padding-left: 1rem;" value="" class="form-control" id="username" placeholder="Input Username">
						                </div>
						              </div>
						            </div>
			            		</div>

								<div class="form-row">
		            	            <div class="col-lg-9 col-sm-4">
						              <div class="form-group">
						                <div class="input-group">
						                  <div class="input-group-prepend">
						                    <span class="input-group-text">
						                     <b>Position:</b>
						                    </span>
						                  </div>
						                    <select class="form-control" id="user_type_id" >
				                              <option value="0" selected hidden>Select Position</option>
						                    	<%
						                    		querySelect = "SELECT * FROM `user_type` WHERE `markasdeleted` ='0'";
						                    		rsSelect = stmt.executeQuery(querySelect);
						                    		while(rsSelect.next())
						                    		{
						                    			user_type_id = rsSelect.getString("user_type_id");
						                    			user_type_desc = rsSelect.getString("user_type_desc");
						                    	%>
				                                <option value="<%=user_type_id%>"><%=user_type_desc%></option>
				                                <%
						                    		}
				                                %>
				                              </select>
						                </div>
						              </div>
						            </div>
			            		</div>
			            		<br>
			            		<center><button class="btn btn-primary btn-md" onclick="addUser()">Create User</button></center>
	                </div>
                  </div>
               </div>

	            <div class="col-md-7" style="padding-left: 1rem;">
	            	<div class="table-responsive" id="userMngt" >
                    </div>
	            </div>

            </div>
        </div>
	  </div>
   </div>
</div>
<div id="scriptreader"></div>