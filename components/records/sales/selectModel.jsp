<%@include file= "../../../init/initialize.jsp"%>
<select class="form-control" id="model">
  <option value="0" selected hidden>Select Model</option>
    <%
     String brand_id = request.getParameter("brand_id");
     String model_desc = "";
     String model_id = "";


      querySelect = "SELECT `model_id`,`model_desc` FROM `model` WHERE `markasdeleted` ='0' AND `brand_id`='"+brand_id+"'";
      rsSelect = stmt.executeQuery(querySelect);
      while(rsSelect.next())
      {
        model_id = rsSelect.getString("model_id");
        model_desc = rsSelect.getString("model_desc");
    %>
      <option value="<%=model_id%>"><%=model_desc%></option>
    <%
      }
    %>
</select>