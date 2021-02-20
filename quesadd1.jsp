
<%@ include file="makecon.jsp" %>
<%@page session="true"%>
<%      int it1=Integer.parseInt(request.getParameter("textfield1")); 
	String st2=request.getParameter("question");
	String st3=request.getParameter("textfield3");	
	String st4=request.getParameter("textfield4");
	
	String st5=request.getParameter("textfield5");
	String st6=request.getParameter("textfield6");
	String st7=request.getParameter("textfield7");
%>

<% Integer logid=(Integer)session.getAttribute("login1");%>

<%! PreparedStatement ps=null;%>
<% 
int n1=logid.intValue();



try
	{
 	ps=con.prepareStatement("insert into test_queries values(?,?,?,?,?,?,?)");
	ps.setInt(1,it1);
	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);	
	ps.setString(6,st6);
	ps.setString(7,st7);
	int j=ps.executeUpdate();
		if (j>0)
		{  %>           
			
			<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000  leftMargin=0 topMargin=0>
<TABLE cellSpacing=0 cellPadding=0 width=780  border=0 height="475">
  <TBODY>
  <TR>
    <TD vAlign=top height=323>
      <TABLE cellSpacing=0 cellPadding=0 width="790" border=0 height="321">
        <TBODY>
        <TR>
          <TD vAlign=top width=768 
    bgColor=#ffffff height="33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </TD>
        <TR>
          <TD vAlign=top width=768 
    bgColor=#ffffff height="32">&nbsp;
            </TD>
        <TR>
          <TD vAlign=top width=768 
    bgColor=#ffffff height="32">&nbsp;
            </TD>
        <TR>
          <TD vAlign=top width=768 
    bgColor=#ffffff height="32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#800000">
            </font>
            <b>                               
             <font color="#000080">Question   Added to data Base...</font></b>

</TD>
        <TR>
          <TD vAlign=top width=768 
    bgColor=#ffffff height="32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<font color="#000080">&nbsp;U
            want to add One More Question</font><a href="quesadd.jsp" target="right"> 
            Yes</a> ?
            </p>
            </TD>
        <TR>
          <TD vAlign=top width=768 
    bgColor=#ffffff height="32">&nbsp;
            </TD>
        <TR>
          <TD vAlign=top width=768 
    bgColor=#ffffff height="32">&nbsp;
            </TD>
        <TR>
          <TD vAlign=top width=768 
    bgColor=#ffffff height="32">&nbsp;
            </TD>
        <TR>
          <TD vAlign=top width=768 
    bgColor=#ffffff height="32">&nbsp;
            </TD>
        <TR>
          <TD vAlign=top width=768 
    bgColor=#ffffff height="32">&nbsp;
            </TD>
                  </TBODY></TABLE></TD></TR></TBODY>       
                
        </TABLE>
			<h1> sorry u cant't add the Question and Try Again...</h1>
                           
			
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
</BODY></HTML>

