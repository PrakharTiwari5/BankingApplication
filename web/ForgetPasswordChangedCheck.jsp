<%@include file="DBCON.jsp"%>
<html>
    <head>
        <title>Login Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Forget Password Changed Check Page</h1>
        <%
            String loginuid=(String)session.getAttribute("userid_passed");
            String s1newpass=request.getParameter("newpass");
            String s1cnpass=request.getParameter("cnpass");
            
            try
            {
                if(s1newpass.equals(s1cnpass))
                {
                    try
                        {
                            String updatepassquery="update account set password='"+s1newpass+"' where accno='"+loginuid+"'";
                            
                            PreparedStatement pst=con.prepareStatement(updatepassquery);
                            pst.executeUpdate();
                            out.println("Dear "+loginuid+" password changed!!<br>");
                            out.println("<a href=Login.jsp>Login Again</a>");
                        }
                        catch(Exception ee)
                        {
                            out.println("Password not change "+ee);
                        }
                }
                else
                {
                    out.println("<br> NEW PASSWORD & CONFIRM PASSWORD not match ");
                }
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>
