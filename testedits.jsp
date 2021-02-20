<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000  leftMargin=0 topMargin=0>

<%@ include file="makecon.jsp" %>
<%! ResultSet rs=null;%>
<%! int j;%>
<%! int jcodeedit;%>
<%! int jcode1;%>
<% System.out.println("welcome");
	jcodeedit=Integer.parseInt(request.getParameter("codeedit"));
	ResultSet rs=st.executeQuery("select * from test_queries where ques_no="+jcodeedit);
	if(rs.next())
	{	
//	System.out.println("test edit  1:"+rs.getInt(1));
System.out.println("test edit  1:");
		if(rs.getInt(1)==jcodeedit)
		{   
			jcode1=jcodeedit;
%>
<TABLE cellSpacing=0 cellPadding=0 width=780 border=0>
<form name="testedit" action="testeditss.jsp" method="post">
<TBODY> <TR> <TD vAlign=top height=321>
<TABLE cellSpacing=0 cellPadding=0 width="819" border=0 height="353">
<TBODY> <TR>
<TD vAlign=top width=767 bgColor=#ffffff colspan="4" height="26">&nbsp;</TD></TR>
<TR> <TD vAlign=top width=767 bgColor=#ffffff colspan="4" height="36">
<p align="center"><b>
<font color="#6699CC">Updating the Old Test Queries</font></b>
<p align="center">&nbsp;</TD></TR>
<tr> <TD vAlign=top width=337 bgColor=#ffffff height="37" align="center">
<p align="left"> <span class="text">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Question No</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</TD><center><TD vAlign=top width=203 bgColor=#ffffff height="37">
<p align="center"><input type="text" name="textfield1" value='<%=jcode1%>' size="20" tabindex="1" ReadOnly>
</TD></tr> <tr> 
<TD vAlign=top width=337 bgColor=#ffffff height="36" align="center">
<span class="text">&nbsp;&nbsp;Question&nbsp;</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
<TD vAlign=top width=203 bgColor=#ffffff height="36">
<p align="center"> 
<input type="text" name="question" value='<%=rs.getString(2)%>' size="20" tabindex="1" ReadOnly>
</TD></tr> <tr>
<TD vAlign=top width=337 bgColor=#ffffff height="37" align="center"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Question option 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</TD>
<TD vAlign=top width=203 bgColor=#ffffff height="37">
<p align="center">
<input type="text" value='<%=rs.getString(3)%>' name="textfield3" size="20" tabindex="3">
</TD></tr> <tr>
<TD vAlign=top width=337 bgColor=#ffffff height="36" align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Question option 2 &nbsp;&nbsp;&nbsp;</TD>
<TD vAlign=top width=203 bgColor=#ffffff height="36">
<p align="center"> 
<input type="text" name="textfield4" value='<%=rs.getString(4)%>' size="20" tabindex="4">
</TD> </tr> <tr>
<TD vAlign=top width=337 bgColor=#ffffff height="28" align="center">
&nbsp; &nbsp;&nbsp; Question option 3 &nbsp;&nbsp;</TD>
<TD vAlign=top width=203 bgColor=#ffffff height="28">
<p align="center">
<input type="text" value='<%=rs.getString(5)%>' name="textfield5" size="20" tabindex="5">
</TD> </tr> <tr>
<TD vAlign=top width=337 bgColor=#ffffff height="27" align="center"> 
&nbsp;&nbsp;&nbsp;&nbsp; Question option 4 &nbsp;&nbsp;</TD>
<TD vAlign=top width=203 bgColor=#ffffff height="27">
<p align="center">
<input type="text" value='<%=rs.getString(6)%>'name="textfield6" size="20" tabindex="6">
</TD> </tr> <tr>
<TD vAlign=top width=337 bgColor=#ffffff height="28" align="center">&nbsp;Question Answer</TD>
<TD vAlign=top width=203 bgColor=#ffffff height="28">
<p align="center"><input type="text"  value='<%=rs.getString(7)%>' name="textfield7" size="20" tabindex="7">
</TD> </tr> <TR>
<TD vAlign=top width=264 bgColor=#ffffff height="26">&nbsp;</TD>
<TD vAlign=top width=257 bgColor=#ffffff height="26"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" name="Submit" value="Update" tabindex="12"></TD>
<TD vAlign=top width=85 bgColor=#ffffff height="26"><p align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p></TD><TD vAlign=top width=190 bgColor=#ffffff height="26">&nbsp;</TD></TR>
<TR> <TD vAlign=top width=264 bgColor=#ffffff height="26">&nbsp;</TD>
<TD vAlign=top width=257 bgColor=#ffffff height="26">&nbsp;</TD>
<TD vAlign=top width=85 bgColor=#ffffff height="26">&nbsp;</TD>
<TD vAlign=top width=190 bgColor=#ffffff height="26">&nbsp;</TD></TR>
<TR> <TD vAlign=top width=264 bgColor=#ffffff height="25">&nbsp;</TD>
<TD vAlign=top width=257 bgColor=#ffffff height="25">&nbsp;</TD>
<TD vAlign=top width=85 bgColor=#ffffff height="25">&nbsp;</TD>
<TD vAlign=top width=190 bgColor=#ffffff height="25">&nbsp;</TD></TR></TBODY>
</TABLE></center></TD></TR></TBODY></form></TABLE>
<%	}	}	else	{%>
<table>
<TR> <TD vAlign=top width=771 bgColor=#ffffff>&nbsp;</TD></TR>
<TR> <TD vAlign=top width=771 bgColor=#ffffff><p align="center">
<b>Sorry could not find the record...</b></TD></TR>
<TR> <TD vAlign=top width=771 bgColor=#ffffff>&nbsp;</TD></TR>
<TR> <TD vAlign=top width=771 bgColor=#ffffff><p align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p></TD></TR>
<%	} %></BODY>