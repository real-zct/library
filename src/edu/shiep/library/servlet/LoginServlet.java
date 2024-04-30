package edu.shiep.library.servlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.shiep.library.factory.DAOFactory;
import edu.shiep.library.vo.Member;





public class LoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		req.setCharacterEncoding("UTF-8");
		String path="index.jsp";
		String code = req.getParameter("code");
		String mid=req.getParameter("mid");
		String mpassword=req.getParameter("mpassword");
		List <String> info=new ArrayList<String>();
		if(mid==null||"".equals(mid)){
			info.add("<a href='index.jsp'>编号不能为空！重新登陆");
			req.setAttribute("info",info);
			req.getRequestDispatcher("welcome.jsp").forward(req,resp);
			
		}
		else if(mpassword==null||"".equals(mpassword)){
			info.add("密码不能为空！<a href='index.jsp'>重新登陆");
			req.setAttribute("info",info);
			req.getRequestDispatcher("welcome.jsp").forward(req,resp);
		}
		else if(code == null || "".equals(code)) {
			info.add("验证码不能为空！<a href='index.jsp'>重新登陆");
			req.setAttribute("info",info);
			req.getRequestDispatcher("welcome.jsp").forward(req,resp);
		}else{
			String rand = (String) req.getSession().getAttribute("rand");
			if (!code.equalsIgnoreCase(rand)) {
				info.add("验证码错误！<a href='index.jsp'>重新登陆") ;
				req.setAttribute("info",info);
				req.getRequestDispatcher("welcome.jsp").forward(req,resp);
			}
		}
		int mid1=Integer.parseInt(mid);
		if(info.size()==0){
			Member member=new Member();
			member.setMid(mid1);
			member.setMpassword(mpassword);
			try{
				if(DAOFactory.getIMemberDAOInstance().findLogin(member)){
					
					info.add("成功<a href='productList1.jsp'>进入购买");
					req.getSession().setAttribute("mid",member.getMid());
					resp.sendRedirect("productList1.jsp?pageNo1=1&flag1=0");
				}else{
					info.add("失败<a href='index.jsp'>重新登陆");
					req.setAttribute("info",info);
					req.getRequestDispatcher("welcome.jsp").forward(req,resp);
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}
			
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		this.doGet(req,resp);
	}
}
