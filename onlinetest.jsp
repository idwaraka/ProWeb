<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>CRS is web</title>
</head>

<body>
<%@ page import="java.sql.*"%>
<%
String ss=(String)session.getAttribute("str1");
%>
<%@ include file="makecon.jsp"%>


<%! 	
	Statement st1=null;
	ResultSet rs,n=null;
	int a=0,tqno,result=0;
                int min=3;
	Integer tqnos,tresult=null;
	
%>
<%

	tresult=(Integer)session.getAttribute("count");
	System.out.println("tresult"+tresult);
	if(tresult==null)
	{
	result=0;
	}
	else
	{
	result=tresult.intValue();
	}
	
	tqnos=(Integer)session.getAttribute("tqno");
	System.out.println("tqnos"+tqnos);
	if(tqnos==null)
	{
	   tqno=1;	
	        session.setAttribute("tqno",new Integer(tqno));
    }
	else
	{
	tqno=tqnos.intValue();
	session.setAttribute("tqno",new Integer(tqno));
	}
	float per=(result*100)/10;

	if(tqno==11)
	{
		out.println("<span style=font-size:13.5pt;font-family:Verdana;color:green>");
		out.println("<br><br><br><center>Test is  Completed");
		out.println(" U r result is <font color=blue>"+result+"</fnot></center>");
		out.println("<center> U got <font color=blue>"+per+"%</fnot></center>");
		if(per>=80){
			out.println("<center>U have passed the Exam</center>");
			out.println("<center>You are qualified to attend the interview</center>");}
		else
			out.println("<center>Sorry u r failed in this Exam.</center>");
		out.println("<br><center>Goto Home page <a href=crs.htm link=pink target=_parent>Go</a>");
		session.invalidate();
	}
	else
	   	if(tqno<=10)
		{
		   try
			{
			st=con.createStatement();
			rs=st.executeQuery("select * from test_queries where ques_no="+tqno);
			if(rs.next())
			{
%>
<p>&nbsp;</p>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" width="669" height="337">
    <tr>
    <td width="661" colspan="4" style="height: 4.5pt; padding: 2.25pt" align="center">
      <p align="center" style="text-align:center;mso-line-height-alt:4.5pt"><span style="font-size:13.5pt;font-family:Verdana;color:green">Welcome 
      to Online Test</span></p>
    </td>
    </tr>
    <tr>
    <td width="14" style="height: 3.75pt; padding: 2.25pt" align="center">
      <p class="MsoNormal" align="right" style="text-align:right">&nbsp;<span style="font-size:4.0pt;mso-bidi-font-size:12.0pt"><o:p>
      </o:p>
      </span></p>
    </td>
    <td width="48" style="height: 3.75pt; padding: 2.25pt">
      <p class="MsoNormal" align="center" style="text-align:center">&nbsp;<span style="font-size:4.0pt;mso-bidi-font-size:12.0pt"><o:p>
      </o:p>
      </span></p>
    </td>
    <td width="4" style="height: 3.75pt; padding: 2.25pt">
      <p class="MsoNormal">&nbsp;<span style="font-size:4.0pt;mso-bidi-font-size:12.0pt"><o:p>
      </o:p>
      </span></p>
    </td>
    <td width="571" valign="top" style="height: 3.75pt; padding: 2.25pt">
      <p class="MsoNormal" style="mso-line-height-alt:3.75pt"><span style="font-size:
  10.0pt;font-family:Verdana"><font color="#008080"><b>Hi</b></font>&nbsp; <b><span style="color: #FF6600"><%out.println(ss);%>&nbsp;&nbsp;
      </span><span style="font-size:7.5pt;font-family:Verdana"><font color="#008080">Begin your 
      test.&nbsp;</font></span>
      <span style="color: #FF6600">
<table width="623">
    <tr>
    <td width="593" colspan="4" style="height: 7.5pt; padding: 2.25pt" align="center">
      <div class="MsoNormal" align="center" style="text-align:center;mso-line-height-alt:
  7.5pt">
        <hr size="3" width="100%" noshade color="green" align="center">
      </div>
      <p class="MsoNormal" align="right" style="text-align:right;mso-line-height-alt:
  7.5pt">&nbsp;</p>
    </td>
    </tr>
    <form action="onlinecheck.jsp" method="post">
   
    
      </span></b>
   
    
    <tr>
    <td width="62" style="height: 15.75pt; padding: 2.25pt" align="center">
      <p class="MsoNormal" align="right" style="text-align:right"><span style="font-size:7.5pt;font-family:Verdana"><font color="#008080"><b>Q</b></font></span></span><b><span style="font-size: 10.0pt; font-family: Verdana; color: #FF6600">
      .<span style="font-size:7.5pt;font-family:Verdana"> No :- </span></p>
    </td>
    <td width="8" style="height: 15.75pt; padding: 2.25pt">
      <p class="MsoNormal" align="center" style="text-align:center"></p>
    </td>
    <td width="11" style="height: 15.75pt; padding: 2.25pt">
      <p class="MsoNormal"><b><%=rs.getInt(1)%>&nbsp;:</b></p>
    </td>
    
    <td width="500" valign="top" style="height: 15.75pt; padding: 2.25pt">
      <p class="MsoNormal"><span style="font-size:10.0pt;font-family:Verdana"><%=rs.getString(2)%>?.</span></p>
    </td>
    </tr>
    <tr>
    <td width="62" style="height: 79.5pt; padding: 2.25pt" align="center">
      <p class="MsoNormal" align="right" style="text-align:right">&nbsp;<o:p>
      </o:p>
      </p>
    </td>
    <td width="8" style="height: 79.5pt; padding: 2.25pt">
      <p class="MsoNormal" align="center" style="text-align:center">&nbsp;<o:p>
      </o:p>
      </p>
    </td>
    <td width="11" style="height: 79.5pt; padding: 2.25pt">
      <p class="MsoNormal">&nbsp;<o:p>
      </o:p>
      </p>
    </td>
    </span>
    <td width="500" style="height: 79.5pt; padding: 2.25pt">
      <table border="0" cellpadding="0" width="500" style="mso-cellspacing: 1.5pt">
        <tr>
          <td width="121" style="padding: .75pt">
            <p align="right" style="text-align:right"><span style="font-family: Verdana; color: #FF6600"><font size="2">Select Ur Answer</font></span></p>
          </td>
          <span style="font-size: 10.0pt; font-family: Verdana; color: #FF6600">
          <td width="124" style="padding: .75pt">
            <p class="MsoNormal"><span style="font-size:7.5pt;font-family:Verdana">
            
            <select NAME="D1" size="1">
            <option><%=rs.getString(3)%></option>
            <option><%=rs.getString(4)%></option>
            <option><%=rs.getString(5)%></option>
            <option><%=rs.getString(6)%></option>
            </select>&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
                                   
          </td>
        </tr>
      </table>
      <p class="MsoNormal"><o:p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:
  10.0pt;font-family:Verdana"><b><span style="color: #FF6600"><input TYPE="submit" NAME="B1" value=" Next "></span></b></span></o:p>
      </p>
    </td>
    </tr>
    <tr>
    <td width="593" colspan="4" style="height: 2.25pt; padding: 2.25pt" align="center"></td>
    </tr>
    <tr>
    <td width="593" colspan="4" style="height: 2.25pt; padding: 2.25pt" align="center">
      <div class="MsoNormal" align="center" style="text-align:center;mso-line-height-alt:
  2.25pt">
        <hr size="1" width="100%" noshade color="green" align="center">
      </div>
      <p class="MsoNormal" align="right" style="text-align:right;mso-line-height-alt:
  2.25pt">&nbsp;</p>
    </td>
</tr>

<tr>
    <td width="593" colspan="4" style="height: 3.75pt; padding: 2.25pt" align="center">
      <p class="MsoNormal" align="right" style="text-align:right;mso-line-height-alt:
  3.75pt"></p>
    </td>
    </tr>
    <tr>
      <td width="66" height="337" align="center"></td>
    </tr>
    </form>
    <td width="66">
<p class="MsoNormal">&nbsp;<o:p>
</o:p>
</p>
      </center>
      <p align="left">
<%
			}			


			}catch(Exception e){out.println(e);}
		}

%>