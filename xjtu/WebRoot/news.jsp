<%@ page contentType="text/html;charset=utf8"%> 
<%@include file="include/conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%
String title="";
String content="";
String cid="0";
int id = Integer.parseInt(request.getParameter("id"));
//获取文章
ResultSet article=stmt.executeQuery("select title,content,cid from cms_article where id="+id);
if(!article.next()){%>
	<jsp:forward page= "index.jsp"/>
<%}
title = article.getString("title");
content = article.getString("content");
cid = article.getString("cid");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%
ResultSet configa=stmt.executeQuery("select keywords,description,name from cms_website"); 
configa.next();%>
<meta name="keywords" content="<%=configa.getString("keywords")%>" />
<meta name="description" content="<%=configa.getString("description")%>"/>
<% configa.close();%>
<title><%=title%></title>
<link type="text/css" rel="stylesheet" href="css/common.css" />
<link type="text/css" rel="stylesheet" href="css/list.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
 <!--[if lt IE 7]>  
<script type="text/javascript" src="js/iepng.js" ></script>
<script type="text/javascript">
   EvPNG.fix('div, ul, img, li, input'); 
</script>
<![endif]-->
</head>
<body>
	<%@ include file="header.jsp"%>
<div class="bread_flar">您的位置：
	<%
		String lanmuid="";//当前栏目id
		String lanmuname="";//当前栏目名称
		int pid=0;//父栏目id
		String pname="";//父栏目名称
		ResultSet lanmu=stmt.executeQuery("select id,name,pid from cms_category where id="+cid);
		if(lanmu.next()){
			lanmuid = lanmu.getString("id");
			lanmuname = lanmu.getString("name");
			pid = Integer.parseInt(lanmu.getString("pid"));
			if(pid>0){
				//获取父栏目信息
				ResultSet planmu=stmt.executeQuery("select name from cms_category where id="+pid);
				planmu.next();
				pname = planmu.getString("name");
				planmu.close();
				%>
			<%}else{
				pname = lanmuname;
		}%>
			<a href="index.jsp" class="bread" >首页</a>-
			<%if(pid>0){%>
				<a href="list.jsp?id=<%=pid%>" class="bread"><%=pname%></a> -
			<%}%>
			<a href="list.jsp?id=<%=cid%>" class="bread" ><%=lanmuname%></a> -
		<%}
			lanmu.close();
		%>
		<a class="bread" ><%=title%></a>
</div>
<div class="list">
	<div class="list_left">
	<div class="single_title"><%=title%></div>
	<div class="article">
		<%=content%>
	</div>
	</div>
	<div class="list_right">
		<%@ include file="right.jsp"%>
	</div>
</div>
<div style="clear:both;"></div>
<%@ include file="footer.jsp"%>
</body>
</html>
