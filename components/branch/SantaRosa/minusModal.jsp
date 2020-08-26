   <%@include file= "../../../init/initialize.jsp"%>
   <%
      String original_item_id = request.getParameter("original_item_id");
      String quantity = request.getParameter("quantity");

   %>
    <div class="modal-dialog" style="padding-left: 4rem;" role="document">
      <div class="modal-content" style="width:350px;">
        <div class="modal-header">
          <h5 class="modal-title" style="color: #171dc2;"><b>Modify Quantity</b></h5>
        </div>
        <div class="modal-body">
                    <div class="form-row">       
                        <div class="col-md-5">
                           <div class="form-group">
                              <input type="text" class="form-control" id="minusquantity" placeholder="Input Quantity">
                              <span class="bmd-help text-primary">Input receipt number.</span>
                           </div>
                        </div>
                        <div class="col-md-3">
                          <button class="btn btn-primary btn-sm" onclick="minusItem('<%=quantity%>','<%=original_item_id%>')">Minus</button>
                        </div>  
                        <div class="col-md-3">
                          <button class="btn btn-rose btn-sm" data-dismiss="modal" aria-label="Close">Cancel</button>
                        </div>
                    </div>

        </div>
      </div>
    </div>
    <div id="myRead"></div>
