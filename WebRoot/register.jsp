<%@ page contentType="text/html" pageEncoding="utf-8"%>

<html>
<head>
<link href="assets/css/shopping.css" rel='stylesheet' type='text/css' />
	<link href="assets/css/shoplist.css" rel='stylesheet' type='text/css' />
<style type="text/css">
</style>
<title>注册新用户</title>
<script language="JavaScript">
function validateMid(a){
	if(a.value==""){
	alert("内容不能为空!")}
}
</script>
</head>
<body>
<div class="header1">

  	<div id="logo" style="color:#FD7865"><a title="LIBRARY" href="index.jsp"><img src="assets/images/logo.png" height="60" width="60" alt="LIBRARY"/></a><font size="+3">&nbsp; L I B R A R Y</font>
	</div>
<br>

<hr />
<%	
	request.setCharacterEncoding("utf-8") ;
%>
<center>
<form action="RegisterServlet" method=post >
<table border="1" width="80%" cellpadding="5" cellspacing="0" >
<th colspan="2" bgcolor="#FFE3E3">注册新用户</th>
<tr>
<td>用户名：</td>
<td><input type="text" name="mname" onBlur="validateMid(this)"></td>
</tr>
<tr>
<td>密&nbsp;&nbsp;码：</td>
<td><input type="text" name="mpassword" onBlur="validateMid(this)"></td>
</tr>
<tr>
<td>手机号：</td>
<td><input type="text" name="mtele" onBlur="validateMid(this)"></td>
</tr>
<tr>
<td>邮&nbsp;&nbsp;箱：</td>
<td><input type="text" name="memail" onBlur="validateMid(this)"></td>
</tr>
<tr>
<td>编&nbsp;&nbsp;号：</td>
<td><input type="text" name="mid" onBlur="validateMid(this)"></td>
</tr>
</table>
<center>
<br>
</br>
<div class="col-lg-36">
                 <div class="single-form form-group">
                 <button class="main-btn" type="submit" style="background: #FD7865;color: #fefefe;font-size='14pt';width='200'" >注册</button>
                                          
                  </div>
</div>
</center>

</form>
</center>
</body>
</html>