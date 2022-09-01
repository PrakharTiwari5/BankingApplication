<html>
    <head>
        <title>Fund Transfer Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Fund Transfer page</h1>
        <p>Welcome Dear
        <%
            out.println(session.getAttribute("loginname"));
            out.println("         "+session.getAttribute("accountno"));
            %></p><br>
        <form action="FundTransferDBMS.jsp" method="post">
            <table border="2" bgcolor="#ADD8E6">
<!--                <tr>
                    <td>Account From</td>
                    <td><input type="text" name="accountfrom" value='++'></td>
                </tr>-->
                <tr>
                    <td>Account To</td>
                    <td><input type="text" name="accountto"></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td><input type="date" name="date" max="3000-01-01" onfocus="this.max=new Date().toISOString().split('T')[0]" ></td>
                </tr>
<!--                <tr>
                    <td>Transaction ID</td>
                    <td><input type="text" name="transID"></td>
                </tr>-->
                <tr>
                    <td>Amount</td>
                    <td><input type="text" name="amount"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="b1" value="Transfer Now"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
