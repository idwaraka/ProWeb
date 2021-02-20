<%@ include file="makecon.jsp" %>
<%@ page import="java.sql.Date"%>
<%@page session="true"%>
<% Integer slogid=(Integer)session.getAttribute("slogin1");%>

<% 
int sn2=slogid.intValue();
System.out.println("snew1"+sn2);
%>
<%!	ResultSet rs=null;
	PreparedStatement ps=null;
%>
<%
String st1=request.getParameter("S1");
%>  
<%! int fcode;%>
<% try
	{
 	
	rs=st.executeQuery("select max(f_code) from feed_back");
	if(rs.next())
	{	
		fcode=rs.getInt(1)+1;
		System.out.println("Max:"+fcode);
	}
	else
	{
	   	 fcode=1000;
	 	 System.out.println("Max:"+fcode);
	}


	ps=con.prepareStatement("insert into feed_back values(?,?,?)");
	
	ps.setInt(1,fcode);
	ps.setString(2,st1);
	ps.setInt(3,sn2);


	int i=ps.executeUpdate();
	
		if (i>0)
		{      %>       

		<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>Ur Feed Back was sent to Job provider......</b>
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
			out.println("Sorry !...");
			
		}




}	
catch(Exception e)
{
 System.out.println("error"+e);
}
finally
{
	ps.close();
	rs.close();
	st.close();
	con.close();
}

%>