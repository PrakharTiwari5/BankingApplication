<html>
    <head>
        <title>Login Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Forget Password Page</h1>
        <form action="ForgetPasswordDBMS.jsp" method="post">
            <table border="2"  bgcolor="#ADD8E6">
                <tr>
                <td>Enter Account Number</td>
                <td><input type="text" name="userid"><br></td>
                </tr>
                <tr>
                <td>Enter Security Question</td>
                <td>
                    <select name="sques">
                            <option>First Car</option>
                            <option>First Bank</option>
                            <option>First School</option>
                            <option>First Job</option>
                    </select>
                </td>
                </tr>
                <tr>
                    <td>Enter Answer</td>
                <td><input type="text" name="sans"><br></td>
                </tr>
                <tr>
                    <td><input type="submit" name="b1" value="Recover"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
