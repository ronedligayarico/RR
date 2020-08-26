  'use strict'

$(document).ready(function() {


  });
function clickMe(warranty_tbl_id) 
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
    xmlhttp.open("POST","/RR/components/warranty/viewPhoto.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("warranty_tbl_id="+warranty_tbl_id);
}

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
    xmlhttp.open("POST","/RR/components/warranty/markasread.jsp",true);
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
    xmlhttp.open("POST","/RR/components/warranty/markasdeleted.jsp",true);
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
	  $("#warrantyTBL").load('/RR/components/warranty/warrantyTBL.jsp');
	  $("#reloadCNTs").load('/RR/components/warranty/reloadCNT.jsp');

      }
    }
    xmlhttp.open("POST","/RR/components/warranty/warranty.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send(null);
}

