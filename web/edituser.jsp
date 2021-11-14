<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.util.logging.Level" %>
<%@page import="java.util.logging.Logger" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.lang.Math.*" %>
<%@page import="java.util.*"%>

<jsp:include page="header.jsp"/>
<!-- main content start-->
	<div id="page-wrapper">
		<div class="main-page">
			<div class="forms">
				<div class="row">
<% 
           
 /* --- The edit user page --- */  
            Connection con;    
    
       if(request.getMethod().compareToIgnoreCase("post")==0)
   {
   try
   {
      
      String name_user = request.getParameter("name");
      String email_user = request.getParameter("email");
      String phone_user = request.getParameter("phone");
      String username_user = request.getParameter("username");
      String type_user = request.getParameter("type");
      String index_user = request.getParameter("index_user");
      Class.forName("org.postgresql.Driver");
      con = DriverManager.getConnection("jdbc:postgresql://localhost/meru","postgres","root");
      String query = "UPDATE test_user SET  name = ?, username = ?,  email= ?, phone = ? WHERE index_user =?";
     
      PreparedStatement pst = con.prepareStatement(query);
     
      pst.setString(1, name_user);
      pst.setString(2, username_user);
      pst.setString(3, email_user);
      pst.setString(4, phone_user);
      pst.setString(5, index_user);
      pst.executeUpdate();
     

 
     %>
     <div class="alert alert-info text-center col-md-12" ><i class="fa fa-check"></i> User Updated !<br/> 
         <span style="text-align:center;"><i class="fa fa-user"></i> 
             UserName : '<%=username_user%>' - <i class="fa fa-lock"></i> Name : <em>'<%=name_user%>' </em></span> 
     </div><div class="clear"></div><br>
    <meta http-equiv='refresh' content='2; url = users.jsp' />
 <% 
     
   }catch(Exception ex){
        ex.printStackTrace();
    %>
    <div class='alert alert-danger center' style='width: 90%; margin: auto;'><p>Error Occurred!</p></div><br><br>
    <%
   }
  }

%>
						<h3 class="title1">Edit User :</h3>
						<div class="form-three widget-shadow">
							<div class=" panel-body-inputin">
								<form class="form-horizontal" method="post" action="" >
<%
                PreparedStatement pst;
        ResultSet rs;
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection("jdbc:postgresql://localhost/meru","postgres","root");
        String index_user = request.getParameter("id");
        String query = "Select * from test_user WHERE  index_user = ?  ";
        pst = con.prepareStatement(query);

        pst.setString(1, index_user);
     
        rs = pst.executeQuery();
        while(rs.next()){
    
%>
									<div class="form-group">
										<label class="col-md-2 control-label">Name </label>
										<div class="col-md-8">
											<div class="input-group">							
												<span class="input-group-addon">
													<i class="fa fa-file-text"></i>
												</span>
												<input name="name" type="text" class="form-control1" placeholder="" value="<%= rs.getString("name")%>">
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-2 control-label">Telephone</label>
										<div class="col-md-8">
											<div class="input-group">							
												<span class="input-group-addon">
													<i class="fa fa-phone-square"></i>
												</span>
												<input name="phone" type="tel" class="form-control1" placeholder="" value="<%= rs.getString("phone")%>">
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-2 control-label">Email</label>
										<div class="col-md-8">
											<div class="input-group">							
												<span class="input-group-addon">
													<i class="fa fa-envelope"></i>
												</span>
												<input name="email" type="email" class="form-control1" placeholder="" value="<%= rs.getString("email")%>">
											</div>
										</div>
									</div>
										
										<div class="form-group">
										<label class="col-md-2 control-label">Username</label>
										<div class="col-md-8">
											<div class="input-group">							
												<span class="input-group-addon">
													<i class="fa fa-file-text"></i>
												</span>
												<input name="username" type="text" class="form-control1" placeholder="" value="<%= rs.getString("username")%>">
                                                                                                <input name="index_user" type="hidden" class="form-control1" placeholder="" value="<%= rs.getString("index_user")%>">
											</div>
										</div>
									</div>
										
									
									<div class="form-group">
										<label class="col-md-2 control-label">User type</label>
										<div class="col-md-8">
											<div class="input-group">							
												<span class="input-group-addon">
													<i class="fa fa-user"></i>
												</span>
												<select name="type" type="text" class="form-control1" placeholder="Categorie">
													<option selected=""  value="user">Editor </option>
													<option value="admin">Administrator </option>									
												</select>
											</div>
										</div>
									</div>
									
									<div class="form-group ">
										<div class="col-md-8 col-md-offset-2">
											<div class="button_set_one three">

													<button name="submit" type="submit" class="btn btn-danger btn-block btn-flat btn-pri btn-md"><i class="fa fa-save" aria-hidden="true"></i> Save</button>
					
											</div>
										</div>
										
									</div>
<% } %>
								</form>
							</div>
						</div>
					</div>
					
					</div>
		</div>
	</div>
  	<!--footer-->
	<div class="footer">
	   <p>Copyright &copy;2020 Athanase Bahizire. All Rights Reserved  <a href="http://brainsdevelopers.tech " target="_blank">@Brainsdevelopers</a></p>		
	</div>
    <!--//footer-->
<!--
Project:       PC Sacre Coeur
Author:         Athanase Bahizire
URL:            http://brainsdevelopers.tech 
-->	</div>
 <script src="js/cleditor/jquery.cleditor.min.js"></script>
    <script>
       $(document).ready(function () { $("#cleditor").cleditor(); });
       $(document).ready(function () { $("#cleditor1").cleditor(); });
       $(document).ready(function () { $("#cleditor2").cleditor(); });
    </script>

	
	<!-- Classie --><!-- for toggle left push menu script -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!-- //Classie --><!-- //for toggle left push menu script -->
		
	<!--scrolling js-->
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	
	<!-- side nav js -->
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->
	
	
	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>
	<!-- //Bootstrap Core JavaScript -->
	
</body>
</html>

<!--
Author:         Athanase Bahizire
URL:            http://brainsdevelopers.tech 
-->