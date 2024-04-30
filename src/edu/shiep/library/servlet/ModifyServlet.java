package edu.shiep.library.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.shiep.library.vo.*;
import edu.shiep.library.factory.*;

public class ModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		List<String> info=new ArrayList<String>();
		int pno=Integer.parseInt(request.getParameter("pno"));
		int mid=Integer.parseInt(request.getParameter("mid"));
		int ccount=Integer.parseInt(request.getParameter("ccount"));
		try{
			if(ccount>0){
				Cart cart =DAOFactory.getICartDAOInstance().findByld(pno, mid);
				Cart cart1=new Cart();
				cart1.setPno(cart.getPno());
				cart1.setMid(cart.getMid());
				cart1.setCcount(ccount);
				cart1.setPname(cart.getPname());
				cart1.setPprice(cart.getPprice());
				cart1.setTotalprice(cart.getPprice()*cart1.getCcount());
				if(DAOFactory.getICartDAOInstance().update(cart1)){
					info.add("更改成功！");
					request.setAttribute("info", info);
					response.sendRedirect("mycart_list.jsp");
				}else{
					info.add("更改失败！");
					request.setAttribute("info", info);
					response.sendRedirect("mycart_list.jsp");
				}
			}else{
				info.add("更改失败！");
				request.setAttribute("info", info);
				response.sendRedirect("mycart_list.jsp");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
