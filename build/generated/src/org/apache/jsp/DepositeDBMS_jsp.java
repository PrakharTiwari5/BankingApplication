package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Random;
import java.sql.*;

public final class DepositeDBMS_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection con;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/DBCON.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try
            {
               Class.forName("com.mysql.jdbc.Driver");
               String connectionURL="jdbc:mysql://localhost:3306/soprabanking";
               String dbuser="root";
               String dbpass="root";
               con=DriverManager.getConnection(connectionURL,dbuser,dbpass);
               
               out.println("Connected...!!");
            }
            catch(Exception e)
            {
                      out.println("Connection Failed...!!"+e);  
            }
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Login Page</title>\n");
      out.write("        <link href=\"style.scss\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Deposit DBMS Page</h1>\n");
      out.write("        ");
                Random random = new Random();
                int transid = random.nextInt(1000);

                String accountno = request.getParameter("accountno");
                String refe = request.getParameter("ref");
                String date = request.getParameter("date");
                session.setAttribute("transID", transid);
                String amount = request.getParameter("amount");

//                out.println("String:" + amount);
//
//                
//            char[] num = amount.toCharArray();
//                int len = num.length;
//
//                if (len == 0) {
//                    out.println("empty string");
//                    return;
//                }
//                if (len > 4) {
//                    out.println("Length more than 4 is not supported");
//                    return;
//                }
//
//                String[] single_digits = new String[]{"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
//                String[] two_digits = new String[]{"", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"};
//                String[] tens_multiple = new String[]{"", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"};
//                String[] tens_power = new String[]{"hundred", "thousand"};
//                out.println(String.valueOf(num) + ": ");
//
//                if (len == 1) {
//                    out.println(single_digits[num[0] - '0']);
//                    return;
//                }
//
//                int x = 0;
//                while (x < num.length) {
//                    if (len >= 4) {
//                        if (num[x] - '0' != 0) {
//                            out.println(single_digits[num[x] - '0'] + " ");
//                            out.println(tens_power[len - 3] + " ");
//                        }
//                        --len;
//                    } else {
//                        if (num[x] - '0' == 1) {
//                            int sum = num[x] - '0' + num[x + 1] - '0';
//                            out.println(two_digits[sum]);
//                            return;
//                        } else if (num[x] - '0' == 2 && num[x + 1] - '0' == 0) {
//                            out.println("twenty");
//                            return;
//                        } else {
//                            int i = (num[x] - '0');
//                            if (i > 0) {
//                                out.println(tens_multiple[i] + " ");
//                            } else {
//                                out.println("");
//                            }
//                            ++x;
//                            if (num[x] - '0' != 0) {
//                                out.println(single_digits[num[x] - '0']);
//                            }
//                        }
//                    }
//                    ++x;
//                }
                try {
                    String viewquery = "select * from transactionbank";

                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery(viewquery);

                    int lastbal = 0;
                    while (rs.next()) {
                        lastbal = rs.getInt(7);
                    }

                    String cashdepquery = "insert into transactionbank values(?,?,?,?,?,?,?);";

                    PreparedStatement pst = con.prepareStatement(cashdepquery);

                    pst.setString(1, accountno);
                    pst.setString(2, refe);
                    pst.setString(3, date);
                    pst.setInt(4, transid);
                    pst.setInt(5, Integer.parseInt(amount));
                    pst.setInt(6, 0);
                    pst.setInt(7, (lastbal + Integer.parseInt(amount)));

                    pst.executeUpdate();
//                out.println("transaction done.. cash deposited.... in bank transaction table!!");
                    //----------------------------------------------------

                    String viewquerycustomer = "select * from " + accountno;
                    Statement stmt2 = con.createStatement();
                    ResultSet rs2 = stmt2.executeQuery(viewquerycustomer);

                    int lastbalcust = 0;
                    while (rs2.next()) {
                        lastbalcust = rs2.getInt(7);
                    }

                    String cashdepqueryincustomer = "insert into " + accountno + " values(?,?,?,?,?,?,?);";
                    PreparedStatement pst2 = con.prepareStatement(cashdepqueryincustomer);

                    pst2.setString(1, accountno);
                    pst2.setString(2, refe);
                    pst2.setString(3, date);
                    pst2.setInt(4, transid);
                    pst2.setInt(5, Integer.parseInt(amount));
                    pst2.setInt(6, 0);
                    pst2.setInt(7, (lastbalcust + Integer.parseInt(amount)));

                    pst2.executeUpdate();
///                out.println("transaction done.. cash deposited.. in customer table!!");
                } catch (Exception e) {
                    out.println("transaction failed.." + e);
                }
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
