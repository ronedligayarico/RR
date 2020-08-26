<%@include file = "../../../init/initialize.jsp"%>

    <div class="modal-dialog" style="padding-left: 4rem;" role="document">
      <div class="modal-content" style="width:350px;">
        <div class="modal-header">
          <h5 class="modal-title" style="color: #171dc2;"><b>Select Month to Print</b></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="material-icons"><span aria-hidden="true">&times;</span></i>
          </button>
        </div>
        <div class="modal-body">
                    <div class="form-row">       
                        <div class="col-md-8">
                          <select class="form-control type" id="month">
                              <option value="0" selected hidden>Select Month</option>
                              <option value="2020-01">January 2020</option>
                              <option value="2020-02">February 2020</option>
                              <option value="2020-03">March 2020</option>
                              <option value="2020-04">April 2020</option>
                              <option value="2020-05">May 2020</option>
                              <option value="2020-06">June 2020</option>
                              <option value="2020-07">July 2020</option>
                              <option value="2020-08">August 2020</option>
                              <option value="2020-09">September 2020</option>
                              <option value="2020-10">October 2020</option>
                              <option value="2020-11">November 2020</option>
                              <option value="2020-12">December 2020</option>
                          </select>
                        </div>
                        <div class="col-md-4">
                          <button class="btn btn-primary btn-sm" onclick="monthPrint()">Print</button>
                        </div>
                    </div>

        </div>
      </div>
    </div>
    <div id="myRead"></div>
