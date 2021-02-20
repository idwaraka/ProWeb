<%@ include file="makecon.jsp" %>
<%@page session="true"%>
<%!  	
	ResultSet rs=null;
	PreparedStatement ps=null;
	String spass,spass1,spass2;
%>
<%
	Integer slogid=(Integer)session.getAttribute("slogin1");
	int sn2=slogid.intValue();
	spass=request.getParameter("pass");
	spass1=request.getParameter("pass1");
    spass2=request.getParameter("retypepassword");	
try
{
	rs=st.executeQuery("select * from seek_login where seek_code="+sn2);
	if(rs.next())
	{	
		if((rs.getString(2).compareTo(spass)) == 0)
		{
	      if((spass1.compareTo(spass2)) == 0)
	       {
ps=con.prepareStatement("update seek_login set seek_pwd=? where  seek_code="+sn2);
				ps.setString(1,spass1);
				int j=ps.executeUpdate();
				PreparedStatement pst=con.prepareStatement("update online_testlogin set seek_pwd=? where  seek_code=" + sn2);
				pst.setString(1,spass1);
				int l=pst.executeUpdate();
				if (j>0	&& l>0)
				{    %>         
<TR> <TD vAlign=top width=771 bgColor=#ffffff>&nbsp;</TD></TR>
<TR> <TD vAlign=top width=771 bgColor=#ffffff>
<p align="center"><b>U have Updated your Password Successfully...</b> </TD></TR>
<%}	else	{%>         
<TR> <TD vAlign=top width=771 bgColor=#ffffff>&nbsp;</TD></TR>
<TR> <TD vAlign=top width=771 bgColor=#ffffff>
<p align="center"><b>Sorry ...! Not Updated</b> </TD></TR>
<%}    }    else	{ %>
<TR> <TD vAlign=top width=771 bgColor=#ffffff>&nbsp;</TD></TR>
<TR> <TD vAlign=top width=771 bgColor=#ffffff>
<p align="center"><b>Pls  Check ur Retype and New Password...</b></TD></TR>
<%}    }    else   {%>
<TR> <TD vAlign=top width=771 bgColor=#ffffff>&nbsp;</TD></TR>
<TR> <TD vAlign=top width=771 bgColor=#ffffff>
<p align="center"><b>Pls  Check Ur Old Password...</b></TD></TR>
<% }   }	
}catch(Exception e)
{	 System.out.println("error"+e);	}
finally
{
	ps.close();	
	rs.close();
	st.close();
	con.close();
}	
%>
<!-- <TR> <TD vAlign=top width=771 bgColor=#ffffff>&nbsp;</TD></TR>
<TR> <TD vAlign=top width=771 bgColor=#ffffff><p align="center"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   </p>  </TD></TR> -->