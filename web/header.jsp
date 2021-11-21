<!DOCTYPE HTML>
<html>
<head>
<title>Users | MERRUshop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="author" content="Athanase Bahizire" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>


<link rel="stylesheet" href="js/cleditor/jquery.cleditor.css" />

<!-- Favicon and Touch Icons -->
<link href="images/favicon.png" rel="shortcut icon" type="image/png">

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/mzeestyle.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons CSS-->

<!-- side nav css file -->
<link href='css/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
<!-- //side nav css file -->
 
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>


<!-- chart -->
<!--<script src="js/Chart.js"></script>-->
<!-- //chart -->

<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
<style>
#chartdiv {
  width: 100%;
  height: 295px;
}
</style>

</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
<!--
 Author:         Athola Bahizire
 Email:          atholabahizire@gmail.com
 URL:            http://brainsdevelopers.tech 
-->
<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<aside class="sidebar-left">
      <nav class="navbar navbar-inverse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a  href="dashboard.html"><img src="images/logo-wide1.png"/></a></h1>
          </div>
          <div> <br/><br/></div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="sidebar-menu">
              <li class="treeview">
                <a href="#">
                <i class="fa fa-user"></i>
                <span>Users</span>
                <i class="fa fa-angle-down pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="newuser.jsp"><i class="fa fa-angle-right"></i>New User</a></li>
                  <li><a href="users.jsp"><i class="fa fa-angle-right"></i>Users</a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa fa-male"></i>
                <span>Children</span>
                <i class="fa fa-angle-down pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="newchild.jsp"><i class="fa fa-angle-right"></i>New Child</a></li>
                  <li><a href="children.jsp"><i class="fa fa-angle-right"></i>Children</a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa fa-users"></i>
                <span>Couples</span>
                <i class="fa fa-angle-down pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="newcouple.jsp"><i class="fa fa-angle-right"></i>New Couple</a></li>
                  <li><a href="couples.jsp"><i class="fa fa-angle-right"></i>Couples</a></li>
                </ul>
              </li>
              <li class="header">OTHERS</li>
              <li><a href="users.jsp"><i class="fa fa-angle-right text-red"></i> <span>Other Users</span></a></li>
            </ul>
          </div>
          <!-- /.navbar-collapse -->
      </nav>
    </aside>
	</div>
		<!--left-fixed -navigation-->
		
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<div class="profile_details_left"><!--notifications of menu start -->
					<ul class="nofitications-dropdown">
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" ><i class="fa fa-envelope"></i>
								<span class="badge">6</span>
							</a>
						</li>
						<li class="dropdown head-dpdn">
							<a href="#" class=" btn-flat dropdown-toggle text-white" ><i class="fa fa-globe"></i> Go to the site</a>
						</li>
					</ul>
				</div>
				<!--notification menu end -->
			</div>
			<div class="header-right">
				<div class="profile_details">	
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/athosrobot.jpg" alt="" height="50px" > </span>
									<div class="user-name">
										<p>Athola</p>
										<span>@admin</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
								<li> <a href="index.jsp"><i class="fa fa-power-off"></i> Disconnect</a> </li>
							</ul>
						</li>
						
					</ul>
				</div>
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->	