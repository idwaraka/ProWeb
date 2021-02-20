<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000  leftMargin=0 topMargin=0>
<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!  	
	ResultSet rs=null;
%>

<% try
	{
 	rs=st.executeQuery("select * from feed_back");
%>


<TABLE cellSpacing=0 cellPadding=0 width=780  border=0>
<form name=mesage action="messdelete.jsp" method="post">
 <TBODY>
  <TR>
    <TD height=2></TD></TR>
  <TR>
    <TD vAlign=top height=161>
      
     <p align="center">
      
     &nbsp;
      
     <p align="center">
      
     <b><i><font color="#BE7DFF" size="4">Feed Back From Users</font></i></b>
      
     <p align="center">
      
     &nbsp;
<table border="1" cellpadding="1" cellspacing="1" width="788" height="110">  
<tr>
<td width="109" height="55"><b><p align="center">Feedback Code</p></b></td>
<td width="262" height="55"><b><p align="center">Message</p></b></td>
<td width="117" height="55"><b><p align="center">Seeker Code</p></b></td>
<td width="131" height="55"><b><p align="center">Check It for delete</p></b></td>
</tr>
    	
       
    <%	
		int feedcode=0;
		while(rs.next())
	{
		feedcode=rs.getInt(1);
	%>
 	   <tr>	
           <td width="109" height="55"><p align="center">  
	   <%out.println(feedcode);%></p>
	  </td>
	  <td width="262" height="55">  
	   <%out.println(rs.getString(2));%>
	  </td>
	  <td width="117" height="55"><p align="center">  
	   <%out.println(rs.getInt(3));%></p>
	  </td>
	  <td width="131" height="55"><p align="center"><input type="checkbox" name="C1" value="ON"></p>
           <td width="5">
	   		
      &nbsp;
	   		
	  </tr> 
      <%}
	   session.setAttribute("fcode",new Integer(feedcode));
	   
	  %>
 
</TABLE>
     <p><b>&nbsp;&nbsp;&nbsp; </b> <a href="jobprojob.htm"><b>Back</b></a><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <input name="submitbutton" type="submit" value="  Delete  " style="color: #000000">
     <input type="reset" name="Submit2" value="Reset" tabindex="4">&nbsp;&nbsp;</b>
  <TR>
    <TD vAlign=top height=160>
      
     &nbsp;
</TBODY>
</form>
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

</BODY></HTML>
