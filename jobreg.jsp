
<%@ include file="makecon.jsp" %>
<%@ page session="true"%>




<% Integer logid=(Integer)session.getAttribute("login1");%>

<% 
int n1=logid.intValue();
System.out.println(n1);
%>



<% String pwd=(String)session.getAttribute("pwd");%>


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
          <TD vAlign=top width=50 
    bgColor=#ffffff rowspan="12" height="320">&nbsp;</TD>
          <TD vAlign=top width=715 
    bgColor=#ffffff height="27" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=715 
    bgColor=#ffffff height="27" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=715 
    bgColor=#ffffff height="31" colspan="2"><b><font color="#000080" size="4">Congratulations!&nbsp; u Registered
            As a Job Provider........</font></b></TD></TR>
        <TR>
          <TD vAlign=top width=715 
    bgColor=#ffffff height="27" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=449 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <font color="#6699CC">Your Login ID</font>&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=266 
    bgColor=#ffffff height="26"><b><font size="4">:&nbsp;<%=n1%></font></b>&nbsp;&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=449 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<font color="#6699CC">Password&nbsp;&nbsp;&nbsp;&nbsp;</font>&nbsp;&nbsp;&nbsp;
            </TD>
          <TD vAlign=top width=266 
    bgColor=#ffffff height="26"><b><font size="4">:&nbsp;<%=pwd%></font></b></TD></TR>
        <TR>
          <TD vAlign=top width=715 
    bgColor=#ffffff height="26" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=715 
    bgColor=#ffffff height="26" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=715 
    bgColor=#ffffff height="26" colspan="2"><b><font color="#6699CC">If Provider&nbsp;
            want to Go for Further Transaction&nbsp; </font><font color="#CE6700">Pls
            Login as a Job Provider... </font><font color="#6699CC">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </font><font color="#CE6700"><a href="logout.htm" target="right">Logout</a></font><font color="#6699CC">..</font></b></TD></TR>
        <TR>
          <TD vAlign=top width=715 
    bgColor=#ffffff height="26" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=715 
    bgColor=#ffffff height="26" colspan="2">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=715 
    bgColor=#ffffff height="26" colspan="2">&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
