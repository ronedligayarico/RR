<%@include file= "../../../init/initialize.jsp"%>
  <%
  String notifCNT ="";
    querySelect = "SELECT COUNT(*) as notifCNT FROM `warranty_concern` WHERE `markasdeleted` ='0'  AND `markasread` ='0'";
    rsSelect = stmt.executeQuery(querySelect);
    while(rsSelect.next())
    {
      notifCNT = rsSelect.getString("notifCNT");
    }
  %>
    <a class="nav-link reloadLink" href="#" id="components/warranty/warranty.jsp" style="color: #171dc2;">
     <b>Warranty Concern&nbsp;<i class="fas fa-envelope" style="font-size: 15px;"></i></b>
     <span class="counter counter-lg" style=";font-size: 17px;color: white; background-color: red;border-radius: .9rem;">&nbsp;<%=notifCNT%>&nbsp;</span>
    </a>
