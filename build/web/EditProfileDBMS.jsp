<%@include file="DBCON.jsp"%>
<%@include file="EditProfile.jsp" %>
<html>
    <head>
        <title>Login Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Edit Profile DBMS Page</h1>
        <%
            String choice=request.getParameter("choice");

            try
            {
                String updatequery="";
                if(choice.equalsIgnoreCase("CUSTNAME"))
                {
                    String name=request.getParameter("txt1");
                    updatequery="update account set cname='"+name+"' where accno='"+session.getAttribute("accountno")+"'";
                }
                else if(choice.equalsIgnoreCase("GENDER"))
                {
                    String gender=request.getParameter("txt1");
                    updatequery="update account set gender='"+gender+"' where accno='"+session.getAttribute("accountno")+"'";
                }
                else if(choice.equalsIgnoreCase("DOB"))
                {
                    String dob=request.getParameter("txt1");
                    updatequery="update account set dob='"+dob+"' where accno='"+session.getAttribute("accountno")+"'";
                }
                else if(choice.equalsIgnoreCase("ADDRESS"))
                {
                    String add=request.getParameter("txt1");
                    updatequery="update account set address='"+add+"' where accno='"+session.getAttribute("accountno")+"'";
                }
                else if(choice.equalsIgnoreCase("CONTACTNO"))
                {
                    String cno=request.getParameter("txt1");
                    updatequery="update account set mob='"+cno+"' where accno='"+session.getAttribute("accountno")+"'";
                }
                else if(choice.equalsIgnoreCase("SQUES"))
                {
                    response.sendRedirect("SecurityQues.jsp");
                }
                
                PreparedStatement pst=con.prepareStatement(updatequery);
                pst.executeUpdate();  
                out.println("Dear "+session.getAttribute("loginname")+" your changes are saved!! Thank you for updating us!!S");
            }
            catch(Exception e)
            {
                out.println("Failed"+e);
            }
        
        %>
    </body>
</html>
