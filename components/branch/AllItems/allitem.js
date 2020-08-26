  'use strict'

$(document).ready(function() {
    $("#allitems").load('/RR/components/branch/AllItems/allitemTBL.jsp');
  });

function addAllItemModal(){
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        var xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            document.getElementById("allModal").innerHTML=xmlhttp.responseText;
            $("#allModal").find("script").each(function(i){
             eval($(this).text());
            });
            $('#allModal').modal({
              backdrop: 'static',
	            keyboard: false
	        });
            
        }
    }
    xmlhttp.open("POST","/RR/components/branch/AllItems/addItemModal.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send(null);
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
      url: "../RR/components/branch/AllItems/upload.jsp", //contains the filepath to the jsp file that is responsible for the uploading process.
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
    var item_name = $('#item_name').val();
    var appliances_type_id = $('#appliances_type_id').val();
    var branch_id = $('#branch_id').val();

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
    xmlhttp.open("POST","/RR/components/branch/AllItems/uploadQue.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("fName="+fName+"&item_name="+item_name+"&appliances_type_id="+appliances_type_id+"&branch_id="+branch_id);

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
 }
function loadAllitem(session_user_id) {
 
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
      var xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
      if (xmlhttp.readyState==4 && xmlhttp.status==200) {
       document.getElementById("upload").innerHTML=xmlhttp.responseText;
       $("#upload").find("script").each(function(i){
        eval($(this).text());
        });
       $("#allitems").load('/RR/components/branch/AllItems/allitemTBL.jsp');
        $('#allModal').modal('hide');
      }
    }
    xmlhttp.open("POST","/RR/components/branch/AllItems/allitem.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id);
}
function allItems(session_user_id) {
 
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
      var xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
      if (xmlhttp.readyState==4 && xmlhttp.status==200) {
       document.getElementById("myRead").innerHTML=xmlhttp.responseText;
       $("#myRead").find("script").each(function(i){
        eval($(this).text());
        });
       $("#allitems").load('/RR/components/branch/AllItems/allitemTBL.jsp');
        $('#allModal').modal('hide');
      }
    }
    xmlhttp.open("POST","/RR/components/branch/AllItems/allitem.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id);
}


function plusModal(quantity ,original_item_id ,session_user_id){
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        var xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            document.getElementById("allModal").innerHTML=xmlhttp.responseText;
            $("#allModal").find("script").each(function(i){
             eval($(this).text());
            });
            $('#allModal').modal({
              backdrop: 'static',
              keyboard: false
          });
            
        }
    }
    xmlhttp.open("POST","/RR/components/branch/AllItems/plusModal.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id+"&original_item_id="+original_item_id+"&quantity="+quantity);
}
function minusModal(quantity ,original_item_id ,session_user_id){
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        var xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            document.getElementById("allModal").innerHTML=xmlhttp.responseText;
            $("#allModal").find("script").each(function(i){
             eval($(this).text());
            });
            $('#allModal').modal({
              backdrop: 'static',
              keyboard: false
          });
            
        }
    }
    xmlhttp.open("POST","/RR/components/branch/AllItems/minusModal.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id+"&original_item_id="+original_item_id+"&quantity="+quantity);
}

function plusItem(quantity ,original_item_id ,session_user_id) {

    var addquantity = $('#addquantity').val();

  if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
      var xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
      if (xmlhttp.readyState==4 && xmlhttp.status==200) {
       document.getElementById("scriptRead").innerHTML=xmlhttp.responseText;
        $("#scriptRead").find("script").each(function(i){
        eval($(this).text());
        });
      }
    }
    xmlhttp.open("POST","/RR/components/branch/AllItems/addingItem.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id+"&original_item_id="+original_item_id+"&quantity="+quantity+"&addquantity="+addquantity);
}

function minusItem(quantity ,original_item_id ,session_user_id) {

    var minusquantity = $('#minusquantity').val();
    
  if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
      var xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
      if (xmlhttp.readyState==4 && xmlhttp.status==200) {
       document.getElementById("scriptRead").innerHTML=xmlhttp.responseText;
        $("#scriptRead").find("script").each(function(i){
        eval($(this).text());
        });
      }
    }
    xmlhttp.open("POST","/RR/components/branch/AllItems/minusItem.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id+"&original_item_id="+original_item_id+"&minusquantity="+minusquantity+"&quantity="+quantity);
}
