<%@include file="DBCON.jsp"%>
<%@include file="EditProfile.jsp" %>
<html>
    <head>
        <title>Login Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Security Question DBMS Page</h1>
        <%
            String sques=request.getParameter("squestion");
            String answer=request.getParameter("answer");
            String ac=(String)session.getAttribute("accountno");

            try
            {
                String updatequery="";
                if(sques.equalsIgnoreCase("First Car") || sques.equalsIgnoreCase("First Bank") || sques.equalsIgnoreCase("First School") || sques.equalsIgnoreCase("First Job")){
                updatequery="update account set sques='"+sques+"',sans='"+answer+"' where accno='"+ac+"';";
            }
            
            PreparedStatement pst=con.prepareStatement(updatequery);
            pst.executeUpdate();
            out.println("Data Updated!<br>");
            }
            catch(Exception e)
            {
                out.println("Failed..."+e);
            }
        %>
    </body>
</html>