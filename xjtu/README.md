这是一个简单的门户网站

发布这个网站
1.准备一个MySQL数据库
    <1>找到xjtu/WebRoot/include/se.xjtu.edu.cn.sql.des3
    <2>在se.xjtu.edu.cn.sql.des3文件同级目录下输入命令：dd if=se.xjtu.edu.cn.sql.des3 | openssl | des3 -d -k <password> | tar zxf -
    <3><password>是多少，哈哈，我会告诉你，也许吧。。。
    <4>记得修改include/conn.jsp的连接 用户名密码
    
2.准备一个tomcat容器
    <1>把xjtu文件夹整个copy进tomcat的发布目录，一般在这个目录下tomcat/webapps
    <2>访问127.0.0.1:8080/xjtu(大概长这个样子的url)  