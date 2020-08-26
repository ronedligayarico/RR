<%@include file= "../../../init/initialize.jsp"%>
<style type="text/css">
  .font
  {
    font-size: 1rem;
  }
  .black{
    color: #000000;
  }
  .blue{
    color: #171dc1;
  }

  }
  .table {
      width: 100%;
      max-width: 100%;
      margin-bottom: 1rem;
      background-color: transparent;
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
  String model_desc = "";
  String brand_desc = "";
  String invoice_year = "";
%>
          <center><span style="color: #171dc2; font-size: 25px;"><b>ROYAL STAR APPLIANCES MARKETING INC.</b></span><br></center>
          <center><span class="black">#977 St. Golden City Brgy.Dila National Hi-way, Santa Rosa City of Laguna.</span><br></center>
          <center><span class="black">Call: 0942-564-5643</span></center>
          <br>
                      <%
                        querySelect = "SELECT EXTRACT(YEAR FROM `receipt`.`date_entered`)as `year`,`branch_desc`,CONCAT(`users`.`firstname`,' ',`users`.`lastname`)as `staffName`,CONCAT(`customer`.`fname`,' ',`customer`.`mname`,'.',`customer`.`lname`)as `cname`,CONCAT(`customer`.`street`,', Brgy.',`brgy`.`brgy_desc`,' City of ',`city`.`city_desc`)as `custom_address`,`receipt`.`receipt_id`,`customer`.`custom_contactNO`,`branch_name`,DATE_FORMAT(`date_purchase`, '%M,%d,%Y')as date,EXTRACT(YEAR FROM `invoice`.`date_entered`)as `invoice_year`,`invoice_id`  FROM `receipt` INNER JOIN `branch` ON `receipt`.`branch_id` = `branch`.`branch_id` INNER JOIN `item_sold` ON `receipt`.`receipt_id`=`item_sold`.`receipt_id` INNER JOIN `customer` ON `receipt`.`receipt_id`=`customer`.`receipt_id` INNER JOIN `users` ON `receipt`.`staff_id` = `users`.`user_id` INNER JOIN `province` ON `customer`.`province_id`=`province`.`province_id` INNER JOIN `city` ON `province`.`province_id`=`city`.`province_id` INNER JOIN `brgy` ON `city`.`city_id`=`brgy`.`city_id` INNER JOIN `invoice` ON `receipt`.`receipt_id`=`invoice`.`receipt_id` WHERE `receipt`.`markasdeleted`='0' AND `receipt`.`receipt_id`='"+receipt_id+"'";
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
    <div class="form-row">
        <div class="col-md-6">
                      <span class="blue"><b>Receipt No:</b></span><span class="black">&nbsp;<%=year%>-<%=receipt_id%>-<%=branch_desc%></span><br><br>
                      <span class="blue"><b>Sold to:</b></span><span class="black">&nbsp;<%=cname%></span><br>
                      <span class="blue"><b>Contact #:</b></span><span class="black">&nbsp;<%=custom_contactNO%></span><br>
                      <span class="blue"><b>Address:</b></span><span class="black">&nbsp;<%=custom_address%></span>

        </div>
        <div class="col-md-6">
                      <span class="blue"><b>Sales Invoice:</b></span><span class="black">&nbsp;<%=invoice_year%>-<%=invoice_id%></span><br><br>
                      <span class="blue"><b>Date Purchase:</b></span><span class="black">&nbsp;<%=date%></span><br>
                      <span class="blue"><b>Branch Name:</b></span><span class="black">&nbsp;<%=branch_name%></span><br>
                      <span class="blue"><b>Assist By:</b></span><span class="black">&nbsp;<%=staffName%></span>
                      <br>
                      <br>
                      <br>

        </div>
    </div>
                              <div class="font">

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
                    <div class="form-row">
                      <div class="col-md-12">
                          <table class="table"  style="border:1px solid #000000;">
                            <tr>
                                <th>Items</th>
                                <th>Brand</th>
                                <th>Model</th>
                                <th>Quantity</th>
                            </tr>
                      
                         </table>
                      </div>
                    </div>
                    <br><br>
                           <ul style="padding-left: 14rem;">
                            <%
                              querySelect = "SELECT `markasused`,`item_sold_id`,`item_warranty_duration`,`appliances_type_name`,`warranty_duration`,`brand_desc`,`model_desc` FROM `item_sold` INNER JOIN `appliances_type` ON `item_sold`.`appliances_type_id`=`appliances_type`.`appliances_type_id` INNER JOIN `item_warranty` ON `appliances_type`.`item_warranty_id`=`item_warranty`.`item_warranty_id` INNER JOIN `model` ON `item_sold`.`model_id`=`model`.`model_id` INNER JOIN `brand` ON `item_sold`.`brand_id`=`brand`.`brand_id` WHERE `item_sold`.`markasdeleted`='0' AND `item_sold`.`receipt_id`='"+receipt_id+"'";
                              rsSelect = stmt.executeQuery(querySelect);
                              while(rsSelect.next())
                              {
                                markasused = rsSelect.getString("markasused");
                                item_sold_id = rsSelect.getString("item_sold_id");
                                appliances_type_name = rsSelect.getString("appliances_type_name");
                                item_duration = rsSelect.getString("warranty_duration");
                                item_warranty_duration = rsSelect.getString("item_warranty_duration");
                                brand_desc = rsSelect.getString("brand_desc");
                                model_desc = rsSelect.getString("model_desc");
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
                                Warranty Expired - 1
                              <%
                                }
                                else if(markasused.equals("1"))
                                {
                              %>
                                Warranty Already Used - 1
                              <% 
                                }
                                else
                                {
                              %>
                                Warranty Valid - 1&nbsp;
                              </li>
                              <%
                                }
                              }
                            %>
                           </ul>
                          <br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <span class="black">
                            ________________________________________________________________________________________________________________________________
                          </span>
                          <br><br>
                          <div class="form-row">
                            <div class="col-md-8">
                           <span class="black">Call for Inquiries : (048)-627-1872</span><br>
                           <span class="black">Mobile No.: 0912-937-2917</span><br>
                           <span class="black">or Visit our Website : www.royalstar.com</span><br>

                            </div>
                            <div class="col-md-4">
                              <span class="black">Approved by:</span>
                            </div>
                          </div><br><br>
                          <center><span class="black">Royal Star Appliances Marketing Inc. Ang Appliances ng Bayan , Ano pang hinihintay mo halika nat bumili.</span></center>

