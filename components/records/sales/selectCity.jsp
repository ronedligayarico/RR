<%@include file= "../../../init/initialize.jsp"%>
<select class="form-control" id="city">
  <option value="0" selected hidden>Select City</option>
     <%
     String province_id = request.getParameter("province_id");
     String city_desc = "";
     String city_id = "";

        querySelect = "SELECT `city_id`,`city_desc` FROM `city` WHERE `markasdeleted` ='0' AND `province_id`= '"+province_id+"'";
        rsSelect = stmt.executeQuery(querySelect);
        while(rsSelect.next())
        {
          city_desc = rsSelect.getString("city_desc");
          city_id = rsSelect.getString("city_id");
      %>
        <option value="<%=city_id%>"><%=city_desc%></option>
      <%
        }
      %>
</select>