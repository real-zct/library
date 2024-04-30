package edu.shiep.library.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.shiep.library.factory.DAOFactory;
import edu.shiep.library.vo.Member;



public class MshowServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		req.setCharacterEncoding("UTF-8");
		String path="MShow.jsp";
		int mid=Integer.parseInt(req.getParameter("mid"));
		Member member=null;
		try{
			if(DAOFactory.getIMemberDAOInstance().MShow(mid)!= null){
				member=DAOFactory.getIMemberDAOInstance().MShow(mid);
				req.getRequestDispatcher("Mshow.jsp").forward(req,resp);
			}else{
				req.getRequestDispatcher("welcome.jsp").forward(req,resp);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	 public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
			this.doGet(req,resp);
	}
}
