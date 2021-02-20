<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000  leftMargin=0 topMargin=0>
<%@ include file="makecon.jsp" %>
<%@page session="true"%>

<%!  ResultSet rs=null;%>
<%! int j;%>
<%! int jcodeedit;%>
<%! int jcode1;%>
<%
	Integer slogid=(Integer)session.getAttribute("slogin1");
	int sn2=slogid.intValue();
System.out.println("snew1"+sn2);
try
{
 	rs=st.executeQuery("select * from seek_per where seek_code="+sn2);
	if(rs.next())
	{	
%>
<TABLE cellSpacing=0 cellPadding=0 width=780 border=0 height="579">
  <TBODY>
<form name="snew" method="post" action="snew1.jsp">
  <TR> <TD height=21></TD></TR>
  <TR> <TD vAlign=top height=422>
      <TABLE cellSpacing=0 cellPadding=0 width="628" border=1 height="418">
        <TBODY>
        <TR> <TD vAlign=top width=13 bgColor=#6699cc height=418>&nbsp;</TD>
		 <TD vAlign=top width=66 bgColor=#ffffff height="418">&nbsp; <p>&nbsp;</p><p>&nbsp;</p> </TD>
		<TD vAlign=top width=611 bgColor=#ffffff height="418"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p align="center"> 
<font face="Arial" color="#6699CC" size="4"><b>Change Your Personal details ....</b> </font>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="610" id="AutoNumber6" height="294">
<tr> <td width="4" height="207">&nbsp;</td>
	 <td width="602" height="207"><b>&nbsp;Ur Personal Information</b> 
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="561" id="AutoNumber7" height="126">
<tr> <td width="97" height="35">First Name</td>
	 <td width="161" height="35"><FONT color=#004080>
<INPUT name=fname value="<%=rs.getString(2)%>" size="16" tabIndex=1></FONT> </td>
    <td width="116" height="34">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name</td>
    <td width="179" height="34"><FONT color=#004080>
    <INPUT name=lname size="16" value="<%=rs.getString(3)%>"tabIndex=2></FONT></td>
</tr>
<tr> <td width="97" height="25">Cell No</td>
     <td width="161" height="25"><FONT color=#004080>
     <INPUT name=cellno value="<%=rs.getString(5)%>"tabIndex=9 size="16"></FONT> 
</td><td width="116" height="24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Passport No </td><td width="179" height="24"><FONT color=#004080>
<INPUT name=passportno size="16" value="<%=rs.getString(7)%>" tabIndex=6></FONT> </td></tr><tr><td width="97" height="37"></td> <td width="161" height="37"></td>
<td width="116" height="38">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email </td>
<td width="179" height="38"><FONT color=#004080>
<INPUT name=email value="<%=rs.getString(8)%>" tabIndex=8 size="16">&nbsp;</FONT> 
</td></tr><tr><td width="97" height="53"></td><td width="161" height="53"></td>
<td width="116" height="53"> </td>
<td width="179" height="53"><FONT color=#004080> 
<INPUT name=submmit tabIndex=43 type=Submit value=Update></FONT></td>
</tr>
</table>
</td></tr><tr><td width="4" height="46">&nbsp;</td>
<td width="602" height="46"><p> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;  </td></tr>
<tr><td width="4" height="1"> &nbsp;</td><td width="602" height="1">    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> </tr> </table>
&nbsp;</TD></TR> </TBODY></TABLE></TD></TR>
</form> </TBODY></TABLE>
<%
	}	else
	         out.println("Sorry Try Again");
}catch(Exception e)
{ System.out.println("error"+e);}
finally
{
	rs.close();
	st.close();
	con.close();
}
%>
</BODY>
</HTML>