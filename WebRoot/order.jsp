<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="edu.shiep.library.vo.*,edu.shiep.library.factory.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head><title>订单界面</title>
  <link href="assets/css/shopping.css" rel='stylesheet' type='text/css' />
	<link href="assets/css/shoplist.css" rel='stylesheet' type='text/css' />
	<style type="text/css">
  		table.hovertable {
    		font-family: verdana,arial,sans-serif;
   		 	font-size:11px;
    		color:#333333;
    		border:dotted;

    		border-width: 1px;
    		border-color: #999999;
    		border-collapse: collapse;
		}
		table.hovertable th {
    		background-color:#f9f9f9;
    		border-width: 1px;
   		 	padding: 8px;
   		 	border-style: solid;
    		border-color: #cccccc;
    		border-left-style: none; 
    		border-right-style: none; 
		}
		table.hovertable tr {
    		background-color:#ffffff;
		}
		table.hovertable td {
   		 	border-width: 1px;
    		padding: 8px;
    		border-style: solid;
    		border-color: #cccccc;
    		border-left-style: none; 
    		border-right-style: none; 
    		width:20px;
    		text-align:center;
    		vertical-align:middle;
    		
		}
  		
  	</style>
  </head>
 
  <body>
<%
  	request.setCharacterEncoding("utf-8");
 	int ono1=(Integer)session.getAttribute("ono");
  	Ordered order=DAOFactory.getIOrderedDAOInstance().findByld(ono1);
  	String pname=DAOFactory.getIProductDAOInstance().findByld(order.getPno()).getPname(); 
   %>
  <div class="header1">

  	<div id="logo" style="color:#FD7865"><a title="LIBRARY" href="index.jsp"><img src="assets/images/logo.png" height="60" width="60" alt="LIBRARY"/></a><font size="+3">&nbsp; L I B R A R Y</font>
	</div>
  <div class="icon2">
  <form action="mycart_list.jsp" method="post">
  	<input type="image" src="assets/images/bag.png" id="search" alt="购物车">
  	<input type="hidden" name="mid" value=<%=session.getAttribute("mid")%> >
  </form>
 </div>
 <div class="icon1"> 
<form action="MShow.jsp" method="post">
  	<input type="image" height="50px" width="50px"src="assets/images/touxiang.png"  alt="个人信息">
  </form>
</div>
  <div class="icon3"><p align="center" style="color:#ffffff">欢迎<%=session.getAttribute("mid")%></p> </div>
</div>
<br>

<hr />
 <center>     
<table border="1" width="80%" class="hovertable">
<tr>
    <th>用户编号</th>
    <th>商品名称</th>
    <th>订单编号</th>
    <th>金额总计</th>
    <th>日期</th>
    <th>收件人</th>
    <th>数量</th>
    <th>收件人号码</th>
</tr>
<tr onmouseover="this.style.backgroundColor='#ffedeb';" onmouseout="this.style.backgroundColor='#ffffff';">
    <td><%=order.getMid() %></td>
    <td><%=pname %></td>
    <td><%=order.getOno() %></td>
    <td><%=order.getOtotal() %></td>
    <td><%=order.getOdate() %></td>
    <td><%=order.getOpeople() %></td>
    <td><%=order.getOcount() %></td>
    <td><%=order.getOtel() %></td>
    </tr>

</table>
<br/><br/>
<input type="button" value="支付">
</center>
  </body>
</html>
