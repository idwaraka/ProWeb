<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
	
<%  System.out.println("supdate1.jsp");    
String st1=request.getParameter("S1");		
%>
<% Integer slogid=(Integer)session.getAttribute("slogin1");%>

<% 
int n1=slogid.intValue();
%>
 

<%!		PreparedStatement ps=null;
%>
<% 


try
	{
	ps=con.prepareStatement("update seek_resumeupdate set seek_resumeupdate=? where seek_code="+n1);
	ps.setString(1,st1);

	int j=ps.executeUpdate();
		if (j>0)
		{      %>       
		<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>Ur Resume is&nbsp; Successfully Updated....</b>
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </p>
          </TD></TR>	                               
  			
			
		<%}
		else
		{
			out.println("Sorry ...!!");
		}
}
catch(Exception e)
{
 System.out.println("error"+e);
}
finally
{
	ps.close();
	st.close();
	con.close();
}
%>
