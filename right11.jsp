<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>CRS is web</title>
</head>

<body>
<%@ include file="makecon.jsp" %>
<%@page session="true"%>
<% Integer slogid=(Integer)session.getAttribute("slogin1");%>

<% 
int n1=slogid.intValue();
int n2=n1;
%>
<%!  	
	ResultSet rs=null;
	ResultSet rs1=null;
	PreparedStatement ps=null;
	Statement st1=null;
	
%>
<%
try{
           String sds="";
            rs=st.executeQuery("select * from seek_login where seek_code="+n1);
          while(rs.next())
          {	
	System.out.println("welcome:"+n1);
	System.out.println("welcome:"+n2);
     
	rs1=st.executeQuery("select * from seek_per where seek_code="+n2);
	System.out.println("welcome1"+n2);	
	if(rs1.next())
	{
	System.out.println("welcome1"+n1);	
              sds=rs1.getString(2);
	System.out.println("Name"+sds);	
	}
	%>
               

<div align="center">
  <center>
  <table border="0" width="88%" cellpadding="4" height="1" cellspacing="4">
    <tr>
      <td width="100%" height="0" bordercolor="#B3B3FF">
        &nbsp;
        <font color="#B3B3FF"><b><font size="5">W</font></b>elcome &nbsp;&nbsp;&nbsp;&nbsp;
        </font><font color="Red" size="5"> <%=sds%>"....&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </font>
        <p><font color="Red" size="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </font><font size="5" color="#B3B3FF">U want to Start the Online Test <a href="onlinetest.jsp" target="_top"> 
        Yes..</a>&nbsp; <a href="crs.htm" target="_top">No..</a></font></p>
        <p><img border="0" src="background.jpg" width="626" height="228" align="right">
      </td>
    </tr>
  </table>
  </center>
</div>

<%
}
}catch(Exception e)
	{
	 System.out.println("error:"+e);
	}
	finally
	{
	ps.close();	
	rs.close();
	st.close();
	rs1.close();	
	st1.close();
	con.close();
	}	
%>
</body>

</html>
