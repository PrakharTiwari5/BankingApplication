<%@page import="java.sql.*"%>
<html>
    <body>
        <%!Connection con;%>
        <%
            try
            {
               Class.forName("com.mysql.jdbc.Driver");
               String connectionURL="jdbc:mysql://localhost:3306/soprabanking";
               String dbuser="root";
               String dbpass="root";
               con=DriverManager.getConnection(connectionURL,dbuser,dbpass);
               
               out.println("Connected...!!");
            }
            catch(Exception e)
            {
                      out.println("Connection Failed...!!"+e);  
            }
        %>
    </body>
</html>
