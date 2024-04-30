<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="edu.shiep.library.factory.*,edu.shiep.library.vo.*" %>
    <%@page import="java.util.*"%>
<!DOCTYPE html>
<html>

<head>
<link href="assets/css/shopping.css" rel='stylesheet' type='text/css' />
	<link href="assets/css/shoplist.css" rel='stylesheet' type='text/css' />
<meta charset="UTF-8">
<title>删除商品</title>
</head>
<% request.setCharacterEncoding("utf-8");%>
<body>
<div style="color:#FD7865">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="assets/images/library.jpg" alt="Logo" height="50" width="50">&nbsp;&nbsp;&nbsp;&nbsp;L&nbsp;I&nbsp;B&nbsp;R&nbsp;A&nbsp;R&nbsp;Y</div>
<br>

<hr />
<center>
<%
	int mid=(Integer)session.getAttribute("mid");
	Cart cart=DAOFactory.getICartDAOInstance().findByld(Integer.parseInt(request.getParameter("pno")),mid);
	
	try{
		if(DAOFactory.getICartDAOInstance().delete(cart)){
%>
			<h3>删除商品信息成功！</h3>
			<h3><a href="mycart_list.jsp">购物车列表</a></h3>
<%
		}else{
%>
			<h3>删除商品信息失败！</h3>
			<h3><a href="mycart_list.jsp">购物车列表</a></h3>
<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</center>
</body>
</html>