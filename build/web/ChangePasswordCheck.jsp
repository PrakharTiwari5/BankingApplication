<%@include file="DBCON.jsp"%>
<html>
    <head>
        <title>Login Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Change Password Check Page</h1>
        Welcome Dear
        <%
            out.println(session.getAttribute("loginname"));
            out.println("         "+session.getAttribute("accountno"));
        %>
        <%
            String s1oldpass=request.getParameter("oldpass");
            String s1newpass=request.getParameter("newpass");
            String s1cnpass=request.getParameter("cnpass");
            
//            out.println(s1oldpass);
//            out.println(s1newpass);
//            out.println(s1cnpass);
            try
            {
                if(s1newpass.equals(s1cnpass))
                {
                    if(session.getAttribute("loginpassword").equals(s1oldpass))
                    {
                        try
                        {
                            String updatepassquery="update account set password='"+s1newpass+"' where accno='"+session.getAttribute("accountno")+"'";
                            
                            PreparedStatement pst=con.prepareStatement(updatepassquery);
                            pst.executeUpdate();
                            out.println("Dear "+session.getAttribute("loginname")+" password changed!!<br>");
                            
                            session.invalidate();
                            
                            response.setHeader("Cache-Control", "no-store");
                            response.setHeader("Pragma", "no-cache");
                            response.setHeader("Expires", "0");
                            out.println("<a href=Login.jsp>Login Again</a>");
                        }
                        catch(Exception ee)
                        {
                            out.println("Password not change "+ee);
                        }
                    }
                    else
                    {
                        out.println("<br> OLD PASSWORD not match");
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
