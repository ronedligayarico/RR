  <%@ include file="../init/initialize.jsp"%>
  <%
    String name = "";
    String link = "";
    String user_pic = "";
    String user_type_id = "";
    String notifCNT = "";
    String wcCNT = "";
  %>
  <nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionsNav">
    <div class="container">
      <div class="navbar-translate">
        <a class="navbar-brand" href="" style="color: #171dc2; font-size: 40px;">
         <b style="color: #171dc2;" class="title"> Royal Star </b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="sr-only">Toggle navigation</span>
          <span class="navbar-toggler-icon"></span>
          <span class="navbar-toggler-icon"></span>
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse">
        <ul class="navbar-nav ml-auto">

     <!--      <li class="nav-item" style="padding-right: 35rem;">
            <a class="nav-link" id="components/salesrecord/salesrecord.jsp">
               Available Items
            </a>
          </li> -->
          <li class="nav-item">
            <a class="nav-link reloadLink" href="#" id="components/records/records.jsp" style="color: #171dc2;">
             <b><i class="fas fa-th-list"></i> Records</b>
            </a>
          </li>
          <li class="dropdown nav-item">
            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" style="color: #171dc2;">
               <b><i class="fas fa-th-list"></i> Item Lists</b>
            </a>
            <div class="dropdown-menu dropdown-with-icons">
              <h4 class="dropdown-header" style="color: #171dc2;"><b><i class="fas fa-ellipsis-v"></i> Select Branch</b></h4>
              <a  class="dropdown-item nav-link reloadLink"  id="components/branch/AllItems/allitem.jsp" style="color: #171dc2;">
                <b> All Branch</b>
              </a>
              <a  class="dropdown-item nav-link reloadLink"  id="components/branch/SantaRosa/santarosa.jsp" style="color: #171dc2;">
               <b>  Santa Rosa</b>
              </a>
              <a class="dropdown-item nav-link reloadLink" id="components/branch/Calamba/calamba.jsp" style="color: #171dc2;">
                <b> Calamba</b>
              </a>
            </div>
          </li>
          <li class="nav-item">
            <%
              querySelect = "SELECT COUNT(*) as notifCNT FROM `feedback` WHERE `markasdeleted` ='0'  AND `markasread` ='0'";
              rsSelect = stmt.executeQuery(querySelect);
              while(rsSelect.next())
              {
                notifCNT = rsSelect.getString("notifCNT");
              }
            %>
             <div id="reloadCNT">
              <a class="nav-link reloadLink" href="#" id="components/inquiry/inquiry.jsp" style="color: #171dc2;">
               <b>Inquiries&nbsp;<i class="fas fa-envelope" style="font-size: 15px;"></i></b>
               <span class="counter counter-lg" style=";font-size: 17px;color: white; background-color: red;border-radius: .9rem;">&nbsp;<%=notifCNT%>&nbsp;</span>
              </a>
             </div>
          </li>
          <li class="nav-item">
            <%
              querySelect = "SELECT COUNT(*) as wcCNT FROM `warranty_concern` WHERE `markasdeleted` ='0'  AND `markasread` ='0'";
              rsSelect = stmt.executeQuery(querySelect);
              while(rsSelect.next())
              {
                wcCNT = rsSelect.getString("wcCNT");
              }
            %>
             <div id="reloadCNTs">
              <a class="nav-link reloadLink" href="#" id="components/warranty/warranty.jsp" style="color: #171dc2;">
               <b>Warranty Concern&nbsp;<i class="fas fa-envelope" style="font-size: 15px;"></i></b>
               <span class="counter counter-lg" style=";font-size: 17px;color: white; background-color: red;border-radius: .9rem;">&nbsp;<%=wcCNT%>&nbsp;</span>
              </a>
             </div>
          </li>

          <li class="dropdown nav-item" style="padding-right: 5rem;">
          </li>
         

        <%
          querySelect = "SELECT CONCAT(`firstname`,' ',`lastname`)as name FROM `users` WHERE `markasdeleted`='0' AND `user_id`='"+session_user_id+"'";
          rsSelect = stmt.executeQuery(querySelect);
          if(rsSelect.next())
          {
            name = rsSelect.getString("name");
        %>
        <div id="reloadname">
          <h5 style="color: #171dc2; padding-top: .5rem; padding-left: .8rem;"><b><%=name%></b></h5>
        </div>
        <%
          }
        %>
          <li class="dropdown nav-item" style="padding-left: .5rem;">
            <a href="#" class="profile-photo dropdown-toggle nav-link" data-toggle="dropdown">
              <div class="profile-photo-small">
                    <%
                      querySelect = "SELECT `user_pic` FROM `users` WHERE `markasdeleted` ='0' AND `user_id` = '"+session_user_id+"'";
                      rsSelect = stmt.executeQuery(querySelect);
                      if(rsSelect.next())
                      {
                        user_pic = rsSelect.getString("user_pic");
                        link = "/RR/userPicture/"+user_pic;
                      }
                    %>
                  <div id="reloadpic">
                  <img src="<%=link%>" alt="Circle Image" class="rounded-circle img-fluid">
                  </div>
              </div>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
              <a class="dropdown-item reloadLink" id="components/accountsetting/accountSetting.jsp" style="color: #171dc2;"><b><i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>Account Settings</b></a>
              <%
                querySelect = "SELECT `user_type_id` FROM `users` WHERE `markasdeleted` = '0' AND `user_id` ='"+session_user_id+"'";
                rsSelect = stmt.executeQuery(querySelect);
                while(rsSelect.next())
                {
                  user_type_id = rsSelect.getString("user_type_id");

                  if(user_type_id.equals("1") || user_type_id.equals("2"))
                  {
              %>
              <a class="dropdown-item reloadLink" id="components/usermanagement/user.jsp" style="color: #171dc2;"><b><i class="fas fa-user-edit"></i> User Management</b></a>
              <%
                  }
                }
              %>
              <a href="" class="dropdown-item" onclick="logout()" style="color: #171dc2;"><b><i class="fas fa-sign-out-alt"></i> Sign out</b></a>
            </div>
          </li>
           
        </ul>
      </div>
    </div>
  </nav>
 <div id="navbar"></div>
 <script src="index.js"></script>