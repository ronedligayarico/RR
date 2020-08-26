  'use strict'

$(document).ready(function() {
    $("#userMngt").load('/RR/components/usermanagement/userTBL.jsp');
  });

function addUser(session_user_id) 
{
  var fname = $('#fname').val();
  var lname = $('#lname').val();
  var username = $('#username').val();
  var user_type_id = $('#user_type_id').val();

  if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
      var xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
      if (xmlhttp.readyState==4 && xmlhttp.status==200) {
       document.getElementById("scriptreader").innerHTML=xmlhttp.responseText;
        $("#scriptreader").find("script").each(function(i){
             eval($(this).text());
            });
      }
    }
    xmlhttp.open("POST","/RR/components/usermanagement/addUser.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("fname="+fname+"&lname="+lname+"&username="+username+"&user_type_id="+user_type_id+"&session_user_id="+session_user_id);

}

function loadUser(session_user_id) {
 
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
       $("#userMngt").load('/RR/components/usermanagement/userTBL.jsp');
      }
    }
    xmlhttp.open("POST","/RR/components/usermanagement/user.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id);
}

function resetPass(user_id, session_user_id) 
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
       document.getElementById("scriptreader").innerHTML=xmlhttp.responseText;
        $("#scriptreader").find("script").each(function(i){
             eval($(this).text());
            });
      }
    }
    xmlhttp.open("POST","/RR/components/usermanagement/resetPassword.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("user_id="+user_id+"&session_user_id="+session_user_id);

}
