package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.khachhangbo;

/**
 * Servlet implementation class ktdn
 */
@WebServlet("/ktdn")
public class ktdn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktdn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String un=request.getParameter("txtun");
		  String pass=request.getParameter("txtpass");
		  RequestDispatcher rd;
		  if(un!=null&&pass!=null){
			  khachhangbo khbo= new khachhangbo();
			  khachhangbean kh= khbo.ktdn(un, pass);
		  if(kh!=null){
			  //Tao ra doi tuong session
			  HttpSession session=request.getSession();
			  session.setAttribute("dn", kh);
			   rd= request.getRequestDispatcher("htsach");
			}else //Dang nhap sai
			rd= request.getRequestDispatcher("dangnhap.jsp?kt=1");
		  } else//Chay lan dau
			  rd= request.getRequestDispatcher("dangnhap.jsp");
		  
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

