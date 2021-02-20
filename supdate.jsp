<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000  leftMargin=0 topMargin=0>
<%@ include file="makecon.jsp" %>
<%@page session="true"%>

<%!  	
	ResultSet rs=null;
	
%>
<%! int j;%>
<%! int jcodeedit;%>
<%! int jcode1;%>

<% Integer slogid=(Integer)session.getAttribute("slogin1");
System.out.println("supdate.jsp");%>

<% 
int n1=slogid.intValue();%>

<% try
	{System.out.println("supdate.jsp1:"+n1);
 	rs=st.executeQuery("select seek_resumeupdate from seek_resumeupdate where seek_code="+n1);

	System.out.println("supdate.jsp2");
	if(rs.next())
	{System.out.println("in if");
	%>	        
                
    
<TABLE cellSpacing=0 cellPadding=0 width=780 border=0>
  <TBODY>
<form name="post" action="supdate1.jsp" method="post">
  <TR>
    <TD vAlign=top height=321>
      <TABLE cellSpacing=0 cellPadding=0 width="790" border=0>
        <TBODY>
        <TR>
          <TD vAlign=top width=772 
    bgColor=#ffffff>&nbsp;<p>&nbsp;&nbsp; 
            </p>
                        <p>&nbsp;&nbsp;</p>          <p><font size="4" color="#4583C0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Please paste your Resume&nbsp; Here&nbsp;</font></p>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <textarea rows="3" name="S1" cols="39" value="<%=rs.getString("seek_resumeupdate")%>" tabindex="1"></textarea></p>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="submit" value="Update" name="2" tabindex="2">&nbsp;&nbsp;&nbsp;
              <input type="reset" value="Clear" name="B2" tabindex="3"></p>
            
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
          </TD>
        </TR>
        </TBODY></TABLE></TD></TR>

</form></TBODY></TABLE>

<%}
else
	{
           response.sendRedirect("error.htm");  
	}
}


catch(Exception e)
{System.out.println("error in supdate.jsp:"+e);}
finally
{
	rs.close();
	st.close();
	con.close();
}

%>

</BODY></HTML>
