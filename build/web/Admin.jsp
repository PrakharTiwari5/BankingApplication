<html>
    <head>
        <title>Admin Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <table border="2"  bgcolor="#ADD8E6" class="center">
        <h1>Admin Page</h1>
        <p>Welcome Dear
        <%
            out.println(session.getAttribute("loginname"));
            out.println("         "+session.getAttribute("accountno"));
            %></p><br>
        <tr><td><a href="CreateAccount.jsp">New Account</a></td></tr>
        <tr><td><a href="ViewCustomer.jsp">View Customer</a></td></tr>
        <tr><td><a href="Deposite.jsp">Deposit</a></td></tr>
        <tr><td><a href="Withdraw.jsp">Withdraw</a></td></tr>
        <tr><td><a href="Transaction.jsp">View Transaction</a></td></tr>
        <body>
    </table>
    <body>
</html>
