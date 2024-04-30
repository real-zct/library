<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="edu.shiep.library.factory.*,edu.shiep.library.vo.*" %>
    <%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的购物车</title>
<link href="assets/css/shopping.css" rel='stylesheet' type='text/css' />
	<link href="assets/css/shoplist.css" rel='stylesheet' type='text/css' />
	<link rel="start icon" href="assets/images/resize_png_new.png"  > 
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
<div class="header1">

  	<div id="logo" style="color:#FD7865"><a title="LIBRARY" href="index.jsp"><img src="assets/images/logo.png" height="60" width="60" alt="LIBRARY"/></a><font size="+3">&nbsp; L I B R A R Y</font>
	</div>
<div class="icon1"> 
<form action="MShow.jsp" method="post">
  	<input type="image" height="50px" width="50px"src="assets/images/touxiang.png"  alt="个人信息">
  </form>
</div>
  <div class="icon2">
  <form action="productList1.jsp?pageNo1=1&flag1=0" method="post">
  	<input type="image" src="assets/images/bag1.png" id="search" alt="返回商品列表">
  </form>
  </div>  
  <div class="icon3"><p align="center" style="color:#ffffff">欢迎<%=session.getAttribute("mid")%></p> </div>
</div>
<br/>
<hr/>
<br/><br/>

<%
	request.setCharacterEncoding("utf-8");
try{
    int mid=(Integer)session.getAttribute("mid");
    List<Cart> all=DAOFactory.getICartDAOInstance().findCart(mid); 
    Iterator<Cart> iter=all.iterator();
%>
<center>
<table width="80%" class="hovertable">
    <tr>
        <th>商品图片</th>
        <th>商品名称</th>
        <th>商品单价</th>
   		<th>商品数量</th>
        <th>小计</th>	
    	<th colspan="3" align="center" valign="middle">操作</th>
    </tr>
<%
	float total=0;
    while(iter.hasNext()){
    	Cart cart=iter.next();
    	String product_img="assets/images/book/"+cart.getPno()+".JPG";
%>
    <tr onmouseover="this.style.backgroundColor='#ffedeb';" onmouseout="this.style.backgroundColor='#ffffff';">
        <form name="1" action="ModifyServlet" id="cart" method="post">
        <td><img height="100" width="100" src="<%=product_img %>"><input type="hidden" name="pno" value=<%=cart.getPno() %>> </td>
        <td><%=cart.getPname() %><input type="hidden" name="mid" value=<%=cart.getMid() %>></td>
        <td><%=cart.getPprice() %></td>
        <td><input type="text" name="ccount" value=<%=cart.getCcount() %> onfocus="if(value==defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value=defaultValue;this.style.color='#999'}" style="color: rgb(153, 153, 153);width:25px; height:20px;"></td> 
        <td><input type="hidden" name="ptotal" value=<%=cart.getTotalprice()%>> <%=cart.getTotalprice()%></td>
<%

		total+=cart.getTotalprice();
      	request.setAttribute("pno1",cart.getPno());
      	request.setAttribute("mid1",cart.getMid());
      	request.setAttribute("ptotal1",cart.getTotalprice());
      	request.setAttribute("ocount1",cart.getCcount());
%>
          <td align="center" valign="middle"><input type="submit" value="修改" name="setting"></td>
        <td align="center" valign="middle"><input type="button" value="删除" name="delete" onClick="window.location='mycart_delete.jsp?pno=${requestScope.pno1}'"></td>
          <td align="center" valign="middle">
          <input type="button" value="单个结算" name="setting" onClick = "javascript:location.href='PorderServlet?mid=${requestScope.mid1}&pno=${requestScope.pno1}&ptotal=${requestScope.ptotal1}&ccount=${requestScope.ocount1}'"></td>
        </form>
      
         
    </tr>
<%
    }
%>
</table>
<h3>合计：<%=total %></h3>
</center>
<%
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>