package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.sachbean;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class htsach
 */
@WebServlet("/htsach")
public class htsach extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htsach() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
			loaibo lbo = new loaibo();
			 request.setAttribute("dsloai",lbo.getloai());
			 request.setCharacterEncoding("utf-8");
		     response.setCharacterEncoding("utf-8");
		     String ml=request.getParameter("ml");
		     String key=request.getParameter("txttk");
		     sachbo sbo=new sachbo();
		     ArrayList<sachbean> dssach=sbo.getsach();
		     if(ml!=null)
		    	 dssach=sbo.TimMa(ml);
		     else
		    	 if(key!=null)
			    	 dssach=sbo.Tim(key);
		     request.setAttribute("dssach",dssach);
		     HttpSession session = request.getSession();
		     RequestDispatcher  rd;
		     rd = request.getRequestDispatcher("htsach.jsp");
				
				  if(session.getAttribute("dn") != null ) { rd =
				 request.getRequestDispatcher("htsach.jsp");
				 
				 }else { rd = request.getRequestDispatcher("ktdn"); }
				 
		     rd.forward(request, response);
		   
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}