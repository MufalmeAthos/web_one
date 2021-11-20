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
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
	<meta name="keywords" content=""/>
    <meta name="author" content="Athanase Bahizire">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>Merru  | MERRUshop</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/styleath.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
    <!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header fix-sidebar">
    <div id="main-wrapper">
<% 

 /* --- The index page --- */
  Connection con;    
  String msg = "";
  String color = "";
  if(request.getMethod().compareToIgnoreCase("post")==0)
  {
    try
    {
       String username_user = request.getParameter("username");
       String mypassword_user = request.getParameter("password");



       PreparedStatement pst;
       ResultSet rs;
       //Class.forName("com.mysql.jdbc.Driver");//mysql
       //con = DriverManager.getConnection("jdbc:mysql://localhost/meru","root","");//mysql

       Class.forName("org.postgresql.Driver");
       con = DriverManager.getConnection("jdbc:postgresql://localhost/meru","postgres","root");
 //      String query = "SELECT * FROM user WHERE  username = ? AND  email = ? ";
 //     
 //      PreparedStatement pst = con.prepareStatement(query);
 //     
 //      pst.setString(1, mypassword_user);
 //      pst.setString(2, username_user);
 //     
 //      pst.executeQuery(); 

       String query = "Select * from test_user WHERE  username = ? AND  email = ? ";
       pst = con.prepareStatement(query);

       pst.setString(1, mypassword_user);
       pst.setString(2, username_user);

        rs = pst.executeQuery();
        while(rs.next()){
            if(rs.getString("email").isEmpty()){
%>
    <div class='alert alert-danger center' style='width: 90%; margin: auto;'><p>Error Occurred!</p></div><br><br>
<%
            }else{
%>
    <script>
     window.location.replace("users.jsp");  
   </script>
<%
            }
        }
     
    }catch(Exception ex){
        ex.printStackTrace();
        color = "red";
        msg = "Error Occured";
%>
    <div class='alert alert-danger center' style='width: 90%; margin: auto;'><p>Error Occurred!</p></div><br><br>
<%
    }
 }
%>
        <div class="unix-login">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="login-content card">
                            <div class="login-form">
							<div style="text-align:center;"><img src="images/logo.png" style="" /></div>
                                <h4>Sign In</h4>
                                <form method="post" action="">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input name="username" type="text" class="form-control" placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input name="password" type="password" class="form-control" placeholder="Password">
                                    </div>
                                    <div class="checkbox">
                                        <p class="pull-right">
                                             Don't have an account? <a href="sign_up.jsp" class="color-danger">Sign Up </a><br/>
                                        </p>
                                    </div>
                                    <br/>
                                    <button name="submit" type="submit" class="btn btn-danger btn-flat m-b-30 m-t-30">Sign In</button>
                                    
                                </form>
								<br/><p>Copyright &copy;2020 Athanase Bahizire. All Rigths Reserved </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- End Wrapper -->
    <!-- All Jquery -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="js/bootstrap.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="js/scripts.js"></script>

</body>

</html>
<!--
Author:         Athanase Bahizire
URL:            http://brainsdevelopers.tech 
-->