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

/**
 * Servlet implementation class InsertServlet
 */
public class MycartInsertServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		List<String> info=new ArrayList<String>();
		int pno=Integer.parseInt(request.getParameter("pno1"));
		int mid=Integer.parseInt(request.getParameter("mid1"));
		Cart cart=null;
		try {
		Product product=DAOFactory.getIProductDAOInstance().findByld(pno);
			if(DAOFactory.getICartDAOInstance().findByld(pno,mid)!=null){
				cart=DAOFactory.getICartDAOInstance().findByld(pno,mid);
				cart.setCcount(cart.getCcount()+Integer.parseInt(request.getParameter("amount1")));
				if(product.getPamount()>=cart.getCcount()) {
					cart.setTotalprice(cart.getPprice()*cart.getCcount());
						if(DAOFactory.getICartDAOInstance().update(cart)){
							info.add("添加商品成功！");
							request.setAttribute("info", info);
							response.sendRedirect("productList1.jsp?pageNo1=1&flag1=0");
						}else{
							info.add("添加商品失败！");
							request.setAttribute("info", info);
							response.sendRedirect("productList1.jsp?pageNo1=1&flag1=0");
						}
				}else{
					info.add("添加商品失败！");
					request.setAttribute("info", info);
					response.sendRedirect("productList1.jsp?pageNo1=1&flag1=0");
				}
			
			}else{
				cart=new Cart();
				cart.setMid(mid);
				cart.setPno(product.getPno());
				cart.setPname(product.getPname());
				cart.setPprice(product.getPprice());
				cart.setCcount(Integer.parseInt(request.getParameter("amount1")));
				cart.setTotalprice((product.getPprice())*(Integer.parseInt(request.getParameter("amount1"))));	
					if(DAOFactory.getICartDAOInstance().doCreate(cart)){
						info.add("添加商品成功！");
						request.setAttribute("info", info);
						response.sendRedirect("productList1.jsp?pageNo1=1&flag1=0");
					}else{
						info.add("添加商品失败！");
						request.setAttribute("info", info);
						response.sendRedirect("productList1.jsp?pageNo1=1&flag1=0");
					}
				
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
