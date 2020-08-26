<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.List, java.util.Arrays,java.util.*,java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%

  java.sql.Connection conn;
  Class.forName("com.mysql.jdbc.Driver");

  conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/rsws?&autoReconnect=true&failOverReadOnly=false&maxReconnects=10","root", "09236373759");
  java.sql.Statement stmt = conn.createStatement();
  java.sql.Statement stmt1 = conn.createStatement();
  java.sql.Statement stmt2 = conn.createStatement();
  java.sql.Statement stmt3 = conn.createStatement();
  java.sql.Statement stmt4 = conn.createStatement();
  java.sql.Statement stmt5 = conn.createStatement();

  //Declarations
  String querySelect ="";
  String querySelect1 ="";
  String querySelect2 ="";
  String querySelect3 ="";
  String querySelect4 ="";
  String querySelect5 ="";

  String queryAction = "";
  String queryAction1 = "";
  String queryAction2 = "";
  String queryAction3 = "";
  String queryAction4 = "";
  String queryAction5 = "";

  ResultSet rsSelect;
  ResultSet rsSelect1;
  ResultSet rsSelect2;
  ResultSet rsSelect3;
  ResultSet rsSelect4;
  ResultSet rsSelect5;
  int rsAction = 0;
  int rsAction1 = 0;
  int rsAction2 = 0;
  int rsAction3 = 0;
  int rsAction4 = 0;
  int rsAction5 = 0;
  %>

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
  <!--   <link rel="stylesheet" type="text/css" href="./vendor/source/material.min.css" />
  <link rel="stylesheet" href="./vendor/source/materialicon.css"> -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <!-- CSS Files -->
  <link href="assets/css/material-kit.css?v=2.0.6" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
  <!--datatables-->
  <link rel="stylesheet" type="text/css" href="vendor/datatables/dataTables.bootstrap4.css">
  <!-- sweetalert css -->
  <link rel="stylesheet" href="vendor/sweetalert/sweetalert.css">
</head>

<body class="landing-page sidebar-collapse">
 <nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionsNav">
    <div class="container">
      <div class="navbar-translate">
        <a class="navbar-brand" href="" style="color: #171dc2; font-size: 40px;">
         <b style="color: #171dc2;" class="title"> Royal Star </b></a>
      </div>
      <div class="collapse navbar-collapse">
        <ul class="navbar-nav ml-auto">
<!-- 
          <li class="nav-item">
            <a class="nav-link reloadLink" href="#" id="components/records/records.jsp" style="color: #171dc2;">
             <b>About us</b>
            </a>
          </li> -->
          <li class="nav-item">
            <a class="nav-link reloadLink" href="#" onclick="scrollToDownload()" style="color: #171dc2;">
             <b>Contact us</b>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link reloadLink" href="#" onclick="scrollToWarrantyConcern()" style="color: #171dc2;">
             <b>Warranty Concern</b>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp"  style="color: #171dc2;">
             <b>Log in</b>
            </a>
          </li>

        </ul>
      </div>
    </div>
  </nav>
  <div class="page-header header-filter" data-parallax="true" style="background-image: url('assets/img/RoyalStarIMG/royalhomecover.jpg');height: 1000px;">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h1 class="title">Royal Star Appliances Marketing Inc.</h1>
          <h4>Every landing page needs a small description after the big bold title, that&apos;s why we added this text here. Add here all the information that can make you or your product create the first impression.</h4>
          <br>
          <a href="https://www.youtube.com/" target="_blank" class="btn btn-danger btn-raised btn-lg">
            <i class="fa fa-play"></i> Watch video
          </a>
        </div>
      </div>
    </div>
  </div>
  <div class="main main-raised">
    <div class="container">
      <div class="section text-center">
        <div class="row">
          <div class="col-md-8 ml-auto mr-auto">
            <h1 style="color: #171dc2;" class="title">Royal Star<h3 style="color: #171dc2;">Appliances ng Bayan</h3></h1>
            
            <h5 class="description">Just click Contact us to inquire to know the details about this product.</h5>
          </div>
        </div>
       
      </div>


      <div class="col-md-12 ml-auto mr-auto">
            <div class="profile-tabs">
              <ul class="nav nav-pills nav-pills-icons justify-content-center" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active"  href="#studio" role="tab" data-toggle="tab">
                    <i class="material-icons">Indoor Appliances</i> 
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#works"  role="tab" data-toggle="tab">
                    <i class="material-icons">Kitchen Appliances</i> 
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#flash" role="tab" data-toggle="tab">
                    <i class="material-icons">Flash Sales</i> 
                  </a>
                </li>
              </ul>
            </div>
        <div class="tab-content tab-space">
          <div class="tab-pane active text-center gallery" id="studio">
            <div class="row">
              <div class="col-md-5 ml-auto">
                <img src="assets/img/RoyalStarIMG/1.1.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/1.2.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/1.3.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/4.1.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/5.1.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
              </div>
              <div class="col-md-2 mr-auto">
              </div>
              <div class="col-md-5 mr-auto">
                <img src="assets/img/RoyalStarIMG/1.4.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/1.5.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/1.6.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/4.2.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/5.2.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
              </div>
            </div>
          </div>
          <div class="tab-pane text-center gallery" id="works">
            <div class="row">
              <div class="col-md-5 ml-auto">
                <img src="assets/img/RoyalStarIMG/2.1.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/2.2.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/2.3.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/3.1.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
              </div>
              <div class="col-md-2 mr-auto">
              </div>
              <div class="col-md-5 mr-auto">
                <img src="assets/img/RoyalStarIMG/2.4.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/2.5.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/2.6.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/3.2.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
              </div>
            </div>
          </div>

          <div class="tab-pane text-center gallery" id="flash">
            <div class="row">
              <div class="col-md-5 ml-auto">
                <img src="assets/img/RoyalStarIMG/1.5.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/1.6.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/1.7.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/2.5.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/2.6.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
              </div>
              <div class="col-md-2 mr-auto">
              </div>
              <div class="col-md-5 mr-auto">
                <img src="assets/img/RoyalStarIMG/1.1.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/1.2.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/2.2.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/2.3.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">
                <img src="assets/img/RoyalStarIMG/2.4.jpg" style="height: 450px; width: 600px; padding-bottom: 1rem;" class="rounded">

              </div>
            </div>
          </div>
        </div>
      </div>



<!--       <div class="section text-center">
        <h2 class="title">Here is our team</h2>
        <div class="team">
          <div class="row">
            <div class="col-md-4">
              <div class="team-player">
                <div class="card card-plain">
                  <div class="col-md-6 ml-auto mr-auto">
                    <img src="assets/img/faces/avatar.jpg" alt="Thumbnail Image" class="img-raised rounded-circle img-fluid">
                  </div>
                  <h4 class="card-title">Owner
                    <br>
                  </h4>
                  <div class="card-body">
                    <p class="card-description">You can write here details about one of your team members. You can give more details about what they do. Feel free to add some
                      <a href="#">links</a> for people to be able to follow them outside the site.</p>
                  </div>
                  <div class="card-footer justify-content-center">
                  ...
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="team-player">
                <div class="card card-plain">
                  <div class="col-md-6 ml-auto mr-auto">
                    <img src="assets/img/faces/christian.jpg" alt="Thumbnail Image" class="img-raised rounded-circle img-fluid">
                  </div>
                  <h4 class="card-title">Co-owner
                    <br>
                  </h4>
                  <div class="card-body">
                    <p class="card-description">You can write here details about one of your team members. You can give more details about what they do. Feel free to add some
                      <a href="#">links</a> for people to be able to follow them outside the site.</p>
                  </div>
                  <div class="card-footer justify-content-center">
                   ...
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="team-player">
                <div class="card card-plain">
                  <div class="col-md-6 ml-auto mr-auto">
                    <img src="assets/img/faces/kendall.jpg" alt="Thumbnail Image" class="img-raised rounded-circle img-fluid">
                  </div>
                  <h4 class="card-title">Manager
                    <br>
                  </h4>
                  <div class="card-body">
                    <p class="card-description">You can write here details about one of your team members. You can give more details about what they do. Feel free to add some
                      <a href="#">links</a> for people to be able to follow them outside the site.</p>
                  </div>
                  <div class="card-footer justify-content-center">
               ...
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
       </div> -->
      </div>
      <div class="section section-tabs slideFunc" style="background: #f6f6ff;">
        <div class="row">   
           <div class="col-md-1 ml-auto mr-auto">
           </div>
           <div class="col-md-5 ml-auto mr-auto">
            <h2 class="text-center title">Contact us</h2>
            <h4 class="text-center description">Fill this form if you have a concern or suggestion regarding to our products.</h4>
            <form class="contact-form">
              <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
                        <label class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2;">Firstname</label>
                        <input type="text" class="form-control" id="fname" style="background: white;">
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2;">Middle Initial</label>
                        <input type="text" class="form-control" maxlength="1" id="mname" style="background: white;">
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2;">Lastname</label>
                        <input type="text" class="form-control" id="lname" style="background: white;">
                      </div>
                    </div>
              </div>
              <div class="row">
                   <div class="col-md-6">
                      <div class="form-group">
                        <label class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2">Mobile No.</label>
                        <input type="text" class="form-control" id="contact" maxlength="11" onkeyup="numberInputOnly(this)" style="background: white;">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2;">E-mail(Optional)</label>
                        <input type="email" class="form-control" id="email" style="background: white;">
                      </div>
                  </div>
              </div>
              <div class="form-group">
                <label for="exampleMessage" class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2">Message</label>
                <textarea type="text" class="form-control" rows="4" id="messages"   style="background: white;"></textarea>
              </div>
              <div class="row">
                <div class="col-md-4 ml-auto mr-auto text-center">
                  <button class="btn btn-primary btn-raised" onclick="sendFeedback()">
                    Submit
                  </button>
                </div>
              </div>
            </form>
          </div>

           <div class="col-md-5 ml-auto mr-auto">
               <h2 class="text-center title">Information</h2>
              <div class="row">
                <div class="col-md-12 mr-auto " style="padding-left: 8rem;">
                    <h3 style="color: #171dc2;"><b>Royal Star Main Branch</b></h3>
                    <h4><b>Telephone No :</b> (048)-627-1872</h4>
                    <h4><b>Mobile No :</b> 0912-937-2917</h4>
                    <h4><b>Facebook :</b> royalstar@yahoo.com</h4>
                    <h4><b>Email :</b> royalstar@appliances.com.ph</h4>
                    <h4><b>Address :</b> National Hi-way, Calamba Laguna.</h4>
                </div>
              </div>
           </div>
           <div class="col-md-1 ml-auto mr-auto">
           </div>
        </div>
      </div>

        <div class="form-row warrantyConcern">
         <div class="col-md-8 ml-auto mr-auto">
            <h2 class="text-center title">Warranty Concern</h2>
            <h4 class="text-center description">If you have concern/question in our product about warranty ,Please fill this form and submit.</h4>
              <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2;">FirstName</label>
                    <input type="text" class="form-control" id="wfname" style="background: white;">
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2;">MiddleInitial</label>
                    <input type="text" class="form-control" id="wmname" maxlength="1" style="background: white;">
                  </div>
                </div>
               <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2;">LastName</label>
                    <input type="text" class="form-control" id="wlname" style="background: white;">
                  </div>
                </div>
              </div>

              <div class="row">
                 <div class="col-sm-5" >
                  <label style="padding-left: .5rem; color: #171dc2;">Valid ID(2pcs)</label>
                  <div class="form-row">
                 <div class="col-sm-6" >
                     <form  id="ups">
                          <input class="form-control inputFileVisible" type="file" style="padding-left: .5rem;" id="warrantyID1" name="warrantyID1">
                     </form>
                 </div>
                  <div class="col-sm-6" >
                     <form  id="upss">
                          <input class="form-control inputFileVisible" type="file" style="padding-left: .5rem;" id="warrantyID2" name="warrantyID2">
                     </form>
                   </div>
                   </div>
                 </div>
              </div>

              <div class="row">
                  <div class="col-sm-5" >
                     <label style="padding-left: .5rem; color: #171dc2;">Receipt Photo</label>
                     <div class="form-row">
                         <div class="col-sm-6" >
                             <form  id="upsss">
                                  <input class="form-control inputFileVisible" type="file" style="padding-left: .5rem;" id="receiptPhoto" name="receiptPhoto">
                             </form>
                         </div>
                     </div>
                  </div>
              </div>
              <div class="row">
                 <div class="col-md-6">
                    <div class="form-group">
                      <label class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2">Mobile No.</label>
                      <input type="text" class="form-control" id="warrantyContact" maxlength="11" minlength="11" onkeyup="numberInputOnly(this)" style="background: white;">
                    </div>
                  </div>
              </div>

             <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2;">E-mail(Optional)</label>
                    <input type="email" class="form-control" id="warrantyEmail" style="background: white;">
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2">Serial No.</label>
                    <input type="text" class="form-control" id="warrantySerial" style="background: white;">
                  </div>
                </div>
              </div>

             <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleMessage" class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2">Message</label>
                    <textarea type="text" class="form-control" rows="4" id="warrantyMessage"   style="background: white;"></textarea>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating" style="padding-left: .5rem; color: #171dc2">Product Name</label>
                    <input type="text" class="form-control" id="warrantyProduct"  style="background: white;">
                  </div>
                </div>
             </div>
              <div class="row">
                <div class="col-md-4 ml-auto mr-auto text-center">
                  <button class="btn btn-primary btn-raised" onclick="sendWarrantyConcern()">
                    Submit
                  </button>
                </div>
              </div>
          </div>
        </div>
        <br>
        <br>
        <center>
        <a style="color: #2b176c;" disabled>Copyright &copy; Royal Star Appliance Marketing Inc.</a>
        </center>
        <br>
        <br>

    </div>
    <div id="myScript"></div>
    <div id="upload"></div>
    <div id="upload1"></div>
    <div id="upload2"></div>
    <div id="execute_save"></div>
  <footer class="footer footer-default">
<!--     <div class="container">
      <div class="copyright" style="color: #2b176c;">
         <marquee>  Copyright &copy; Royal Star Appliance Marketing Inc. </marquee>
      </div>
    </div> -->
  </footer>
   <!--   Core JS Files   -->
  <script src="assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="assets/js/plugins/moment.min.js"></script>
    <!-- Data table plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!--  Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
  <script src="assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!--  Google Maps Plugin    -->
  <!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
  <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/material-kit.js?v=2.0.6" type="text/javascript"></script>
  <!-- sweetAlert -->
  <script src="index.js" type="text/javascript"></script>
  <script src="vendor/sweetalert/sweetalert.min.js"></script>
   <script>
    $(document).ready(function() {
      //init DateTimePickers
      materialKit.initFormExtendedDatetimepickers();

      // Sliders Init
      materialKit.initSliders();
    });


    function scrollToDownload() 
    {
      if ($('.slideFunc').length != 0) 
      {
        $("html, body").animate({
          scrollTop: $('.slideFunc').offset().top
        }, 1000);
      }
    }
        function scrollToWarrantyConcern() 
    {
      if ($('.warrantyConcern').length != 0) 
      {
        $("html, body").animate({
          scrollTop: $('.warrantyConcern').offset().top
        }, 1000);
      }
    }

      function numberInputOnly(elem) {
                var validChars = /[0-9]/;
                var strIn = elem.value;
                var strOut = '';
                for(var i=0; i < strIn.length; i++) {
                  strOut += (validChars.test(strIn.charAt(i)))? strIn.charAt(i) : '';
                }
                elem.value = strOut;
            }
  //LETTER ONLY
   function letterInputOnly(elem) {
                var validChars = /[a-zA-ZñÑ .]+/;
                var strIn = elem.value;
                var strOut = '';
                for(var i=0; i < strIn.length; i++) {
                  strOut += (validChars.test(strIn.charAt(i)))? strIn.charAt(i) : '';
                }
                elem.value = strOut;
            }

  </script>
</body>

</html>
