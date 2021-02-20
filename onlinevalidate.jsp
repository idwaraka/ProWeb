<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!String str1;%>
<%!                      ResultSet rs = null;

			 String pass = null; 
%>

<%          	
		
str1=request.getParameter("uname");
pass = request.getParameter("password");
rs = st.executeQuery("select *  from online_testlogin where  seek_code='"+str1+"'and  seek_pwd='"+pass+"'"); 
		 if(!rs.next() )
		      {  	con.close();
System.out.println("hai");
%>
<frameset rows="23%,*">
<frame src="title2.htm"  scrolling=no  bordercolor=#6480ed  frameborder=no>


<frameset rows="*,7%">
<frameset cols="25%,*">

<frame src="left.htm" bordercolor=#6480ed scrolling=auto frameborder=no>
<frame src="onlinelogin.htm" name="right" bordercolor=#6480ed frameborder=0 scrolling=auto>
</frameset>
<frame src="bot.htm" noresize scrolling=no bordercolor=#6480ed >

</frameset>
</frameset>
			  
<%		       }
		         else
             		{     
System.out.println("welcome");
			       con.close();%>

<frameset rows="23%,*">
<frame src="title2.htm"  scrolling=no  bordercolor=#6480ed  frameborder=no>


<frameset rows="*,7%">

<frame src="onlineright.jsp" name="right" bordercolor=#6480ed frameborder=0 scrolling=auto>
<frame src="bot.htm" noresize scrolling=no bordercolor=#6480ed >

</frameset>
</frameset>


		   		
<%
			  		session.setAttribute("str1",str1);	
	                }
            

		con.close();
%>			  