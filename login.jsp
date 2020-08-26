
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    RSWS
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <!-- <link rel="stylesheet" type="text/css" href="vendor/source/material.min.css" /> -->
  <!-- <link rel="stylesheet" href="vendor/source/materialicon.css"> -->
  <!-- CSS Files -->
  <link href="assets/css/material-kit.css?v=2.0.6" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
  <link rel="stylesheet" href="vendor/sweetalert/sweetalert.css">
</head>

<body class="login-page sidebar-collapse">
  
  <div class="page-header header-filter" style="background-image: url('assets/img/RoyalStarIMG/royalhomecover.jpg'); background-size: cover; background-position: top center;">
    <div class="container">
          <div class="section section-examples">
      <div class="container-fluid">
        <div class="row">
         <!--   <div class="col-md-7 mr-auto ml-auto" style="padding-top: 3rem;">
              Carousel Card
            <div class="card card-raised card-carousel">
              <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000">
                
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img class="d-block w-100" src="./assets/img/bg2.jpg" alt="First slide">
                    <div class="carousel-caption d-none d-md-block">
                      <h4>
                        <i class="material-icons"></i> Yellowstone National Park, United States
                      </h4>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="./assets/img/bg3.jpg" alt="Second slide">
                    <div class="carousel-caption d-none d-md-block">
                      <h4>
                        <i class="material-icons"></i> Somewhere Beyond, United States
                      </h4>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="./assets/img/bg.jpg" alt="Third slide">
                    <div class="carousel-caption d-none d-md-block">
                      <h4>
                        <i class="material-icons"></i> Yellowstone National Park, United States
                      </h4>
                    </div>
                  </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                  <i class="material-icons"><</i>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <i class="material-icons">></i>
                  <span class="sr-only">Next</span>
                </a>
                <ol class="carousel-indicators">
                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
              </div>
            </div>
          </div> -->
            <!-- End Carousel Card -->
           <div class="col-md-1 mr-auto ml-auto">
           </div>

            <div class="col-lg-4 col-md-6 ml-auto mr-auto" >
              <div class="card card-login" style="opacity:.9;">
                <!-- <form class="form" method="" action=""> -->
                  <div class="card-header card-header-primary text-center">
            <!--         <h2 class="card-title">Royal Star</h2>
                    <h6 class="card-title">Warranty System</h6> -->
                     <img class="d-block w-100" src="./IMAGES/loginP.png" >
                    <!-- <img class="d-block w-100" src="./IMAGES/royalstar.png" > -->
                  </div>
                 
                  <div class="card-body p-3">
                    <div class="form-row">
                       <div class="col-lg-10 col-md-6 ml-auto mr-auto" >
                            <div class="form-group">
                              <label class="bmd-label-floating" style="color: #171dc2;"><b>Username</b></label>
                              <input type="text" class="form-control" id="username">
                              <span class="bmd-help" style="color: #171dc2;">Input your username.</span>
                           </div>
                       </div>
                        
                       <div class="col-lg-10 col-md-6 ml-auto mr-auto" >
                            <div class="form-group">
                               <label for="exampleInput1" class="bmd-label-floating" style="color: #171dc2;"><b>Password</b></label>
                              <input type="password" class="form-control" id="password">
                              <span class="bmd-help" style="color: #171dc2;">Don't tell your password to anyone.</span>
                           </div>
                       </div>
                    </div>
                    <br>
                    <div class="form-group" style="padding-bottom: 1rem;">
                      <center>
                      <button class="btn btn-primary btn-round" style="width: 250px;" onclick="login()">Log in</button>
                      </center>
                    </div>
                  </div>
                  <div class="footer" style="padding-bottom: 1rem;">
                  <div class="form-row">
                   <div class="col-md-12 mr-auto ml-auto">
                      <center>
                     <a href="home.jsp" style="color:#171dc2;"><u>Back to Home</a>
                      </center>
                   </div>
                   </div>
                  </div>
                <!-- </form> -->
              </div>
            </div>
           
          </div>
        </div>
      </div>
    </div>
     <div id="login"></div>
      <div class="row">

      </div>
    </div>
    <footer class="footer">
      <div class="container">
        <div class="copyright">
        <marquee style="color:#fff;">  Copyright &copy; Royal Star Appliance Marketing Inc. </marquee>
        </div>
      </div>
    </footer>
  </div>
  <!--   Core JS Files   -->
  <script src="assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
  <script src="assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!--  Google Maps Plugin    -->
  <!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
  <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/material-kit.js?v=2.0.6" type="text/javascript"></script>
  <script src="index.js" type="text/javascript"></script>
  <script src="vendor/sweetalert/sweetalert.min.js"></script>
  
</body>

</html>
<script>
  //on EnterKey 
  var username = document.getElementById("username");
  var password = document.getElementById("password");
  
  username.addEventListener("keyup", function(event) {
    if (event.keyCode === 13) {
    event.preventDefault();
    login();
    }
  });
  
  password.addEventListener("keyup", function(event) {
    if (event.keyCode === 13) {
    event.preventDefault();
    login();
    }
  });
</script>
<div id="divLogin"></div>
