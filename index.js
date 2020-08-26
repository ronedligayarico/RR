(function() {
	// 'use strict';
	window.addEventListener('load', function() {

		// Fetch all the forms we want to apply custom Bootstrap validation styles to
		var forms = document.getElementsByClassName('needs-validation');

		// Loop over them and prevent submission
		var validation = Array.prototype.filter.call(forms, function(form) {
		form.addEventListener('submit', function(event) {
			if (form.checkValidity() === false)
		    {
				event.preventDefault();
				event.stopPropagation();
			}
				form.classList.add('was-validated');
			}, false);
		});
	}, false);
	})
();


function login()
{
	
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	
	if (window.XMLHttpRequest)
	{// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else
	{// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function()
	{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{	
			
			document.getElementById("divLogin").innerHTML=xmlhttp.responseText;	
			$("#divLogin").find("script").each(function(i) {eval($(this).text());});
			
		}
	}
	xmlhttp.open("POST", "verifylogin.jsp", true);
	xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlhttp.send("username="+username+"&password="+password);

	// $.ajax({
	// 	data: "username="+username+"&password="+password,
	// 	url: "verifylogin.jsp", 
	// 	success: function(result){
	// 		document.getElementById("divLogin").innerHTML=result;	
	// 	    $("#divLogin").find("script").each(function(i) {eval($(this).text());});
	//   	}
	// });
}

function logout()
{
	if (window.XMLHttpRequest)
	{// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else
	{// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function()
	{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{	
			document.getElementById("navbar").innerHTML=xmlhttp.responseText;	
			$("#navbar").find("script").each(function(i) {eval($(this).text());});
		}
	}
	xmlhttp.open("POST", "/RR/verifylogout.jsp", true);
	xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlhttp.send(null);
}

function logModal()
{
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        var xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            document.getElementById("logModal").innerHTML=xmlhttp.responseText;
            $("#logModal").find("script").each(function(i){
             eval($(this).text());
            });
            $('#logModal').modal({
	            keyboard: false
	        });
            
        }
    }
    xmlhttp.open("POST","/RR/logModal.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send(null);
}

function sendFeedback()
{
	    var fname = $('#fname').val();
      var mname = $('#mname').val();
      var lname = $('#lname').val();
	    var contact = $('#contact').val();
	    var email = $('#email').val();
	    var messages = $('#messages').val();

  if(fname == "")
  {
    swal("Warning", "Please Enter your First Name!", "warning");
  }
  else if( mname == "")
  {
    swal("Warning", "Please Enter your Middle Initial!", "warning");
  }
  else if( lname == "")
  {
    swal("Warning", "Please Enter your Last Name!", "warning");
  }
  else
      {
        if(contact == "")
        {
          swal("Warning", "Please Enter your Contact Number!", "warning");
        }
        else if(contact.length<11)
        {
          swal("Warning", "Contact Number must be '11' numbers!", "warning");
        }
        else
          {
            if(messages == "")
            {
              swal("Warning", "Please Enter your suggestion or concern!", "warning");
            }
            else
                {
                  if (window.XMLHttpRequest)
                  {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                  }
                  else
                  {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  xmlhttp.onreadystatechange=function()
                  {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    { 
                        document.getElementById("myScript").innerHTML=xmlhttp.responseText; 
                      $("#myScript").find("script").each(function(i) {eval($(this).text());});
                    }
                  }
                  xmlhttp.open("POST", "saveFeedback.jsp", true);
                  xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
                  xmlhttp.send("fname="+fname+"&mname="+mname+"&lname="+lname+"&contact="+contact+"&email="+email+"&messages="+messages);

                }
          }
      }



}

function sendWarrantyConcern()
 {
  var data1 = new FormData(document.getElementById("ups"));
  var warrantyID1 = document.getElementById("warrantyID1").files;
  var fName1 = $.map(warrantyID1, function(val) 
  {
    return val.name;
  });

  //alert(fName);
  if(fName1 == "")
  {
    swal("Warning", "Please Choose your photo to upload!", "warning");
  }
  else
      {
      $.ajax({
          url: "../RR/components/warranty/upload1.jsp", //contains the filepath to the jsp file that is responsible for the uploading process.
          type: "POST",
          data: data1,fName1,         // contains "var data"
          processData: false,  // tell jQuery not to process the data
          contentType: false,   // tell jQuery not to set contentType   
          success: function(e)
          {
            document.getElementById("upload").innerHTML=e;

            $("#upload").find("script").each(function(i){
            eval($(this).text());
            });

          }
          });
      }

 }
 function sendWarrantyConcern1()
 {
  var data2 = new FormData(document.getElementById("upss"));
  var warrantyID2 = document.getElementById("warrantyID2").files;
  var fName2 = $.map(warrantyID2, function(val) 
  {
    return val.name;
  });

  //alert(fName);
  if(fName2 == "")
  {
    swal("Warning", "Please Choose your 2nd photo to upload!", "warning");
  }
  else
  {
  $.ajax({
      url: "../RR/components/warranty/upload2.jsp", //contains the filepath to the jsp file that is responsible for the uploading process.
      type: "POST",
      data: data2,fName2,         // contains "var data"
      processData: false,  // tell jQuery not to process the data
      contentType: false,   // tell jQuery not to set contentType   
      success: function(e)
      {
        document.getElementById("upload1").innerHTML=e;

        $("#upload1").find("script").each(function(i){
        eval($(this).text());
        });

      }
      });
  }
 }

  function receiptPhotos()
 {
  var data3 = new FormData(document.getElementById("upsss"));
  var receiptPhoto = document.getElementById("receiptPhoto").files;
  var fName3 = $.map(receiptPhoto, function(val) 
  {
    return val.name;
  });

  //alert(fName);
  if(fName3 == "")
  {
    swal("Warning", "Please Choose your Receipt Photo!", "warning");
  }
  else
  {
  $.ajax({
      url: "../RR/components/warranty/uploadReceipt.jsp", //contains the filepath to the jsp file that is responsible for the uploading process.
      type: "POST",
      data: data3,fName3,         // contains "var data"
      processData: false,  // tell jQuery not to process the data
      contentType: false,   // tell jQuery not to set contentType   
      success: function(e)
      {
        document.getElementById("upload2").innerHTML=e;

        $("#upload2").find("script").each(function(i){
        eval($(this).text());
        });

      }
      });
  }
 }

  function execute_save(session_user_id)
 {
  //var data = new FormData(document.getElementById("myUpload"));
  var warrantyID1 = document.getElementById("warrantyID1").files;
  var fName1 = $.map(warrantyID1, function(val) 
  {
    return val.name;
  });
  var warrantyID2 = document.getElementById("warrantyID2").files;
  var fName2 = $.map(warrantyID2, function(val) 
  {
    return val.name;
  });
  var receiptPhoto = document.getElementById("receiptPhoto").files;
  var fName3 = $.map(receiptPhoto, function(val) 
  {
    return val.name;
  });
    var wfname = $('#wfname').val();
    var wmname = $('#wmname').val();
    var wlname = $('#wlname').val();
    var warrantyContact = $('#warrantyContact').val();
    var warrantyEmail = $('#warrantyEmail').val();
    var warrantySerial = $('#warrantySerial').val();
    var warrantyMessage = $('#warrantyMessage').val();
    var warrantyProduct = $('#warrantyProduct').val();


  if(wfname == "")
  {
    swal("Warning", "Please Enter your First Name!", "warning");
  }
  else if(wmname == "")
  {
    swal("Warning", "Please Enter your Middle Initial!", "warning");
  }
  else if(wlname == "")
  {
    swal("Warning", "Please Enter your Last Name!", "warning");
  }
  else
      {
        if(warrantyContact == "")
        {
          swal("Warning", "Please Enter your Contact Number!", "warning");
        }
        else if(warrantyContact.length<11)
        {
          swal("Warning", "Contact Number must be '11' numbers!", "warning");
        }
        else
          {
            if(warrantyMessage == "")
            {
              swal("Warning", "Please Enter your suggestion or concern!", "warning");
            }
            else if(warrantySerial == "")
            {
              swal("Warning", "Please Enter Serial no.!", "warning");
            }
            else if(warrantyProduct == "")
            {
              swal("Warning", "Please Enter Product Name!", "warning");
            }
            else
                {
                    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
                        var xmlhttp=new XMLHttpRequest();
                      }
                      else {// code for IE6, IE5
                       xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                      }
                      xmlhttp.onreadystatechange=function()
                      {
                        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
                          document.getElementById("execute_save").innerHTML=xmlhttp.responseText;

                          $("#execute_save").find("script").each(function(i){
                          eval($(this).text());
                          });
                        }
                      }
                      xmlhttp.open("POST","/RR/components/warranty/uploadQue.jsp",true);
                      xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
                      xmlhttp.send("fName1="+fName1+"&fName2="+fName2+"&fName3="+fName3+"&wfname="+wfname+"&wmname="+wmname+"&wlname="+wlname+"&warrantyContact="+warrantyContact+"&warrantyEmail="+warrantyEmail+"&warrantySerial="+warrantySerial+"&warrantyMessage="+warrantyMessage+"&warrantyProduct="+warrantyProduct);
                }
          }
      }

 }

 function numberInputOnly(elem) 
 {
                    
    var validChars = /[0-9]/;
    var strIn = elem.value;
    var strOut = '';
    for(var i=0; i < strIn.length; i++) {
      strOut += (validChars.test(strIn.charAt(i)))? strIn.charAt(i) : '';
    }
    elem.value = strOut;
 }