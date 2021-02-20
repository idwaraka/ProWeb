<%@ include file="makecon.jsp" %>
<%@page session="true"%>
 

<%! int j;%>
<%! int ques_no1;%>

<%   ques_no1=Integer.parseInt(request.getParameter("textfield1"));%>
<% try
	{
 	j=st.executeUpdate("delete from test_queries where ques_no="+ques_no1);
	if(j>0)
	{
		%>             
			                               
  			
<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>Deleted  Question From Database....</b>
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



	<%
	}
	else
	{%>             
			                               
  			
<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>Sorry Try Again....</b>
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

}

catch(Exception e)
{
	
	
 System.out.println("error"+e);
}

finally
{
	
	st.close();
	con.close();
}
%>

