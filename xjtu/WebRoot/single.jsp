<%@ page contentType="text/html;charset=utf8"%> 
<%@include file="include/conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%
String title="";
String textContent="";
String cid="";
int id= Integer.parseInt(request.getParameter("id"));
ResultSet single=stmt.executeQuery("select title,content,cid from cms_page where cid='"+id+"' order by sequence desc,id desc limit 1"); 
if(!single.next()){
	single.close();
	ResultSet content =stmt.executeQuery("select p.id,p.title,p.content,p.cid from cms_category as c inner join cms_page as p on c.pid="+id+" AND p.cid=c.id order by c.seq desc,c.id asc,p.sequence desc,p.id desc limit 1"); 
	if(!content.next()){%>
		<jsp:forward page= "index.jsp"/>
	<%}else{
		title = content.getString("title");
		textContent = content.getString("content");
		cid = content.getString("cid");
		content.close();
	}%>
<%}else{
 	title = single.getString("title");
	textContent = single.getString("content");
	cid = single.getString("cid");
	single.close();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><%=title%></title>
<% single.close();
ResultSet configa=stmt.executeQuery("select keywords,description,name from cms_website"); 
configa.next();%>
<meta name="keywords" content="<%=configa.getString("keywords")%>" />
<meta name="description" content="<%=configa.getString("description")%>"/>
<% configa.close();%>
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
	<a href="index.jsp" class="bread" >首页</a>-
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
		<%}
			lanmu.close();
		%>
		<%	if(pid>0){%>
		<a href="single.jsp?id=<%=pid%>" class="bread" ><%=pname%></a>-
		<%	}%>
	<a class="bread" ><%=title%></a>
</div>
<div class="list">
	<div class="list_left">
	<div class="single_title"><%=title%></div>
	<div class="article">
		<%=textContent%>
	</div>
	</div>
	<div class="list_right">
		<%
			//判断是否是顶级栏目
			if(pid>0){%>
			<div class="list_right1">
			<div class="news_title2">
				<a target="_blank" class="news_titlea"><%=pname%></a>
			</div>
			<%
					//获取所有栏目的信息
					ResultSet lanmus=stmt.executeQuery("select id,name from cms_category where pid="+pid+" order by seq desc,id asc");
					String classtext= "subtopic";
					String href="single";
					int ids = 0;
					while(lanmus.next()){
						ids = Integer.parseInt(lanmus.getString("id"));
						if(ids == Integer.parseInt(cid)){
							classtext = "subtopic_now";
						}else{
							classtext = "subtopic";
						}
						if(ids==6){
							href="teacher";
						}else{
							href="single";
						}
			%>
						<a class="<%=classtext%>" href="<%=href%>.jsp?id=<%=ids%>"><%=lanmus.getString("name")%></a>

					<%}
					lanmus.close();%>
					</div>
			<%	}
			%>
		
		<%@ include file="right.jsp"%>
	</div>
</div>
<div style="clear:both;"></div>
<%@ include file="footer.jsp"%>
</body>
</html>
