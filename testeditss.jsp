<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%
	int it1=Integer.parseInt(request.getParameter("textfield1"));
	String st2=request.getParameter("question");
	String st3=request.getParameter("textfield3");	
	String st4=request.getParameter("textfield4");
	String st5=request.getParameter("textfield5");
	String st6=request.getParameter("textfield6");
	String st7=request.getParameter("textfield7");
	Integer logid=(Integer)session.getAttribute("login1"); 
	int n1=logid.intValue();
%>
<%!	PreparedStatement ps=null;%>
<% 
	ps=con.prepareStatement("update test_queries set  ques_name=?,ques_opt1=?,ques_opt2=?,ques_opt3=?,ques_opt4=?,ques_answer=? where  ques_no="+it1);
	ps.setString(1,st2);
	ps.setString(2,st3);
	ps.setString(3,st4);
	ps.setString(4,st5);
	ps.setString(5,st6);
	ps.setString(6,st7);
	int j=ps.executeUpdate();
	if (j>0)
		out.println("Updated");
	else
		out.println("Sorry !..");
%>