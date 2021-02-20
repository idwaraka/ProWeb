<%@ include file="makecon.jsp" %>
<%@ page import="java.sql.Date"%>
<%@page session="true"%>

<%
	Integer slogid=(Integer)session.getAttribute("slogin1");
	int sn2=slogid.intValue();
%>
<%!	ResultSet rs=null;
	PreparedStatement ps=null;%>
<%
 	String st1=request.getParameter("fname");
	String st2=request.getParameter("lname");
	String st3=request.getParameter("cellno");	
	String st4=request.getParameter("passportno");	
	String st5=request.getParameter("email");	
try
{
	ps=con.prepareStatement("update seek_per set seek_fname=?, seek_lname=?, seek_cellno=?, seek_passport=?, seek_email=? where seek_code=" + sn2);
	ps.setString(1,st1);
	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);
	int j=ps.executeUpdate();
	if (j>0)
	{%>      
	<TR> <TD vAlign=top width=771 bgColor=#ffffff>&nbsp;</TD></TR>
	<TR> <TD vAlign=top width=771 bgColor=#ffffff>
	<p align="center"><b>Ur Persoanl Details re Updated &nbsp; ....</b>
	</TD></TR> <TR> <TD vAlign=top width=771 bgColor=#ffffff>&nbsp;</TD> </TR>
	<TR> <TD vAlign=top width=771 bgColor=#ffffff><p align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p> </TD></TR>
<%
	}else
		out.println("Sorry ...!! Try Again....");
}catch(Exception e)
{ System.out.println("error"+e);}
finally
{
	ps.close();
	st.close();
	con.close();
}
%>