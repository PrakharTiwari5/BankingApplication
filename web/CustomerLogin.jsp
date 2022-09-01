<html>
    <head>
        <title>Customer Login Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <table border="2"  bgcolor="#ADD8E6">
        <h1>Customer Login Page</h1>
        <p>Welcome Dear
        <%
            out.println(session.getAttribute("loginname"));
            out.println("         "+session.getAttribute("accountno"));
        %></p><br>
        <tr><td><a href="ViewProfileDBMS.jsp">View Profile</a></td></tr>
        <tr><td><a href="ChangePassword.jsp">Change Password</a></td></tr>
        <tr><td><a href="ViewStatement.jsp">View Statement</a></td></tr>
        <tr><td><a href="FundTransfer.jsp">Fund Transfer</a></td></tr>
        </table>
    </body>
</html>
