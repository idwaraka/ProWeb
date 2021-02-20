<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>

<%!  	
	ResultSet rs=null;
%>
<%
	String st2=request.getParameter("Experience");
%>

<% try	
	{
 	rs=st.executeQuery("select * from job_requ");
%>
                  
   <%
	System.out.println("1:"+st2);
	StringTokenizer s=new StringTokenizer(st2,"-");
	int i=0;
	int[] j=new int[2];
	while(s.hasMoreTokens())
	{
		j[i]=Integer.parseInt(s.nextToken());
		i++;
	}
	i=0;
 		for(i=0;i<j.length;i++)
		System.out.println(j[i]);%>
		
   <div align="justify">
		
<table border="0" width="100%" height="295">
  <tr>
    <td width="100%" height="49" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <font color="#0000FF"><b>Based on Key Available Jobs are...</b></font></td>
  </tr>
  <tr>
    <td width="7%" height="234"></td>
    <td width="93%" height="234">
      <table border="1" width="546" height="102" cellspacing="1">
        <tr>
<td width="169" height="30">
  <p align="center"><b><font color="#008080">Job Name</font></b></p>
</td>
<td width="133" height="30">
  <p align="center"><b><font color="#008080">Qualification</font></b></p>
</td>
<td width="222" height="30">
  <p align="center"><b><font color="#008080">Experience</font></b></p>
</td>
</tr>
 <%     while(rs.next())

       {  
                 i=0;

     	    while(i<j.length)
	    {
		String a=rs.getString(2);
		String b=rs.getString(3);
		double c=rs.getDouble(6);
		if((c>= j[i]) && (c<=j[i+1]))
		{%>

			<tr><td width="188" height="55">
			<p align="center"><%out.println(a);%></p></td>
			<td width="20" height="55">
			<p align="center"><%out.println(b);%></p></td>
			<td width="30" height="55">
			<p align="center"><%out.println(c);%></p></td>
			</tr>
			
	        <% }		 
		i++;
             }	
            }
	
          %>	
 </table>

 </table>
   </div>
<%}
catch(Exception e)
{
 System.out.println("error"+e);
}
finally
{
	rs.close();
	st.close();
	con.close();
}
%>
</BODY></HTML>
