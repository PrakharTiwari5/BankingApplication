<%@include file="DBCON.jsp" %>

<html>
    <head>
        <title>Check Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Check Page</h1>
        <%  String role = request.getParameter("role");
            String accountnumber = request.getParameter("accountno");
            String upass = request.getParameter("password");
            String cap1 = request.getParameter("cap1");
            String cap = (String) session.getAttribute("cap_passed");

            try {
                if (cap1.equals("")) {
                    out.println("Please Enter Captcha");
                } else if (!cap1.equals(cap)) {
                    out.println("Invalid Captcha!! Please try again");
                    RequestDispatcher disp = request.getRequestDispatcher("Login.jsp");
                    disp.include(request, response);
                } else if (cap1.equals(cap)) {

                    String viewquery = "select * from account;";
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery(viewquery);

                    int count = 0;
                    String loginname = "";
                    while (rs.next()) {
                        if (role.equalsIgnoreCase(rs.getString(7)) && accountnumber.equalsIgnoreCase(rs.getString(1)) && upass.equals(rs.getString(8))) {
                            count++;
                            loginname = rs.getString(2);
                            break;
                        }
                    }

                    if (count > 0) {
                        session.setAttribute("accountno", accountnumber);
                        session.setAttribute("loginname", loginname);
                        session.setAttribute("loginpassword", upass);
                        if (role.equalsIgnoreCase("ADMIN")) {
                            response.sendRedirect("Admin.jsp");
                        } else {
                            response.sendRedirect("CustomerLogin.jsp");
                        }
//                    out.println("Login Success");
//                    response.sendRedirect("Success.jsp");
                    } else {
                        RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
                        dis.include(request, response);
//                    out.println("Login Failed");
                    }
                }
            } catch (Exception e) {
                out.println("record not found " + e);
            }
            /*
             if(uid.equalsIgnoreCase("007") && uname.equalsIgnoreCase("Prakhar") && upass.equals("123"))
             {
             response.sendRedirect("Success.jsp");
             }
             else
             {
             RequestDispatcher disp=request.getRequestDispatcher("Login.jsp");
             disp.include(request, response);
             out.println("<br>Invalid Login & Password ");
             }*/
        %>
    </body>
</html>
