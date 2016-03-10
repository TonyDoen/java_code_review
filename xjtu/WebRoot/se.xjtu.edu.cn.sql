-- phpMyAdmin SQL Dump
-- version 3.4.8
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 11 月 07 日 14:57
-- 服务器版本: 5.5.28
-- PHP 版本: 5.2.17p1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `se.xjtu.edu.cn`
--

-- --------------------------------------------------------

--
-- 表的结构 `cms_article`
--

CREATE TABLE IF NOT EXISTS `cms_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `cid` int(11) NOT NULL COMMENT '所属栏目ID',
  `tuijian` int(10) DEFAULT '0' COMMENT '推荐',
  `zhiding` int(10) DEFAULT '0' COMMENT '置顶',
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `weburl` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '站外链接',
  `source` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源',
  `zuozhe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '作者',
  `color` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '颜色',
  `pic` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '缩略图',
  `keywords` text COLLATE utf8_unicode_ci COMMENT '关键字',
  `resume` text COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `content` text COLLATE utf8_unicode_ci COMMENT '文章内容',
  `hits` int(11) DEFAULT '0' COMMENT '点击次数',
  `created_by` int(11) NOT NULL COMMENT '创建者',
  `created_date` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '创建时间',
  `sequence` int(20) DEFAULT NULL COMMENT '排序',
  `down` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下载地址',
  `lg` int(10) NOT NULL DEFAULT '1' COMMENT '国家',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `cms_article`
--

INSERT INTO `cms_article` (`id`, `cid`, `tuijian`, `zhiding`, `title`, `weburl`, `source`, `zuozhe`, `color`, `pic`, `keywords`, `resume`, `content`, `hits`, `created_by`, `created_date`, `sequence`, `down`, `lg`) VALUES
(21, 15, 0, 0, '工信部移动云计算教育培训中心与西安交大联合共建移动云计算专业', '', '未知', 'admin', '', '', '', '', '<p style="font-size:18px; font-weight:bolder; text-align:center;">2013级开学典礼顺利举行-苏州校区</p>\r\n<p>2013年9月14日，西安交通大学苏州校区开学典礼隆重举行，工信部移动云计算教育培训中心与西安交通大学联合共建的首届移动云计算专业的116名新生参加了开学典礼。此次移动云计算专业的顺利开学标志着工信部移动云计算教育培训中心已经成功地将移动云计算这一国家战略性新兴专业带入到国家学历教育体系中来，开创性地培养全日制双证软件工程硕士，完善国家学历教育体系，促进高等教育和市场需求的无缝对接。西安交大研究生院（苏州）院长周荣莲、常务副院长陈天宁、西安交大软件学院常务副院长曾明、工信部移动云计算教育培训中心执行主任方业昌等嘉宾也莅临了本次开学典礼。</p>\r\n<p>开学典礼上，西安交大软件学院常务副院长曾明宣布西安交通大学与慧科教育联合成立云计算系，聘请金智教育CTO、前IBM中国研究院副院长陈滢博士出任该系系主任，联想研究院上海分院高级总监汪海出任特聘教授，并正式颁发聘书。随后西安交大研究生院常务副院长陈天宁、西安交大软件学院常务副院长曾明、工信部移动云计算教育培训中心执行主任方业昌、联想研究院上海分院高级总监汪海共同为联想移动云计算联合实验室揭牌，宣布该实验室正式落地西安交大，为移动云计算专业的同学提供实战平台。在下午举办的移动云计算专业慧讲坛上，陈滢博士与汪海总监分别为移动云计算专业新生做了专业的技术报告，进行了学前培训。曾明院长与工信部移动云计算教育培训中心执行主任方业昌也出席了慧讲坛并发表讲话。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022135145_mxlyiz.jpg" alt="" /></p>\r\n<p style="text-align:center;">左一：工信部移动云计算教育培训中心执行主任方业昌、左二：联想研究院上海分院高级总监汪海<br />\r\n右二：西安交大研究生院（苏州）常务副院长陈天宁、右一：西安交大软件学院常务副院长曾明</p>\r\n<p>曾明院长对此次与工信部移动云计算教育培训中心作专业共建项目的前瞻性给予了充分的肯定。曾院长表示，西安交大十分看好移动云计算专业的发展前景和广阔的市场需求，定将竭力扶持移动云计算专业的各项发展工作。苏州拥有发展软件产业的得天独厚的人文优势和政府政策优势，将移动云计算专业部署在苏州校区，将为学生的发展提供机遇和保障。</p>\r\n<p>工信部移动云计算教育培训中心执行主任方业昌表示，工信部移动云计算教育培训中心执行主任与西安交大联合共建移动云计算专业，是工信部移动云计算教育培训中心执行主任与一流高校共建项目的又一次成功落地。基于工信部移动云计算教育培训中心和北航、上海交大等院校合作共建前沿新兴专业的成功积累和经验，我们有信心将专业办好，为产业源源不断地输送优秀人才。</p>', 0, 2, '2013-10-22', 0, '', 1),
(18, 18, 0, 0, '云计算的行业成功案例？', '', '未知', 'admin', '', '', '', '', '<p>Google 的云计算平台</p>\r\n<p>Google的硬件条件优势，大型的数据中心、搜索引擎的支柱应用，促进Google云计算迅速发展。Google的云计算主要由MapReduce、Google文件系统(GFS)、BigTable组成。它们是Google内部云计算基础平台的3个主要部分。Google 还构建其他云计算组件，包括一个领域描述语言以及分布式锁服务机制等。Sawzall是一种建立在MapReduce基础上的领域语言，专门用于大规模的信息处理。Chubby是一个高可用、分布式数据锁服务，当有机器失效时，Chubby使用Paxos算法来保证备份。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022131713_t8uv8w.jpg" alt="" /></p>\r\n<p>&ldquo;蓝云&rdquo;计算平台</p>\r\n<p>&ldquo;蓝云&rdquo;解决方案是由IBM云计算中心开发的企业级云计算解决方案。该解决方案可以对企业现有的基础架构进行整合，通过虚拟化技术和自动化技术，构建企业自己拥有的云计算中心，实现企业硬件资源和软件资源的统一管理、统一分配、统一部署、统一监控和统一备份，打破应用对资源的独占，从而帮助企业实现云计算理念。</p>\r\n<p>IBM 的&ldquo;蓝云&rdquo;计算平台是一套软、硬件平台，将Internet上使用的技术扩展到企业平台上，使得数据中心使用类似于互联网的计算环境。&ldquo;蓝云&rdquo;大量使用了IBM先进的大规模计算技术，结合了IBM自身的软、硬件系统以及服务技术，支持开放标准与开放源代码软件。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022131737_440afl.jpg" alt="" /></p>\r\n<p>Amazon的弹性计算云</p>\r\n<p>Amazon是互联网上最大的在线零售商，为了应付交易高峰，不得不购买了大量的服务器。而在大多数时间，大部分服务器闲置，造成了很大的浪费，为了合理利用空闲服务器，Amazon建立了自己的云计算平台弹性计算云EC2（elastic compute cloud），并且是第一家将基础设施作为服务出售的公司。</p>\r\n<p>Amazon将自己的弹性计算云建立在公司内部的大规模集群计算的平台上，而用户可以通过弹性计算云的网络界面去操作在云计算平台上运行的各个实例(instance)。用户使用实例的付费方式由用户的使用状况决定，即用户只需为自己所使用的计算平台实例付费，运行结束后计费也随之结束。这里所说的实例即是由用户控制的完整的虚拟机运行实例。通过这种方式，用户不必自己去建立云计算平台，节省了设备与维护费用。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022131800_6x1nfw.jpg" alt="" /></p>', 0, 2, '2013-10-22', 0, '', 1),
(12, 16, 0, 0, '报考信息', '', '未知', 'admin', '', '', '', '', '<p>2012年底，软件学院依托西安交通大学强大办学实力，在国家工业和信息化部移动云计算教育培训中心及众多500强企业的支持下，开设移动云计算方向软件工程硕士（双证）。学生将学习云计算、移动开发、软件服务、软件工程相关课程、并参与完成至少一款商业级应用软件服务产品设计和开发。毕业后可从事云计算和各类移动终端应用软件的设计、开发。</p>\r\n<p><strong>专业方向</strong></p>\r\n<p>移动云计算方向：当前正值云计算和移动互联网浪潮，具有项目实战经验的移动云计算人才需求旺盛，就业和发展前景可观。我校的移动云计算专业依托国家工业和信息化部的大力支持，与众多500强企业深度结合，培养产业急需的具有云计算服务端和各类移动终端技术开发能力的高级软件人才。</p>\r\n<p><strong>培养方式</strong></p>\r\n<p>全日制学习，按照国家规定的培养计划学制为3年，学费3.9万。</p>\r\n<p><strong>联系方式</strong></p>\r\n<p>电话：029-82664760</p>\r\n<p>邮箱： mse@mail.xjtu.edu.cn</p>\r\n<p>地址：西安交通大学研究生院（苏州）</p>', 0, 2, '2013-10-22', 0, '', 1),
(13, 16, 0, 0, '招生简章', '', '未知', 'admin', '', '', '', '', '<p class="font18">西安交通大学</p>\r\n<p class="font18">2014年招收硕士研究生（全日制专业学位）招生简章</p>\r\n<p>西安交通大学是教育部直属的具有理工特色，涵盖理、工、医、经、管、文、法、哲、教育、艺术等十大学科门类的综合性重点大学。</p>\r\n<p style="text-indent:0em;"><strong>一、招生规模</strong></p>\r\n<p>2014年计划招收全日制专业学位研究生约1700名，在校学习年限一般为2年。各学院（学科或专业）的招生人数（含推荐免试人数）仅供参考，录取时视具体情况作适当调整。2014年全校总体拟接收免试生人数占招生计划30%（管理类专业学位硕士不接收推免生），各院（学科或专业）比例有所差异。具体接收办法，考生可查询我校研究生招生网页（http//gs.xjtu.edu.cn）。</p>\r\n<p style="text-indent:0em;"><strong>二、报考条件 </strong></p>\r\n<p>1、中华人民共和国公民；拥护中国共产党的领导，愿为社会主义现代化建设服务，品德良好，遵纪守法；身体健康符合国家和学校规定的体检要求。</p>\r\n<p>2、考生学历必须符合下列条件之一：</p>\r\n<p>（1）国家承认学历的应届本科毕业生（须在入学前取得本科毕业证书）；</p>\r\n<p>（2）具有国家承认的大学本科毕业学历的人员（自考本科生和网络教育本科生须在报名现场确认截止日期（2013年11月14日）前取得国家承认的大学本科毕业证书方可报考）；</p>\r\n<p>（3）已获硕士、博士学位的人员；</p>\r\n<p>（4）具有下述条件之一的同等学力的人员：</p>\r\n<p>① 获得国家承认的高职高专学历须满足：</p>\r\n<p>a. 从毕业后到2014年9月1日满2年或2年以上;</p>\r\n<p>b．以第一作者在核心期刊上发表文章；</p>\r\n<p>c．辅修过所报专业本科的全部主干课程（含英语四级）且成绩优良。</p>\r\n<p>② 国家承认学历的本科结业生和成人高校（含普通高校举办的成人高等学历教育）应届本科毕业生，英语通过四级。</p>\r\n<p>3、其他要求</p>\r\n<p>（1）.报名参加法律硕士（非法学）专业学位硕士研究生招生考试的人员，须符合下列条件：</p>\r\n<p>① 符合&ldquo;报考条件&rdquo;中第1、2各项的要求。</p>\r\n<p>② 之前在高校学习的专业为非法学专业（普通高等学校本科专业目录法学门类中的法学类专业[代码为0301]毕业生不得报考）。</p>\r\n<p>（2）.报名参加法律硕士（法学）专业学位硕士研究生招生考试的人员，还须符合下列条件：</p>\r\n<p>① 符合&ldquo;报考条件&rdquo;中第1、2各项的要求。</p>\r\n<p>② 之前在高校学习的专业为法学专业（仅普通高等学校本科专业目录法学门类中的法学类专业[代码为0301]毕业生方可报考）。</p>\r\n<p>（3）.报名参加工商管理硕士、公共管理硕士、工程管理硕士等专业学位硕士研究生招生考试的人员，须符合下列条件：</p>\r\n<p>① 符合&ldquo;报考条件&rdquo;中第1各项的要求。</p>\r\n<p>② 大学本科毕业后有3年或3年以上工作经验的人员；或获得国家承认的高职高专学历后，有5年或5年以上工作经验，达到与大学本科毕业生同等学力的人员；或已获硕士学位或博士学位并有2年或2年以上工作经验的人员。</p>\r\n<p>③录取类型为&ldquo;定向就业&rdquo;的在职人员。</p>\r\n<p>4、参加单独考试考生还须满足以下条件</p>\r\n<p>（1）取得国家承认的大学本科学历后连续工作4年或4年以上工作（获得硕士或博士学位后工作2年或2年以上）、已发表过研究论文（技术报告）或者已成为业务骨干；</p>\r\n<p>（2）报名须在符合学校限定的学科专业范围内及指定的合作单位范围（研究生院已备案）内报考，且定向就业原单位的在职人员；</p>\r\n<p>（3）须经考生所在单位同意和两名具有高级专业技术职称的专家推荐。</p>\r\n<p>5、在校研究生报考须在报名前征得所在培养单位同意。</p>\r\n<p style="text-indent:0em;"><strong>三、报名</strong></p>\r\n<p>报名包括网上报名和现场确认两个阶段。</p>\r\n<p>1、网上报名</p>\r\n<p>（1）、网上报名时间：2013年10月10日&mdash;31日每天9:00&mdash;22:00（逾期不再补报，也不得再修改报名信息）。</p>\r\n<p>（2）、网上报名网址：&ldquo;中国研究生招生信息网&rdquo;（公网网址：http：//yz.chsi.com.cn ，教育网址：http://yz.chsi.cn）。</p>\r\n<p>考生登录&ldquo;中国研究生招生信息网&rdquo;浏览报考须知，按教育部、省级教育招生考试管理机构、我校的网上公告要求报名，凡不按要求报名、网报信息误填、错填或填报虚假信息而造成不能考试或录取的，后果由考生本人承担。</p>\r\n<p>（3）、注意事项：</p>\r\n<p>A 报考我校且须选择我校为报考点的考生：应届就读学校在陕西、往届工作或户口在陕西；报考单独考试（含强军计划）、工商管理硕士、公共管理硕士、工程管理硕士；同等学力人员。</p>\r\n<p>B报考省外高校且须选择我校为报考点的考生：我校应届毕业生（含免试生）。</p>\r\n<p>凡选择我校作为报名点的考生，系统所生成的报名号前4位应为&ldquo;6111&rdquo;。外省报考我校考生按当地省级招生单位的规定选择当地报考点报名及考试。</p>\r\n<p>我校为非社会报考点，除以上A、B类考生外一律不予受理其他考生报名。</p>\r\n<p>2、现场确认：（参见我校研招网&ldquo;现场确认须知&rdquo;）</p>\r\n<p>（1）时间：2013年11月10日&mdash;14日。</p>\r\n<p>（2）地点：西安交通大学兴庆校区青年之家（进交大南门向西100m ）</p>\r\n<p>（3）提交材料：第二代居民身份证、学历证书（普通高校、成人高校、普通高校举办的成人高校学历教育应届本科毕业生持学生证及相关材料）、网上报名编号等。未通过网上学历（学籍）校验的考生，在现场确认时应提供学历（学籍）认证报告。同等学力人员报名时还须提供相关支 撑材料（成绩单、论文等）。</p>\r\n<p>4）流程：资格审查、交纳报名费、摄像及信息核对等。</p>\r\n<p>&nbsp;</p>\r\n<p>未经现场信息确认者，报考无效。</p>\r\n<p style="text-indent:0em;"><strong>四、入学考试</strong></p>\r\n<p>获取准考证：考生在2013年12月25日&mdash;2014年1月6日期间，考生可凭网报&ldquo;用户名&rdquo;和&ldquo;密码&rdquo;登录研招网下载打印《准考证》。《准考证》正反两面在使用期间不得涂改。若对准考证上信息有疑义的请速与我校研究生招办联系。准考证须保留到入学为止，请考生妥善保存。  入学考试分初试和复试两部分</p>\r\n<p>初试时间：2014年1月 4&mdash;5 日（应试科目考试时间为6小时的安排在1月 6 日进行）</p>\r\n<p>复试时间：2014年3月下旬。</p>\r\n<p style="text-indent:0em;"><strong>五、体检</strong></p>\r\n<p>按教育部规定考生在复试阶段须进行体检，体检在西安交通大学校医院进行。体检标准按教育部、卫生部、中国残疾人联合会《普通高等学校招生体检工作指导意见》、《教育部办公厅 卫生部办公厅关于普通高等学校招生学生入学身体检查取消乙肝项目检测有关问题的通知》（教学厅&bdquo;2010‟2号）文件规定，结合招生专业实际情况执行。体检不合格者，不予录取。</p>\r\n<p style="text-indent:0em;"><strong>六、相关说明</strong></p>\r\n<p>1、研究生院（苏州）硕士生联合培养计划</p>\r\n<p>2014年单列计划招收专业学位研究生300名。研究生院（苏州）简介见我校研招网&ldquo;硕士招生&rdquo;，详细信息请登陆http://www.xjtusz.cn查询。</p>\r\n<p>2、网上填报说明</p>\r\n<p>（1）考生应严格按招生目录上对应的专业、研究方向选取相应的考试科目。在院、系代码栏内正确填写报考专业所在的学院代码、专业代码和专业名称。</p>\r\n<p>（2）&ldquo;备用信息&rdquo;栏填报&ldquo;导师姓名&rdquo;(目录中未列出导师的不需要填写)和&ldquo;复试科目名称&rdquo;，从第一字符开始顺序填写导师姓名和复试科目。复试科目必须填写且不得更改。</p>\r\n<p>（3）报考强军计划的考生在&ldquo;备用信息1&rdquo;填写&ldquo;强军计划&rdquo;，并顺序填写推荐报考单位名称、地址、邮编。</p>\r\n<p>（4）本科阶段是国防生的考生（推免生或统考生）须在&ldquo;备用信息1&rdquo;栏注明&ldquo;国防生&rdquo;和保留资格年限，对未注明&ldquo;国防生&rdquo;和保留年限的，我校查实后不予录取。根据教育部、总政治部文件规定，国防生录取后必须保留1-2年学籍后方可入学，必须在报名前征得部队书面同意，录取时签定定向就业协议书，按协议书上的保留年限入学，不得提前或推后。</p>\r\n<p>（5）报考工商管理硕士的考生，在研究方向栏内必须填写管理或金融方向对应代码，确认后且不得更改。</p>\r\n<p>3、初试科目</p>\r\n<p>（1）硕士生入学考试各科目考试时间均为3小时。</p>\r\n<p>（2）全国统考、联考科目中，思想政治理论、外国语、数学、西医综合、中医综合、法硕 联考专业基础（法学）、法硕联考专业基础（非法学）、管理类联考综合能力、法硕联考综合（法学）及法硕联考综合（非法学）等考试科目均由国家统一命题，其余科目均为我校自命题。</p>\r\n<p>（3）单独考试（含强军计划）考生网报时按相应统考科目填报。</p>\r\n<p>（4）各学院不同招生专业（领域）如考试科目代码相同，则考试内容及要求也相同。  自命题范围详见目录附件或相关学院简章。</p>\r\n<p>4、复试要求与须知</p>\r\n<p>2014年我校将根据教育部下达的招生计划和各学科实际考试情况，按照一定的复试录取比例自行划定基本复试分数线。达到我校基本复试分数线要求并获得复试资格的考生方可参加复试。</p>\r\n<p>（1）提交材料：</p>\r\n<p>考生需提交相关支撑材料（身份证、毕业证、学生证、准考证、学历认证报考等）。具体以复试通知为准。</p>\r\n<p>（2）同等学力考生初试成绩达到复试基本分数线后须加试两门本科专业基础课，自学校网上公布分数线三日内自行来研招办办理加试相关手续，加试通过后，方可参加相关学院的复试。加试按所报考的学科门类进行，考试科目另行通知。</p>\r\n<p>（3）复试办法</p>\r\n<p>复试分笔试（参考书在招生目录中的备注栏内已注明）、外语听力测试、综合面试等，复试成绩占总成绩40%~50%。具体内容及比例由各学院根据本学科、专业特点及上线生源状况在复试前确定。复试具体时间、地点由报考学院通知考生，请考生留意学院网上通知。</p>\r\n<p>5、相关费用</p>\r\n<p>（1）报名费、体检费、住宿费均按陕西省物价局和省招生办规定的标准执行。</p>\r\n<p>（2）学费、资助体系</p>\r\n<p>根据教育部规定，从2014年起将实行研究生教育收费制度。学校根据国家和陕西省的规定，按照&ldquo;新生新办法，老生老办法&rdquo;的原则，制定了各类研究生学费标准并予以公布。同时修订完善了研究生资助体系（包括国家奖学金、助学金、学业奖学金、助研、助教及助管岗位津贴等），详情请查阅西安交通大学研究生院主页（http://gs.xjtu.edu.cn）。</p>\r\n<p>6、违规处理</p>\r\n<p>对于考生申报虚假信息、材料、考试舞弊等行为的，按教育部《国家教育考试违规处理办法》严肃处理。</p>\r\n<p style="text-indent:0em;"><strong>7、招生咨询</strong></p>\r\n<p>西安交通大学研究生院招生办联系地址：西安市咸宁西路28号；</p>\r\n<p>邮政编码:710049</p>\r\n<p>电话:（029）82668329；</p>\r\n<p>电子信箱:yzb@mail.xjtu.edu.cn</p>\r\n<p>网址:http//gs.xjtu.edu.cn</p>\r\n<p>传真:（029）82664655</p>', 0, 2, '2013-10-22', 0, '', 1),
(14, 15, 0, 0, '西安交大研究生院（苏州）合唱比赛圆满成功', '', '未知', 'admin', '', '', '', '', '<p>唱响交大，恭贺十八大胜利召开</p>\r\n<p style="text-align:right;">------西交大研究生院（苏州）合唱比赛圆满成功</p>\r\n<p>金秋时节，殷殷期盼，中国共产党第十八次代表大会在一片和谐欢乐的气氛下胜利闭幕。为庆祝十八大胜利召开，11月16日，西安交通大学研究生院（苏州）举行了&ldquo;歌颂祖国，唱响交大，恭贺十八大胜利召开&rdquo;合唱比赛。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022114422_3hfl0v.jpg" alt="" /></p>\r\n<p>西安交通大学苏州研究院总支部书记、常务副院长吴军华、纳米工程学院连崑教授、电气实验室曹五顺教授、\r\n经金学院王小鸽教授、研究生院（苏州）管理部主任吴骏刚、院长助理李季、张剑锋等应邀出席合唱比赛。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022114440_jn0nbs.jpg" alt="" /></p>\r\n<p>吴军华常务副院长在比赛开始前致开幕词。他说，十八大的召开对于全党、全国人民都有着非凡的意义。我们这次比赛，一方面歌颂祖国，恭贺十八大胜利召开，弘扬爱国主义精神，抒发我们为建设中国特色社会主义和谐社会而奋斗的激情，另一方面增进友谊与凝聚力，让交大的精神在苏州发扬光大，展现风采。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022114502_j1mboz.jpg" alt="" /></p>\r\n<p>来自研究生院（苏州）的288位同学，纷纷以响亮的歌声、饱满的热情表达了对祖国的忠诚、对集体的热爱。晚会现场气氛时而庄重、激昂，时而温馨、感人。台上同学高声颂扬，激人心志，台下观众低声伴唱，动人心弦。一首首经典老歌，一张张年轻面孔，演绎了西交人精妙绝伦的风采，并把合唱赛现场气氛不断推向高潮。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022114522_tspyas.jpg" alt="" /></p>\r\n<p>最终，硕2118班以一曲气势恢宏的《精忠报国》、感人至深的《相亲相爱一家人》荣获本次大赛一等奖。硕2121班的《没有共产党就没有新中国》、《打起手鼓唱起歌》与硕2122班的《歌唱祖国》、《爱》分别斩获二、三等奖。硕2115班俞蓓同学以其优异表现获得最佳指挥奖。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022114543_6bzc55.jpg" alt="" /></p>\r\n<p>本次比赛由西安交通大学苏州研究院党总支、苏州研究生会、苏州研究生团委共同举办。所有同学都精心排练，团结一心，赛出了风格，赛出了特色，展现了校园文化风采，培养了团结合作精神。达到了&ldquo;班班有歌声、人人都参与&rdquo;，促进了学校艺术教育活动的普及和提高。歌声或慷慨激昂，或清新隽永，为交大精神在苏州的传播做出了重要贡献。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022114602_7grsmg.jpg" alt="" /></p>\r\n<p>研究院教育中心汪京坪、研究生院（苏州）孙佳、杨晶、研究院办公室范福娟等也参加了此次活动。应邀出席的嘉宾还有在苏州上课的殷勤业、王拓等老师。</p>', 0, 2, '2013-10-22', 0, '', 1),
(15, 15, 0, 0, '工信部移动云计算教育培训中心与西安交通大学共建学历硕士专业', '', '未知', 'admin', '', '', '', '', '<p>2013年3月4日，工信部移动云计算教育培训中心与西安交通大学签署合作协议，全方位共建其软件学院移动云计算专业方向，联合培养全日制双证软件工程硕士，列入国家研究生统考报名目录，这标志着工信部移动云计算教育培训中心开创性地实现了全日制双证软件工程硕士的培养目标，将移动云计算等国家战略性新兴产业的专业方向带入到国家的学历教育中。同时也充分体现了西安交通大学作为国家重点高校与时俱进的教育理念，对于优化区域学科专业、优化人才培养类型、人才层次结构意义重大。</p>\r\n<p>在《教育部2013年工作要点》的指导下，面向科学前沿、文化传承创新、行业产业以及区域发展的重大需求，工信部移动云计算教育培训中心与西安交通大学联合培养全日制双证软件工程硕士，由传统软件工程硕士单证转向双证的过程中，最大程度实现高端软件人才培养目标，创新性地开辟了战略性新兴产业急需人才的发展道路，确保高端人才供应并发挥人才聚集和示范效应。此次开创新的合作，对于教育综合领域的改革、教育发展方式的转变，以及加快教育现代化的步伐具有积极的促进作用。</p>\r\n<p>工信部移动云计算教育培训中心执行主任方业昌表示，此次与西安交大合作移动云计算方向双证软件工程硕士项目，具有里程碑式的重要意义。2010年工信部移动云计算教育培训中心与北航软件学院全国首开移动云计算专业，开启了工信部移动云计算教育培训中心推动前沿技术领域创新型人才培养模式之旅。通过两年多的努力，实现了上海交通大学、厦门大学、大连理工大学、贵州大学等高校的合作，探索出一系列适合中国新兴技术市场、符合战略性新兴产业、符合国家十二五规划的综合教育解决方案。此次，面向科学前沿、行业产业的重大需求，联合西安交通大学培养全日制双证软件工程硕士，标志着工信部移动云计算教育培训中心创新人才培养模式进入快速发展阶段。</p>', 0, 2, '2013-10-22', 0, '', 1),
(16, 15, 0, 0, '工信部移动云计算教育培训中心与西安交大联合共建移动云计算专业', '', '未知', 'admin', '', '', '', '', '<p style="font-size:18px; font-weight:bolder; text-align:center;">2013级开学典礼顺利举行-苏州独墅湖高教区</p>\r\n<p>2013年8月19日，工信部移动云计算教育培训中心与西安交通大学联合共建的移动云计算专业2013年开学典礼在苏州独墅湖高教区顺利举行。此次移动云计算专业的顺利开学标志着工信部移动云计算教育培训中心执行主任已经成功地将移动云计算这一国家战略性新兴专业带入到国家学历教育体系中来，开创性地培养全日制双证软件工程硕士，完善国家学历教育体系，促进高等教育和市场需求的无缝对接。来自全国各地的116名新生参加了此次开学典礼，同时西安交大软件学院金莉院长、西安交大研究生院（苏州）周荣莲院长、工信部移动云计算教育培训中心运营管理中心总经理马云涛等嘉宾也莅临了本次开学典礼。</p>\r\n<p>西安交大软件学院院长金莉详细介绍了西安交大软件学院的发展历程和取得的成果，并对此次与工信部移动云计算教育培训中心合作专业共建项目的前瞻性给予了充分的肯定。金院长表示，西安交大十分看好移动云计算专业的发展前景和广阔的市场需求，定将竭力扶持移动云计算专业的各项发展工作。苏州拥有发展软件产业的得天独厚的人文优势和政府政策优势，将移动云计算专业部署在苏州，将为学生的发展提供机遇和保障。</p>\r\n<p>工信部移动云计算教育培训中心教学运营管理中心总经理马云涛表示，工信部移动云计算教育培训中心与西安交大联合共建移动云计算专业，是工信部移动云计算教育培训中心与一流高校共建项目的又一次成功落地基于工信部移动云计算教育培训中心和北航、上海交大等院校合作共建前沿新兴专业的成功积累和经验，我们有信心将专业办好，为产业源源不断地输送优秀人才。</p>\r\n<p style="text-align:center; text-indent:0em; "><img src="http://192.168.1.88//se.xjtu.edu.cn/upload/20131022115208_d8489y.jpg" alt="" /></p>', 0, 2, '2013-10-22', 0, '', 1),
(17, 18, 0, 0, '云计算在中国', '', '未知', 'admin', '', '', '', '', '<p><strong>企业主导</strong></p>\r\n<p>2009年9月阿里云</p>\r\n<p>移动&ldquo;大云</p>\r\n<p>&hellip;&hellip;</p>\r\n<p><strong>政府主导</strong></p>\r\n<p>北京&mdash;&mdash;实施&ldquo;祥云计划&rdquo;：到2015年，形成2000亿元产业规模，建成亚洲最大超云服务器生产基地。</p>\r\n<p>上海&mdash;&mdash;实施&ldquo;云海计划&rdquo;：到2012年，培育10家年销售额超亿元的云计算企业，带动信息服务业新增经营收入1000亿元，打造&ldquo;亚太云计算中心&rdquo;。</p>\r\n<p>重庆&mdash;&mdash;实施&ldquo;云端计划&rdquo;：到2015年，建成云集上百万台服务器、上千亿元规模的&ldquo;云计算&rdquo;基地，成为全球数据开发和处理中心。</p>\r\n<p>广州&mdash;&mdash;实施&ldquo;天云计划&rdquo;：到2015年，云计算应用水平将达到国内领先水平，构建世界级的云计算产业基地。</p>\r\n<p>亚洲最大生产基地</p>', 0, 2, '2013-10-22', 0, '', 1),
(19, 18, 0, 0, '云计算技术有哪些？', '', '未知', 'admin', '', '', '', '', '<p>云计算系统运用了许多技术，包括编程模型、数据管理技术、数据存储技术、虚拟化技术、云计算平台管理技术等。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022131958_ouukfn.jpg" alt="" /></p>', 0, 2, '2013-10-22', 0, '', 1),
(20, 18, 0, 0, '什么是云计算？', '', '未知', 'admin', '', '', '', '', '<p>基本概念：</p>\r\n<p>云计算（cloud computing）是基于互联网的相关服务的增加、使用和交付模式，通常涉及通过互联网来提供动态易扩展且经常是虚拟化的资源。通过网络以按需、易扩展的方式获得所需服务。这种服务可以是IT和软件互联网相关，也可是其他服务。它意味着计算能力也可作为一种商品通过互联网进行流通。</p>\r\n<p>云是网络、互联网的一种比喻说法。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022132233_t8nthe.jpg" alt="" /></p>\r\n<p>云计算的组成和生态系统</p>\r\n<p>云计算是透过网络将庞大的计算处理程序自动分拆成无数个较小的子程序，再交由多部服务器所组成的庞大系统经搜寻、计算分析之后将处理结果回传给用户。</p>\r\n<p>云计算是商业模式的创新，其主要实现形式包括SaaS、PaaS和IaaS，并由形成了庞大的生态系统，使得各种应用均可基于云端之上。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022132246_a6y5oh.jpg" alt="" /></p>\r\n<p>什么是私有云、共有云和混合云？</p>\r\n<p>根据云计算服务性质的不同，可以将云计算区分为公有云、私有云和混合云。</p>\r\n<p>公有云是放在Internet上的，只要是注册用户、付费用户都可以用；</p>\r\n<p>私有云是放在私有环境中的，比如企业、政府、组织等机构自己在机房中建立的，或者是运营商建设好，但是整体租给某一组织的。企业、组织、政府等之外的用户无法访问或无法使用；</p>\r\n<p>混合云是公有云和私有云的混合，大多数是指私有云建设好了，但是很多资源（计算能力或存储空间）不够用，所以还得动态的在公网上申请公有云作为自己私有云的补充。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022132258_96p1v8.jpg" alt="" /></p>', 0, 2, '2013-10-22', 0, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `cms_category`
--

CREATE TABLE IF NOT EXISTS `cms_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `channelid` int(10) NOT NULL COMMENT '频道ID',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '栏目名称',
  `catepic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别图片',
  `keyword` text COLLATE utf8_unicode_ci COMMENT '关键词',
  `description` text COLLATE utf8_unicode_ci,
  `list_tpl` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '列表页模板',
  `content_tpl` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内容页面使用的模板',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '栏目排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `cms_category`
--

INSERT INTO `cms_category` (`id`, `channelid`, `pid`, `name`, `catepic`, `keyword`, `description`, `list_tpl`, `content_tpl`, `seq`) VALUES
(1, 3, 0, '学院概括', '', '', '', '', '', 0),
(2, 3, 0, '专业介绍', '', '', '', '', '', 0),
(3, 3, 2, '专业介绍', '', '', '', '', '', 0),
(4, 3, 2, '培养目标', '', '', '', '', '', 0),
(5, 3, 2, '课程体系', '', '', '', '', '', 0),
(6, 3, 2, '师资力量', '', '', '', '', '', 0),
(7, 3, 2, '实践平台', '', '', '', '', '', 0),
(8, 3, 0, '职业发展', '职业发展', '', '', '', '', 0),
(9, 3, 8, '专业优势', '', '', '', '', '', 0),
(10, 3, 8, '专业前景', '', '', '', '', '', 0),
(11, 3, 0, '网上报名', '', '', '', '', '', 0),
(12, 3, 0, '联系我们', '', '', '', '', '', 0),
(13, 3, 0, '云计算案例', '', '', '', '', '', 0),
(14, 3, 8, '职业发展', '', '', '', '', '', 0),
(15, 1, 0, '新闻动态', '', '', '', '', '', 0),
(16, 1, 0, '报考信息', '', '', '', '', '', 0),
(17, 1, 0, '常见问题', '', '', '', '', '', 0),
(18, 1, 0, '解析云计算', '', '', '', '', '', 0),
(19, 3, 0, '常见问题', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `cms_channels`
--

CREATE TABLE IF NOT EXISTS `cms_channels` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cname` varchar(150) NOT NULL COMMENT '频道名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='频道' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_class`
--

CREATE TABLE IF NOT EXISTS `cms_class` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告类别',
  `name` varchar(40) NOT NULL COMMENT '广告名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_file`
--

CREATE TABLE IF NOT EXISTS `cms_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) DEFAULT NULL,
  `ffilename` varchar(200) DEFAULT NULL,
  `path` varchar(250) DEFAULT NULL,
  `ext` varchar(10) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_friendlink`
--

CREATE TABLE IF NOT EXISTS `cms_friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(200) NOT NULL COMMENT '网站名称',
  `ename` varchar(200) DEFAULT NULL COMMENT '英文名称',
  `url` varchar(200) NOT NULL COMMENT '网址',
  `description` varchar(400) NOT NULL COMMENT '站点简介',
  `logo` varchar(200) NOT NULL COMMENT '网站LOGO',
  `biaoshi` varchar(100) DEFAULT NULL COMMENT '标识',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '排列顺序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_guanggao`
--

CREATE TABLE IF NOT EXISTS `cms_guanggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(200) NOT NULL COMMENT '广告名称',
  `url` varchar(200) NOT NULL COMMENT '网址',
  `description` varchar(400) NOT NULL COMMENT '站点简介',
  `logo` varchar(200) NOT NULL COMMENT '图片',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '排列顺序',
  `lx` int(20) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_job`
--

CREATE TABLE IF NOT EXISTS `cms_job` (
  `id` mediumint(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `jobname` varchar(150) NOT NULL COMMENT '招聘职位',
  `color` varchar(100) DEFAULT NULL COMMENT '颜色',
  `address` varchar(200) NOT NULL COMMENT '地点',
  `jobnum` varchar(100) NOT NULL COMMENT '招聘人数',
  `endtime` varchar(100) NOT NULL COMMENT '结束时间',
  `content` text NOT NULL COMMENT '职位简介',
  `hits` int(10) DEFAULT '0' COMMENT '点击次数',
  `addtime` datetime DEFAULT NULL COMMENT '录入时间',
  `created_by` int(10) NOT NULL COMMENT '录入者',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='招聘职位' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_map`
--

CREATE TABLE IF NOT EXISTS `cms_map` (
  `id` mediumint(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(150) NOT NULL COMMENT '标题',
  `pic` varchar(150) DEFAULT NULL COMMENT '图片',
  `url` varchar(150) DEFAULT NULL COMMENT '链接',
  `jingdu` varchar(150) NOT NULL COMMENT '经度',
  `weidu` varchar(150) NOT NULL COMMENT '纬度',
  `content` text NOT NULL COMMENT '内容',
  `addtime` varchar(150) DEFAULT NULL COMMENT '录入时间',
  `hits` int(10) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `seq` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `lg` int(10) NOT NULL DEFAULT '1' COMMENT '国家',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='地图' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_members`
--

CREATE TABLE IF NOT EXISTS `cms_members` (
  `id` mediumint(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `realname` varchar(150) NOT NULL COMMENT '真实姓名',
  `password` varchar(150) NOT NULL COMMENT '密码',
  `sex` varchar(50) DEFAULT NULL COMMENT '性别',
  `company` varchar(150) DEFAULT NULL COMMENT '公司名称',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `zipcode` varchar(100) DEFAULT NULL COMMENT '邮编',
  `telephone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `fax` varchar(100) DEFAULT NULL COMMENT '传真',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `addtime` datetime NOT NULL COMMENT '注册时间',
  `working` int(10) NOT NULL DEFAULT '0' COMMENT '审核',
  `lastlogintime` datetime DEFAULT NULL COMMENT '最近登录时间',
  `lastloginip` varchar(200) DEFAULT NULL COMMENT '最近登录IP',
  `logintimes` int(10) NOT NULL DEFAULT '0' COMMENT '登录次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_menu`
--

CREATE TABLE IF NOT EXISTS `cms_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '栏目名称',
  `url` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT '类别图片',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '栏目排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=59 ;

--
-- 转存表中的数据 `cms_menu`
--

INSERT INTO `cms_menu` (`id`, `pid`, `name`, `url`, `seq`) VALUES
(1, 0, '信息管理', '', 0),
(2, 1, '信息类别', 'category.php?channelid=1', 0),
(3, 1, '信息管理', 'article.php?lg=1&chid=1', 0),
(4, 1, '添加信息', 'article.add.php?act=add&lg=1&chid=1', 0),
(5, 0, '产品中心', '', 0),
(6, 5, '信息类别', 'category.php?channelid=2', 0),
(7, 5, '添加信息', 'product.add.php?act=add&lg=1&chid=2', 0),
(8, 5, '信息管理', 'product.php?lg=1&chid=2', 0),
(9, 0, '单页管理', '', 0),
(10, 9, '单页类别', 'category.php?channelid=3', 0),
(11, 9, '添加信息', 'page.add.php?act=add&lg=1&chid=3', 0),
(12, 9, '信息列表', 'page.php?lg=1&chid=3', 0),
(13, 0, '其他管理', '', 0),
(14, 13, '友情链接', 'friendlink.php', 0),
(15, 13, '广告管理', 'guanggao.php', 0),
(16, 13, '留言管理', 'message.php', 0),
(17, 13, '文件管理', 'file.php', 0),
(18, 13, '日志管理', 'log.php', 0),
(19, 0, '附加服务', '', 0),
(20, 19, '短信群发', 'sms.php', 0),
(21, 19, '邮件群发', 'email.php', 0),
(22, 0, '会员管理', '', 0),
(23, 0, '招聘管理', '', 0),
(26, 25, '后台会员管理', 'user.php', 0),
(25, 0, '系统管理', '', 0),
(27, 25, '网站设置', 'webconfig.php', 0),
(28, 0, '左侧栏目管理', '', 0),
(29, 22, '会员列表', 'memlist.php', 0),
(30, 23, '招聘列表', 'jobs.php', 0),
(31, 28, '栏目管理', 'leftlist.php', 0),
(56, 25, '木马扫描', 'scan/', 0),
(57, 0, '报名管理', 'http://localhost/mm/admin/baoming.php', 1),
(58, 57, '报名管理', 'http://localhost/mm/admin/baoming.php', 0);

-- --------------------------------------------------------

--
-- 表的结构 `cms_message`
--

CREATE TABLE IF NOT EXISTS `cms_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '称呼',
  `qq` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'QQ',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email or MSN',
  `content` text COLLATE utf8_unicode_ci COMMENT '内容',
  `reply` text COLLATE utf8_unicode_ci COMMENT '回复',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '留言人IP',
  `validate` int(11) DEFAULT '0' COMMENT '0为验证 1已验证',
  `created_date` datetime DEFAULT NULL COMMENT '留言日期',
  `reply_date` datetime DEFAULT NULL COMMENT '回复日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_order`
--

CREATE TABLE IF NOT EXISTS `cms_order` (
  `id` mediumint(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(250) NOT NULL COMMENT '产品名称',
  `onum` varchar(100) DEFAULT NULL COMMENT '数量',
  `lxr` varchar(100) DEFAULT NULL COMMENT '联系人',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(100) DEFAULT NULL COMMENT '电话',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `addtime` int(10) DEFAULT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品订单' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cid` int(11) NOT NULL COMMENT '类别',
  `pagepic` varchar(200) DEFAULT NULL COMMENT '信息主图',
  `code` varchar(20) DEFAULT NULL COMMENT '别名',
  `title` varchar(100) DEFAULT NULL COMMENT '名称',
  `color` varchar(100) DEFAULT NULL COMMENT '颜色',
  `content` text COMMENT '内容',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  `sequence` int(20) DEFAULT '0' COMMENT '排序',
  `lg` int(10) NOT NULL DEFAULT '1' COMMENT '国家',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `cms_page`
--

INSERT INTO `cms_page` (`id`, `cid`, `pagepic`, `code`, `title`, `color`, `content`, `created_date`, `sequence`, `lg`) VALUES
(1, 1, '', NULL, '学院概括', '', '<p style="text-indent:0em; font-weight:bolder;">西安交通大学</p>\r\n<p>西安交通大学是国家教育部直属重点大学，为我国最早兴办的高等学府之一。其前身是1896年创建于上海的南洋公学，1921年改称交通大学，1956年国务院决定交通大学内迁西安，1959年定名为西安交通大学，并被列为全国重点大学。西安交通大学是&ldquo;七五 &rdquo;、&ldquo;八五&rdquo;首批重点建设项目学校，是首批进入国家&ldquo;211&rdquo;和 &ldquo;985&rdquo;工程建设，被国家确定为以建设世界知名高水平大学为目标的学校。</p>\r\n<p style="text-indent:0em; font-weight:bolder;">关于西安交通大学研究生院（苏州）</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131023165005_4u27hc.jpg" alt="" /></p>\r\n<p>西安交通大学苏州研究生院（苏州）坐落在长三角发达地区，是西安交通大学和苏州工业园区联合建立的高层次人才培养基地，这里聚集着西安交通大学、中国科技大学、南京大学、中国人民大学、东南大学等全国著名高校，已形成配套完整、开放式的大学校园。</p>\r\n<p>西安交通大学苏州研究生院（苏州）各项工作由学校研究生院统一管理，研究生导师由本部教师、西交利物浦大学教师、特聘企业高级科技人员组成。通过与工业界的深度融合和现代化的通讯手段，使导师随时在你身边。目前，研究生院（苏州）在读博士生、硕士生超过560人。</p>\r\n<p style="text-indent:0em; font-weight:bolder;">西安交通大学研究生院（苏州）优势</p>\r\n<p style="text-indent:0em;"><strong>地理位置：</strong>苏州是江苏最发达城市，江苏是中国最发达省份，得天独厚的苏州工业园区，规划周密，<br />\r\n<span style="padding-left:75px;">环境优美；</span></p>\r\n<p style="text-indent:0em;"><strong>地区优势：</strong>经济发达的长三角地区，拥更好的经济、科技环境，更多与社会沟通和企业实践锻炼机会；</p>\r\n<p style="text-indent:0em;"><strong>开放校园：</strong>与众多兄弟院校学生在统一图书馆、统一体育场、统一教学楼、统一食堂共同学习和生活，<br />\r\n<span style="padding-left:75px;">有大量的学习和交流机会；</span></p>\r\n<p style="text-indent:0em;"><strong>居住环境：</strong>标准化宿舍、食堂、体育馆、游泳馆、电影院、校园免费公交；</p>\r\n<p style="text-indent:0em;"><strong>图书资料：</strong>独墅湖图书馆可提供所需图书和电子文献，西安交通大学电子图书馆科技文献全面开放；</p>\r\n<p style="text-indent:0em;"><strong>就业机会：</strong>长三角地区有更多的就业选择和发展机会。</p>', '2013-10-21 16:03:15', 0, 1),
(2, 3, '', NULL, '专业介绍', '', '<p>移动云计算专业将云计算技术、移动互联网技术、物联网、软件工程、人机交互相结合，培养&ldquo;高层次、实用型、国际化&rdquo;软件工程硕士人才。通过一年的软件工程基础课程和移动云计算核心专业课程的学习，以及1-2年的企业项目训练和论文写作，达到毕业后能够遵循规范的软件工程思想，熟练掌握最新的开发技术，设计并实现可靠的云计算及移动应用产品。</p>\r\n<p>2013年3月4日，工信部移动云计算教育培训中心与西安交通大学签署合作协议，全方位共建其软件学院软件工程专业移动云计算方向，联合培养全日制双证软件工程硕士，列入国家研究生统考报名目录，这标志着工信部移动云计算教育培训中心开创性地实现了全日制双证软件工程硕士的培养目标，将移动云计算等国家战略性新兴产业的专业方向带入到国家的学历教育中。同时也充分体现了西安交通大学作为国家重点高校与时俱进的教育理念，对于优化区域学科专业、优化人才培养类型、人才层次结构意义重大。</p>\r\n<p>2013年8月19日，工信部移动云计算教育培训中心与西安交通大学联合共建的软件工程专业移动云计算方向2013年开学典礼在苏州独墅湖高教区顺利举行。此次移动云计算专业的顺利开学标志着工信部移动云计算教育培训中心已经成功地将移动云计算这一国家战略性新兴专业带入到国家学历教育体系中来，开创性地培养全日制双证软件工程硕士，完善国家学历教育体系，促进高等教育和市场需求的无缝对接。来自全国各地的116名新生参加了此次开学典礼。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022091304_xkdxbc.jpg" alt="" /></p>\r\n<p style="text-align:center;">西安交大软件学院金莉副院长、西安交大研究生院（苏州）周荣莲副院长、<br />\r\n工信部移动云计算教育培训中心教学运营管理中心总经理马云涛莅临了本次开学典礼</p>\r\n<p style="font-size:16px;"><strong>培养特色</strong></p>\r\n<p><strong>顶级学府双证硕士</strong></p>\r\n<p>学生通过学习可以获得西安交通大学硕士学历证书和学位证书(双证)。</p>\r\n<p><strong>先进的课程体系</strong></p>\r\n<p>在课程体系设计时，学院吸纳国际同类学科的先进设计思想，大胆修改了计算机系以往的课程体系；开设了暑期补课，为同学们打下了良好的编程基础；在教学中，强调在&ldquo;做&rdquo;中&ldquo;学&rdquo;，让学生有相对集中的时间进行课程实践；在实践教学中，我们和一大批优秀的中外IT企业建立了长期的合作关系，让学生在企业工程师的指导下分组进行项目开发实践，大大提高了学生的实践创新能力。</p>\r\n<p><strong>雄厚的师资</strong></p>\r\n<p>课程由西安交通大学的教授和IBM、思科、华为、HP、联想、上海计算机软件开发中心、中国移动的企业专家共同授课，理论与实践并重。</p>\r\n<p><strong>分级教学，双导师制</strong></p>\r\n<p>为了保证学生在学习知识的同时真正获得能力的提升，并能够完全适应将来工作的需求。我们根据学生的兴趣和将来面临的工作需要为学生提供了企业前沿技术相关选修课程，同时，除了学院专职导师，还专门聘请了一批来自业内知名企业的产业界导师，通过他们的指点，充分保证了学生知识、能力、素质的全面发展。</p>\r\n<p><strong>优越的地理环境，先进的教学设施</strong></p>\r\n<p>校园位于苏州工业园区独墅湖科教创新区，校园内设有办公教学用楼、研发中心、重点实验室，风景秀丽设施完善。校区毗邻127家高科技企业和研发机构，学术、产业氛围浓厚。</p>\r\n<p><strong><strong>创业孵化</strong></strong></p>\r\n<p>移动互联网是一个创造奇迹的产业，具有创业成本少，创业周期短的特点。就读&ldquo;移动云计算&rdquo;专业方向，你的同学就是创业的人力资源，同时工信部移动云计算教育培训中心还有整套的创业孵化环境和资源协助你。</p>\r\n<p>&nbsp;</p>', '2013-10-21 16:03:44', 0, 1),
(3, 4, '', NULL, '培养目标', '', '<p>培养具有云计算服务端和各类移动终端技术开发能力的实用型高级软件开发和项目管理人才。</p>\r\n<p>移动云计算专业在软件工程的学科体系下充分吸纳当前IT产业前沿的云计算、移动开发、人机交互工程技术，通过实际项目锻炼，培养能够从事云计算服务端及各类终端项目的系统分析、软件设计、开发、实施和管理工作的高级软件工程师和项目管理人才。通过此专业的学习，学生能够遵循规范的软件工程思想，掌握最新的开发技术，设计并实现可靠的云计算和移动应用产品。</p>\r\n', '2013-10-21 16:04:06', 0, 1),
(4, 5, '', NULL, '课程体系', '', '<p>移动云计算专业工程硕士的培养目标是面向国民经济信息化建设和发展需要、面向企事业单位对各类软件工程人才的需求，培养高层次、实用型、复合型移动云计算技术和工程管理人才。</p>\r\n<p>移动云计算专业将互联网、云计算、软件工程、人机交互工程有机结合，通过实际项目锻炼，培养学生从事移动云计算服务项目的系统分析、软件设计、开发、实施和管理。通过此专业的学习，学生能够快速掌握和利用最新的开发技术，遵循规范的软件工程思想，设计并实现可靠的移动云计算服务产品。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022093724_z3v63n.jpg" alt="" /></p>\r\n<p style="text-align:center;">课程体系图</p>\r\n<p style="text-align:center; font-weight:bolder;">部分核心课程简介</p>\r\n<p style="text-indent:0em; font-weight:bolder;">《虚拟化与云计算》</p>\r\n<p>通过本课程的学习，学生能够在了解和掌握虚拟化技术的基础上，充分认识云计算，\r\n并通过实践获得在实际商业应用中进行云（或虚拟化）环境的部署和运维能力。\r\n</p>\r\n<p style="text-indent:0em; font-weight:bolder;">《分布式计算》</p>\r\n<p>分布式计算是指，由计算机网络连接的多处理平台的各种形式的信息访问、信息处理\r\n与计算。本课程详细讲解分布式计算中的理论、算法以及系统安全方面的基本原理和分布\r\n式模型,并结合开源应用与商业应用案例阐述如何创建高性能、可扩展、可靠的系统,解决\r\n互斥、死锁检测、认证和失效恢复等常见问题。\r\n</p>\r\n<p style="text-indent:0em; font-weight:bolder;">《移动开发技术》</p>\r\n<p>本课程详细讲解Android平台的体系结构和应用开发技术，通过对应用程序组件、网络\r\n通信、无线通信、数据库应用和地图应用等技术的详细讲解和案例分析，使学生掌握\r\nAndroid平台下的实用开发技术和移动平台应用程序开发流程，并在实践中开发一款移动应\r\n用软件。\r\n</p>\r\n<p style="text-indent:0em; font-weight:bolder;">《大数据技术》</p>\r\n<p>本课程的目标是使学生了解大规模数据处理常用的技术、算法和应用系统领域的主要\r\n现状，掌握大规模数据处理相关的常用算法，Hadoop系统的设计与应用以及在搜索系统中\r\n的大规模数据处理技术，课程中需要学生阅读大量的相关论文来获得对技术的深入理解。\r\n</p>\r\n<p style="text-indent:0em; font-weight:bolder;">《移动云计算安全与隐私》</p>\r\n<p>本课程在详细讲解移动平台下云计算安全架构、关键技术及研究进展的基础上，重点\r\n分析移动平台和云计算中的安全实例以及安全控制、安全评估、安全标准等内容。\r\n</p>\r\n<p style="text-indent:0em; font-weight:bolder;">《云计算服务端技术》</p>\r\n<p>本课程中，学生将深入了解云计算架构，云计算核心组成技术，各种云计算应用类型\r\n之间的差异，充分认识云计算服务自动化管理技术，了解目前主流服务自动化管理平台的\r\n各种功能。\r\n</p>\r\n', '2013-10-21 16:04:34', 0, 1),
(20, 19, '', NULL, '常见问题', '', '<p><strong><a id="solution1">1.请问招生目录中院系招生总数含有推免生吗？</a></strong></p>\r\n<p>回复 : 含推免生。</p>\r\n<p><strong><a id="solution2">2.什么是工程硕士？它与工学硕士有何不同？</a></strong></p>\r\n<p>工程硕士学位是与工程领域任职资格相联系的专业性学位，它与工学硕士学位处于同一层次，但类型不同各有侧重。工程硕士专业学位在招收对象、培养方式和知识结构与能力等方面，与工学硕士学位有不同的特点。工程硕士专业学位侧重于工程应用，主要是为工矿企业和工程建设部门，特别是国有大中型企业培养应用型、复合型高层次工程技术和工程管理人才。两者属于不同的教育体系。工程硕士教育侧重于工程素质培养和工程实践能力训练；工学硕士是我们一般所说的统招工科类研究生，侧重于基础理论学习和学术研究。</p>\r\n<p><strong><a id="solution3">3.老师您好，请问一下校外推免到交大的学生，体检表照片上的盖章，是盖录取学院的章还是目前所在学校学院的？还有，未在交大体检的是否可以在母校校医院体检?</a></strong></p>\r\n<p>回复 : 盖所在学院的章。未在交大体检的，可以用我校体检表在母校体检。</p>\r\n<p><strong>4.老师您好，我是往届生，本科就读于西安，不是陕西户口，现在西安工作，档案也在西安，想报考贵校，请问可以选择贵校作为报考点吗？若可以，需要开什么证明吗？谢谢!</strong></p>\r\n<p>回复 : 如果你选择我校作为报名点，现场确认除提供身份证、学历证外，还须提供工作单位证明、劳动合同、工资条。</p>\r\n<p style="padding-top:25px;">更多常见问题请咨询：</p>\r\n<p>西安交通大学研究生招生信息网-研究生招生咨询：http://gs.xjtu.edu.cn/zhaos/gbook.php</p>\r\n<p>注意：请在提问前先浏览精华区的内容，里面收录了常见的问题</p>', '2013-10-22 14:38:29', 0, 1),
(7, 7, '', NULL, '实践平台', '', '<p>专业建设与IT企业紧密结合，是移动云计算专业方向的一大办学特色，学生不仅能够进入由合作企业支持的联合实验室参与真实项目开发，而且可以在专业学习的后期，直接进入相关IT企业的实习基地实习。从而能够让学生在学习阶段就了解企业对人才的需求，熟悉企业真实的开发环境，大大减小与企业融合的时间，真正让无工作经验的学员获得企业实战经验，有工作经验的学员获得积累和提高。</p>\r\n<p style="padding-top:10px;"><strong><a id="practice1">1．联想移动云计算联合实验室</a></strong></p>\r\n<p>在实验室中进行乐Phone系列和联想云计算项目实践，提供乐基金的支持。作为国际移动互联网巨头企业，联想为学生提供最新教学素材和实战案例，并定期安排实战团队带领学生进行项目开发实践。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88//se.xjtu.edu.cn/upload/20131022102915_8kb29r.jpg" alt="" /></p>\r\n<p style="text-align:center;">移动云计算联合实验室牌匾图&amp;实验室环境示意图</p>\r\n<p style="padding-top:10px;"><strong><a id="practice2">2．百度移动云计算教学实践基地</a></strong></p>\r\n<p>学院与工信部移动云计算教育培训中心联合百度共建移动云计算教学实践基地，由百度提供实践项目、开发平台、辅导工程师以及实习和就业机会，使学生获得真实的企业项目实践经验。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88//se.xjtu.edu.cn/upload/20131022102936_4xv81l.jpg" alt="" /></p>\r\n<p style="text-align:center;">移动云计算教学实践基地实验室牌匾图&amp;实验室环境示意图</p>', '2013-10-21 16:12:25', 0, 1),
(8, 9, '', NULL, '专业优势', '', '<p>★ 投身朝阳产业，获得西安交通大学硕士学位和学历，拥有更好的职业发展前景</p>\r\n<p>★ 西安交通大学教授和工业界资深专家共同授课，前沿理论与工业实践充分结合</p>\r\n<p>★ 地处经济发达的长三角地区，拥有大量与社会沟通和企业实践锻炼机会</p>\r\n<p>★ 学校、苏州、国家工信部移动云计算教育培训中心共同投入，叠加支撑；并与众多知名企业共建联合实验室</p>\r\n<p>★ 银行可提供全额贷款，高薪就业后再偿还学费</p>', '2013-10-21 16:13:23', 0, 1),
(9, 10, '', NULL, '专业前景', '', '<p>云计算是一种动态扩展的计算模式，通过网络将虚拟化的资源作为服务提供；通常包含IAAS（infrastructure as a service),PAAS( platform as a service),SAAS(software as a service)三个组成部分。云计算产业由电子信息产品制造业、软件与服务业、互联网产业、通信产业等产业融合交汇产生。通过技术创新及服务模式创新，云计算产业日益成为移动互联网、物联网、三网融合等新兴领域的重要支撑，云计算所带来的低成本、灵活、快速部署与交付等特性为新业务的产生与拓展提供了可能。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131022103912_xf5g1i.jpg" alt="" /></p>\r\n<p>2013年中国云计算产业进一步发展，电信运营商和互联网公司纷纷加大对云计算服务市场的投入，金融、制造、能源等传统企业开始大力建设私有云应用，而随着大型企业云平台的不断推出，用户也开始关心云平台建设和云计算应用的技术细节。云计算已经成为主流的业务模式之一，并与大数据、移动互联网等概念不断融合。据全球著名的信息技术市场咨询公司IDC预测2013年整个中国云计算服务市场将达到18.3亿美元的规模，同比增长52.2%。</p>\r\n<p>移动互联网领域，移动终端在消费者的日常生活中扮演着重要的角色，随着3G技术的普及，中国手机上网用户已经突破3亿，而且仍将不断上升。同时，在企业级的商务应用中，随着信息化应用场景的持续完善， ERP的不断延伸，移动应用通过广泛的产业链为用户提供整体解决方案，将带来商业模式的创新变革。</p>\r\n<p>根据艾瑞咨询统计数据显示，2012年中国移动互联网市场规模为549.7亿元，增长率为96.4%，移动互联网发展的基础条件已经具备，随着大量投资者和创业者的加入，各大互联网公司也纷纷布局，将发展重心向移动领域倾斜。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88//se.xjtu.edu.cn/upload/20131022103929_9kepxu.jpg" alt="" /></p>\r\n<p>移动应用市场的飞速增长，APP下载量持续增加，诸如移动商店、移动SNS社区、移动搜索、移动地图等都已让普通消费者耳熟能详。实现这些大量创新移动终端应用的关键是云计算、移动互联网、物联网、大数据技术的结合，企业对于既掌握移动应用开发，又能掌握云计算技术的人才需求日益增长，成为未来的需求热点。</p>', '2013-10-21 16:13:43', 0, 1),
(10, 14, '', NULL, '职业发展', '', '<p>移动云计算专业的创建和发展得到了国家及相关部委的大力支持。究其原因，在云计算高速发展的背景下，在移动互联网的不断普及和渗透下，云计算+移动互联网技术成为推动企业走向成功的重要因素，而同时熟练掌握和这两个领域的高端人才极为稀缺。因此移动云计算专业人才在当前和未来相当长的时期内，都将是深受各行各业青睐的高级人才。</p>\r\n<p>同时，因为移动云计算专业本身所具有的跨学科跨专业性，也使得移动云计算专业毕业生，将来能够拥有其他专业无法比拟的就业优势。兄弟高校的实践证明，移动云计算方向的学生一次实习就业率达97%以上，60%的毕业生能够进入到adobe、爱立信、搜狐、腾讯、360等世界500强企业以及各中型企业进行实习和就业。</p>\r\n<p style="text-align:center;"><img src="http://192.168.1.88/se.xjtu.edu.cn/upload/20131023140851_yd4toa.jpg" alt="" /></p>\r\n<p style="text-align:center;">(移动云计算专业方向人才岗位需求)</p>\r\n<p>移动云计算方向软件工程硕士的薪资水平普遍高于其他专业方向。毕业生受到各用人企业的充分认可。据薪资调查显示，60%的学生月薪资超过1万，10%月薪资超过3万。在职班学生毕业后多名年薪超过了100万。</p>', '2013-10-21 16:14:01', 0, 1),
(11, 11, '', NULL, '网上报名', '', '<p style="text-indent:0em; font-weight:bolder;">报名包括网上报名和现场确认两个阶段。</p>\r\n<p style="text-indent:0em; font-weight:bolder;">1、网上报名</p>\r\n<p>（1）、网上报名时间：2013 年 10 月 10 日&mdash;31 日每天 9:00&mdash;22:00（逾期不再补报，也不得再修改报名信息）。</p>\r\n<p>（2）、网上报名网址：&ldquo;中国研究生招生信息网&rdquo;（公网网址：<a href="http://yz.chsi.com.cn " target="_blank">http://yz.chsi.com.cn </a>，教育网址：<a href="http://yz.chsi.cn" target="_blank">http://yz.chsi.cn</a>）。</p>\r\n<p>考生登录&ldquo;中国研究生招生信息网&rdquo;浏览报考须知，按教育部、省级教育招生考试管理机构、我校的网上公告要求报名，凡不按要求报名、网报信息误填、错填或填报虚假信息而造成不能考试或录取的，后果由考生本人承担。</p>\r\n<p>（3）、注意事项：</p>\r\n<p>A：报考我校且须选择我校为报考点的考生：应届就读学校在陕西、往届工作或户口在陕西； 报考单独考试（含强军计划）、工商管理硕士、公共管理硕士、工程管理硕士；同等学力人员。</p>\r\n<p>B：报考省外高校且须选择我校为报考点的考生：我校应届毕业生（含免试生）。 凡选择我校作为报名点的考生，系统所生成的报名号前 4 位应为&ldquo;6111&rdquo;。外省报考我校考 生按当地省级招生单位的规定选择当地报考点报名及考试。</p>\r\n<p style="color:#ff0000;">我校为非社会报考点，除以上 A、B 类考生外一律不予受理其他考生报名。</p>\r\n<p style="text-indent:0em; font-weight:bolder;">2、现场确认：（参见我校研招网&ldquo;现场确认须知&rdquo;）</p>\r\n<p>（1）时间：2013 年 11 月 10 日&mdash;14 日。</p>\r\n<p>（2）地点：西安交通大学兴庆校区青年之家（进交大南门向西100m ）。</p>\r\n<p>（3）提交材料：第二代居民身份证、学历证书（普通高校、成人高校、普通高校举办的成人高校学历教育应届本科毕业生持学生证及相关材料）、网上报名编号等。未通过网上学历（学籍）校验的考生，在现场确认时应提供学历（学籍）认证报告。同等学力人员报名时还须提供相关支撑材料（成绩单、论文等）。</p>\r\n<p>（4）流程：资格审查、交纳报名费、摄像及信息核对等。</p>\r\n<p style="color:#ff0000;">未经现场信息确认者，报考无效。</p>\r\n<p>其他报名信息可查看西安交通大学2014年招收硕士研究生（全日制专业学位）招生简章http://211.157.166.150:8080/xjtu/news.jsp?id=13</p>', '2013-10-21 16:14:25', 0, 1),
(12, 12, '', NULL, '联系我们', '', '<p>地址： 陕西省西安市咸宁西路28号西安交通大学软件学院A111室</p>\r\n<p>电话：029-82664760</p>\r\n<p>邮箱：mse@mail.xjtu.edu.cn</p>\r\n', '2013-10-21 16:14:46', 0, 1),
(13, 13, '', NULL, '云计算精彩案例', '', '<p>今天云计算已经走入千家万户，从Email到电子日历，从QQ农场到电子导航，从在线办公到电子商务，云应用无处不在。云计算带给人们的不仅仅是可靠的数据存储中心,更有超强的计算能力，无处不在的服务支持，特别是云计算助力IT企业整合资源优化服务把握成功的机遇。</p>\r\n<p><strong><a id="case1">案例一：云计算护航网购狂欢节</a></strong></p>\r\n<p>2012年&ldquo;双11&rdquo;，有了阿里云云计算服务为基础的电商开放云工作平台的支撑，淘宝、天猫轻松面对汹涌而来的网络访问，0丢单，0故障，交易总额达到惊人的191亿。与此同时,那些没有采用云计算技术的电商在不断攀升的网络访问下纷纷宕机，企业遭受巨大的损失。</p>\r\n<p><strong><a id="case1">案例二：云计算成为搜索引擎发展的必由之路</a></strong></p>\r\n<p>百度搜索引擎每天接受来自全世界138个国家，4.2亿网民，每天60亿次的点击，百度收集了一千多亿网页，数据量是2PB以上。面对如此大的访问量，如此大的海量数据，在百度云平台强有力地支撑下百度搜索引擎依然拥有超高的数据处理性能，对超过6000万网页检索一次的本地平均响应时间小于0.5秒。</p>\r\n<p><strong><a id="case3">案例三：云计算帮助浪潮集团为ERP集团客户提供更可靠更灵活的服务</a></strong></p>\r\n<p>2012年，微软的私有云解决方案帮助浪潮集团实现了客户ERP运营环境的私有云化，推出了面向集团企业的&ldquo;云+端&rdquo;全面私有云解决方案。将GS管理软件/GSP应用中间件运行于私有云平台之上，从而为广大用户提供了更高性能、更好伸缩性、更高可用性、以及更优总体成本的服务。</p>\r\n<p><strong><a id="case4">案例四：云计算帮助哈根达斯优化管理减少成本创造更大的利润</a></strong></p>\r\n<p>哈根达斯最初使用Excel表单来管理和跟踪主要的加盟店，用Access数据库来存储协议加盟店的数据，效果总是不太好。最终哈根达斯公司选择了Salesforce CRM企业版，应用系统在不到6个月的时间就上线了。从而使员工能够轻松地访问Outlook中的联系人列表、日程和商业信息。哈根达斯公司用更少的成本获得了超预期的效果。（注：salesforce提供基于云计算的先进CRM解决方案，超越传统CRM传统软件）</p>\r\n<p><strong><a id="case5">案例五：Giftag利用GAE平台相应高峰期用户请求</a></strong></p>\r\n<p>Giftag是一款Web 2.0应用，一经推出，便广泛流行起来，注册用户数量激增，每天Giftag的服务器都要响应数以百万计的请求，存储用户的海量信息，很快就不堪重负。Giftag将应用迁移到Google  App  Engine（GAE）平台，利用伸缩性的计算处理平台来响应高峰期的用户请求，利用分布式数据库来存储用户数据。Giftag实现了从一个初创的Web  2.0应用向一个稳定的，持续增长的网络服务的平稳过渡。</p>', '2013-10-21 16:15:18', 0, 1),
(14, 6, 'http://192.168.1.88/se.xjtu.edu.cn/upload/20131022164002_84fnmm.jpg', NULL, '陈滢', '', '博士，国内知名云计算和物联网技术专家，西安交大软件学院移动云计算系主任，IBM中国研究院原副院长，在IBM获得12个专利白金奖，著有四本云计算畅销书，在国内外学术期刊和会议上发表论文70余篇，在美国和其他国家获得专利40余项。', '2013-10-22 09:43:53', 0, 1),
(15, 6, 'http://192.168.1.88/se.xjtu.edu.cn/upload/20131022150708_pa8c2g.jpg', NULL, '宋俊典', '', '博士，现任上海软件中心软件平台服务部主任，从事软件工程、软件构架、虚拟化技术、移动云计算等方面的研发和技术服务。参与了近10项国家863项目、上海市科委攻关项目、大型企业的信息化研究项目，拥有5项软件著作权。', '2013-10-22 10:03:12', 0, 1),
(16, 6, 'http://192.168.1.88/se.xjtu.edu.cn/upload/20131022150812_kgzbzj.jpg', NULL, '汪海', '', '联想集团上海研究院总监，可穿戴式计算产品研究团队负责人，中国第一代计算机主板、服务器主板设计师，全面负责联想研究院笔记本设计和嵌入式设计部，领导多款嵌入式设备、笔记本及智能设备的设计工作。', '2013-10-22 10:03:32', 0, 1),
(17, 6, 'http://192.168.1.88/se.xjtu.edu.cn/upload/20131022150842_xugrbb.jpg', NULL, '张健', '', '云计算应用架构师，现任思科系统（中国）研发有限公司苏州分公司高级软件工程师。具有11年云计算系统架构研发经验，特别是对于分布式系统架构、Linux应用服务器中间件开发等具有丰富的经验。', '2013-10-22 10:03:48', 0, 1),
(18, 6, 'http://192.168.1.88/se.xjtu.edu.cn/upload/20131022150910_mz9b4k.jpg', NULL, '孟江波', '', '现任华为技术公司产品规划分析师和项目解决方案架构师（SA）。参与并完成AR / UC / Tp / Byod / ICT的被集成SDK业务规划和分析，同时在针对大企业桌面云解决方案场景分析、涉及BYOD的移动接入、云计算服务的方案架构与设计、输出桌面云技术解决方案的可开放的被集成的功能场景和组网设计方案等方面具有丰富的经验。', '2013-10-22 10:04:06', 0, 1),
(19, 6, 'http://192.168.1.88/se.xjtu.edu.cn/upload/20131022100655_jec36i.jpg', NULL, '刘斌', '', 'EMC云计算高级架构师，曾就职于HP、中国网通等国内外知名IT公司，拥有12年云计算开发经验。目前研究领域为虚拟化、存储以及云计算。', '2013-10-22 10:04:22', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cms_product`
--

CREATE TABLE IF NOT EXISTS `cms_product` (
  `id` mediumint(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cid` int(10) NOT NULL COMMENT '类别ID',
  `color` varchar(100) DEFAULT NULL COMMENT '颜色',
  `tuijian` int(10) DEFAULT '0' COMMENT '推荐',
  `sh` int(10) DEFAULT '0' COMMENT '审核',
  `zhiding` int(10) DEFAULT '0' COMMENT '置顶',
  `title` varchar(250) NOT NULL COMMENT '名称',
  `weburl` varchar(250) DEFAULT NULL COMMENT '站外链接',
  `source` varchar(250) DEFAULT NULL COMMENT '来源',
  `pic` varchar(250) DEFAULT NULL,
  `down` varchar(250) DEFAULT NULL COMMENT '下载',
  `tsnum` varchar(100) DEFAULT NULL COMMENT '编号',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `keywords` text,
  `resume` text,
  `content` text NOT NULL COMMENT '内容',
  `hits` int(10) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `created_by` int(10) NOT NULL COMMENT '录入者',
  `sequence` int(10) DEFAULT '0',
  `addtime` varchar(100) NOT NULL COMMENT '录入时间',
  `lg` int(10) NOT NULL DEFAULT '1' COMMENT '国家',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cms_rizhi`
--

CREATE TABLE IF NOT EXISTS `cms_rizhi` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `title` varchar(50) NOT NULL COMMENT '操作标题',
  `addtime` datetime NOT NULL COMMENT '操作时间',
  `created_by` int(11) NOT NULL COMMENT '操作人',
  `logip` varchar(50) NOT NULL COMMENT 'IP地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户操作日志' AUTO_INCREMENT=159 ;

--
-- 转存表中的数据 `cms_rizhi`
--

INSERT INTO `cms_rizhi` (`id`, `title`, `addtime`, `created_by`, `logip`) VALUES
(1, 'admin登录成功', '2013-10-21 15:46:15', 2, '192.168.1.81'),
(2, 'admin登录成功', '2013-10-21 15:59:13', 2, '192.168.1.82'),
(3, '学院概括类别添加成功', '2013-10-21 16:00:09', 2, '192.168.1.82'),
(4, '专业介绍类别添加成功', '2013-10-21 16:00:18', 2, '192.168.1.82'),
(5, '专业介绍类别添加成功', '2013-10-21 16:00:29', 2, '192.168.1.82'),
(6, '培养目标类别添加成功', '2013-10-21 16:00:38', 2, '192.168.1.82'),
(7, '课程体系类别添加成功', '2013-10-21 16:00:47', 2, '192.168.1.82'),
(8, '师资力量类别添加成功', '2013-10-21 16:01:00', 2, '192.168.1.82'),
(9, '实践平台类别添加成功', '2013-10-21 16:01:11', 2, '192.168.1.82'),
(10, '职业发展类别添加成功', '2013-10-21 16:01:18', 2, '192.168.1.82'),
(11, '专业优势类别添加成功', '2013-10-21 16:01:25', 2, '192.168.1.82'),
(12, '专业前景类别添加成功', '2013-10-21 16:01:34', 2, '192.168.1.82'),
(13, '职业发展类别修改成功', '2013-10-21 16:01:52', 2, '192.168.1.82'),
(14, '网上报名类别添加成功', '2013-10-21 16:02:19', 2, '192.168.1.82'),
(15, '联系我们类别添加成功', '2013-10-21 16:02:28', 2, '192.168.1.82'),
(16, '云计算案例类别添加成功', '2013-10-21 16:02:36', 2, '192.168.1.82'),
(17, '学院概括单片文章添加成功', '2013-10-21 16:03:15', 2, '192.168.1.82'),
(18, '专业介绍单片文章添加成功', '2013-10-21 16:03:44', 2, '192.168.1.82'),
(19, '培养目标单片文章添加成功', '2013-10-21 16:04:06', 2, '192.168.1.82'),
(20, '课程体系单片文章添加成功', '2013-10-21 16:04:34', 2, '192.168.1.82'),
(21, '老师1单片文章添加成功', '2013-10-21 16:11:45', 2, '192.168.1.82'),
(22, '老师2单片文章添加成功', '2013-10-21 16:12:06', 2, '192.168.1.82'),
(23, '实践平台单片文章添加成功', '2013-10-21 16:12:25', 2, '192.168.1.82'),
(24, '职业发展类别添加成功', '2013-10-21 16:12:55', 2, '192.168.1.82'),
(25, '专业优势单片文章添加成功', '2013-10-21 16:13:23', 2, '192.168.1.82'),
(26, '专业前景单片文章添加成功', '2013-10-21 16:13:43', 2, '192.168.1.82'),
(27, '职业发展单片文章添加成功', '2013-10-21 16:14:01', 2, '192.168.1.82'),
(28, '网上报名单片文章添加成功', '2013-10-21 16:14:25', 2, '192.168.1.82'),
(29, '联系我们单片文章添加成功', '2013-10-21 16:14:46', 2, '192.168.1.82'),
(30, '云计算案例单片文章添加成功', '2013-10-21 16:15:18', 2, '192.168.1.82'),
(31, '新闻动态类别添加成功', '2013-10-21 16:15:53', 2, '192.168.1.82'),
(32, '报考信息类别添加成功', '2013-10-21 16:16:07', 2, '192.168.1.82'),
(33, '常见问题类别添加成功', '2013-10-21 16:16:42', 2, '192.168.1.82'),
(34, '解析云计算类别添加成功', '2013-10-21 16:16:49', 2, '192.168.1.82'),
(35, '偿标准或最高达50万元人民币的法定赔偿标准添加成功', '2013-10-21 16:17:32', 2, '192.168.1.82'),
(36, '网站所有创意图片及影视素材均添加成功', '2013-10-21 16:17:42', 2, '192.168.1.82'),
(37, '产权，华盖创意有权依据著作权侵权惩罚性添加成功', '2013-10-21 16:18:08', 2, '192.168.1.82'),
(38, '2013招生简章添加成功', '2013-10-21 16:19:26', 2, '192.168.1.82'),
(39, '2014住宿通知添加成功', '2013-10-21 16:20:00', 2, '192.168.1.82'),
(40, '收费标准添加成功', '2013-10-21 16:20:20', 2, '192.168.1.82'),
(41, '问题1添加成功', '2013-10-21 16:20:42', 2, '192.168.1.82'),
(42, '问题2添加成功', '2013-10-21 16:21:44', 2, '192.168.1.82'),
(43, '问题3v添加成功', '2013-10-21 16:22:01', 2, '192.168.1.82'),
(44, '什么是云计算添加成功', '2013-10-21 16:23:17', 2, '192.168.1.82'),
(45, '云计算真厉害啊添加成功', '2013-10-21 16:23:44', 2, '192.168.1.82'),
(46, 'admin登录成功', '2013-10-21 17:30:53', 2, '192.168.1.82'),
(47, 'admin登录成功', '2013-10-21 21:42:23', 2, '211.103.221.199'),
(48, 'admin登录成功', '2013-10-21 22:26:56', 2, '211.103.221.199'),
(49, 'admin登录成功', '2013-10-22 08:56:50', 2, '192.168.1.82'),
(50, '学院概括单片文章修改成功', '2013-10-22 09:07:37', 2, '192.168.1.82'),
(51, '专业介绍单片文章修改成功', '2013-10-22 09:14:09', 2, '192.168.1.82'),
(52, '专业介绍单片文章修改成功', '2013-10-22 09:14:43', 2, '192.168.1.82'),
(53, '培养目标单片文章修改成功', '2013-10-22 09:15:35', 2, '192.168.1.82'),
(54, '课程体系单片文章修改成功', '2013-10-22 09:37:47', 2, '192.168.1.82'),
(55, '陈滢单片文章添加成功', '2013-10-22 09:43:53', 2, '192.168.1.82'),
(56, '陈滢单片文章修改成功', '2013-10-22 09:46:15', 2, '192.168.1.82'),
(57, '宋俊典单片文章添加成功', '2013-10-22 10:03:12', 2, '192.168.1.82'),
(58, '汪海单片文章添加成功', '2013-10-22 10:03:32', 2, '192.168.1.82'),
(59, '张健单片文章添加成功', '2013-10-22 10:03:48', 2, '192.168.1.82'),
(60, '孟江波单片文章添加成功', '2013-10-22 10:04:06', 2, '192.168.1.82'),
(61, '刘斌单片文章添加成功', '2013-10-22 10:04:22', 2, '192.168.1.82'),
(62, '刘斌单片文章修改成功', '2013-10-22 10:07:14', 2, '192.168.1.82'),
(63, '实践平台单片文章修改成功', '2013-10-22 10:29:54', 2, '192.168.1.82'),
(64, '专业优势单片文章修改成功', '2013-10-22 10:32:07', 2, '192.168.1.82'),
(65, '专业前景单片文章修改成功', '2013-10-22 10:39:41', 2, '192.168.1.82'),
(66, '职业发展单片文章修改成功', '2013-10-22 10:43:40', 2, '192.168.1.82'),
(67, '职业发展单片文章修改成功', '2013-10-22 10:46:13', 2, '192.168.1.82'),
(68, '报考信息添加成功', '2013-10-22 10:54:01', 2, '192.168.1.82'),
(69, '招生简章添加成功', '2013-10-22 11:13:22', 2, '192.168.1.82'),
(70, '招生简章修改成功', '2013-10-22 11:26:17', 2, '192.168.1.82'),
(71, '招生简章修改成功', '2013-10-22 11:30:08', 2, '192.168.1.82'),
(72, '招生简章修改成功', '2013-10-22 11:30:24', 2, '192.168.1.82'),
(73, '招生简章修改成功', '2013-10-22 11:30:51', 2, '192.168.1.82'),
(74, '招生简章修改成功', '2013-10-22 11:31:28', 2, '192.168.1.82'),
(75, '1.请问招生目录中院系招生总数含有推免生吗？ 修改成功', '2013-10-22 11:32:38', 2, '192.168.1.82'),
(76, '2.什么是工程硕士？它与工学硕士有何不同？修改成功', '2013-10-22 11:33:01', 2, '192.168.1.82'),
(77, '3.老师您好，请问一下校外推免到交大的学生，体检表照片上的盖章，是盖录取学院的章还是目前所在学校学院', '2013-10-22 11:33:29', 2, '192.168.1.82'),
(78, '西安交大研究生院（苏州）合唱比赛圆满成功添加成功', '2013-10-22 11:46:14', 2, '192.168.1.82'),
(79, '西安交大研究生院（苏州）合唱比赛圆满成功修改成功', '2013-10-22 11:47:54', 2, '192.168.1.82'),
(80, '工信部移动云计算教育培训中心与西安交通大学共建学历硕士专业添加成功', '2013-10-22 11:49:09', 2, '192.168.1.82'),
(81, '工信部移动云计算教育培训中心与西安交大联合共建移动云计算专业添加成功', '2013-10-22 11:52:21', 2, '192.168.1.82'),
(82, '工信部移动云计算教育培训中心与西安交大联合共建移动云计算专业修改成功', '2013-10-22 11:54:07', 2, '192.168.1.82'),
(83, '云计算在中国添加成功', '2013-10-22 12:00:59', 2, '192.168.1.82'),
(84, '10文章ID删除成功', '2013-10-22 12:24:55', 2, '192.168.1.82'),
(85, '11文章ID删除成功', '2013-10-22 12:24:57', 2, '192.168.1.82'),
(86, '云计算的行业成功案例？添加成功', '2013-10-22 13:18:19', 2, '192.168.1.82'),
(87, '云计算技术有哪些？添加成功', '2013-10-22 13:20:14', 2, '192.168.1.82'),
(88, '什么是云计算？添加成功', '2013-10-22 13:23:23', 2, '192.168.1.82'),
(89, '云计算精彩案例单片文章修改成功', '2013-10-22 13:27:00', 2, '192.168.1.82'),
(90, '3,2文章ID删除成功', '2013-10-22 13:28:16', 2, '192.168.1.82'),
(91, '3,2文章ID删除成功', '2013-10-22 13:28:20', 2, '192.168.1.82'),
(92, '3文章ID删除成功', '2013-10-22 13:28:25', 2, '192.168.1.82'),
(93, '3文章ID删除成功', '2013-10-22 13:28:31', 2, '192.168.1.82'),
(94, '1文章ID删除成功', '2013-10-22 13:28:45', 2, '192.168.1.82'),
(95, '4文章ID删除成功', '2013-10-22 13:28:48', 2, '192.168.1.82'),
(96, '5文章ID删除成功', '2013-10-22 13:28:51', 2, '192.168.1.82'),
(97, '联系我们单片文章修改成功', '2013-10-22 13:43:28', 2, '192.168.1.82'),
(98, '工信部移动云计算教育培训中心与西安交大联合共建移动云计算专业修改成功', '2013-10-22 13:48:54', 2, '192.168.1.82'),
(99, '工信部移动云计算教育培训中心与西安交大联合共建移动云计算专业添加成功', '2013-10-22 13:52:14', 2, '192.168.1.82'),
(100, '实践平台单片文章修改成功', '2013-10-22 14:18:16', 2, '192.168.1.82'),
(101, '实践平台单片文章修改成功', '2013-10-22 14:20:13', 2, '192.168.1.82'),
(102, '5单片文章删除成功', '2013-10-22 14:23:02', 2, '192.168.1.82'),
(103, '6单片文章删除成功', '2013-10-22 14:23:04', 2, '192.168.1.82'),
(104, '云计算精彩案例单片文章修改成功', '2013-10-22 14:31:22', 2, '192.168.1.82'),
(105, '常见问题类别添加成功', '2013-10-22 14:34:33', 2, '192.168.1.82'),
(106, '常见问题单片文章添加成功', '2013-10-22 14:38:29', 2, '192.168.1.82'),
(107, '常见问题单片文章修改成功', '2013-10-22 14:39:02', 2, '192.168.1.82'),
(108, '常见问题单片文章修改成功', '2013-10-22 14:55:26', 2, '192.168.1.82'),
(109, '常见问题单片文章修改成功', '2013-10-22 14:57:03', 2, '192.168.1.82'),
(110, '宋俊典单片文章修改成功', '2013-10-22 15:07:21', 2, '192.168.1.82'),
(111, '汪海单片文章修改成功', '2013-10-22 15:08:23', 2, '192.168.1.82'),
(112, '张健单片文章修改成功', '2013-10-22 15:08:53', 2, '192.168.1.82'),
(113, '孟江波单片文章修改成功', '2013-10-22 15:09:20', 2, '192.168.1.82'),
(114, '陈滢单片文章修改成功', '2013-10-22 16:40:20', 2, '192.168.1.82'),
(115, '专业优势单片文章修改成功', '2013-10-22 16:43:17', 2, '192.168.1.82'),
(116, '6文章ID删除成功', '2013-10-22 16:58:02', 2, '192.168.1.82'),
(117, '宋俊典单片文章修改成功', '2013-10-22 17:12:59', 2, '192.168.1.82'),
(118, '陈滢单片文章修改成功', '2013-10-22 17:13:13', 2, '192.168.1.82'),
(119, '汪海单片文章修改成功', '2013-10-22 17:13:26', 2, '192.168.1.82'),
(120, '张健单片文章修改成功', '2013-10-22 17:13:35', 2, '192.168.1.82'),
(121, '孟江波单片文章修改成功', '2013-10-22 17:13:44', 2, '192.168.1.82'),
(122, '刘斌单片文章修改成功', '2013-10-22 17:13:52', 2, '192.168.1.82'),
(123, '9文章ID删除成功', '2013-10-22 17:53:11', 2, '192.168.1.82'),
(124, '8文章ID删除成功', '2013-10-22 17:53:13', 2, '192.168.1.82'),
(125, '7文章ID删除成功', '2013-10-22 17:53:15', 2, '192.168.1.82'),
(126, 'admin登录成功', '2013-10-23 08:51:50', 2, '192.168.1.82'),
(127, '实践平台单片文章修改成功', '2013-10-23 13:50:31', 2, '192.168.1.82'),
(128, '职业发展单片文章修改成功', '2013-10-23 14:09:06', 2, '192.168.1.82'),
(129, '职业发展单片文章修改成功', '2013-10-23 14:10:27', 2, '192.168.1.82'),
(130, '专业介绍单片文章修改成功', '2013-10-23 14:26:30', 2, '192.168.1.82'),
(131, '专业介绍单片文章修改成功', '2013-10-23 14:28:10', 2, '192.168.1.82'),
(132, '学院概括单片文章修改成功', '2013-10-23 14:57:17', 2, '192.168.1.82'),
(133, '学院概括单片文章修改成功', '2013-10-23 14:58:16', 2, '192.168.1.82'),
(134, '报考信息修改成功', '2013-10-23 14:59:18', 2, '192.168.1.82'),
(135, '学院概括单片文章修改成功', '2013-10-23 14:59:57', 2, '192.168.1.82'),
(136, '学院概括单片文章修改成功', '2013-10-23 15:00:11', 2, '192.168.1.82'),
(137, '学院概括单片文章修改成功', '2013-10-23 15:00:23', 2, '192.168.1.82'),
(138, '学院概括单片文章修改成功', '2013-10-23 15:00:35', 2, '192.168.1.82'),
(139, '学院概括单片文章修改成功', '2013-10-23 15:01:13', 2, '192.168.1.82'),
(140, '职业发展单片文章修改成功', '2013-10-23 15:02:42', 2, '192.168.1.82'),
(141, '课程体系单片文章修改成功', '2013-10-23 15:05:31', 2, '192.168.1.82'),
(142, '课程体系单片文章修改成功', '2013-10-23 15:06:23', 2, '192.168.1.82'),
(143, '网上报名单片文章添加成功', '2013-10-23 15:21:45', 2, '192.168.1.82'),
(144, '网上报名单片文章修改成功', '2013-10-23 15:22:37', 2, '192.168.1.82'),
(145, '网上报名单片文章修改成功', '2013-10-23 15:24:16', 2, '192.168.1.82'),
(146, '21单片文章删除成功', '2013-10-23 15:24:21', 2, '192.168.1.82'),
(147, '网上报名单片文章修改成功', '2013-10-23 15:25:15', 2, '192.168.1.82'),
(148, '网上报名单片文章修改成功', '2013-10-23 15:28:19', 2, '192.168.1.82'),
(149, '网上报名单片文章修改成功', '2013-10-23 15:28:52', 2, '192.168.1.82'),
(150, '学院概括单片文章修改成功', '2013-10-23 16:51:00', 2, '192.168.1.82'),
(151, '学院概括单片文章修改成功', '2013-10-23 16:53:25', 2, '192.168.1.82'),
(152, '学院概括单片文章修改成功', '2013-10-23 16:55:44', 2, '192.168.1.82'),
(153, '学院概括单片文章修改成功', '2013-10-23 16:56:30', 2, '192.168.1.82'),
(154, '学院概括单片文章修改成功', '2013-10-23 16:59:25', 2, '192.168.1.82'),
(155, 'admin登录成功', '2013-10-24 11:39:01', 2, '192.168.1.82'),
(156, '常见问题单片文章修改成功', '2013-10-24 11:39:28', 2, '192.168.1.82'),
(157, '常见问题单片文章修改成功', '2013-10-24 11:40:12', 2, '192.168.1.82'),
(158, '常见问题单片文章修改成功', '2013-10-24 11:40:25', 2, '192.168.1.82');

-- --------------------------------------------------------

--
-- 表的结构 `cms_users`
--

CREATE TABLE IF NOT EXISTS `cms_users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `types` int(11) NOT NULL DEFAULT '0' COMMENT '权限',
  `quanxian` text COMMENT '权限',
  `logintimes` int(10) DEFAULT '0' COMMENT '登录次数',
  `addtime` datetime DEFAULT NULL COMMENT '注册时间',
  `lastlogintime` datetime DEFAULT NULL COMMENT '最近登录时间',
  `ip` varchar(150) DEFAULT NULL COMMENT 'IP',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `cms_users`
--

INSERT INTO `cms_users` (`userid`, `username`, `password`, `types`, `quanxian`, `logintimes`, `addtime`, `lastlogintime`, `ip`) VALUES
(1, 'lanhai', '2eb429c676681a7bf5ae8702aa768363', 0, '|1,|2,|3,|4,|5,|6,|7,|8,|9,|10,|11,|12,|13,|14,|15,|16,|17,|18,|19,|20,|21,|22,|29,|23,|30,|25,|26,|27,|56,|28,|31,|32,|33,|34,|35,|36,|38,|39,|40,|41,|42,|43,|44,|45,|46,|47,|48,|49,|50,|51,|52,|53,|54,|55,', 26, '2011-01-28 16:37:16', '2012-12-10 14:44:44', '127.0.0.1'),
(2, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0, '|1,|2,|3,|4,|9,|10,|11,|12,|13,|15,|25,|26,|27,|56,', 214, '2011-01-28 16:37:30', '2013-10-24 11:39:01', '192.168.1.82');

-- --------------------------------------------------------

--
-- 表的结构 `cms_website`
--

CREATE TABLE IF NOT EXISTS `cms_website` (
  `name` varchar(255) NOT NULL,
  `ename` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `enkeywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `endescription` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `company` varchar(255) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `icp` varchar(100) NOT NULL,
  `attachment_dir` varchar(100) NOT NULL,
  `smsname` varchar(100) NOT NULL,
  `smspass` varchar(100) NOT NULL,
  `memail` varchar(100) NOT NULL,
  `memailpass` varchar(100) NOT NULL,
  `smtpmail` varchar(100) NOT NULL,
  `youxiang` varchar(100) NOT NULL,
  `html` varchar(100) NOT NULL,
  `masteremail` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cms_website`
--

INSERT INTO `cms_website` (`name`, `ename`, `url`, `keywords`, `enkeywords`, `description`, `endescription`, `address`, `phone`, `company`, `zipcode`, `mobile`, `tax`, `icp`, `attachment_dir`, `smsname`, `smspass`, `memail`, `memailpass`, `smtpmail`, `youxiang`, `html`, `masteremail`) VALUES
('西安交通大学软件学院|移动云计算专业-培养高端软件工程硕士|云计算硕士研究生|提供权威的云计算课程', '', '', '云计算,云计算课程,西安交通大学软件学院,移动云计算专业,云计算硕士研究生,工程硕士,考研调剂,软件工程硕士,研究生自考,西安交大调剂,西安交大自主招生,交大云计算', '', '西安交通大学软件学院拥有全球权威性的、IT前沿系列的移动云计算课程，并成立移动云计算软件工程硕士！在工信部、众多全球云计算企业强力支持下,全面培养软件工程硕士及云计算硕士研究生高端人才！', '', '西安大学', '西安大学', '西安大学', '西安大学', '西安大学', '', ' ', 'upload/', '111', '11', '250218783', 'yangyong123', 'smtp.qq.com', '250218783@qq.com', '', 'mcc@dlut.edu.cn');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
