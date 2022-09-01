<%@page import="java.util.Random"%>
<%@include file="DBCON.jsp" %>
<html>
    <head>
        <title>Login Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Deposit DBMS Page</h1>
        <%      Random random = new Random();
                int transid = random.nextInt(1000);

                String accountno = request.getParameter("accountno");
                String refe = request.getParameter("ref");
                String date = request.getParameter("date");
                session.setAttribute("transID", transid);
                String amount = request.getParameter("amount");


                try {
                    String viewquery = "select * from transactionbank";

                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery(viewquery);

                    int lastbal = 0;
                    while (rs.next()) {
                        lastbal = rs.getInt(7);
                    }

                    String cashdepquery = "insert into transactionbank values(?,?,?,?,?,?,?);";

                    PreparedStatement pst = con.prepareStatement(cashdepquery);

                    pst.setString(1, accountno);
                    pst.setString(2, refe);
                    pst.setString(3, date);
                    pst.setInt(4, transid);
                    pst.setInt(5, Integer.parseInt(amount));
                    pst.setInt(6, 0);
                    pst.setInt(7, (lastbal + Integer.parseInt(amount)));

                    pst.executeUpdate();
                    out.println("transaction done.. cash deposited.... in bank transaction table!!");
                    //----------------------------------------------------

                    String viewquerycustomer = "select * from " + accountno;
                    Statement stmt2 = con.createStatement();
                    ResultSet rs2 = stmt2.executeQuery(viewquerycustomer);

                    int lastbalcust = 0;
                    while (rs2.next()) {
                        lastbalcust = rs2.getInt(7);
                    }

                    String cashdepqueryincustomer = "insert into " + accountno + " values(?,?,?,?,?,?,?);";
                    PreparedStatement pst2 = con.prepareStatement(cashdepqueryincustomer);

                    pst2.setString(1, accountno);
                    pst2.setString(2, refe);
                    pst2.setString(3, date);
                    pst2.setInt(4, transid);
                    pst2.setInt(5, Integer.parseInt(amount));
                    pst2.setInt(6, 0);
                    pst2.setInt(7, (lastbalcust + Integer.parseInt(amount)));

                    pst2.executeUpdate();
                    out.println("transaction done.. cash deposited.. in customer table!!");
                } catch (Exception e) {
                    out.println("transaction failed.." + e);
                }
        %>
    </body>
</html>
