<%@include file="DBCON.jsp" %>
<html>
    <head>
        <title>View Profile DBMS Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>View Profile DBMS Page</h1>
        <%
            
            try
            {
                String viewquery="select * from account where accno='"+session.getAttribute("accountno")+"'";
                Statement stmt=con.createStatement();
                
                ResultSet rs=stmt.executeQuery(viewquery);
                while(rs.next())
                {
                    out.println(" "+rs.getString(1));
                    out.println(" "+rs.getString(2));
                    out.println(" "+rs.getString(3));
                    out.println(" "+rs.getString(4));
                    out.println(" "+rs.getString(5));
                    out.println(" "+rs.getInt(6));
                    out.println(" "+rs.getString(7));
                    out.println(" "+rs.getString(8));
                    out.println(" "+rs.getString(9));
                    out.println(" "+rs.getString(10));
                    out.println("<br>");
                }
            }
            catch(Exception e)
            {
                out.println("Data not found"+e);
            }
        %>
        <form action="EditProfile.jsp" method="post">
        <input type='submit' name='edit' value="Edit">
        </form>
        
    </body>
</html>
