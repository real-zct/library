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




public class RegisterServlet extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
    String path="register.jsp";
    String mname=req.getParameter("mname");
    String mpassword=req.getParameter("mpassword");
    String mtele=req.getParameter("mtele");
    String memail=req.getParameter("memail");
    String mid=req.getParameter("mid");
    List<String>info=new ArrayList<String>();
    if(mname==null||"".equals(mname)){
    	info.add("<a href='register.jsp'>用户名不能为空！重新注册");
    }
    if(mpassword==null||"".equals(mpassword)){
    	info.add("<a href='register.jsp'>密码不能为空！重新注册");
    }
    if(mtele==null||"".equals(mtele)){
    	info.add("<a href='register.jsp'>手机号不能为空！重新注册");
    }
    if(memail==null||"".equals(memail)){
    	info.add("<a href='register.jsp'>邮箱不能为空！重新注册");
    }
    if(mid==null||"".equals(mid)){
    	info.add("<a href='register.jsp'>编号不能为空！重新注册");
    }
    int mid1=Integer.parseInt(mid);
    if(info.size()==0){
    	Member member=new Member();
        member.setMid(mid1);
        member.setMname(mname);
        member.setMpassword(mpassword);
        member.setMtele(mtele);
        member.setMemail(memail);
        try{
        	if(DAOFactory.getIMemberDAOInstance().MCreate(member)){
        		info.add("成功<a href='index.jsp'>登陆");
        	}else{
        		info.add("编号已存在<a href='register.jsp'>重新注册");
        	}
        }catch(Exception e){
			e.printStackTrace();
		}
	}
	req.setAttribute("info",info);
	req.getRequestDispatcher("register_do.jsp").forward(req,resp);	
}
    public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
	this.doGet(req,resp);
    }

}

