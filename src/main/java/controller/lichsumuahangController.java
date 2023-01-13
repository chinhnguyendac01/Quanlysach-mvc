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

import bean.khachhangbean;
import bean.lichsumuahangbean;
import bean.loaibean;
import bo.lichsumuahangbo;
import bo.loaibo;

/**
 * Servlet implementation class lichsumuahangController
 */
@WebServlet("/lichsumuahangController")
public class lichsumuahangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lichsumuahangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		khachhangbean kh = (khachhangbean) session.getAttribute("dn");
		loaibo lbo = new loaibo();
		ArrayList<loaibean> dsloai = lbo.getloai();
		request.setAttribute("dsloai", dsloai);
		if (kh == null) {
			request.setAttribute("khachhangnull", true);
			RequestDispatcher rd = request.getRequestDispatcher("htsach");
			rd.forward(request, response);
		}else {
			lichsumuahangbo lsbo = new lichsumuahangbo();
			ArrayList<lichsumuahangbean> listls = lsbo.getlichsu(kh.getMakh());
			if (listls != null) {
				request.setAttribute("listlichsu", listls);
			}
			RequestDispatcher rd = request.getRequestDispatcher("lichsumuahang.jsp");
			rd.forward(request, response);
		}
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

    
