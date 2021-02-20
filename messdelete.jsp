<%@ include file="makecon.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page session="true"%>
<% 
Integer fcode=(Integer)session.getAttribute("fcode");
out.println(fcode);
String sc=request.getParameter("C1");
String sc1=request.getParameter("C2");
if(sc.equalsIgnoreCase("ON")){
	String cmd="Delete from feed_back where f_code="+fcode;
	PreparedStatement pst=con.prepareStatement(cmd);
	int i=pst.executeUpdate();
	out.println(i);	
	response.sendRedirect("promessage.jsp");}
%>