<html>
    <head>
        <title>Login Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Login Page</h1><br>
        <form action="Check.jsp" method="post">
            <table border="2"  bgcolor="#ADD8E6" class="center">
                <tr>
                    <td>Select Role</td>
                    <td><select name="role">
                            <option>Admin</option>
                            <option>CUSTOMER</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Enter Account Number</td>
                    <td><input type="text" name="accountno"></td>
                </tr>
                <tr>
                    <td>Enter Password</td>
                    <td><input type="text" name="password"></td>
                </tr>

                <%
                    StringBuffer sb = new StringBuffer();
                    for (int i = 1; i <= 5; i++) {
                        sb.append((char) (int) (Math.random() * 79 + 23 + 7));
                    }
                    String cap = new String(sb);
                    session.setAttribute("cap_passed", cap);
                %>      
                <tr>  
                    <td> 
                        Enter Captcha
                        <div style="background-color: white"><h2><s><i><font face="TIMES NEW ROMAN"><%=cap%></font></i></s></h2></div>  
                    </td>  
                    <td><input type="text" name="cap1" value="" /></td>  
<!--                    <td><input type="hidden" name="cap2" value='<%=cap%>' readonly="readonly" </td>  -->
                </tr> 
                <tr>
                    <td><input type="submit" name="b1" value="Login"></td>
                    <td><input type="reset" name="b2" value="Reset"> </td>
                </tr>
                <tr>
                    <td><a href="ForgetPassword.jsp">Forget Password</a></td>
                </tr>
            </table>
        </form>
    </body>
</html>


