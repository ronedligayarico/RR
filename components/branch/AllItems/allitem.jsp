 <%@include file= "../../../init/initialize.jsp"%>
 <script src="/RR/components/branch/AllItems/allitem.js"></script>
 <div class="main main-raised">
    <div class="section section-basic">
      <div class="container">
        <div class="title">
          <h2>All Items</h2>
        </div>
                <div class="col-xl-12 col-xl-20 mb-5 col-xl-10 col-xl-10 mb-10">
                      <div class="row">
                              <div class="table-responsive" id="allitems" >
                              </div>
                               <button class="btn btn-primary" onclick="addAllItemModal()"><i class="fas fa-plus"></i> Add New Item</button>
                      </div>
                </div>
     </div>
   </div>
 </div>

<div class="modal fade" id="allModal" tabindex="-1" role="dialog">
</div>
