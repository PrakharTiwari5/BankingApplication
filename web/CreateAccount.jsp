<html>
    <head>
        <title>Create Account Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Create Account Page</h1><br>
        <form action="CreateAccountDBMS.jsp" method="post">
            <table bgcolor="#ADD8E6" border="2">
                <tr>
                    <td>Account Number</td>
                    <td><input type="text" name="accno"></td>
                </tr>
                <tr>
                    <td>Customer Name</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><select name="gender">
                            <option>Male</option>
                            <option>Female</option>
                        </select></td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td><input type="date" name="DOB"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="Address"></td>
                </tr>
                <tr>
                    <td>Contact Number</td>
                    <td><input type="text" name="Contactno"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="password"></td>
                </tr>
                <tr>
                    <td>Security Question</td>
                    <td><select name="squestion">
                            <option>First Car</option>
                            <option>First Bank</option>
                            <option>First School</option>
                            <option>First Job</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Answer</td>
                    <td><input type="text" name="answer"></td>
                </tr>
<!--                <tr>
                    <td>Account Type</td>
                    <td><input type="text" name="accountType"></td>
                </tr>-->
                <tr>
                    <td><input type="submit" name="b1" value="Create"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
