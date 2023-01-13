package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.adminxacnhanbean;

import bo.adminxacnhanbo;


/**
 * Servlet implementation class xacnhanchuyentien
 */
@WebServlet("/xacnhanchuyentien")
public class xacnhanchuyentien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhanchuyentien() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 adminxacnhanbo xnbo = new adminxacnhanbo();
		 ArrayList<adminxacnhanbean> dsxn = xnbo.getdanhsach();
		 String mct = request.getParameter("mct");
		 long mact=Long.parseLong(mct);
		 if(mct != null) {
			 xnbo.UpdateDaMua(mact);
			 //request.setAttribute("dsxn", xnbo.getdanhsach());
		 }
		 RequestDispatcher rd=request.getRequestDispatcher("adminController");
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
