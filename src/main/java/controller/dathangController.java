package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bean.khachhangbean;
import bo.chitietbo;
import bo.giohangbo;
import bo.hoadonbo;

/**
 * Servlet implementation class dathangController
 */
@WebServlet("/dathangController")
public class dathangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dathangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		hoadonbo hdbo= new hoadonbo();
		chitietbo ctbo=new chitietbo();
		HttpSession session = request.getSession();
		khachhangbean kh= (khachhangbean)session.getAttribute("dn");
		if(kh==null)
		{
			RequestDispatcher rd = request.getRequestDispatcher("ktdn");
			rd.forward(request, response);
		}
		else if(kh!=null) {
			
			giohangbo gh=(giohangbo)session.getAttribute("gio");
			//Tao ra 1 hoa don
			hdbo.Them(kh.getMakh());
			long maxmahd=hdbo.maxhd();
			//Tao ra cac chi tiet hoa don
			for(giohangbean g: gh.ds)
				
			{
				ctbo.Them(g.getMasach(),(long)g.getSoluong(), maxmahd);
			}
			session.removeAttribute("gio");
		}
		RequestDispatcher rd = request.getRequestDispatcher("htsach");
		rd.forward(request, response);
		//Chuyen sang trang lsmua hang -> viet sau
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

