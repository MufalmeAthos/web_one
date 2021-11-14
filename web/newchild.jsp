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
    
 /* --- The new child page --- */
             
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
      String password_user = request.getParameter("password");
      String mypassword_user = request.getParameter("mypassword");
      String password_user_show = request.getParameter("password");
      String mydate= (new java.util.Date()).toLocaleString();
      int index =  (int) (Math.random() * 8888888);
      String index_user = Integer.toString(index);
      
      Class.forName("org.postgresql.Driver");
      con = DriverManager.getConnection("jdbc:postgresql://localhost/meru","postgres","root");
      String query = "INSERT INTO rest_couple (index_user, name, username, password, image, date, email, phone) VALUES (?, ?, ?, ?,'', NOW(), ?, ?)";
     
      PreparedStatement pst = con.prepareStatement(query);
     
      pst.setString(1, index_user);
      pst.setString(2, name_user);
      pst.setString(3, username_user);
      pst.setString(4, mypassword_user);
      pst.setString(5, email_user);
      pst.setString(6, phone_user);
      pst.executeUpdate();
     


%>
     <div class="alert alert-info text-center col-md-12" ><i class="fa fa-check"></i>Registration Successful!<br/> 
         <span style="text-align:center;"><i class="fa fa-user"></i> 
             UserName : '<%=username_user%>' - <i class="fa fa-lock"></i> Mot de passe : <em>'<%=password_user_show%>' </em></span> 
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
						<h3 class="title1">New Child :</h3>
						<div class="form-three widget-shadow">
							<div class=" panel-body-inputin">
								<form class="form-horizontal" method="post" action="" >
									<div class="form-group">
										<label class="col-md-2 control-label">Names</label>
										<div class="col-md-8">
											<div class="input-group">							
												<span class="input-group-addon">
													<i class="fa fa-file-text"></i>
												</span>
												<input name="name" type="text" class="form-control1" placeholder="">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Birth date</label>
										<div class="col-md-8">
											<div class="input-group">							
												<span class="input-group-addon">
													<i class="fa fa-file-text"></i>
												</span>
												<input name="birth_date" type="text" class="form-control1" placeholder="">
											</div>
										</div>
									</div>
                                                                        <div class="form-group">
										<label class="col-md-2 control-label">Email</label>
										<div class="col-md-8">
											<div class="input-group">							
												<span class="input-group-addon">
													<i class="fa fa-file-text"></i>
												</span>
												<input name="email" type="text" class="form-control1" placeholder="">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Telephone</label>
										<div class="col-md-8">
											<div class="input-group">							
												<span class="input-group-addon">
													<i class="fa fa-file-text"></i>
												</span>
												<input name="telephone" type="text" class="form-control1" placeholder="">
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-2 control-label">School Level</label>
										<div class="col-md-8">
											<div class="input-group">							
												<span class="input-group-addon">
													<i class="fa fa-user"></i>
												</span>
												<select name="school_level" type="text" class="form-control1" placeholder="Categorie">
                                                                                                        <option value=""> </option>
													<option value="nursery">Nursery </option>
													<option  value="primary">Primary </option>
													<option  value="secondary">Secondary </option>
													<option  value="university">University </option>	
													<option  value="none">None </option>								
												</select>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Parent Couple</label>
										<div class="col-md-8">
											<div class="input-group">							
												<span class="input-group-addon">
													<i class="fa fa-user"></i>
												</span>
												<select name="parent_couple" type="text" class="form-control1" placeholder="Categorie">
													<option value=""> </option>
                                                                                                        <option value="">Pumpu - Sixty </option>
													<option  value="">Athola - Bibi </option>
													<option  value="">Daglo - Daglo </option>						
												</select>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 control-label">Status</label>
										<div class="col-md-8">
											<div class="input-group">							
												<span class="input-group-addon">
													<i class="fa fa-user"></i>
												</span>
												<select name="status" type="text" class="form-control1" placeholder="Categorie">
													<option value="active">Approved </option>
													<option selected=""  value="pending">Pending </option>									
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