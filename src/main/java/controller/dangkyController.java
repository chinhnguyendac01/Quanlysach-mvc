package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.khachhangbean;
import dao.dangkydao;

/**
 * Servlet implementation class dangkyController
 */
@WebServlet("/dangkyController")
public class dangkyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String hoten = request.getParameter("hoten");
		String diachi = request.getParameter("diachi");
		String sodt = request.getParameter("sodt");
		String email = request.getParameter("email");
		String tendn = request.getParameter("tendn");
	
		if(tendn != null)
		{
			tendn.replaceAll("\\s+","");
		}
		String pass = request.getParameter("pass");
		try
		{
			khachhangbean Khachhangbean = new khachhangbean();
			
			Khachhangbean.setHoten(hoten);
			Khachhangbean.setDiachi(diachi);
			Khachhangbean.setSodt(sodt);
			Khachhangbean.setEmail(email);
			Khachhangbean.setTendn(tendn);
			Khachhangbean.setPass(pass);
			
			dangkydao dangkyDao = new dangkydao();
			
			String userRegistered = dangkyDao.dangkykhachhang(Khachhangbean);
			
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("dangky.jsp");
			
			if(hoten!=null &&  diachi!=null && sodt!=null && email!=null && tendn!=null && pass!=null)
			{
				
				if(userRegistered.equals("SUCCESS"))
				{
					rd  = request.getRequestDispatcher("ktdn");
					
				}else
				{
					request.setAttribute("errMessage", userRegistered);
					rd = request.getRequestDispatcher("dangky.jsp");
				}	
			}
			
			
			rd.forward(request, response);
		}catch(Exception e)
		{
			e.printStackTrace();
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
