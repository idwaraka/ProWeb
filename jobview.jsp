<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000 leftMargin=0 topMargin=0>
<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!  	ResultSet rs=null;
%>

<% try
	{
 	
	rs=st.executeQuery("select * from job_requ");
%>


<TABLE cellSpacing=0 cellPadding=0 width=780  border=0>

 <TBODY>
  <TR>
    <TD height=2></TD></TR>
  <TR>
    <TD vAlign=top height=321>
    <p align="center">
      
     &nbsp;
    <p align="center">
      
     <b><i><font color="#BE7DFF" size="4">Total Available Job Details are..</font></i></b>
    <p align="center">
      
     &nbsp;
<table border="1" cellpadding="1" cellspacing="1" width="788" height="110">    
<tr>
<td width="109" height="55">
  <p align="center"><b>Job Code</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Job Name</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Qualification</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Skills</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Experience</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Vacancies</b></p>
</td>
</tr>
    	
       
    <%	while(rs.next())
	{%>
 	   <tr>	
           <td width="109" height="55">
           <p align="center">
	   <%out.println(rs.getInt(1));%></p>

	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <%out.println(rs.getString(2));%></p>
	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <%out.println(rs.getString(3));%></p>
	  </td>
	   <td width="109" height="55"><p align="center">  
	   <%out.println(rs.getString(4));%></p> 

	  </td>
	  <td width="109" height="55">  <p align="center">
	   <%out.println(rs.getDouble(6));%></p> 

	  </td>
	  <td width="109" height="55"> <p align="center"> 
	   <%out.println(rs.getInt(7));%> </p>

	  </td>
	   </tr> 
      <%}%>
 
    </TABLE>
</TBODY>

</TABLE>

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
<P align="left"> <a href="jobprojob.htm"><b>Back</b></a></p>

</BODY></HTML>
