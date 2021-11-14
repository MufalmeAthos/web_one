<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.util.logging.Level" %>
<%@page import="java.util.logging.Logger" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.ArrayList" %>

    
    <jsp:include page="header.jsp"/>
<!-- main content start-->
	<div id="page-wrapper">
		<div class="main-page">
			<div class="tables">
				<h3 class="title1">Users:</h3>
 
				<div class="table-responsive bs-example widget-shadow">
					<div class="col-md-12 button_set_one three ">
						<a href="newcouple.jsp"type="button" class="btn btn-danger btn-flat btn-pri btn-md pull-right"><i class="fa fa-user" aria-hidden="true"></i> New Couple</a>
					</div>
				<table id="myTable" class="table bs-example table-hover table-striped table-bordered"> 
					<thead> 
						<tr>
							<th>#</th> 
							<th>Husband Names</th> 
							<th>Wife Names</th> 
							<th>Husband Profession</th> 
							<th>Wife Profession</th> 
							<th>Actions</th> 
						</tr> 
					</thead> 
					<tbody>
 <%
       Connection con;
                PreparedStatement pst;
                ResultSet rs;
      //Class.forName("com.mysql.jdbc.Driver");//mysql
      //con = DriverManager.getConnection("jdbc:mysql://localhost/meru","root","");//mysql
                
      Class.forName("org.postgresql.Driver");
      con = DriverManager.getConnection("jdbc:postgresql://localhost/meru","postgres","root");
 
      String query = "Select * from test_user";
      pst = con.prepareStatement(query);
      rs = pst.executeQuery();
      while(rs.next()){
%>
						 
						<tr>
							<th scope="row"><img src="images/athosrobot.jpg" height="40px" style="border-radius:50%;"/></th>
							<td><%= rs.getString("name")%></td>
							<td><%= rs.getString("email")%></td>
                                                        <td><%= rs.getString("name")%></td>
							<td><%= rs.getString("email")%></td>
							<td><a class="btn btn-dark" href="edituser.jsp?id=<%= rs.getString("index_user")%>"><i class="fa fa-edit"></i></a>
                                                        <a class="btn btn-danger" href="deleteuser.jsp?id=<%= rs.getString("index_user")%>"><i class="fa fa-remove"></i></a></td>
						</tr> 
<%
       }
%>
					</tbody> 
				</table>
				
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

    <script src="js/datatables/datatables.min.js"></script>
    <script src="js/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="js/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="js/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="js/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="js/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="js/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="js/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <script src="js/datatables/datatables-init.js"></script>



	
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