<%@ page contentType="text/html;charset=utf8"%>
<%
String getPrameId = request.getParameter("id");
int getid=0;
if(getPrameId!=null){
	getid = Integer.parseInt(getPrameId);
}
%>
<div class="top">
	<div class="top_left"><a href="index.jsp" ><img src="images/logo.jpg" /></a></div>
	<div class="top_right"><a href="http://se.xjtu.edu.cn" target="_blank">学院首页</a></div>
</div>
<div class="banner_big"><img src="images/banner1.jpg" /></div>
<div id="nav">
	<dl>
		<dt><a class="white<%if(getid==0){%>_hover<%}%>" href="index.jsp">首页</a></dt>
	</dl>
	<dl>
		<dt><a class="white<%if(getid==15){%>_hover<%}%>" href="list.jsp?id=15">新闻动态</a></dt>
	</dl>
	<dl>
		<dt><a class="white<%if(getid==1){%>_hover<%}%>" href="single.jsp?id=1">学院概括</a></dt>
	</dl>
	<dl>
		<dt><a class="white<%if(getid==2||getid==3||getid==4||getid==7){%>_hover<%}%>" href="single.jsp?id=2">专业介绍</a></dt>
		<dd>
			<ul>
				<li><a href="single.jsp?id=2" target="_blank">专业介绍</a></li>
				<li><a href="single.jsp?id=4" target="_blank">培养目标</a></li>
				<li><a href="single.jsp?id=5" target="_blank">课程体系</a></li>
				<li><a href="single.jsp?id=6" target="_blank">师资力量</a></li>
				<li style="background:none;"><a href="single.jsp?id=7" target="_blank">实践平台</a></li>
			</ul>
		</dd>
	</dl>
	<dl>
		<dt><a class="white<%if(getid==5){%>_hover<%}%>" href="single.jsp?id=5">课程体系</a></dt>
	</dl>
	<dl>
		<dt><a class="white<%if(getid==6){%>_hover<%}%>" href="teacher.jsp?id=6">师资力量</a></dt>
	</dl>
	<dl>
		<dt><a class="white<%if(getid==8||getid==9||getid==10||getid==14){%>_hover<%}%>" href="single.jsp?id=8">职业发展</a></dt>
		<dd style="background:url(images/navul.png) left center no-repeat; padding-left:7px;">
			<ul>
				<li><a href="single.jsp?id=9" target="_blank">专业优势</a></li>
				<li><a href="single.jsp?id=10" target="_blank">专业前景</a></li>
				<li style="background:none;" ><a href="single.jsp?id=14" target="_blank">职业发展</a></li>
			</ul>
		</dd>
	</dl>
	<dl>
		<dt style="background:none;"><a class="white<%if(getid==12){%>_hover<%}%>" href="single.jsp?id=12">联系我们</a></dt>
	</dl>
</div>