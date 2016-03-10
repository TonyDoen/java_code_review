<%@ page contentType="text/html;charset=utf8"%> 
<%@include file="include/conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%
	String lanmuid="";
	String lanmuname="";
	int pid = 0;
	String pname ="";
	int id= Integer.parseInt(request.getParameter("id"));
	String ids = request.getParameter("id");//当前栏目和所有子栏目的in字串
	//获取当前栏目信息
	ResultSet lanmu=stmt.executeQuery("select id,name,pid from cms_category where id="+id);
	if(lanmu.next()){
		//判断该栏目是否是顶级栏目
		lanmuid = lanmu.getString("id");
		lanmuname = lanmu.getString("name");
		pid = Integer.parseInt(lanmu.getString("pid"));
		if(pid>0){
			//获取父栏目信息
			ResultSet planmu=stmt.executeQuery("select name from cms_category where id="+pid);
			planmu.next();
			pname = planmu.getString("name");
			planmu.close();			
		}else{
			pname = lanmuname;
		}
	}else{%>
		<jsp:forward page= "index.jsp"/>
	<%}
	lanmu.close();
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
<title><%=lanmuname%></title>
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
		<%	if(pid>0){%>
		<a href="single.jsp?id=<%=pid%>" class="bread" ><%=pname%></a>-
		<%	}%>
	<a class="bread" ><%=lanmuname%></a>
</div>
<div class="list">
	<div class="list_left">
		<div class="list_title"><span><%=lanmuname%></span></div>
		<div class="article">
			<p>除了西安交通大学软件学院教授团队担任基础课程和部分专业课程授课以及研究生导师外，我们还聘请了来自IBM、思科、华为、EMC、联想、上海计算机软件开发中心等国内外知名IT企业及研究机构的云计算系统工程师、云架构师承担专业技术类及实践类课程的讲授，在教学中侧重工程实践，通过引进真实的企业案例，指导学生完成项目研发，让学生掌握真实的企业技能，同时在论文阶段担任学生的业界导师。</p>
			<%
					ResultSet lanmuids=stmt.executeQuery("select id from cms_category where pid="+id);
					while(lanmuids.next()){
						ids = ids+","+lanmuids.getString("id");
					}
					int intPageSize;//每页显示的条数
					int intRowCount;//记录总数
					int intPageCount;//总页数
					int intPage;//页面参数
					String strPage;//定义变量用来传递page
					int i,j;
					int firstcount=0;
					intPageSize=6;//定义每页显示5条记录
					strPage=request.getParameter("page");//取得当前的页码

					if(strPage==null){//判断初始页面,如果没有显示记录,就置为第一页
					intPage=1;
					}else{
					intPage=Integer.parseInt(strPage);//将strPage转化为整数
					if(intPage<1) intPage=1;
					}
					ResultSet rt=stmt.executeQuery("select count(id) from cms_page where cid in("+ids+")"); 
					rt.next();
					intRowCount=rt.getInt(1);//取得整数保存与intRowCount变量中
					intPageCount=(intRowCount+intPageSize-1)/intPageSize;//计算出总页数(记录总数+每页显示的记录-1)/每页显示的记录)
					if(intPage>intPageCount)
					intPage=intPageCount;

					firstcount=(intPage-1)*intPageSize;
					if(firstcount<0){
						firstcount=0;
					}
					String sql="select id,title,created_date,pagepic,content from cms_page where cid in("+ids+") order by sequence desc,created_date asc,id desc limit "+firstcount+","+intPageSize+";";
					ResultSet rs=stmt.executeQuery(sql);//执行sql，按照时间先后排序显示
					while(rs.next()){
				%>
			<div class="teacher_list">
				<div class="teacher_img"><a name="<%=rs.getString("id")%>"><img src="<%=rs.getString("pagepic")%>" /></a></div>
				<div class="teacher_intro">
					<div class="teacher_name"><%=rs.getString("title")%></div>
					<div class="teacher_font"><%=rs.getString("content")%></div>
				</div>
			</div>
			<%}%><% rs.close();%>
		</div>
		<div class="page">
			<% if(intPageCount>1){
			    int number = 5;//分页显示的数量
			    int DStart = 0;//临时变量
			    int DStop = 0;
			    int forStop = 0;//循环结束
			    int forStart = 0;//循环开始
			    String numberF=""; //分页字符
			    int uppage = 0;
			    int dowpage = 0;

				uppage = intPage -1;
				dowpage = intPage +1;
			    if(uppage<1){
			    	uppage = 1;
				}
				if(dowpage>intPageCount){
			    	dowpage = intPageCount;
				}
			    //计算分页两边的数量
			    number = number % 2 == 0? number / 2 : (number - 1) / 2;
				//计算分页起始偏量
				DStart = intPage - number < 0 ? intPage - number - 1:0;
				//计算分页结束偏量和结束页码
				if(intPage + number - DStart > intPageCount){

					DStop = (intPage + number- DStart) - intPageCount;
					forStop = intPageCount + 1;

				}else{
					DStop = 0;
					forStop = intPage + number - DStart + 1;
				}

				forStart = intPage - number - DStop < 1 ? 1 : intPage - number - DStop;
				for(i=forStart;i<forStop;++i){
					if(i==intPage){
						numberF += "<span class='current'>"+i+"</span>";
					}else{
						numberF += "<a class='pageing' href='list.jsp?id="+id+"&page="+i+"'>"+i+"</a>";
					}
				}%>
				
				<a href="list.jsp?id=<%=id%>&page=<%=uppage%>" class="pageleft"><<</a>
				<%=numberF%>
				<a href="list.jsp?id=<%=id%>&page=<%=dowpage%>" class="pageright">>></a>
			<%}%>
		</div>
	</div>
	<div class="list_right">
		<div class="list_right1">
		<%
			//判断是否是顶级栏目
			if(pid>0){%>

			<div class="news_title2">
				<a target="_blank" class="news_titlea"><%=pname%></a>
			</div>
			<%
					//获取所有栏目的信息
					ResultSet lanmus=stmt.executeQuery("select id,name from cms_category where pid="+pid+" order by seq desc,id asc");
					String classtext= "subtopic";
					String href="single";
					int idss = 0;
					while(lanmus.next()){
						idss = Integer.parseInt(lanmus.getString("id"));
						if(idss == id){
							classtext = "subtopic_now";
						}else{
							classtext = "subtopic";
						}
						if(idss==6){
							href="teacher";
						}else{
							href="single";
						}
			%>
						<a class="<%=classtext%>" href="<%=href%>.jsp?id=<%=idss%>"><%=lanmus.getString("name")%></a>
					<%}
					lanmus.close();
				}
			%>
		</div>
		<%@ include file="right.jsp"%>
	</div>
</div>
<div style="clear:both;"></div>
<%@ include file="footer.jsp"%>
</body>
</html>
