<html>
    <head>
        <title>Withdraw Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Withdraw Page</h1>
        <form action="WithdrawDBMS.jsp" method="post">
            <table border="2" bgcolor="#ADD8E6">
                <tr>
                    <td>Account Number</td>
                    <td><input type="text" name="accountno"></td>
                </tr>
                <tr>
                    <td>Reference</td>
                    <td><input type="text" name="ref"></td>
                </tr>
                <tr>
                    <td>Date of Transaction</td>
                    <td><input type="date" name="date" max="3000-01-01" onfocus="this.max=new Date().toISOString().split('T')[0]" ></td>>
                </tr>
<!--                <tr>
                    <td>Transaction ID</td>
                    <td><input type="text" name="transID"></td>
                </tr>-->
                <tr>
                    <td>Withdraw Amount</td>
                    <td><input type="text" name="amount"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="b1" value="Withdraw"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
