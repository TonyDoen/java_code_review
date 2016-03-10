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
	<%
		//判断是否是顶级栏目
		if(pid>0){%>
			<a href="list.jsp?id=<%=pid%>" class="bread" ><%=pname%></a>
	<%  }%>
	<a href="list.jsp?id=<%=id%>" class="bread" ><%=lanmuname%></a>
</div>
<div class="list">
	<div class="list_left">
		<div class="list_title"><span><%=lanmuname%></span></div>
		<ul>
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
					intPageSize=15;//定义每页显示5条记录
					strPage=request.getParameter("page");//取得当前的页码

					if(strPage==null){//判断初始页面,如果没有显示记录,就置为第一页
					intPage=1;
					}else{
					intPage=Integer.parseInt(strPage);//将strPage转化为整数
					if(intPage<1) intPage=1;
					}
					ResultSet rt=stmt.executeQuery("select count(id) from cms_article where cid in("+ids+")"); 
					rt.next();
					intRowCount=rt.getInt(1);//取得整数保存与intRowCount变量中
					intPageCount=(intRowCount+intPageSize-1)/intPageSize;//计算出总页数(记录总数+每页显示的记录-1)/每页显示的记录)
					if(intPage>intPageCount)
					intPage=intPageCount;

					firstcount=(intPage-1)*intPageSize;
					if(firstcount<0){
						firstcount=0;
					}
					String sql="select id,title,created_date from cms_article where cid in("+ids+") order by zhiding desc,tuijian desc,sequence desc,created_date desc,id desc limit "+firstcount+","+intPageSize+";";
					ResultSet rs=stmt.executeQuery(sql);//执行sql，按照时间先后排序显示
					while(rs.next()){
				%>
					<li>
						<span><%=rs.getString("created_date").substring(0,10)%></span>
						<a href="news.jsp?id=<%=rs.getString("id")%>" target="_blank"><%
							String title = rs.getString("title");
							if(title.length()>40){
								out.print(title.substring(0,40));
							}else{
								out.print(title);
							}
							%>
						</a>
					</li>
			<%}%>
			<% rs.close();%>
		</ul>
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
		<%@ include file="right.jsp"%>
	</div>
</div>
<div style="clear:both;"></div>
<%@ include file="footer.jsp"%>
</body>
</html>
