package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jspx extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<div version=\"2.0\" id=\"menu\">");
      out.write("<div class=\"sidebar-nav navbar-collapse\">");
      out.write("<ul class=\"nav\">");
      out.write("<li id=\"item\">");
      out.write("<a class=\"active\">");
      out.write("<span aria-hidden=\"true\" class=\"glyphicon glyphicon-th-large\"/>");
      out.write(" Create empType ");
      out.write("</a>");
      out.write("<ul class=\"nav nav-second-level\">");
      out.write("<li style=\"display:none;\" id=\"viewitem\">");
      out.write("<a href=\"http://localhost:8080/wd/ordermanager/viewitem\">");
      out.write("viewitem");
      out.write("</a>");
      out.write("</li>");
      out.write("<li style=\"display:none;\" id=\"createitem\">");
      out.write("<a href=\"http://localhost:8080/wd/ordermanager/createitem\">");
      out.write("createitem");
      out.write("</a>");
      out.write("</li>");
      out.write("</ul>");
      out.write("</li>");
      out.write("<li id=\"itemtype\">");
      out.write("<a class=\"active\">");
      out.write("<span aria-hidden=\"true\" class=\"glyphicon glyphicon-th-large\"/>");
      out.write(" List EmpType ");
      out.write("</a>");
      out.write("<ul class=\"nav nav-second-level\">");
      out.write("<li style=\"display:none;\" id=\"viewitemtype\">");
      out.write("<a href=\"http://localhost:8080/wd/ordermanager/viewitemtype\">");
      out.write("viewitemtype");
      out.write("</a>");
      out.write("</li>");
      out.write("<li style=\"display:none;\" id=\"createitemtype\">");
      out.write("<a href=\"http://localhost:8080/wd/ordermanager/createitemtype\">");
      out.write("createitemtype");
      out.write("</a>");
      out.write("</li>");
      out.write("</ul>");
      out.write("</li>");
      out.write("<li id=\"adjust\">");
      out.write("<a class=\"active\">");
      out.write("<span aria-hidden=\"true\" class=\"glyphicon glyphicon-th-large\"/>");
      out.write(" Delete empType ");
      out.write("</a>");
      out.write("<ul class=\"nav nav-second-level\">");
      out.write("<li style=\"display:none;\" id=\"adjuststock\">");
      out.write("<a href=\"http://localhost:8080/wd/ordermanager/adjuststock\">");
      out.write("adjuststock");
      out.write("</a>");
      out.write("</li>");
      out.write("<li style=\"display:none;\" id=\"adjuststockview\">");
      out.write("<a href=\"http://localhost:8080/wd/ordermanager/adjuststockview\">");
      out.write("adjuststockview");
      out.write("</a>");
      out.write("</li>");
      out.write("</ul>");
      out.write("</li>");
      out.write("</ul>");
      out.write("</div>");
      out.write("</div>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
