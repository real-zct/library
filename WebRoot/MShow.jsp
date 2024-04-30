<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="edu.shiep.library.vo.*,edu.shiep.library.factory.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <html>
  <head>

    
    <title>www.mldnjava.cn</title>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style type="text/css">
  body {
	background-color: #FFE3E3;
}
  </style>
  </head>
  
  <body>
  <%	
	request.setCharacterEncoding("utf-8") ;
%>
  <% 
    
  	int mid1=(Integer)session.getAttribute("mid");
  	Member member=DAOFactory.getIMemberDAOInstance().MShow(mid1);
   %>
 <a class="navbar-brand" href="index.jsp">
  <div class="header1">

  	<div id="logo" style="color:#FD7865"><a title="LIBRARY" href="index.jsp"><img src="assets/images/logo.png" height="60" width="60" alt="LIBRARY"/></a><font size="+3">&nbsp; L I B R A R Y</font>
	</div>
<br>

<hr />
  </a>
  <div align="center">
  <img src="assets/images/touxiang.png" height="120" weight="120">
    <form action="MUpdateServlet" method="post"> 
    <p style="line-height:3"><div style="color:#FD7865">用户编号：<input type="text"name="mid" onfocus="this.blur()" value=<%=session.getAttribute("mid")%> ><br></div>
    <div style="color:#FD7865" ><p style="line-height:3">&nbsp;&nbsp;&nbsp;用户名：<input type="text"name="mname" value=<%=member.getMname()%>><br></div>
    <div style="color:#FD7865">&nbsp;&nbsp;&nbsp;&nbsp;密码：<input type="text" name="mpassword" value=<%=member.getMpassword()%>><br></div>
    <div style="color:#FD7865"><p style="line-height:3">联系电话：<input type="text" name="mtele" name="mtele" value=<%=member.getMtele()%>><br></div>
    <div style="color:#FD7865">电子邮箱：<input type="text" name="memail" name="memail" value=<%=member.getMemail()%>><br></div>
<center>
<p style="line-height:3">
<input type="submit" value="修改" style="background: #FD7865;color: #fefefe;font-size='14pt';width='200'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="返回商品列表" style="background: #FD7865;color: #fefefe;font-size='14pt';width='200'" onclick="window.location='productList1.jsp?pageNo1=1&flag1=0'">
</p>
</center>
    </form>
  </div>
  </body>
</html>
</html>
