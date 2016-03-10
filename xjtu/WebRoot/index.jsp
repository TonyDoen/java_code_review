<%@ page contentType="text/html;charset=utf8"%> 
<%@include file="include/conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
ResultSet configa=stmt.executeQuery("select keywords,description,name from cms_website"); 
configa.next();
int i=0;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<%=configa.getString("keywords")%>" />
<meta name="description" content="<%=configa.getString("description")%>" />
<title><%=configa.getString("name")%></title>
<link type="text/css" rel="stylesheet" href="css/common.css" />
<link type="text/css" rel="stylesheet" href="css/index.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
<script type="text/javascript" src="js/slideshow.js"></script> 
 <!--[if lt IE 7]>  
<script type="text/javascript" src="js/iepng.js" ></script>
<script type="text/javascript">
   EvPNG.fix('div, ul, img, li, input'); 
</script>
<![endif]-->
<% configa.close();%>
</head>
<body>
<%@ include file="header1.jsp"%>
<div class="con1">
	<div class="con1_left">
		<div class="left1">
			<div class="news">
				<div class="news_title">
					<a href="list.jsp?id=15" target="_blank" class="morea"><img src="images/more.png" /></a>
					<a href="list.jsp?id=15" target="_blank" class="news_titlea">新闻动态</a>
				</div>
				<ul>
					<% String sql="select id,title,created_date from cms_article where cid=15 order by zhiding desc,tuijian desc,sequence desc,created_date desc,id desc limit 5";
					ResultSet rs=stmt.executeQuery(sql);//执行sql，按照时间先后排序显示
					i=0;
					while(rs.next()){%>
						<li<%if(i>3){%>style="background:none;"<%}%>><a href="news.jsp?id=<%=rs.getString("id")%>" target="_blank" title="">
							<%String title = rs.getString("title");
							if(title.length()>17){
								out.print(title.substring(0,17)+"…");
							}else{
								out.print(title);
							}
							i++;
							%></a></li>
					<%}%><% rs.close();%>
				</ul>
			</div>
			<div class="banner">
							<div class="comiis_wrapad" id="slideContainer">
								<div id="frameHlicAe" class="frame cl">
									<div class="temp"></div>
									<div class="block">
										<div class="cl">
											<ul class="slideshow" id="slidesImgs">
												<li>
													<a href="#" target="_blank"><img src="images/banner2_1.jpg" width="467" height="216" alt="" /></a>
													<span class="title">西安交通大学教授与工业界自身专家共同授课，前沿理论<br />与工业时间充分结合。</span>
												</li>
												<li>
													<a href="#" target="_blank"><img src="images/banner2_2.jpg" width="467" height="216" alt="" /></a>
													<span class="title">与众多知名企业共建联合实验室，增加学生实践经验。</span>
												</li>
												<li>
													<a href="#" target="_blank"><img src="images/banner2_3.jpg" width="467" height="216" alt="" /></a>
													<span class="title">地处经济发达的长三角地区，拥有大量与社会沟通和企业<br />实践锻炼的机会。</span>
												</li>
												<li>
													<a href="#" target="_blank"><img src="images/banner2_4.jpg" width="467" height="216" alt="" /></a>
													<span class="title">学校、苏州、国家工信部移动云计算教育培训中心共同投入，<br />叠加支撑。</span>
												</li>
			
											</ul>
										</div>
										<div class="slidebar" id="slideBar">
											<ul>
												<li class="on">1</li>
												<li>2</li>
												<li>3</li>
												<li>4</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						<script type="text/javascript">
							SlideShow(8000);
						</script>
						</div>
			</div>
		<div class="left2">
			<div class="college">
				<div class="news_title">
					<a href="single.jsp?id=1" target="_blank" class="morea"><img src="images/more.png" /></a>
					<a href="single.jsp?id=1" target="_blank" class="news_titlea">学院概括</a>
				</div>
				<div class="college_con">
					<img src="images/college_img.jpg" />交大苏州研究生院坐落在长三角发达地区,是交大和苏州工业园区联合建立的高层次人才培养基地,各项工作由学校研究生院统一管理.研究生导师由本部教师,西交利物浦大学教师,特聘企业高级科技... <a href="single.jsp?id=1" target="_blank">[详细]</a>
				</div>
			</div>
			<div class="advantage">
				<div class="advantage_title">
					<a href="single.jsp?id=8" id="tab1" onMouseOver="on1()" target="_blank" class="title_hover">专业优势</a>
					<a href="single.jsp?id=10" id="tab2" onMouseOver="on2()" target="_blank" class="center_normal">专业前景</a>
					<a href="single.jsp?id=14" id="tab3" onMouseOver="on3()" target="_blank" class="title_normal">职业发展</a>
				</div>
				<div class="advantage_con" id="show1">
					<div class="advantage_img"><a href="single.jsp?id=8" target="_blank"><img src="images/item1_img.jpg" /></a></div>
					<div class="adyantage_font" style="text-indent:0em;">
					1.投身朝阳产业,获得西安交通大学硕士学位和学历；<br />
					2.西安交通大学教授和工业界资深专家共同授课,前沿理论与工业实践充分结合；<br />
					3.地处经济发达的长三角地区，拥有大量与社会沟通和企业实践锻炼机会...     
 <a href="single.jsp?id=8" target="_blank" style="color:#33abe3;">[详细]</a></div>
				</div>
				<div class="advantage_con" id="show2" style="display:none;">
					<div class="advantage_img"><a href="single.jsp?id=10" target="_blank"><img src="images/item2_img.jpg" /></a></div>
					<div class="adyantage_font">2013年中国云计算产业进一步发展，电信运营商和互联网公司纷纷加大对云计算服务市场的投入，金融、制造、能源等传统企业开始大力建设私有云应用，而随着大型企业云平台的不断推出，用户也开始关心云平台建设和云计算应用的技术细节。云计算已经成为主流的业务模式之一...
 <a href="single.jsp?id=10" target="_blank" style="color:#33abe3;">[详细]</a></div>
				</div>
				<div class="advantage_con" id="show3" style="display:none;">
					<div class="advantage_img"><a href="single.jsp?id=14" target="_blank"><img src="images/item3_img.jpg" /></a></div>
					<div class="adyantage_font">在云计算的高速发展和移动互联网的不断普及下,云计算技术及移动应用开发技术成为推动企业走向成功的重要因素,而同时熟练掌握这两个领域的高端人才极为稀缺.因此移动云计算专业人才在当前和未来相当长的时期内,都将是深受各行各业青睐的高级人才.也因为移动云计算专业...
<a href="single.jsp?id=14" target="_blank" style="color:#33abe3;">[详细]</a></div>
				</div>
			</div>
		</div>
	</div>
	<div class="con1_right">
		<div class="news_title">
			<a href="news.jsp?id=12" target="_blank" class="morea"><img src="images/more.png" /></a>
			<a href="news.jsp?id=12" target="_blank" class="news_titlea">报考信息</a>
		</div>
		<div class="apply_intro">2012年底,软件学院依托西安交通大学强大办学实力,在国家工业和信息化部移动云计算教育培训中心及众多500强企业的支持下,开设移动云计算方向软件工程硕士
（双证）.学生将学习云计算、移动开发、软件服务、软件工程相关课程...<a href="news.jsp?id=12" target="_blank">[详细]</a></div>
		<div class="know_more"><a href="list.jsp?id=16" target="_blank"><img src="images/konw_more.jpg" /></a></div>
		<div class="call">咨询电话：029-82664760</div>
		<div class="channel">报考快速通道</div>
		<div class="channelalink">
			<a href="news.jsp?id=13" target="_blank" class="channela">招生简章</a>
			<a href="single.jsp?id=11" target="_blank" class="channela">网上报名</a>
			<a href="single.jsp?id=2" target="_blank" class="channela">专业介绍</a>
			<a href="single.jsp?id=4" target="_blank" class="channela">培养目标</a>
			<a href="single.jsp?id=5" target="_blank" class="channela">课程体系</a>
			<a href="single.jsp?id=12" target="_blank" class="channela">联系我们</a>
		</div>
	</div>
</div>
<div class="con2bg">
	<div class="con2">
		<div class="lab">
			<div class="lab_title">
				<a href="single.jsp?id=7" target="_blank" class="morea"><img src="images/more.png" /></a>
				<a href="single.jsp?id=7" target="_blank" class="lab_titlea">实践平台</a>
			</div>
			<div class="lab_con">
				<div class="lab_left">
					<div class="lab_img"><a href="single.jsp?id=7#practice1" target="_blank"><img src="images/iphone.jpg" /></a></div>
					<a href="single.jsp?id=7#practice1" target="_blank" class="lab_name">联想移动云计算联合实验室</a>
					<div class="lab_intro">在实验室中进行乐Phone系列和联想云计算项目实践,提供乐基金的支持.作为国际移动互联网巨头企业,联想为学生提供最新教学素材和实战案例……
 <a href="single.jsp?id=7#practice1" target="_blank" style="color:#33abe3;">详细>></a></div>
				</div>
				<div class="lab_right">
					<div class="lab_img"><a href="single.jsp?id=7#practice2" target="_blank"><img src="images/baidu.jpg" /></a></div>
					<a href="single.jsp?id=7#practice2" target="_blank" class="lab_name">百度移动云计算教学实践基地</a>
					<div class="lab_intro">学院与工信部移动云计算教育培训中心联合百度共建移动云计算教学实践基地,由百度提供实践项目、开发平台、辅导工程师以及实习和就业机会……
<a href="single.jsp?id=7#practice2" target="_blank" style="color:#33abe3;">详细>></a></div>
				</div>
			</div>
		</div>
		<div class="teacher">
			<div class="teacher_title">
				<a href="teacher.jsp?id=6" target="_blank" class="morea"><img src="images/more.png" /></a>
				<a href="teacher.jsp?id=6" target="_blank" class="teacher_titlea">师资力量</a>
			</div>
			<div class="teacher_con">
				<div class="teacher_show">
					<div class="teacher_img"><a href="teacher.jsp?id=6#14" target="_blank"><img src="images/cy.jpg" /></a></div>
					<a href="teacher.jsp?id=6#14" target="_blank" class="teacher_name">陈 滢</a>
				</div>
				<div class="teacher_show">
					<div class="teacher_img"><a href="teacher.jsp?id=6#15" target="_blank"><img src="images/sjd.jpg" /></a></div>
					<a href="teacher.jsp?id=6#15" target="_blank" class="teacher_name">宋俊典</a>
				</div>
				<div class="teacher_show">
					<div class="teacher_img"><a href="teacher.jsp?id=6#16" target="_blank"><img src="images/wh.jpg" /></a></div>
					<a href="teacher.jsp?id=6#16" target="_blank" class="teacher_name">汪 海</a>
				</div>
				<div class="teacher_show">
					<div class="teacher_img"><a href="teacher.jsp?id=6#17" target="_blank"><img src="images/zj.jpg" /></a></div>
					<a href="teacher.jsp?id=6#17" target="_blank" class="teacher_name">张 健</a>
				</div>
				<div class="teacher_show">
					<div class="teacher_img"><a href="teacher.jsp?id=6#18" target="_blank"><img src="images/mjb.jpg" /></a></div>
					<a href="teacher.jsp?id=6#18" target="_blank" class="teacher_name">孟江波</a>
				</div>
				<div class="teacher_show">
					<div class="teacher_img"><a href="teacher.jsp?id=6#19" target="_blank"><img src="images/lb.jpg" /></a></div>
					<a href="teacher.jsp?id=6#19" target="_blank" class="teacher_name">刘 斌</a>
				</div>
			</div>

		</div>
</div>
</div>
<div class="con3">
	<div class="con3_left">
		<div class="con3_title"><span class="titleaa">走进云计算</span></div>
		<div class="con3_con">
			<div class="con3_1">今天云计算已经走入千家万户，从Email到电子日历，从QQ农场到电子导航，从在线办公到电子商务，云应用无处不在。云计算带给人们的不仅仅是可靠地数据存储中心。更有超强的计算能力，无处不在的服务支持，特别是云计算助力IT企业整合资源优化服务把握成功的机遇。
			</div>
			<div class="con3_2">
				<a href="list.jsp?id=18" target="_blank" class="mc_titlea">解析云计算</a>
				<ul>
					<% sql="select id,title,created_date from cms_article where cid=18 order by zhiding desc,tuijian desc,sequence desc,created_date desc,id desc limit 4";
					rs=stmt.executeQuery(sql);//执行sql，按照时间先后排序显示
					i=0;
					while(rs.next()){%>
						<li <%if(i>2){%>style="background:none;"<%}%>><a href="news.jsp?id=<%=rs.getString("id")%>" target="_blank" title="">
							<%String title = rs.getString("title");
							if(title.length()>17){
								out.print(title.substring(0,17)+"…");
							}else{
								out.print(title);
							}
							i++;
							%></a></li>
					<%}%><% rs.close();%>
				</ul>
			</div>
			<div class="con3_3">
				<a href="single.jsp?id=13" target="_blank" class="mc_titlea">精彩案例</a>
				<ul>
					<li><a href="single.jsp?id=13#case1" target="_blank">云计算护航网购狂欢节</a></li>
					<li><a href="single.jsp?id=13#case2" target="_blank">云计算成为搜索引擎发展的必由之路</a></li>
					<li><a href="single.jsp?id=13#case4" target="_blank" title="云计算帮助哈根达斯优化管理减少成本创造更大的利润">云计算帮助哈根达斯优化管理减少成本</a></li>
					<li style="background:none;"><a href="single.jsp?id=13#case5" target="_blank">Giftag利用GAE平台相应高峰期用户请求</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="con3_right">
		<div class="right_title">
			<a href="single.jsp?id=19" target="_blank" class="morea"><img src="images/more.png" /></a>
			<a href="single.jsp?id=19" target="_blank" class="news_titlea">常见问题</a>
		</div>
		<div class="con3_rightcon">
			<ul>
				<li><a href="single.jsp?id=19#solution1" target="_blank">招生目录中院系招生总数含有推免生吗？</a></li>
				<li><a href="single.jsp?id=19#solution2" target="_blank">什么是工程硕士？它与工学硕士有何不同？</a></li>
				<li style="background:none;"><a href="single.jsp?id=19#solution3" target="_blank" title="老师您好，请问一下校外推免到交大的学生，体检表照片上的盖章，是盖录取学院的章还是目前所在学校学院的？还有，未在交大体检的是否可以在母校校医院体检?">老师您好，请问一下校外推免到交大的学生，体检表照片上的盖章，是盖录取学院的章还是目前所在学校学院的？还有，未在交大体检的是否可以在母校校医院体检?</a></li>
			</ul>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>
<script>
    var zhi1=document.getElementById("show1");
	var zhi2=document.getElementById("show2");
	var zhi3=document.getElementById("show3");
	var tab1=document.getElementById("tab1");
	var tab2=document.getElementById("tab2");
	var tab3=document.getElementById("tab3");
function on1()
{
	zhi1.style.display="";
	tab1.className="title_hover";
	zhi2.style.display="none";
	tab2.className="center_normal";
	zhi3.style.display="none";
	tab3.className="title_normal";
	}
function on2()
{
	zhi1.style.display="none";
	tab1.className="title_normal";
	zhi2.style.display="";
	tab2.className="center_hover";
	zhi3.style.display="none";
	tab3.className="title_normal";
	}
function on3()
{
	zhi1.style.display="none";
	tab1.className="title_normal";
	zhi2.style.display="none";
	tab2.className="center_normal"
	zhi3.style.display="";
	tab3.className="title_hover";
	}

</script>
</body>
</html>
