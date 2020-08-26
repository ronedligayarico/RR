$(document).ready(function() {


    // $(document).on('change', '#province', function(){
    // var province_id = $( "#province" ).val();
    // selectCity(province_id);
    // });

    // $(document).on('change', '#city', function(){
    //     var city_id = $( "#city" ).val();
    //     selectBrgy(city_id);
    // });
    // $(document).on('change', '#appliances', function(){
    //     var appliances_id = $( "#appliances" ).val();
    //     selectModel(appliances_id);
    //     selectBrand(appliances_id);
    // });

});


function selectModel(brand_id)
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
            document.getElementById("model").innerHTML=xmlhttp.responseText;
            $("#model").find("script").each(function(i){
             eval($(this).text());
            });

        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/selectModel.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("brand_id="+brand_id);
}
function selectBrand(appliances_id)
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
            document.getElementById("brand").innerHTML=xmlhttp.responseText;
            $("#brand").find("script").each(function(i){
             eval($(this).text());
            });

        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/selectBrand.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("appliances_id="+appliances_id);
}

function selectModel1(brand_id)
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
            document.getElementById("model1").innerHTML=xmlhttp.responseText;
            $("#model1").find("script").each(function(i){
             eval($(this).text());
            });

        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/selectModel.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("brand_id="+brand_id);
}
function selectBrand1(appliances_id)
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
            document.getElementById("brand1").innerHTML=xmlhttp.responseText;
            $("#brand1").find("script").each(function(i){
             eval($(this).text());
            });

        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/selectBrand.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("appliances_id="+appliances_id);
}
function selectModel2(brand_id)
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
            document.getElementById("model2").innerHTML=xmlhttp.responseText;
            $("#model2").find("script").each(function(i){
             eval($(this).text());
            });

        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/selectModel.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("brand_id="+brand_id);
}
function selectBrand2(appliances_id)
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
            document.getElementById("brand2").innerHTML=xmlhttp.responseText;
            $("#brand2").find("script").each(function(i){
             eval($(this).text());
            });

        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/selectBrand.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("appliances_id="+appliances_id);
}

function selectModel3(brand_id)
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
            document.getElementById("model3").innerHTML=xmlhttp.responseText;
            $("#model3").find("script").each(function(i){
             eval($(this).text());
            });

        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/selectModel.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("brand_id="+brand_id);
}
function selectBrand3(appliances_id)
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
            document.getElementById("brand3").innerHTML=xmlhttp.responseText;
            $("#brand3").find("script").each(function(i){
             eval($(this).text());
            });

        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/selectBrand.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("appliances_id="+appliances_id);
}

function selectModel4(brand_id)
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
            document.getElementById("model4").innerHTML=xmlhttp.responseText;
            $("#model4").find("script").each(function(i){
             eval($(this).text());
            });

        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/selectModel.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("brand_id="+brand_id);
}
function selectBrand4(appliances_id)
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
            document.getElementById("brand4").innerHTML=xmlhttp.responseText;
            $("#brand4").find("script").each(function(i){
             eval($(this).text());
            });

        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/selectBrand.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("appliances_id="+appliances_id);
}
function selectCity(province_id)
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
            document.getElementById("city").innerHTML=xmlhttp.responseText;
            $("#city").find("script").each(function(i){
             eval($(this).text());
            });

        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/selectCity.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("province_id="+province_id);
}

function selectBrgy(city_id)
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
            document.getElementById("brgy").innerHTML=xmlhttp.responseText;
            $("#brgy").find("script").each(function(i){
             eval($(this).text());
            });

        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/selectBrgy.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("city_id="+city_id);
}


function changeMarkasused(item_sold_id)
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
            document.getElementById("ReadMe").innerHTML=xmlhttp.responseText;
            $("#ReadMe").find("script").each(function(i){
            eval($(this).text());
        });
        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/changeUsed.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("item_sold_id="+item_sold_id)

}

function addSRrecord()
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
            document.getElementById("recordModal").innerHTML=xmlhttp.responseText;
            $("#recordModal").find("script").each(function(i){
             eval($(this).text());
            });
            $('#recordModal').modal({
            backdrop: 'static',
            keyboard: false
        });
        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/addRecordModal.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send(null)
}

function addRecord(session_user_id)
{
    var branch = $('#branch').val();
    var datePurchase = $('#datePurchase').val();
    var street = $('#street').val();
    var province = $('#province').val();
    var city = $('#city').val();
    var brgy = $('#brgy').val();
    var customerNumber = $('#customerNumber').val();
    var staffName = $('#staffName').val();
    var fname = $('#fname').val();
    var mname = $('#mname').val();
    var lname = $('#lname').val();
    var acceptthis = $('#acceptthis').val();

    var applianceslist = [];
    $(".type").each(function(){
        applianceslist.push($(this).val());
    });
    var appliances = applianceslist.toString();

    var modellist = [];
    $(".model").each(function(){
        modellist.push($(this).val());
    });
    var model = modellist.toString();

    var brandlist = [];
    $(".brands").each(function(){
        brandlist.push($(this).val());
    });
    var brand = brandlist.toString();


    if(fname == "")
    {
        swal("Warning", "Please Enter your First Name!", "warning");
    }
    else if(mname == "")
    {
        swal("Warning", "Please Enter your Middle Initial!", "warning");
    }
    else if(lname == "")
    {
        swal("Warning", "Please Enter your Last Name!", "warning");
    }
    else if(street == "")
    {
        swal("Warning", "Please Enter your Street Number or House Number!", "warning");
    }
    else if(province == 0)
    {
        swal("Warning", "Please Select Province!", "warning");
    }
    else if(city == 0)
    {
        swal("Warning", "Please Select City!", "warning");
    }
    else if(brgy == 0)
    {
        swal("Warning", "Please Select Barangay!", "warning");
    }
    else if(customerNumber == "")
    {
        swal("Warning", "Please Enter your Contact No.!", "warning");
    } 
    else if(customerNumber.length<11)
    {
        swal("Warning", "Contact Number must be '11' digits!", "warning");
    }    
    else if(staffName == 0)
    {
        swal("Warning", "Please Enter Staff Name!", "warning");
    }
    else if(appliances == 0)
    {
        swal("Warning", "Please select item bought!", "warning");
    }
    else if(model == 0)
    {
        swal("Warning", "Please Select Item Model!", "warning");
    }
    else if(brand == 0)
    {
        swal("Warning", "Please Select Item Brand!", "warning");
    }
    else if(branch == 0)
    {
        swal("Warning", "Please Enter Branch!", "warning");
    }
    else if(datePurchase == "")
    {
        swal("Warning", "Please Enter the transaction date!", "warning");
    }
    else if($('input[name=acceptthis]').prop("checked"))
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
                document.getElementById("scriptRead").innerHTML=xmlhttp.responseText;
                $("#scriptRead").find("script").each(function(i){
                eval($(this).text());
            });
                $('#recordModal').modal('hide');
            }
        }
        xmlhttp.open("POST","/RR/components/records/sales/saveRecords.jsp",true);
        xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xmlhttp.send("session_user_id="+session_user_id+"&branch="+branch+"&datePurchase="+datePurchase+"&street="+street+"&province="+province+"&city="+city+"&brgy="+brgy+"&customerNumber="+customerNumber+"&staffName="+staffName+"&fname="+fname+"&mname="+mname+"&lname="+lname+"&appliances="+appliances+"&model="+model+"&brand="+brand);

    }
    else
    {
        swal("Warning", "Please check the box for the Privacy Terms & Conditions!", "warning");
    }

}

function viewRecords(receipt_id)
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
            document.getElementById("recordModal").innerHTML=xmlhttp.responseText;
            $("#recordModal").find("script").each(function(i){
             eval($(this).text());
            });
            $('#recordModal').modal({
            backdrop: 'static',
            keyboard: false
        });
        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/viewrecordModal.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("receipt_id="+receipt_id)
}
function loadSalesRecord(session_user_id) 
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
        $("#Sales").load('/RR/components/records/sales/salesrecordTBL.jsp');
        $("#Void").load('/RR/components/records/void/voidrecordTBL.jsp');
      }
    }
    xmlhttp.open("POST","/RR/components/records/records.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("session_user_id="+session_user_id);
}

function useWrnty(item_sold_id,session_user_id)
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
            document.getElementById("ReadMe").innerHTML=xmlhttp.responseText;
            $("#ReadMe").find("script").each(function(i){
            eval($(this).text());
        });
        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/use_wrnty.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("item_sold_id="+item_sold_id+"&session_user_id="+session_user_id)

}

function changeStatus(receipt_id) 
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
            document.getElementById("ReadMe").innerHTML=xmlhttp.responseText;
            $("#ReadMe").find("script").each(function(i){
            eval($(this).text());
        });
        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/changeStatus.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("receipt_id="+receipt_id)

}

function printValid()
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
            window.print();
            location.reload();
        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/printValid.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send(null)
}
function printVoid()
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
            window.print();
            location.reload();
        }
    }
    xmlhttp.open("POST","/RR/components/records/void/printVoid.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send(null)

}


function printReceipt(receipt_id)
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
            window.print();
            location.reload();
        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/recordPrint.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("&receipt_id="+receipt_id)
}
function monthModal() {

    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
    var xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            document.getElementById("recordModal").innerHTML=xmlhttp.responseText;
            $("#recordModal").find("script").each(function(i){
             eval($(this).text());
            });
            $('#recordModal').modal({
            backdrop: 'static',
            keyboard: false
        });
        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/monthModal.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("null")
}

function monthPrint() {

    var month = $('#month').val();

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
            window.print();
            location.reload();
        }
    }
    xmlhttp.open("POST","/RR/components/records/sales/monthPrint.jsp",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("&month="+month)
}

