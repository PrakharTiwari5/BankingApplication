<html>
    <head>
        <title>Change Password Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <table border="2"  bgcolor="#ADD8E6">
        <h1>Change Password Page</h1>
        <p>Welcome Dear
        <%
            out.println(session.getAttribute("loginname"));
            out.println("         "+session.getAttribute("accountno"));
            
        %></p><br>
        <form action="ChangePasswordCheck.jsp" method="post">
            <tr>
                <td>Enter Old Password</td>
                <td><input type="text" name="oldpass"></td>
            </tr>
            <tr>
                <td>Enter New Password</td>
                <td><input type="text" name="newpass"></td>
            </tr>
            <tr>
                <td>Confirm New Password</td>
                <td><input type="text" name="cnpass"></td>
            </tr>
            <tr>
                <td><input type="submit" name="b1" value="Change"></td>
            </tr>
        </form>
        </table>
    </body>
</html>
