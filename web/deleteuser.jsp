<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
            
          Connection con;    
          String index_user = request.getParameter("id");
      Class.forName("org.postgresql.Driver");
      con = DriverManager.getConnection("jdbc:postgresql://localhost/meru","postgres","root");
   String query = "DELETE FROM  test_user WHERE index_user = ?";
     
   PreparedStatement pst = con.prepareStatement(query);
     
   pst.setString(1, index_user);
   pst.executeUpdate();
    %>  
    
    <script>  
      window.location.replace("users.jsp");      
    </script>