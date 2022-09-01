package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Login Page</title>\n");
      out.write("        <link href=\"style.scss\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Login Page</h1><br>\n");
      out.write("        <form action=\"Check.jsp\" method=\"post\">\n");
      out.write("            <table border=\"2\"  bgcolor=\"#ADD8E6\" class=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Select Role</td>\n");
      out.write("                    <td><select name=\"role\">\n");
      out.write("                            <option>Admin</option>\n");
      out.write("                            <option>CUSTOMER</option>\n");
      out.write("                        </select></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Enter Account Number</td>\n");
      out.write("                    <td><input type=\"text\" name=\"accountno\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Enter Password</td>\n");
      out.write("                    <td><input type=\"text\" name=\"password\"></td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                ");

                    StringBuffer sb = new StringBuffer();
                    for (int i = 1; i <= 5; i++) {
                        sb.append((char) (int) (Math.random() * 79 + 23 + 7));
                    }
                    String cap = new String(sb);
                    session.setAttribute("cap_passed", cap);
                
      out.write("      \n");
      out.write("                <tr>  \n");
      out.write("                    <td> \n");
      out.write("                        Enter Captcha\n");
      out.write("                        <div style=\"background-color: white\"><h2><s><i><font face=\"TIMES NEW ROMAN\">");
      out.print(cap);
      out.write("</font></i></s></h2></div>  \n");
      out.write("                    </td>  \n");
      out.write("                    <td><input type=\"text\" name=\"cap1\" value=\"\" /></td>  \n");
      out.write("<!--                    <td><input type=\"hidden\" name=\"cap2\" value='");
      out.print(cap);
      out.write("' readonly=\"readonly\" </td>  -->\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                    <td><input type=\"submit\" name=\"b1\" value=\"Login\"></td>\n");
      out.write("                    <td><input type=\"reset\" name=\"b2\" value=\"Reset\"> </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"ForgetPassword.jsp\">Forget Password</a></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
