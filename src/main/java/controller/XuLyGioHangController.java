package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;

/**
 * Servlet implementation class XuLyGioHangController
 */
@WebServlet("/XuLyGioHangController")
public class XuLyGioHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XuLyGioHangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();	
		giohangbo gh=(giohangbo)session.getAttribute("gio");

		if(gh != null)
		{
			if(request.getParameter("butcheck")!=null){
				String[] c=request.getParameterValues("check");
				if(c!=null)
				{
					for(String st:c)
					{
						gh.Xoa(st);
					}
					
				}
				
			}
			if(request.getParameter("butsua")!=null){
				String ms=request.getParameter("butsua");
				String tendksl="txt"+ms;
				long sl=Long.parseLong(request.getParameter(tendksl));
				gh.Them(ms, "", 0, sl);
			}else 
				
				if(request.getParameter("butxoa")!=null ){
					String ms=request.getParameter("butxoa");
					gh.Xoa(ms);
				}
		//Luu lai session
			session.setAttribute("gio", gh);
			
			 
		}
		if(gh != null)
		{
			 if(gh.ds.size()==0)//Neu trong gio het hang
			 {
				 response.sendRedirect("htgioController"); 
			 }else
			 {
				 response.sendRedirect("htgioController"); 
			 }
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
