<%@ page session="true"%>
<%
	Integer slogid=(Integer)session.getAttribute("slogin1");
	int sn1=slogid.intValue();
System.out.println("sreg1"+sn1);
	String pwd=(String)session.getAttribute("pwd");
System.out.println("sreg2"+pwd);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000 leftMargin=0 topMargin=0>
<TABLE cellSpacing=0 cellPadding=0 width=780 border=0>
  <TBODY>
  <TR>
    <TD vAlign=top height=321>
      <TABLE cellSpacing=0 cellPadding=0 width="784" border=0 height="320">
        <TBODY>
        <TR>
          <TD vAlign=top width=20 
    bgColor=#ffffff rowspan="12" height="320">&nbsp;</TD>
          <TD vAlign=top width=745 
    bgColor=#ffffff height="27" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=745 
    bgColor=#ffffff height="27" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=745 
    bgColor=#ffffff height="31" colspan="2"><b><font color="#D90000" size="4">&nbsp;</font><font color="#3823AF" size="4">Congratulations!&nbsp; u Registered
            As a Job Seeker........</font></b></TD></TR>
        <TR>
          <TD vAlign=top width=745 
    bgColor=#ffffff height="27" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=270 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#008080">
            Your Login ID&nbsp;&nbsp;&nbsp;</font></TD>
          <TD vAlign=top width=475 
    bgColor=#ffffff height="26"><b><font color="#008080" size="4" col>:&nbsp;<%=sn1%></font></b>&nbsp;&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=270 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <font color="#008080">&nbsp;Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>&nbsp;
            </TD>
          <TD vAlign=top width=475 
    bgColor=#ffffff height="26"><b><font color="#008080" size="4">:&nbsp;<%=pwd%></font></b></TD></TR>
        <TR>
          <TD vAlign=top width=745 
    bgColor=#ffffff height="26" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=745 
    bgColor=#ffffff height="26" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=745 
    bgColor=#ffffff height="26" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <b><font color="#6699CC"> U want Go for Further Transaction&nbsp;
           </font><font color="#CE6700">Pls Login  as a Job Seeker...  </font><font color="#6699CC">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#CE6700"><A 
      href="logout.htm" target="right">Logout</a></font><font color="#6699CC">..</font></b></TD></TR>
        <TR>
          <TD vAlign=top width=745 
    bgColor=#ffffff height="26" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=745 
    bgColor=#ffffff height="26" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=745 
    bgColor=#ffffff height="26" colspan="2">&nbsp;</TD></TR></TBODY>
    
    <% Integer slogin1= new Integer(sn1);
	session.setAttribute("slogin1",slogin1);%>	

    
    </TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
