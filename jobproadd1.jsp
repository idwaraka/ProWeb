
<%@ include file="makecon.jsp" %>
<%@page session="true"%>
<%      int it1=Integer.parseInt(request.getParameter("textfield1")); 
	String st2=request.getParameter("textfield2");
	String st3=request.getParameter("textfield3");	
	String st4=request.getParameter("textfield4");
	
	String st5=request.getParameter("textfield5");
	double dt6=Double.parseDouble(request.getParameter("textfield6"));
	int it7=Integer.parseInt(request.getParameter("textfield7"));
	String st8=request.getParameter("textfield8");
	
		
	
	String st9=request.getParameter("textfield9");	
	String st10=request.getParameter("textfield10");	
	String st11=request.getParameter("textfield11");	
%>

<% Integer logid=(Integer)session.getAttribute("login1");%>

<%! PreparedStatement ps=null;%>
<% 
int n1=logid.intValue();



try
	{
 	ps=con.prepareStatement("insert into job_requ values(?,?,?,?,?,?,?,?,?,?,?)");
	ps.setInt(1,it1);
	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);
	ps.setDouble(6,dt6);
	ps.setInt(7,it7);
	ps.setString(8,st8);
	ps.setString(9,st9);
	ps.setString(10,st10);
	ps.setString(11,st11);

	int j=ps.executeUpdate();
		if (j>0)
		{ %><TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>JOB Details&nbsp; added Successfully...</b>
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
<p><a href="jobprojob.htm">Back</a></p>

          </TD></TR>
            
			                               
  			

	
		<%}
		else
		{%>
		<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>Sorry !.. Try Again..</b>
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
<p align="center"><a href="jobprojob.htm">Back</a></p>

          </TD></TR>	
			
		<%}
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
