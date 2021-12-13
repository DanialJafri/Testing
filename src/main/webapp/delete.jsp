<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("d");

String DB_DRIVER = "org.postgresql.Driver";
String DB_HOST = "jdbc:postgresql://ec2-3-211-228-251.compute-1.amazonaws.com:5432" + "/d62s3r1ojavllj";
String DB_USER = "geuftdhfelyjre";
String DB_PASSWORD = "c8433b9dc0d4d4d9ec13f2a67b6c708e71cf96a24288fcf71ecbe899f03e3ffa";

Class.forName(DB_DRIVER).newInstance();
Connection conn = DriverManager.getConnection(DB_HOST,DB_USER,DB_PASSWORD);
Statement stat = conn.createStatement();
stat.executeUpdate("delete from crud where id='"+id+"'");
response.sendRedirect("index.jsp");
%>

