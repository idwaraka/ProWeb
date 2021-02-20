<%@ page import="java.sql.*" %>
<%! 
	Connection con = null;
	Statement st = null;
%>
<%
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con = DriverManager.getConnection("jdbc:odbc:crs","crs","crs");
	st=con.createStatement();
%>