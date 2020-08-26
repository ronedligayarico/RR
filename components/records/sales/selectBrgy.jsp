<%@include file= "../../../init/initialize.jsp"%>
<select class="form-control" id="brgy">
  <option value="0" selected hidden>Select Brgy</option>
     <%
     String city_id = request.getParameter("city_id");
     String brgy_desc = "";
     String brgy_id = "";

        querySelect = "SELECT `brgy_id`,`brgy_desc` FROM `brgy` WHERE `markasdeleted` ='0' AND `city_id`= '"+city_id+"'";
        rsSelect = stmt.executeQuery(querySelect);
        while(rsSelect.next())
        {
          brgy_desc = rsSelect.getString("brgy_desc");
          brgy_id = rsSelect.getString("brgy_id");
      %>
        <option value="<%=brgy_id%>"><%=brgy_desc%></option>
      <%
        }
      %>
</select>