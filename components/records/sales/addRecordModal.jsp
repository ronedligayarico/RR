<%@include file= "../../../init/initialize.jsp"%>
   <%
      String branch_id = "";
      String branch_name = "";
      String appliances_type_id = "";
      String appliances_type_name = "";
      String firstname = "";
      String user_id = "";
      String appliances_brand_id = "";
      String appliances_brand = "";
      String province_id = "";
      String province_desc = "";
      String brand_id = "";
      String brand_desc = "";
      String model_id = "";
      String model_desc = "";
   %>
 <style>
.entry:not(:first-of-type)
{
    margin-top: 10px;
}
</style>
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" style="color: #171dc2;"><b>Royal Star Record</b></h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="material-icons"><span aria-hidden="true">&times;</span></i>
          </button>
        </div>
        <div class="modal-body">
                  <div class="col-lg-12" >
                    <div class="form-row" style="padding-bottom: 1rem;">
                        <div class="col-lg-4">
                              <!-- <label for="exampleInput1" class="bmd-label-floating">Receipt No.</label> -->
                              <input type="text" class="form-control" id="fname" placeholder="Firtname">
                        </div>
                        
                        <div class="col-lg-3">
                              <!-- <label for="exampleInput1" class="bmd-label-floating">Receipt No.</label> -->
                              <input type="text" class="form-control" id="mname" maxlength="1" placeholder="Middle Initial">
                        </div>

                         <div class="col-lg-4">
                              <!-- <label for="exampleInput1" class="bmd-label-floating">Receipt No.</label> -->
                              <input type="text" class="form-control" id="lname" placeholder="Lastname">
                        </div>
                    </div>  
                 
<!--                     <div class="form-row" style="padding-bottom: 1rem;">
                       <div class="col-lg-5" >
                            <div class="form-group">
                              <label for="exampleInput1" class="bmd-label-floating">Receipt No.</label>
                              <input type="text" class="form-control" id="invoice_no" onkeyup="numberInputOnly(this)" placeholder="Invoice No.">
                              <span class="bmd-help text-primary">Input Invoice number.</span>
                           </div>
                       </div>
                    </div>     -->
                   <div class="form-row" style="padding-bottom: 1rem;">
                        <div class="col-lg-6">
                          <label for="select" class="bmd-label-floating">Customer Address</label>
                        </div>
                    </div>
                    <div class="form-row" style="padding-bottom: 1rem;">
                        <div class="col-lg-3">
                              <!-- <label for="exampleInput1" class="bmd-label-floating">Receipt No.</label> -->
                              <input type="text" class="form-control" id="street" placeholder="Street No.">
                        </div>
                        <div class="col-lg-3">
                              <!-- <label for="exampleInput1" class="bmd-label-floating">Receipt No.</label> -->
                              <select class="form-control" id="province" onchange="selectCity(this.value)">
                              <option value="0" selected hidden>Province</option>
                              <%
                                querySelect = "SELECT `province_id`,`province_desc` FROM `province` WHERE `markasdeleted` ='0'";
                                rsSelect = stmt.executeQuery(querySelect);
                                while(rsSelect.next())
                                {
                                  province_desc = rsSelect.getString("province_desc");
                                  province_id = rsSelect.getString("province_id");

                              %>
                                <option value="<%=province_id%>">&nbsp;<%=province_desc%></option>
                              <%
                                }
                              %>
                              </select>
                        </div>
                        <div class="col-lg-3">
                             <select class="form-control" id="city" onchange="selectBrgy(this.value)">
                              <option value="0" selected hidden>Select Province</option>
                              </select>
                        </div>
                       <div class="col-lg-3">
                              <!-- <label for="exampleInput1" class="bmd-label-floating">Receipt No.</label> -->
                             <select class="form-control" id="brgy">
                              <option value="0" selected hidden>Select Brgy</option>
                              </select>
                        </div>
                    </div>




                    <div class="form-row" style="padding-bottom: 1rem;">
                        <div class="col-lg-5">
                              <!-- <label for="exampleInput1" class="bmd-label-floating">Receipt No.</label> -->
                              <input type="text" class="form-control" id="customerNumber" maxlength="11" onkeyup="numberInputOnly(this)" placeholder="Contact No.">
                        </div>
                        <div class="col-lg-1">
                        </div>
                        <div class="col-md-5">
                             <select class="form-control" id="staffName">
                              <option value="0" selected hidden>Staff Name</option>
                              <%
                                querySelect = "SELECT `user_id`,`firstname` FROM `users` WHERE `markasdeleted` ='0' AND `user_type_id` =3";
                                rsSelect = stmt.executeQuery(querySelect);
                                while(rsSelect.next())
                                {
                                  firstname = rsSelect.getString("firstname");
                                  user_id = rsSelect.getString("user_id");

                              %>
                                <option value="<%=user_id%>">&nbsp;<%=firstname%></option>
                              <%
                                }
                              %>
                              </select>
                        </div>
                    </div>


   
                     <br>
                    <div class="form-row" style="padding-left: .4rem;">
                        <div class="col-lg-4">
                          <label for="select" class="bmd-label-floating">Appliances Type</label>
                        </div>
                        <div class="col-lg-4">
                          <label for="select" class="bmd-label-floating">Brand</label>
                        </div>
                        <div class="col-lg-4">
                          <label for="select" class="bmd-label-floating">Model</label>
                        </div>
                    </div>

                         <div class="form-row">
                            <div class="form-group col-md-12">
                                
                                  <div class="field_wrapper">
                                    <div>
                                     <div class="form-row">
                                          <div class="form-group col-md-4">
                                              <select class="form-control type" id="appliances" onchange="selectBrand(this.value);">
                                                <option value="0" selected hidden>Select Appliances</option>
                                                   <%
                                                      querySelect = "SELECT `appliances_type_id`,`appliances_type_name` FROM `appliances_type` WHERE `markasdeleted` ='0'";
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
                                          <div class="form-group col-md-4">
                                              <select class="form-control brands" id="brand" onchange="selectModel(this.value);">
                                                <option value="0" selected hidden>Select Brand</option>
                                              </select>
                                          </div>
                                          <div class="form-group col-md-4">
                                              <select class="form-control model" id="model">
                                                <option value="0" selected hidden>Select Model</option>
                                              </select>
                                          </div>
                                     </div>
                                      <button class="btn btn-primary btn-sm add_button" style="width:10rem; height:1.5rem;">Add field</i></button>
                                   </div>
                                  </div>
                          </div>
                        </div>

                    <div class="form-row">

                        <div class="col-md-5">
                            <label for="exampleInput1" class="bmd-label-floating">Branch</label>
                             <select class="form-control" id="branch">
                              <option value="0" selected hidden>Select Branch</option>
                              <%
                                querySelect = "SELECT `branch_id`,`branch_name` FROM `branch` WHERE `markasdeleted` ='0'";
                                rsSelect = stmt.executeQuery(querySelect);
                                while(rsSelect.next())
                                {
                                  branch_id = rsSelect.getString("branch_id");
                                  branch_name = rsSelect.getString("branch_name");

                              %>
                                <option value="<%=branch_id%>"><%=branch_name%></option>
                              <%
                                }
                              %>
                              </select>
                        </div>

                        <div class="col-md-6" style="padding-top: .3rem;">
                          <div class="form-group">
                            <label class="label-control">Date Purchase</label>
                            <input type="text" id="datePurchase" class="form-control datetimepicker" placeholder="  MM/DD/YYYY">
                          </div>
                        </div>
                        <div class="col-md-12" >
                          <input type="checkbox" id="acceptthis" name="acceptthis">
                         <b style="font-size: 13px;">I accept the Terms and Conditions</b>
                        </div>
                    </div>

                  </div>
                  </div>
                 
        <div class="modal-footer">
          <button type="button" class="btn btn-primary btn-sm" onclick="addRecord()">Save Record</button>
        </div>
      </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {

            var maxField = 4; //Input fields increment limitation
            var addButton = $('.add_button'); //Add button selector
            var wrapper = $('.field_wrapper'); //Input field wrapper
            var x = 0; //Initial field counter is 1

            // var fieldHTML = '<div><div class="form-row"><div class="form-group col-md-4"><select class="form-control type" id="appliances'+x+'" onchange="selectModel(this.value);selectBrand(this.value);"><option value="0" selected hidden>Select Appliances</option><%querySelect = "SELECT `appliances_type_id`,`appliances_type_name` FROM `appliances_type` WHERE `markasdeleted` ='0'";rsSelect = stmt.executeQuery(querySelect);while(rsSelect.next()){appliances_type_id = rsSelect.getString("appliances_type_id");appliances_type_name = rsSelect.getString("appliances_type_name");%><option value="<%=appliances_type_id%>"><%=appliances_type_name%></option><%}%></select></div><div class="form-group col-md-4"><select class="form-control model" id="model"><option value="0" selected hidden>Select Model</option></select></div><div class="form-group col-md-4"><select class="form-control brands" id="brand"><option value="0" selected hidden>Select Brand</option></select></div></div><button class="btn btn-rose btn-sm remove_button" style="width:10rem; height:1.5rem;">Add field</i></button></div>'; //New input field html 
            
            //Once add button is clicked
            $(addButton).click(function(){
                //Check maximum number of input fields
                if(x < maxField){ 
                    x++; //Increment field counter
                    $(wrapper).append('<div><div class="form-row"><div class="form-group col-md-4"><select class="form-control type" id="appliances'+x+'" onchange="selectBrand'+x+'(this.value);"><option value="0" selected hidden>Select Appliances</option><%querySelect = "SELECT `appliances_type_id`,`appliances_type_name` FROM `appliances_type` WHERE `markasdeleted` ='0'";rsSelect = stmt.executeQuery(querySelect);while(rsSelect.next()){appliances_type_id = rsSelect.getString("appliances_type_id");appliances_type_name = rsSelect.getString("appliances_type_name");%><option value="<%=appliances_type_id%>"><%=appliances_type_name%></option><%}%></select></div><div class="form-group col-md-4"><select class="form-control brands" id="brand'+x+'" onchange="selectModel'+x+'(this.value);"><option value="0" selected hidden>Select Brand</option></select></div><div class="form-group col-md-4"><select class="form-control model" id="model'+x+'"><option value="0" selected hidden>Select Model</option></select></div></div><button class="btn btn-rose btn-sm remove_button" style="width:10rem; height:1.5rem;">Remove field</i></button></div>'); //Add field html
                }
            });
            
            //Once remove button is clicked
            $(wrapper).on('click', '.remove_button', function(e){
                e.preventDefault();
                $(this).parent('div').remove(); //Remove field html
                x--; //Decrement field counter
            });


        $('.datetimepicker').datetimepicker({
        icons: {
          time : "fa fa-clock-o",
          date : "fa fa-calendar",        
          up: "fa fa-chevron-up",
          down : "fa fa-chevron-down",
          previous : 'fa fa-chevron-left',
          next : 'fa fa-chevron-right',
          clear : 'fa fa-trash',
          close : 'fa fa-remove'
        },
        format: 'YYYY-MM-DD'
      });
      });
     </script>
<div id="scriptRead"></div>