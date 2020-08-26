<%@include file= "../../init/initialize.jsp"%>
<%
  String user_pic = "";
  String link = "";

  querySelect = "SELECT `user_pic` FROM `users` WHERE `markasdeleted` ='0' AND `user_id` = '"+session_user_id+"'";
  rsSelect = stmt.executeQuery(querySelect);
  if(rsSelect.next())
  {
    user_pic = rsSelect.getString("user_pic");
    link = "/RR/userPicture/"+user_pic;
  }
%>
<img src="<%=link%>" alt="Circle Image" class="rounded-circle img-fluid">
