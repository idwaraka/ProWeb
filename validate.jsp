<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!int loginid;%>
<%!String str;%>
<%!ResultSet rs = null;%>
<%!String pass = null;%>
<%
	str=request.getParameter("uname");
	loginid = Integer.parseInt(request.getParameter("uname"));
	pass = request.getParameter("password");
	rs = st.executeQuery("select *  from job_pro where  pro_login_id="+loginid+" and  pro_password='"+pass+"'"); 
	if(!rs.next())
	{  	con.close();
%>
<frameset rows="23%,*">
<frame src="title2.htm"  scrolling=no  bordercolor=#6480ed  frameborder=no>
<frameset rows="*,7%"><frameset cols="25%,*">
<frame src="left.htm" bordercolor=#6480ed scrolling=auto frameborder=no>
<frame src="login.htm" name="right" bordercolor=#6480ed frameborder=0 scrolling=auto>
</frameset>
<frame src="bot1.htm" noresize scrolling=no bordercolor=#6480ed >
</frameset></frameset>
<%	}    else	{     con.close();%>
<frameset rows="23%,*">
<frame src="title2.htm"  scrolling=no  bordercolor=#6480ed  frameborder=no>
<frameset rows="*,7%"><frameset cols="28%,*">
<frame src="jobmain.htm"  name="left1" bordercolor=#6480ed scrolling=auto frameborder=no>
<frame src="right1.htm" name="right" bordercolor=#6480ed frameborder=0 scrolling=auto>
</frameset>
<frame src="bot1.htm" noresize scrolling=no bordercolor=#6480ed >
</frameset></frameset>
<%
	Integer login1= new Integer(loginid);
	session.setAttribute("login1",login1);	
}
		con.close();
%>			  