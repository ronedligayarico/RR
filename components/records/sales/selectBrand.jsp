<%@include file= "../../../init/initialize.jsp"%>
<%
     String appliances_id = request.getParameter("appliances_id");
     String brand_desc = "";
     String brand_id = "";
%>
<select class="form-control" id="brand">
  <option value="0" selected hidden>Select Brand</option>
    <%



      querySelect = "SELECT `brand_id`,`brand_desc` FROM `brand` WHERE `markasdeleted` ='0' AND `appliances_type_id`='"+appliances_id+"'";
      rsSelect = stmt.executeQuery(querySelect);
      while(rsSelect.next())
      {
        brand_id = rsSelect.getString("brand_id");
        brand_desc = rsSelect.getString("brand_desc");
    %>
      <option value="<%=brand_id%>"><%=brand_desc%></option>
    <%
      }
    %>
</select>