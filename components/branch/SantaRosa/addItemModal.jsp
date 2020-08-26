   <%@include file= "../../../init/initialize.jsp"%>
   <%
      String appliances_type_id = "";
      String appliances_type_name = "";
      String item_warranty_id = "";
      String item_warranty_duration = "";
      String branch_id = "";
      String branch_name = "";
   %>
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" style="color: #171dc2;"><b>Add New Item</b></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="material-icons"><span aria-hidden="true">&times;</span></i>
          </button>
        </div>
        <div class="modal-body">
          <div class="col-lg-12" >

                  <form  id="myUpload">
                    <div class="form-row" style="padding-bottom: 1rem;">
                       <div class="col-sm-2" style="padding-top: .3rem;">
                          <label style="color: #171dc2;"><b>Item Pic</b></i></label>
                        </div>
                       <div class="col-sm-6" >
                          <input type="file" class="form-control inputFileVisible" id="photoName" name="photoName" aria-describedby="inputGroupFileAddon01">
                       </div>
                    </div>
                  </form>

                    <div class="form-row">
                        <div class="col-lg-7" >
                            <div class="form-group">
                              <label for="exampleInput1" class="bmd-label-floating" style="color: #171dc2;"><b>Item Name</b></label>
                              <input type="text" class="form-control" id="item_name">
                              <span class="bmd-help">Input Item Name.</span>
                           </div>
                       </div>

                        <div class="col-lg-1" >
                        </div>

                        <div class="col-lg-3" >

                         </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="exampleInput1" class="bmd-label-floating" style="color: #171dc2;"><b>Appliances Type</b></label>
                             <select class="form-control" id="appliances_type_id" >
                              <option value="0" selected hidden>Select Appliances</option>
                              <%
                                querySelect ="SELECT `appliances_type_id`,`appliances_type_name` FROM `appliances_type` WHERE `markasdeleted`='0'";
                                rsSelect = stmt.executeQuery(querySelect);
                                while(rsSelect.next())
                                { 
                                    appliances_type_id = rsSelect.getString("appliances_type_id");
                                    appliances_type_name = rsSelect.getString("appliances_type_name");
                              %>
                                <option value="<%=appliances_type_id%>"><%=appliances_type_name%></option>
                              <%
                                }
                              %>
                              </select>
                        </div>
                       <!-- <div class="col-md-1"></div> -->
                        <div class="form-group col-md-6">
                              <label for="exampleInput1" class="bmd-label-floating" style="color: #171dc2;"><b>Branch</b></label>
                             <select class="form-control" id="branch_id" >
                              <!-- <option value="0" selected hidden>Select Branch</option> -->
                              <%
                                querySelect = "SELECT `branch_id`,`branch_name` FROM `branch` WHERE `markasdeleted` ='0'";
                                rsSelect = stmt.executeQuery(querySelect);
                                while(rsSelect.next())
                                {
                                  branch_id = rsSelect.getString("branch_id");
                                  branch_name = rsSelect.getString("branch_name");
                              %>
                                <option value="<%=branch_id%>" <%=branch_name.equals("Santa Rosa") ? "selected" : ""%>><%=branch_name%></option>
                              <%
                                }
                              %>
                              </select>
                        </div>
                
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">

                        </div>
                    </div>
                  <center><button type="button" class="btn btn-primary btn-md" style="width:285px;" onclick="uploadFile()">Add this Item</button></center>
          </div>
        </div>
      </div>
    </div>
    <div id="upload"></div>
    <div id="execute_save"></div>