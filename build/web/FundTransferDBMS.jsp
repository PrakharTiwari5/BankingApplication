<%@page import="java.util.*" %>
<%@include file="DBCON.jsp"%>
<html>
    <head>
        <title>Login Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Fund Transfer DBMS Page</h1>
        <%
            Random random=new Random();
            int transid=random.nextInt(1000);
            
            String accountfrom=(String)session.getAttribute("accountno");
            String accountto=request.getParameter("accountto");
            String transdate=request.getParameter("date");
            session.setAttribute("transID",transid);
            String transamount=request.getParameter("amount");           
            
//            out.println(accountfrom);
//            out.println(accountto);
//            out.println(transdate);
//            out.println(transid);
//            out.println(transamount);   
            
            try
            {
                
//            Random random=new Random();
//            int n=random.nextInt(1000);

                String viewquery="select * from "+accountfrom;
                
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(viewquery);
                
                int lastbal=0;
                while(rs.next())
                {
                    lastbal=rs.getInt(7);
                }
                
                String cashdepquery="insert into "+accountfrom+" values(?,?,?,?,?,?,?);";
                
                PreparedStatement pst=con.prepareStatement(cashdepquery);
                
                
                pst.setString(1,accountfrom);
                pst.setString(2,accountto);
                pst.setString(3,transdate);
                pst.setInt(4,transid);
                pst.setInt(5,0);
                pst.setInt(6,Integer.parseInt(transamount));
                pst.setInt(7,(lastbal-Integer.parseInt(transamount)));
                
                pst.executeUpdate();
                out.println("transaction done.. cash deposited.... in "+accountfrom +" table!!");
                
                //-----------------------------------------------------------------------
                
                String viewquery2="select * from "+accountto;
                
                Statement stmt2=con.createStatement();
                ResultSet rs2=stmt2.executeQuery(viewquery2);
                
                int lastbal2=0;
                while(rs2.next())
                {
                    lastbal2=rs2.getInt(7);
                }
                
                String cashdepquery2="insert into "+accountto+" values(?,?,?,?,?,?,?);";
                
                PreparedStatement pst2=con.prepareStatement(cashdepquery2);
                
                
                pst2.setString(1,accountto);
                pst2.setString(2,accountfrom);
                pst2.setString(3,transdate);
                pst2.setInt(4,transid);
                pst2.setInt(5,Integer.parseInt(transamount));
                pst2.setInt(6,0);
                pst2.setInt(7,(lastbal2+Integer.parseInt(transamount)));
                
                pst2.executeUpdate();
                out.println("transaction done.. cash deposited.... in bank transaction table!!");
            }
            catch(Exception e)
            {
                out.println("Transaction failed..."+e);
            }
        %>
    </body>
</html>