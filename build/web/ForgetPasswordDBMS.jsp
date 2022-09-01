<%@include file="DBCON.jsp"%>
<html>
    <head>
        <title>Login Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Forget Password Check Page</h1>
        <%
            String s1userid=request.getParameter("userid");
            String s1sques=request.getParameter("sques");
            String s1sans=request.getParameter("sans");
            
            try
            {
               String checkquery="select * from account where accno='"+s1userid+"';"; 
               Statement stmt=con.createStatement();
               ResultSet rs=stmt.executeQuery(checkquery);
               
               int count=0;
               while(rs.next())
               {
                   if(s1sques.equals(rs.getString(9)) && s1sans.equals(rs.getString(10)))
                    {
                               out.println("Login Successful!! correct Details.");
                               session.setAttribute("userid_passed", s1userid);
                               response.sendRedirect("ForgetPasswordChanged.jsp");
                    }
                   else
                    {
                       out.println("Login Failed!! Incorrect Details.");
                    }
               }
            }
            catch(Exception e)
            {
                out.println(e);
            }
        
        %>
    </body>
</html>
