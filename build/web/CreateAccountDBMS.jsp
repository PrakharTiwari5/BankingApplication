<%@include file="DBCON.jsp" %>
<html>
    <head>
        <title>Create Account DBMS Page</title>
        <link href="style.scss" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Create Account DBMS Page</h1>
        <%
            String accno=request.getParameter("accno");
            String name=request.getParameter("name");
            String gender=request.getParameter("gender");
            String dob=request.getParameter("DOB");
            String address=request.getParameter("Address");
            String contactno=request.getParameter("Contactno");
            String password=request.getParameter("password");
            String squestion=request.getParameter("squestion");
            String answer=request.getParameter("answer");
//            String actype=request.getParameter("accountType");
            
//            out.println(accno);
//            out.println(name);
////            out.println(password);
//            out.println(gender);
//            out.println(dob);
//            out.println(address);
//            out.println(contactno);
////            out.println(actype);
//            
            try
            {
                String newaccountinsert="insert into account values(?,?,?,?,?,?,?,?,?,?);";
                
                PreparedStatement pst=con.prepareStatement(newaccountinsert);
                
                pst.setString(1,accno);
                pst.setString(2,name);
                pst.setString(3,gender);
                pst.setString(4,dob);
                pst.setString(5,address);
                pst.setInt(6,Integer.parseInt(contactno));
                pst.setString(7,"CUSTOMER");
                pst.setString(8,password);
                pst.setString(9,squestion);
                pst.setString(10,answer);
                
                pst.executeUpdate();
                
                out.println("Account created .. success");
                
                //------
                String customeraccount="create table "+accno+"(accountno varchar(20),ref varchar(20),dotrans varchar(20),transid int(20),depamount int,wdrwamount int,netbal int);";
                
                PreparedStatement pst2=con.prepareStatement(customeraccount);
                pst2.executeUpdate();
            }
            catch(Exception e)
            {
                out.println("failed.."+e);
            }
            
        %>
    </body>
</html>
