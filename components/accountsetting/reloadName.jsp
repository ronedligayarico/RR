<%@include file= "../../init/initialize.jsp"%>
<%
  String name = "";

  querySelect = "SELECT CONCAT(`firstname`,' ',`lastname`)as name FROM `users` WHERE `markasdeleted`='0' AND `user_id`='"+session_user_id+"'";
  rsSelect = stmt.executeQuery(querySelect);
  if(rsSelect.next())
  {
    name = rsSelect.getString("name");
%>
  <h5 style="color: #171dc2; padding-top: .5rem;"><b><%=name%></b></h5>
<%
  }
%>