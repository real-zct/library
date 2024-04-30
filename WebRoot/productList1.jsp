<%@page contentType="text/html"pageEncoding="utf-8" %>
<%@page import="edu.shiep.library.factory.*,edu.shiep.library.vo.*" %>
<%@page import="java.util.*"%>
<html lang="zh">
  <head>
 	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>商品列表</title>
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
    		
    		
		}
  		
  	</style>
  </head>
 <body>
 <%  
 	request.setCharacterEncoding("utf-8"); 
 	int mid=(Integer)session.getAttribute("mid"); 
  %>
	<!------header top------->
<div class="header1">

  	<div id="logo" style="color:#FD7865"><a title="LIBRARY" href="index.jsp"><img src="assets/images/logo.png" height="60" width="60" alt="LIBRARY"/></a><font size="+3">&nbsp; L I B R A R Y</font>
	</div>
  <div class="search">
    <form action="#" method="post" id="sitesearch">
      <fieldset>
      <form action="productList1.jsp?pageNo1=1" method="post">
        <input type="text" name="search"  onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999" />        
        <input type="image" src="assets/images/search.png" id="search" alt="搜索一下">
        <input type="hidden" name="flag2" value="0"/>
      </form>
      </fieldset>
    </form>
  </div>
  <div class="icon2">
  <form action="mycart_list.jsp" method="post">
  	<input type="image" src="assets/images/bag.png" id="search" alt="购物车">
  	<input type="hidden" name="mid" value=<%=mid %> >
  </form>
  </div>
    <div class="icon1"> 
<form action="MShow.jsp" method="post">
  	<input type="image" height="50px" width="50px"src="assets/images/touxiang.png"  alt="个人信息">
  </form>
</div>
  <div class="icon3"><p align="center" style="color:#ffffff">欢迎<%=session.getAttribute("mid")%></p> </div>
</div>

<!------header top-------> 

<!--------header menu--------->
<br>

<hr />


<!--------header menu---------> 

<!--------content1--------->
<div class="menu">
   <div class="menu-left">
        <div class="menu1">
      
      <ul>
        <li>
          <h4>书籍/杂志/报纸</h4>
        </li>
        <li><a href="classifyList.jsp?cno=1&pageNo1=1 ">世界名著</a></li>
        <li><a href="classifyList.jsp?cno=2&pageNo1=1">外国小说</a></li>
        <li><a href="classifyList.jsp?cno=3&pageNo1=1">心理学</a></li>
        <li><a href="classifyList.jsp?cno=4&pageNo1=1">中国现当代随笔</a></li>
        <li><a href="classifyList.jsp?cno=5&pageNo1=1">青春小说</a></li>
      </ul>
    </div>
    <br/>
    <div class="menu1">
      <ul>
        <li>
          <h4>品牌</h4>
        </li>
        <li><a href="classifyList.jsp?cno=6&pageNo1=1">中信出版</a></li>
        <li><a href="classifyList.jsp?cno=7&pageNo1=1">乐乐趣</a></li>
        <li><a href="classifyList.jsp?cno=8&pageNo1=1">华阳文化</a></li>
        <li><a href="classifyList.jsp?cno=9&pageNo1=1">中南天使</a></li>
        <li><a href="classifyList.jsp?cno=10&pageNo1=1">果麦</a></li>
        <li><a href="classifyList.jsp?cno=11&pageNo1=1">人教社</a></li>
      </ul>
    </div>
    <br>
    <div class="menu1">
       <ul>
        <li>
          <h4>适用年龄</h4>
        </li>
        <li><a href="classifyList.jsp?cno=12&pageNo1=1">0-2 岁</a></li>
        <li><a href="classifyList.jsp?cno=13&pageNo1=1">3-6岁</a></li>
        <li><a href="classifyList.jsp?cno=14&pageNo1=1">7-10岁</a></li>
        <li><a href="classifyList.jsp?cno=15&pageNo1=1">11-14岁</a></li>
        <li><a href="classifyList.jsp?cno=16&pageNo1=1">14岁以上</a></li>
      </ul>   
     </div>
    <br />
    <div class="menu1">
     <ul>
        <li>
          <h4>出版社名称</h4>
        </li>
        <li><a href="classifyList.jsp?cno=17&pageNo1=1">二十一世纪出版社</a></li>
        <li><a href="classifyList.jsp?cno=18&pageNo1=1">北京教育出版社</a></li>
        <li><a href="classifyList.jsp?cno=19&pageNo1=1">清华大学出版社</a></li>
        <li><a href="classifyList.jsp?cno=20&pageNo1=1">黑龙江美术出版社</a></li>
        <li><a href="classifyList.jsp?cno=21&pageNo1=1">机械工业出版社</a></li>
        <li><a href="classifyList.jsp?cno=22&pageNo1=1">化学工业出版社</a></li>
      </ul>
    </div>

    <br />
  </div>
  <div class="menu-right">
  <%
	List<String> info=(List<String>)request.getAttribute("info");
if(info!=null){
	Iterator<String> iter=info.iterator();
	while(iter.hasNext()){
%>
	<h4><%=iter.next() %></h4>
<%
	}
}
%>
 <br> <br> <br> <br> <br> <br> <br> <br> <br>
 
<center>
<a href="productList1.jsp?pageNo1=1&flag1=0">默认排序</a>&nbsp;&nbsp;
 按销量排序：<a href="productList1.jsp?pageNo1=1&flag1=1">从高到低</a>&nbsp;<a href="productList1.jsp?pageNo1=1&flag1=2">从低到高</a> 
 &nbsp;&nbsp;&nbsp;按价格排序：<a href="productList1.jsp?pageNo1=1&flag1=3">从高到低</a>&nbsp;<a href="productList1.jsp?pageNo1=1&flag1=4">从低到高</a>
 &nbsp;&nbsp;&nbsp;<a href="productList1.jsp?pageNo1=1&flag1=5">低库存</a>
 <br><br/>
<table border="1" width="100%" class="hovertable">
    <tr>
    	<th align="center">图片</th>
        <th align="center">商品名称</th>
        <th align="center">商品价格</th>
        <th align="center">商品库存</th>
        <th align="center">商品简介</th>
        <th align="center">商品销量</th>
    	<th colspan="2">操作</th>
    </tr>
<%
try{
    String keyWord1=request.getParameter("search");
    if(keyWord1==null){
        keyWord1="";
    }
%>
    <%
    int pageNo=Integer.parseInt(request.getParameter("pageNo1"));
    int pageSize=5;//定义1个页面显示的商品数
    List<Product> all=DAOFactory.getIProductDAOInstance().findAll(keyWord1);
    //=================判断排序方式==============================
 	int flag1=Integer.parseInt(request.getParameter("flag1"));
    List<Product> pages=null;
    switch(flag1){
    case 0:
    	pages=DAOFactory.getIProductDAOInstance().pager(keyWord1,pageNo,pageSize);
    	break;
    case 1:
    	pages=DAOFactory.getIProductDAOInstance().pagerSalesDesc(keyWord1,pageNo,pageSize);
    	break;
    case 2:
    	pages=DAOFactory.getIProductDAOInstance().pagerSalesAsc(keyWord1,pageNo,pageSize);
    	break;
    case 3:
    	pages=DAOFactory.getIProductDAOInstance().pagerPriceDesc(keyWord1,pageNo,pageSize);
    	break;
    case 4:
    	pages=DAOFactory.getIProductDAOInstance().pagerPriceAsc(keyWord1,pageNo,pageSize);
    	break;
    case 5:
    	pages=DAOFactory.getIProductDAOInstance().pagerAmountLow(keyWord1,pageNo,pageSize);
    	break;
    }    
    //=================判断排序方式===================
    
    //===============计算总页数======================
    int total=all.size();//计算商品数
    int totalPage=0;
    if(total>pageSize){
    	if(total%pageSize!=0){
    		totalPage=total/pageSize + 1;
    	}else{
    		totalPage=total/pageSize;
    	}
    }else{
    	totalPage=1;
    }
    //===============计算结束=========================
    Iterator<Product> iter=pages.iterator();
%>
<%

    while(iter.hasNext()){
    	Product product=iter.next();
%>
		<form action="MycartInsertServlet" method="post"  name="productList">
    	<tr onmouseover="this.style.backgroundColor='#ffedeb';" onmouseout="this.style.backgroundColor='#ffffff';">
    		<%String product_img="assets/images/book/"+product.getPno()+".JPG"; %>
    		<td align="center"><img src="<%=product_img %>" alt="Logo" height="150" width="150"><input type="hidden" name="pno1" value="<%=product.getPno() %>"></td>
        	<td align="center"><%=product.getPname() %></td>
        	<td align="center"><%=product.getPprice() %></td>
        	<td align="center"><%=product.getPamount() %></td>
        	<td align="center"><%=product.getPnote() %></td>
        	<td align="center"><%=product.getPsales() %></td>
       	 	<td align="center" valign="middle">       	 	
       	 	<input type="hidden" name="mid1" value=<%=mid %> >
        		<input type="text" name="amount1" value="在此输入您要购买的数量" onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999">
        		<br><br><input type="submit" value="加入购物车" name="setting">
       	 	</td>
    </tr>
		</form>
<%
    }
%>
</table>
<br/><br/>
	<!-- 上一页 按钮 -->
	<div id="pageControl">
<%
	request.setAttribute("flag1",flag1);
	if (pageNo!=1){
%>
	<form action="productList1.jsp?flag1=${requestScope.flag1 }" method="post">
	<input type="hidden" value=<%=pageNo-1 %> name="pageNo1"> 
	<input type="submit" name="lastPage" value="上一页" />
	</form>
<%
	}else{
%>
	<input type="button" disabled="true" name="lastPage" value="上一页" /><!-- 为了要那个灰掉的button -->
<%
	}
 %>
 
	<!-- 下一页 按钮 -->
<%
	if (pageNo!=totalPage){
%>
	<form action="productList1.jsp?flag1=${requestScope.flag1 }" method="post">
	<input type="hidden" value=<%=pageNo+1 %> name="pageNo1"> 
	<input type="submit" name="nextPage" value="下一页" />
	</form>
<%
	}else{
%>
	<input type="button" disabled="true" name="nextPage" value="下一页" /><!-- 为了要那个灰掉的button -->
<%
	}
 %>
 

 
	</div>
</center>
	<%
	}catch(Exception e){
	e.printStackTrace();
}
%>
  </div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<!--------content2-------->
<div class="content">
  <div class="content1">
    <h4>购物指南</h4>
    <ul class="f_nav">
      <li><a href="">购物流程</a></li>
      <li><a href="">会员介绍</a></li>
      <li><a href="">团购|机票</a></li>
      <li><a href="">常见问题</a></li>
      <li><a href="">意见反馈</a></li>
      <li><a href="">联系客服</a></li>
    </ul>
  </div>
  <div class="content1">
    <h4>配送方式</h4>
    <ul class="f_nav">
      <li><a href="">上门自取</a></li>
      <li><a href="">211限时到达</a></li>
      <li><a href="">配送服务查询</a></li>
      <li><a href="">配送费收取标准</a></li>
      <li><a href="">同城配送</a></li>
      <li><a href="">海外配送</a></li>
    </ul>
  </div>
  <div class="content1">
    <h4>支付方式</h4>
    <ul class="f_nav">
      <li><a href="#">售后政策</a></li>
      <li><a href="#">价格保护</a></li>
      <li><a href="#">退款说明</a></li>
      <li><a href="#">返修|退换货</a></li>
      <li><a href="#">取消订单</a></li>
      <li><a href="#">订单详情</a></li>
    </ul>
  </div>
  <div class="content1">
    <h4>售后服务</h4>
    <ul class="f_nav">
      <li><a href="#">售后政策</a></li>
      <li><a href="#">价格保护</a></li>
      <li><a href="#">退款说明</a></li>
      <li><a href="#">返修|退换货</a></li>
      <li><a href="#">取消订单</a></li>
      <li><a href="#">订单详情</a></li>
    </ul>
  </div>
  <div class="content1">
    <h4>商家服务</h4>
    <ul class="f_nav">
      <li><a href="#">商家帮助</a></li>
      <li><a href="#">商家入驻</a></li>
      <li><a href="#">新手指导</a></li>
      <li><a href="#">培训中心</a></li>
      <li><a href="#">信息公告</a></li>
      <li><a href="#">广告服务</a></li>
    </ul>
  </div>
</div>
</div>

<!--------footer top-------->
<div class="footer1">

<div>
  <marquee id="move2" bgcolor="#ffedeb" direction="right" scrollamount="5">
  Welcome to LIBRARY
  </marquee>
  <div class="share-pic"> <img src="assets/images/social.png" usemap="#mapxie1" border="0" />
    <map name="mapxie1" id="mapxie1">
      <area shape="rect" coords="3,3,53,47" href="http://weibo.com/" target="_blank" />
      <area shape="rect" coords="53,2,101,49" href="http://openapi.qzone.qq.com/oauth/show?client_id=217921&amp;display=pc&amp;redirect_uri=http%3A%2F%2Fwww.douguo.com%2Fapi%2Ftx_get_access_token&amp;response_type=code&amp;scope=all&amp;which=Login" target="_blank" />
      <area shape="rect" coords="99,2,158,44" href="http://wx.qq.com/" target="_blank" />
      <area shape="rect" coords="157,4,215,45" href="http://www.renren.com/" target="_blank" />
      <area shape="rect" coords="216,2,268,49" href="http://t.qq.com/" target="_blank" />
    </map>

    
  </div>
  <div id="yournote">
    <form action="#" method="post">
      <fieldset>
        <legend>乐在分享</legend>
        <input type="text" value="留下您宝贵的建议：" onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999" />
        <input type="submit" id="subscribe" value="留言" />
      </fieldset>
    </form>
  </div>
</div>
<div class="clearfix"> </div>
<!--------footer top---------> 
<!--------footer-------->

	<hr />
<div style="color:rgba(0,0,0,1.00);font-size:12px">
  <p align="center">Copyright &copy; 2020 LIBRARY  <I> the IMIS Web Project of Group 3</I>.All rights reserved.</p>
</div>
<!--------footer --------->
<script type="text/javascript"  src="assets/js/jquery-1.4.2.min.js"></script> 
<script type="text/javascript" src="assets/js/js.js"></script> 
</body>

</html>
