 <%@include file= "../../init/initialize.jsp"%>
 <script src="/RR/components/accountsetting/account.js"></script>
 <div class="main main-raised">
    <div class="section section-basic">
      <div class="container">
<%
	String firstname = "";
	String lastname = "";
	String username = "";
	String password = "";
	String name = "";
	String user_type_desc = "";
	String user_pic = "";
	String link = "";
%>
	        <!--                nav tabs               -->

	            <div class="col-md-12">
	              <!-- Tabs with icons on Card -->
	              <div class="card card-nav-tabs">

	                <div class="card-body "  style="background: #8f92de8f;">
	                <div class="card-header card-header-primary">
	                  <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
	                  <div class="nav-tabs-navigation">
	                    <div class="nav-tabs-wrapper">
	                      <ul class="nav nav-tabs" data-tabs="tabs" style="justify-content: center;">
	                      			<b><h2><i class="fas fa-user-circle"></i> Account Setting</h2></b>
	                      </ul>
	                    </div>
	                  </div>
	                </div>
	                  <div class="tab-content text-center">
	                    <div class="tab-pane active" id="accnt 	">
	  			          <div class="col-md-12">
	  			          		<br>
                    			<div class="form-row">
	                                <div class="col-sm-4">
                        			</div>

	                                <div class="col-sm-2">
								 		<%
								 			querySelect = "SELECT `user_pic` FROM `users` WHERE `markasdeleted` ='0' AND `user_id` = '"+session_user_id+"'";
								 			rsSelect = stmt.executeQuery(querySelect);
								 			if(rsSelect.next())
								 			{
								 				user_pic = rsSelect.getString("user_pic");
								 				link = "/RR/userPicture/"+user_pic;
											}
										%>
						              <img src="<%=link%>" alt="Thumbnail Image" style="height: 140px;" class="img-raised rounded-circle img-fluid">
						            </div>

						            <div class="col-sm-2" style="padding-top: 2rem;">
						            	<%
						            	querySelect = "SELECT CONCAT(`firstname`,' ',`lastname`)as name FROM `users` WHERE `markasdeleted`='0' AND `user_id`='"+session_user_id+"'";
										rsSelect = stmt.executeQuery(querySelect);
										if(rsSelect.next())
										{
										name = rsSelect.getString("name");
						            	%>
						            	<h4><b><%=name%></b></h4>
						            	<%
						            	}
						            	%>						            	
						            </div>

	                                <div class="col-sm-5">
	                                </div>
					            </div>
		            			<div class="form-row">
		            				 <div class="col-sm-4" >
                    				 </div>
	            				     <div class="col-sm-2" style="padding-top: .5rem;">
				         				<form  id="myUpload">
				                          <input type="file" id="photoName" name="photoName" aria-describedby="inputGroupFileAddon01">
			                    		</form>
		                             </div>
									 <div class="col-sm-2">
				                          <button class="btn btn-primary btn-sm" onclick="uploadFile()"><i class="fas fa-camera"></i> upload</button>
	                				 </div>

	                				 <div class="col-sm-4" >
	                				 </div>
                    			</div>

	  			          		<br>

								<div class="form-row">
                		        	 <div class="col-sm-2">
                       		         </div>
						                    				
						            <div class="col-lg-3 col-sm-4">
						              <div class="form-group">
						                <div class="input-group">
						                  <div class="input-group-prepend">
						                    <span class="input-group-text">
						                    <b>Firstname:</b>
						                    </span>
						                  </div>
						                  <%
						                  	querySelect = "SELECT `firstname`,`lastname`,`username`,`password`,`user_type_desc` FROM `users` INNER JOIN `user_type` ON `users`.`user_type_id` = `user_type`.`user_type_id` WHERE `users`.`markasdeleted`='0' AND `user_id`='"+session_user_id+"'";
						                  	rsSelect = stmt.executeQuery(querySelect);
						                  	if(rsSelect.next())
						                  	{
						                  		firstname = rsSelect.getString("firstname");
						                  		lastname = rsSelect.getString("lastname");
						                  		username = rsSelect.getString("username");
						                  		password = rsSelect.getString("password");
						                  		user_type_desc = rsSelect.getString("user_type_desc");
						                  	}
						                  %>
						                  <input type="text" class="form-control" style="padding-left: 1rem;  background: white;" value="<%=firstname%>" disabled>
						                </div>
						              </div>
						            </div>

		            	            <div class="col-lg-3 col-sm-4">
						              <div class="form-group">
						                <div class="input-group">
						                  <div class="input-group-prepend">
						                    <span class="input-group-text">
						                     <b>Lastname:</b>
						                    </span>
						                  </div>
						                  <input type="text" style="padding-left: 1rem; background: white;" value="<%=lastname%>" class="form-control" disabled>
						                </div>
						              </div>
						            </div>
				               			   <a href="#" style="padding-top: .5rem; color:#171dc2" onclick="editName()"><i class="fas fa-pencil-alt"><u>Edit Name</u></i></a>

						             <div class="col-sm-2">
	                   		         </div>
			            		</div>

				                  	<div>
				                  	</div>

                    			<div class="form-row">
                		        	 <div class="col-sm-2">
                       		         </div>

		            	            <div class="col-lg-3 col-sm-4">
						              <div class="form-group">
						                <div class="input-group">
						                  <div class="input-group-prepend">
						                    <span class="input-group-text">
						                     <b>Username:</b>
						                    </span>
						                  </div>
						                  <input type="text" style="padding-left: 1rem;  background: white;" value="<%=username%>" class="form-control" disabled>
						                </div>
						              </div>
						            </div>

					                 <div class="col-lg-3 col-sm-4">
						              <div class="form-group">
						                <div class="input-group">
						                  <div class="input-group-prepend">
						                    <span class="input-group-text">
						                      <b>Pasword :</b>
						                    </span>
						                  </div>
						                  <input type="password" style="padding-left: 1rem;  background: white;" value="Mypassword" class="form-control" disabled>
						                </div>
						              </div>
						            </div>
				               			   <a href="#" style="padding-top: .5rem; color:#171dc2" onclick="editPass()"><i class="fas fa-pencil-alt"><u>Edit Password</u></i></a>

						             <div class="col-sm-3">
	                   		         </div>
			            		</div>

				                  
	  			          		<br>

                    			<div class="form-row">
                		        	 <div class="col-sm-4">
                       		         </div>

		                        	 <div class="col-lg-3 col-sm-4">
						              <div class="form-group">
						                <div class="input-group">
						                  <div class="input-group-prepend">
						                    <span class="input-group-text">
						                     <b>Position:</b>
						                    </span>
						                  </div>
						                  <input type="text" style="padding-left: 1rem;  background: white;" value="<%=user_type_desc%>" class="form-control" disabled>
						                </div>
						              </div>
						             </div>

                    				 <div class="col-sm-4" >
                    				 </div>
                    			</div>
                    			<br>
			              </div>
	                    </div>
	                  </div>
              		 </div>
	                </div>
	              <!-- End Tabs with icons on Card -->
	            </div>
      </div>
    </div>
  </div>
  <div id="upload"></div>
  <div id="execute_save"></div>