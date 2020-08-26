  'use strict'

$(document).ready(function() {


  });

function markasread(id)
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
       document.getElementById("thisscript").innerHTML=xmlhttp.responseText;
        $("#thisscript").find("script").each(function(i){
             eval($(this).text());
            });
      }
    }
    xmlhttp.open("POST","/RR/components/inquiry/markasread.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("id="+id);

}

function markasdeleted(id)
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
       document.getElementById("thisscript").innerHTML=xmlhttp.responseText;
        $("#thisscript").find("script").each(function(i){
             eval($(this).text());
            });
      }
    }
    xmlhttp.open("POST","/RR/components/inquiry/markasdeleted.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("id="+id);
}

function loadinquiry() 
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
	  $("#inqTBL").load('/RR/components/inquiry/inqTBL.jsp');
	  $("#reloadCNT").load('/RR/components/inquiry/reloadCNT.jsp');

      }
    }
    xmlhttp.open("POST","/RR/components/inquiry/inquiry.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send(null);
}

