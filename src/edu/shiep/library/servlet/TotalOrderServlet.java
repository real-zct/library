package edu.shiep.library.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.shiep.library.factory.DAOFactory;
import edu.shiep.library.vo.Ordered;

public class TotalOrderServlet {
	public void doGet (HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		req.setCharacterEncoding("UTF-8");
		String mid=req.getParameter("mid");
		String pno=req.getParameter("pno");
		Random ran = new Random();
		int a=0;
		for (int i = 0; i < 5; i++) {
		    a=ran.nextInt(399) + 1;
		    
		}
		int ono=a;
		int mid1=Integer.parseInt(mid);
		int pno1=Integer.parseInt(pno);
		Date odate = null;
		try {
			String date=new SimpleDateFormat("yyyy=MM-dd").format(new Date());
			odate = new SimpleDateFormat("yyyy=MM-dd").parse(date);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String opeople = null;
		try {
			opeople = DAOFactory.getIMemberDAOInstance().MShow(mid1).getMname();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String ocount=req.getParameter("ccount");
		int ocount1=Integer.parseInt(ocount);
		String ototal=req.getParameter("ptotal");
		float ototal1=Float.parseFloat(ototal);
		String otel = null;
		try {
			otel = DAOFactory.getIMemberDAOInstance().MShow(mid1).getMtele();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Ordered order=new Ordered();
		order.setMid(mid1);
		order.setPno(pno1);
		order.setMid(mid1);
		order.setOno(ono);
		order.setOtotal(ototal1);
		order.setOdate(odate);
		order.setOpeople(opeople);
		order.setOcount(ocount1);
		order.setOtel(otel);
		try{
        	if(DAOFactory.getIOrderedDAOInstance().doCreate(order)){
        		
        			req.getSession().setAttribute("ono", order.getOno());
        			req.getRequestDispatcher("order.jsp").forward(req,resp);	
        		
        	}
        }catch(Exception e){
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		this.doGet(req,resp);
	}
}
