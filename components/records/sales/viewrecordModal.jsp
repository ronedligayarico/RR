<%@include file= "../../../init/initialize.jsp"%>
<script src="/RR/components/records/sales/salesrecord.js"></script>
<style type="text/css">
  .font
  {
    font-size: 1rem;
  }
</style>
<%
  String receipt_id = request.getParameter("receipt_id");
  String branch_name = "";
  String date = "";
  String date_purchase = "";
  String warranty_duration = "";
  String item_warranty_duration = "";
  String item_warranty_id = "";
  String item_duration = "";
  String item_sold_id = "";
  String markasused = "";
  String appliances_type_name = "";
  String cname = "";
  String custom_contactNO = "";
  String custom_address = "";
  String staffName = "";
  String year = "";
  String branch_desc = "";
  String invoice_id = "";
  String brand_desc = "";
  String model_desc = "";
  String invoice_year = "";
%>
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" style="color: #171dc2;"><b>Record Details</b></h4>
        </div>
        <div class="modal-body">
                  <div class="col-lg-12" >
                    <P> 
                      <%
                        querySelect = "SELECT EXTRACT(YEAR FROM `receipt`.`date_entered`)as `year`,`branch_desc`,CONCAT(`users`.`firstname`,' ',`users`.`lastname`)as `staffName`,CONCAT(`customer`.`fname`,' ',`customer`.`mname`,'.',`customer`.`lname`)as `cname`,CONCAT(`customer`.`street`,', Brgy.',`brgy`.`brgy_desc`,' City of ',`city`.`city_desc`)as `custom_address`,`receipt`.`receipt_id`,`customer`.`custom_contactNO`,`branch_name`,DATE_FORMAT(`date_purchase`, '%M,%d,%Y')as date,EXTRACT(YEAR FROM `invoice`.`date_entered`)as `invoice_year`,`invoice`.`invoice_id`  FROM `receipt` INNER JOIN `branch` ON `receipt`.`branch_id` = `branch`.`branch_id` INNER JOIN `item_sold` ON `receipt`.`receipt_id`=`item_sold`.`receipt_id` INNER JOIN `customer` ON `receipt`.`receipt_id`=`customer`.`receipt_id` INNER JOIN `users` ON `receipt`.`staff_id` = `users`.`user_id` INNER JOIN `province` ON `customer`.`province_id`=`province`.`province_id` INNER JOIN `city` ON `province`.`province_id`=`city`.`province_id` INNER JOIN `brgy` ON `city`.`city_id`=`brgy`.`city_id` INNER JOIN `invoice` ON `receipt`.`receipt_id`=`invoice`.`receipt_id` WHERE `receipt`.`markasdeleted`='0' AND `receipt`.`receipt_id`='"+receipt_id+"'";
                        rsSelect = stmt.executeQuery(querySelect);
                        if(rsSelect.next())
                        {
                          cname = rsSelect.getString("cname");
                          custom_contactNO = rsSelect.getString("custom_contactNO");
                          custom_address = rsSelect.getString("custom_address");
                          receipt_id = rsSelect.getString("receipt_id");
                          branch_name = rsSelect.getString("branch_name");
                          date = rsSelect.getString("date");
                          staffName = rsSelect.getString("staffName");
                          year = rsSelect.getString("year");
                          branch_desc = rsSelect.getString("branch_desc");
                          invoice_id = rsSelect.getString("invoice_id");
                          invoice_year = rsSelect.getString("invoice_year");
                      %>
                              <div class="font">
                               <b> Receipt No. :</b>&nbsp;<%=year%>-<%=receipt_id%>-<%=branch_desc%> <br>
                               <b> Invoice No. :</b>&nbsp;<%=invoice_year%>-<%=invoice_id%> <br>
                               <b> Branch Name :</b>&nbsp;<%=branch_name%> <br>
                               <b> Customer Name :</b>&nbsp;<%=cname%><br>
                               <b> Mobile No. :</b>&nbsp;<%=custom_contactNO%> <br>
                               <b> Address :</b>&nbsp;<%=custom_address%><br>

                               <b> Staff in-charge :</b>&nbsp;<%=staffName%> <br>
                               <b> Date Purchase :</b>&nbsp;<%=date%> <br>
                             </div>
                     <%
                        querySelect1 = "SELECT DATE_FORMAT(`date_purchase`,'%M,%d,%Y')as date_purchase,`warranty_duration`,`appliances_type`.`item_warranty_id`,`item_warranty_duration` FROM `item_sold` INNER JOIN `appliances_type` ON `item_sold`.`appliances_type_id`=`appliances_type`.`appliances_type_id` INNER JOIN `item_warranty` ON `appliances_type`.`item_warranty_id`=`item_warranty`.`item_warranty_id` WHERE `item_sold`.`markasdeleted` ='0' AND `item_sold`.`markasused`='0' AND `receipt_id`='"+receipt_id+"' ORDER BY `item_warranty_id` DESC LIMIT 1";
                        rsSelect1 = stmt1.executeQuery(querySelect1);
                        if(rsSelect1.next())
                          {
                            date_purchase = rsSelect1.getString("date_purchase");
                            warranty_duration = rsSelect1.getString("warranty_duration");
                            item_warranty_duration = rsSelect1.getString("item_warranty_duration");
                          }
                        }
                          %>  
                           <b class="font"> Items :</b>
                           <ul>
                            <%
                              querySelect = "SELECT `markasused`,`item_sold_id`,`item_warranty_duration`,`appliances_type_name`,`warranty_duration`,`model_desc`,`brand_desc` FROM `item_sold` INNER JOIN `appliances_type` ON `item_sold`.`appliances_type_id`=`appliances_type`.`appliances_type_id` INNER JOIN `item_warranty` ON `appliances_type`.`item_warranty_id`=`item_warranty`.`item_warranty_id` INNER JOIN `model` ON `item_sold`.`model_id`=`model`.`model_id` INNER JOIN `brand` ON `item_sold`.`brand_id`=`brand`.`brand_id` WHERE `item_sold`.`markasdeleted`='0' AND `item_sold`.`receipt_id`='"+receipt_id+"'";
                              rsSelect = stmt.executeQuery(querySelect);
                              while(rsSelect.next())
                              {
                                markasused = rsSelect.getString("markasused");
                                item_sold_id = rsSelect.getString("item_sold_id");
                                appliances_type_name = rsSelect.getString("appliances_type_name");
                                item_duration = rsSelect.getString("warranty_duration");
                                item_warranty_duration = rsSelect.getString("item_warranty_duration");
                                model_desc = rsSelect.getString("model_desc");
                                brand_desc = rsSelect.getString("brand_desc");
                                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

                                String datenow = formatter.format(new Date());
                                Date dateToday = formatter.parse(datenow);
                                Date dateDuration = formatter.parse(item_duration);

                              %>
                              <li style="font-size: .975rem;"><u><%=appliances_type_name%></u>(<b><%=brand_desc%>&nbsp;<%=model_desc%></b>)&nbsp;&nbsp;-&nbsp;&nbsp;<%=item_warranty_duration%>                          
                              <%
                                if(dateToday.after(dateDuration))
                                {
                              %>
                                <span class="badge badge-pill badge-warning">Warranty Expired</span>
                              <%
                                }
                                else if(markasused.equals("1"))
                                {
                              %>
                                <span class="badge badge-pill badge-danger">Warranty Already Used</span>
                              <% 
                                }
                                else
                                {
                              %>
                                <span class="badge badge-pill badge-success">Warranty Valid&nbsp;<a onclick="useWrnty('<%=item_sold_id%>')" style="color:red"><u><b>Use it </b></u></a></span></li>
                              <%
                                }
                              }
                            %>
                           </ul>
                          <br>
                    </P>
                  </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-info btn-sm" style="background-color: #343a40; " onclick="printReceipt('<%=receipt_id%>')">Print Receipt</button>&nbsp;
          <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal" aria-label="Close" style="background-color: red;">Close</button>
        </div>
      </div>
    </div>

<div id="scriptRead"></div>