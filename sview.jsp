<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!  	
	ResultSet rs=null;
%>

<% try
	{
 	rs=st.executeQuery("select * from job_requ");
%>


<div align="center">
  <center>


<TABLE cellSpacing=0 cellPadding=0 width=720 bgColor="#FFFFFF" border=0 height="270">

 <TBODY>
  <TR>
    <TD height=62 width="723">&nbsp;
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <font color="#BE7DFF" size="4"><i><b>Total Job Details Are.....</b></i></font></font>
      <p>&nbsp;</TD></TR>
  <TR>
    <TD vAlign=top height=208 width="723">
      <TABLE cellSpacing=0 cellPadding=0 width="669" border=1 height="141" bordercolor="#686846" >

        <TBODY align="center">
            
<tr>
<td width="100" height="36">
  <p align="center"><b>Job Code</b></p>
</td>
<td width="169" height="36">
  <p align="center"><b>Job Name</b></p>
</td>
<td width="141" height="36">
  <p align="center"><b>Qualification</b></p>
</td>
<td width="149" height="36">
  <p align="center"><b>Skills</b></p>
</td>
<td width="89" height="36">
  <p align="center"><b>Experience</b></p>
</td>
<td width="76" height="36">
  <p align="center"><b>Vacancies</b></p>
</td>
<td width="76" height="36">
  <p align="center"><b>Last Date</b></p>
</td>
</tr>
    	
       
    <%	while(rs.next())
	{%>
 	   <tr>	
           <td width="100" height="78">  
	   <%out.println(rs.getInt(1));%>
	  </td>
	  <td width="169" height="78">  
	   <%out.println(rs.getString(2));%>
	  </td>
	  <td width="141" height="78">  
	   <%out.println(rs.getString(3));%>
	  </td>
	   <td width="149" height="78">  
	   <%out.println(rs.getString(4));%>
	  </td>
	  <td width="89" height="78">  
	   <%out.println(rs.getDouble(6));%>
	  </td>
	  <td width="76" height="78">  
	   <%out.println(rs.getInt(7));%>
	  </td>
	  <td width="76" height="78">  
	   <%out.println(rs.getString(10));%>
	  </td>
	   </tr> 
      <%}%>
 
 </TBODY></TABLE>
</TBODY>

</TABLE>

  </center>
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
<P align="left"> &nbsp;</p>

</BODY></HTML>
