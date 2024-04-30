<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
<link href="assets/css/shopping.css" rel='stylesheet' type='text/css' />
	<link href="assets/css/shoplist.css" rel='stylesheet' type='text/css' />
<title>欢迎界面</title>
</head>
<body>
<a class="navbar-brand" href="index.jsp">
  <div class="header1">

  	<div id="logo" style="color:#FD7865"><a title="LIBRARY" href="index.jsp"><img src="assets/images/logo.png" height="60" width="60" alt="LIBRARY"/></a><font size="+3">&nbsp; L I B R A R Y</font>
	</div>
  </a>
  <br>

<hr />
<center>
<%
request.setCharacterEncoding("utf-8");
List<String> info=(List<String>) request.getAttribute("info");
if(info!=null){
Iterator<String> iter=info.iterator();
while(iter.hasNext()){
%>
<h4><%=iter.next() %></h4>
<%
}
}
%>
</center>
</body>
</html>
