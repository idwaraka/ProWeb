<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>Resume Process</title>
</head>
<body>
  
<%@ include file="makecon.jsp" %>
<%@ page import="java.io.*"%>
<%@ page session="true"%>

<%! 	
	Statement st1=null;
	ResultSet rs,rs1=null;
	Integer tresume=null;
	int resume=1;
	int a=0;

%>

<%
	
	tresume=(Integer)session.getAttribute("resume");
	out.println(tresume);
	if(tresume==null)
	{
	 Integer resume=(Integer)session.getAttribute("slogin1");
	 session.setAttribute("resume",resume);
	 }
	else
	resume=tresume.intValue();	
	session.setAttribute("resume",new Integer(resume));
	System.out.println(resume);

    try
	{
	st1=con.createStatement();
 	rs=st.executeQuery("select * from seek_resume");
	while(rs.next())
	a++;
	System.out.println(a);	
%>
<TABLE cellSpacing=0 cellPadding=0 width=780 border=0 height="186">

 <TBODY>
  <TR>
    <TD vAlign=top width=780 height=9>
      &nbsp;</TD></TR>
  <TR>
    <TD height=21></TD></TR>
  <TR>
    <TD vAlign=top height=156>
    <p align="center"><b><i><font color="#BE7DFF" size="4">Resume processing</font></i></b></p>

    <p align="center">
      
     &nbsp;

<table border="1" cellpadding="2" width="675">
  <tr>
    <td width="89">Seek_Code</td>
    <td width="106">Qualification</td>
    <td width="101">Branch</td>
    <td width="93">SkillSet</td>
    <td width="80">Other Qualifications</td>
    <td width="80">Expereince</td>
    <td width="154">Accept/Reject</td>
  </tr>
  <tr>

<%	
	if(resume<=a)
	{
	System.out.println(resume);
	System.out.println(a);
        System.out.println("welcome");
	
 	rs1=st.executeQuery("select * from seek_resume where seek_code="+resume);
	System.out.println("welcome1");
	if(rs1.next())
	{
	System.out.println("welcome2..");
	%>
	 <form action="resumeprocessing1.jsp">
  	   <tr>	
               <td width="89" height="55" name="a">
               <p align="center">
                <%out.println(rs1.getInt(1));%></p>
	  </td>
	
	  <td width="106" height="55">  <p align="center">
 
	   <%out.println(rs1.getString(2));%></p>
	  </td>
	  <td width="101" height="55">  <p align="center">
 
	   <%out.println(rs1.getString(3));%></p>
	  </td>
	  <td width="93" height="55"><p align="center">
 
	   <%out.println(rs1.getString(4));%></p>
  
	  </td>
	   <td width="80" height="55"><p align="center">  
	   <%out.println(rs1.getString(5));%></p> 

	  </td>
	  <td width="80" height="55"><p align="center">  
	   <%out.println(rs1.getInt(6));%></p> 

	  </td>

	  <td width="154" height="55">  <p align="left">
	  
        <select size="1" name="D1">
          <option value="Accept">Accept</option>
          <option value="Reject">Reject</option>
           </select>	
          </td>
           <td>
    <input type="submit" value="send" name="B1">
    </td>
	   </tr> 
	    </form>
                  <%}
}
}
catch(Exception e)
{}

System.out.println("welcome3..");
%>
    </TABLE>
</TBODY>
</TABLE>
<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
  
<p align="center">&nbsp;</p>
 
</BODY></HTML>
