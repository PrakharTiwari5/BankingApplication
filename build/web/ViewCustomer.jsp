<html>
    <head>
        <title>View Customer Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>View Customer Page</h1>
        <form action="ViewCustomerDBMS.jsp" method="post">
                <select name="choice">
                    <option value="ALL">ALL</option>
                    <option value="ACCOUNTNO">Account Number</option>
                </select>
                <input type='text' name='txt1'>
                <input type='submit' name='b1' value="View">
            </form>
    </body>
</html>
