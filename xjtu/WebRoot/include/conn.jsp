<%@ page import="java.sql.*"%> 
<%
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
String url = "jdbc:mysql://127.0.0.1/se.xjtu.edu.cn?useUnicode=true&amp;characterEncoding=utf8";
String user="root";
String password=""; 
Connection conn= DriverManager.getConnection(url,user,password); 
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
 %>