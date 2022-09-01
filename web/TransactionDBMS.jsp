<%@include file="DBCON.jsp"%>
<%@include file="Transaction.jsp"%>
<html>
    <head>
        <title>Login Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Transaction DBMS Page</h1>
        <%
            String choice=request.getParameter("choice");
            try
            {
                String viewquery="";
                if(choice.equalsIgnoreCase("ACCOUNTNO"))
                {
                    String ac=request.getParameter("txt1");
                    viewquery="select * from transactionbank where accountno='"+ac+"'";
                }
                else if(choice.equalsIgnoreCase("DATE"))
                {
                    String date=request.getParameter("txt1");
                    viewquery="select * from transactionbank where dotrans='"+date+"'";
                }
                else if(choice.equalsIgnoreCase("TRANSID"))
                {
                    String tid=request.getParameter("txt1");
                    viewquery="select * from transactionbank where transid='"+tid+"'";
                }
                else if(choice.equalsIgnoreCase("DEPOSITAM"))
                {
                    String dam=request.getParameter("txt1");
                    viewquery="select * from transactionbank where depamount='"+dam+"'";
                }
                else if(choice.equalsIgnoreCase("WDRWAM"))
                {
                    String wam=request.getParameter("txt1");
                    viewquery="select * from transactionbank where wdrwamount='"+wam+"'";
                }
                else
                {
                    viewquery="select * from transactionbank;";
                }
                Statement stmt=con.createStatement();
                
                ResultSet rs=stmt.executeQuery(viewquery);
                while(rs.next())
                {
                    out.println(" "+rs.getString(1));
                    out.println(" "+rs.getString(2));
                    out.println(" "+rs.getString(3));
                    out.println(" "+rs.getString(4));
                    out.println(" "+rs.getInt(5));
                    out.println(" "+rs.getInt(6));
                    out.println(" "+rs.getInt(7));
                    out.println("<br>");
                }
            }
            catch(Exception e)
            {
                out.println("Failed..."+e);
            }
        
        %>
    </body>
</html>
