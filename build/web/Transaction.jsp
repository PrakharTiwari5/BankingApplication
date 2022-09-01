<%@page import="java.util.*" %>
<%
Random random=new Random();
int n=random.nextInt(1000);
%>
<html>
    <head>
        <title>Transaction Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>View Transaction Page</h1>
        <form action="TransactionDBMS.jsp" method="post">
                <select name="choice">
                    <option value="ALL">ALL</option>
                    <option value="ACCOUNTNO">Account Number</option>
                    <option value="DATE">Date of Transaction</option>
                    <option value="TRANSID">Transaction ID</option>
                    <option value="DEPOSITAM">Deposit Amount</option>
                    <option value="WDRWAM">Withdraw Amount</option>
                </select>
                <input type='text' name='txt1'>
                <input type='submit' name='b1' value="View">
        </form>
    </body>
</html>
