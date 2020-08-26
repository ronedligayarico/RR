<script src="/RR/components/records/js/records.js"></script>
<div class="main main-raised">
  <div class="section section-basic">
    <div class="container">
			<!-- Content Row -->
					<div class="col-xl-12 col-xl-20 mb-5 col-xl-10 col-xl-10 mb-10">
							<button class="btn btn-primary" onclick="addSRrecord()" ><i class="fas fa-plus" ></i> Add Record</button>
							<button class="btn btn-rose btn-md"  onclick="monthModal()"><i class="fas fa-print"></i> Generate Monthly Report</button>
							<br><br>
			              <div class="card card-nav-tabs card-plain">
			                <div class="card-header card-header-primary">
			                  <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
			                  <div class="nav-tabs-navigation">
			                    <div class="nav-tabs-wrapper">
			                      <ul class="nav nav-tabs" data-tabs="tabs">
			                        <li class="nav-item">
				                          <a class="nav-link active" href="#Sales" data-toggle="tab">Valid Record</a>
			                        </li>
			                        <li class="nav-item">
			                          <a class="nav-link" href="#Void" data-toggle="tab">Void Record</a>
			                        </li>
			                      </ul>
			                    </div>
			                  </div>
			                </div>
			                <div class="card-body ">
			                  <div class="tab-content">
				                    <div class="tab-pane active" id="Sales">
				                    </div>
				                    <div class="tab-pane" id="Void">
				                    </div>
			                  </div>
			                </div>
			              </div>
					</div>
    </div>
  </div>
</div>

<div class="modal fade" id="recordModal" tabindex="-1" role="dialog">
</div>

  