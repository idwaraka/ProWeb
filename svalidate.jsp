<%@ include file="makecon.jsp" %>
<%@ page session="true"%>

<%!int sloginid;%>
<%!String str;%>
<%!                      ResultSet rs = null;

			 String pass = null; 
%>

<%          	 		
         sloginid = Integer.parseInt(request.getParameter("uname"));
		 pass = request.getParameter("password");

		System.out.println(pass);
		 rs = st.executeQuery("select *  from seek_login where  seek_code="+sloginid+" and  seek_pwd='"+pass+"'"); 
		 if(!rs.next())
			{
			  con.close();
			  %>
			 
	<frameset rows="23%,*">
<frame src="title2.htm"  scrolling=no  bordercolor=#6480ed  frameborder=no>


<frameset rows="*,7%">
<frameset cols="25%,*">

<frame src="left.htm" bordercolor=#6480ed scrolling=auto frameborder=no>
<frame src="srelogin.htm" name="right" bordercolor=#6480ed frameborder=0 scrolling=auto>
</frameset>
<frame src="bot1.htm" noresize scrolling=no bordercolor=#6480ed >

</frameset>
</frameset>
			 
			<%  }
	         else
        	     {     %>
<frameset rows="23%,*">
<frame src="title2.htm"  scrolling=no  bordercolor=#6480ed  frameborder=no>


<frameset rows="*,7%">
<frameset cols="25%,*">

<frame src="smain.htm"  name="left1" bordercolor=#6480ed scrolling=auto frameborder=no>
<frame src="right1.htm" name="right" bordercolor=#6480ed frameborder=0 scrolling=auto>
</frameset>
<frame src="bot1.htm" noresize scrolling=no bordercolor=#6480ed >

</frameset>
</frameset>
<%   
		     
			Integer slogin1= new Integer(sloginid);
			session.setAttribute("slogin1",slogin1);	
 		      
              }
		con.close();
%>			  