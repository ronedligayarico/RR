  'use strict'

function editName(session_user_id)
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
       document.getElementById("app").innerHTML=xmlhttp.responseText;

      }
    }
    xmlhttp.open("POST","/RR/components/accountsetting/editName.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id);
}

function editPass(session_user_id)
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
       document.getElementById("app").innerHTML=xmlhttp.responseText;

      }
    }
    xmlhttp.open("POST","/RR/components/accountsetting/editPass.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id);
}

function save(session_user_id)
{

  var firstname = $('#firstname').val();
  var lastname = $('#lastname').val();

  if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
      var xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
      if (xmlhttp.readyState==4 && xmlhttp.status==200) {
       document.getElementById("scriptReader").innerHTML=xmlhttp.responseText;
        $("#scriptReader").find("script").each(function(i){
        eval($(this).text());
        });
      }
    }
    xmlhttp.open("POST","/RR/components/accountsetting/updateName.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id+"&firstname="+firstname+"&lastname="+lastname);
}

function cancel(session_user_id)
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
       document.getElementById("app").innerHTML=xmlhttp.responseText;

      }
    }
    xmlhttp.open("POST","/RR/components/accountsetting/accountSetting.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id);
}

function savePass(session_user_id)
{

  var oldpass = $('#oldpass').val();
  var newpass = $('#newpass').val();
  var retypepass = $('#retypepass').val();

  if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
      var xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
      if (xmlhttp.readyState==4 && xmlhttp.status==200) {
       document.getElementById("scriptReader").innerHTML=xmlhttp.responseText;
        $("#scriptReader").find("script").each(function(i){
        eval($(this).text());
        });
      }
    }
    xmlhttp.open("POST","/RR/components/accountsetting/updatePass.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id+"&oldpass="+oldpass+"&newpass="+newpass+"&retypepass="+retypepass);
}

 function uploadFile()
 {
  var data = new FormData(document.getElementById("myUpload"));
  var photoName = document.getElementById("photoName").files;
  var fName = $.map(photoName, function(val) 
  {
    return val.name;
  });

  //alert(fName);
  $.ajax({
      url: "../RR/components/accountsetting/upload.jsp", //contains the filepath to the jsp file that is responsible for the uploading process.
      type: "POST",
      data: data,fName,         // contains "var data"
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

 function execute_save(session_user_id)
 {
  //var data = new FormData(document.getElementById("myUpload"));
  var photoName = document.getElementById("photoName").files;
  var fName = $.map(photoName, function(val) 
  {
    return val.name;
  });
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
    xmlhttp.open("POST","/RR/components/accountsetting/uploadQue.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("fName="+fName);
  }

  //alert(fName);
  // $.ajax({
  //     url: "../PM/components/settings/account/uploadQue.jsp", //contains the filepath to the jsp file that is responsible for the uploading process.
  //     type: "POST",
  //     data: fName,         // contains "var data"
  //     processData: false,  // tell jQuery not to process the data
  //     contentType: false,   // tell jQuery not to set contentType   
  //     success: function(e)
  //     {
  //       document.getElementById("execute_save").innerHTML=e;
  //       $("#execute_save").find("script").each(function(i){
  //       eval($(this).text());
  //       });
  //     }
  //     });

 


function reloadAccntSettng(session_user_id)
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
       document.getElementById("app").innerHTML=xmlhttp.responseText;
      }
    }
    xmlhttp.open("POST","/RR/components/accountsetting/accountSetting.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id);
}
