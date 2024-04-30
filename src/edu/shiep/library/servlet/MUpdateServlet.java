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

public class MUpdateServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		req.setCharacterEncoding("UTF-8");
		String path="MShow.jsp";
		String mid=req.getParameter("mid");
	    String mname=req.getParameter("mname");
	    String mpassword=req.getParameter("mpassword");
	    String mtele=req.getParameter("mtele");
	    String memail=req.getParameter("memail");
	    int mid1=Integer.parseInt(mid);
	    List<String> info=new ArrayList<String>();
	    Member member=new Member();
	    member.setMid(mid1);
        member.setMname(mname);
        member.setMpassword(mpassword);
        member.setMtele(mtele);
        member.setMemail(memail);
        try{
        	if(DAOFactory.getIMemberDAOInstance().MUpdate(member)){
        		info.add("成功!<a href='index.jsp'>重新登陆");
        	}else{
        		info.add("失败 ！<a href='MShow.jsp'>重新修改");
        	}
        }catch(Exception e){
			e.printStackTrace();
		}
	req.setAttribute("info",info);
	req.getRequestDispatcher("register_do.jsp").forward(req,resp);	
}
    public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
	this.doGet(req,resp);
    }
}
