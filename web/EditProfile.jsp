<html>
    <head>
        <title>Login Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Edit Profile Page</h1>
        <form action="EditProfileDBMS.jsp" method="post">
                Enter your Choice:<select name="choice">
                    <option value="CUSTNAME">Customer Name</option>
                    <option value="GENDER">Gender</option>
                    <option value="DOB">Date of Birth</option>
                    <option value="ADDRESS">Address</option>
                    <option value="CONTACTNO">Contact Number</option>
                    <option value="SQUES">Security Question</option>
<!--                    <option value="SANS">Security Answer</option>-->
                </select><br>
                Enter New Value:<input type='text' name='txt1'><br>
                <input type='submit' name='b1' value="View">
            </form>
    </body>
</html>
