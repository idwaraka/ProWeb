<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>CRS is web</title>
</head>

<body>
<%
String ss=(String)session.getAttribute("str1");
%>

<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!  	ResultSet rs=null;
%>

<% try
	{
 	
	rs=st.executeQuery("select * from test_queries");
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
  10.0pt;font-family:Verdana">Hi&nbsp; <b><span style="color: #FF6600"> <%out.println(ss);%></span></b>&nbsp;&nbsp;
      </span><span style="font-size:7.5pt;font-family:Verdana">Begin your 
      test.&nbsp;</span></p>
    </td>
    </tr>
    <tr>
    <td width="661" colspan="4" style="height: 7.5pt; padding: 2.25pt" align="center">
      <div class="MsoNormal" align="center" style="text-align:center;mso-line-height-alt:
  7.5pt">
        <hr size="3" width="100%" noshade color="green" align="center">
      </div>
      <p class="MsoNormal" align="right" style="text-align:right;mso-line-height-alt:
  7.5pt">&nbsp;</p>
    </td>
    </tr>
    <form action="onlinecheck.jsp" method="post">
   <% while(rs.next())
	{%>
    
    <tr>
    <td width="14" style="height: 15.75pt; padding: 2.25pt" align="center">
      
      <p class="MsoNormal" align="right" style="text-align:right"><span style="font-size:7.5pt;font-family:Verdana">No</span></p>
    </td>
    <td width="48" style="height: 15.75pt; padding: 2.25pt">
      <p class="MsoNormal" align="center" style="text-align:center"></p>
    </td>
    <td width="4" style="height: 15.75pt; padding: 2.25pt">
      <p class="MsoNormal"><b><%=rs.getInt(1)%>&nbsp;:</b></p>
    </td>
    
    <td width="571" valign="top" style="height: 15.75pt; padding: 2.25pt">
      <p class="MsoNormal"><span style="font-size:10.0pt;font-family:Verdana"><%=rs.getString(2)%>?.</span></p>
    </td>
    </tr>
    <tr>
    <td width="14" style="height: 79.5pt; padding: 2.25pt" align="center">
      <p class="MsoNormal" align="right" style="text-align:right">&nbsp;<o:p>
      </o:p>
      </p>
    </td>
    <td width="48" style="height: 79.5pt; padding: 2.25pt">
      <p class="MsoNormal" align="center" style="text-align:center">&nbsp;<o:p>
      </o:p>
      </p>
    </td>
    <td width="4" style="height: 79.5pt; padding: 2.25pt">
      <p class="MsoNormal">&nbsp;<o:p>
      </o:p>
      </p>
    </td>
    <td width="571" style="height: 79.5pt; padding: 2.25pt">
      <table border="0" cellpadding="0" width="500" style="width:375.0pt;mso-cellspacing:
   1.5pt">
        <tr>
          <td width="21" valign="top" style="width:15.75pt;padding:.75pt .75pt .75pt .75pt">
            <p class="MsoNormal" align="center" style="text-align:center"><b><span style="font-size:7.5pt;font-family:Verdana">A</span></b></p>
          </td>
          <td width="519" colspan="2" valign="top" style="width:389.25pt;padding:.75pt .75pt .75pt .75pt">
            <p class="MsoNormal"><span style="font-size:7.5pt;font-family:Verdana"><%=rs.getString(3)%></span></p>
          </td>
        </tr>
        <tr>
          <td width="21" valign="top" style="width:15.75pt;padding:.75pt .75pt .75pt .75pt">
            <p class="MsoNormal" align="center" style="text-align:center"><b><span style="font-size:7.5pt;font-family:Verdana">B</span></b></p>
          </td>
          <td width="421" colspan="2" valign="top" style="width:315.75pt;padding:.75pt .75pt .75pt .75pt">
            <p class="MsoNormal"><span style="font-size:7.5pt;font-family:Verdana"><%=rs.getString(4)%></span></p>
          </td>
        </tr>
        <tr>
          <td width="21" valign="top" style="width:15.75pt;padding:.75pt .75pt .75pt .75pt">
            <p class="MsoNormal" align="center" style="text-align:center"><b><span style="font-size:7.5pt;font-family:Verdana">C</span></b></p>
          </td>
          <td width="421" colspan="2" valign="top" style="width:315.75pt;padding:.75pt .75pt .75pt .75pt">
            <p class="MsoNormal"><span style="font-size:7.5pt;font-family:Verdana"><%=rs.getString(5)%></span></p>
          </td>
        </tr>
        <tr>
          <td width="21" valign="top" style="width:15.75pt;padding:.75pt .75pt .75pt .75pt">
            <p class="MsoNormal" align="center" style="text-align:center"><b><span style="font-size:7.5pt;font-family:Verdana">D</span></b></p>
          </td>
          <td width="421" colspan="2" valign="top" style="width:315.75pt;padding:.75pt .75pt .75pt .75pt">
            <p class="MsoNormal"><span style="font-size:7.5pt;font-family:Verdana"><%=rs.getString(6)%></span></p>
          </td>
        </tr>
        <tr>
          <td width="21" style="width:15.75pt;padding:.75pt .75pt .75pt .75pt">
            <p class="MsoNormal" align="center" style="text-align:center">&nbsp;<o:p>
            </o:p>
            </p>
          </td>
          <td width="264" style="width:2.75in;padding:.75pt .75pt .75pt .75pt">
            <p align="right" style="text-align:right"><span style="font-size:7.5pt;
    font-family:Verdana">Select Answer</span></p>
          </td>
          <td width="157" style="width:117.75pt;padding:.75pt .75pt .75pt .75pt">
            <p class="MsoNormal"><span style="font-size:7.5pt;font-family:Verdana">
            
            <select NAME="ans_1" size="1">
            <option><%=rs.getString(4)%></option>
                    <option><%=rs.getString(4)%></option>
            </select>&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
          </td>
        </tr>
      </table>
      <p class="MsoNormal"><o:p>
      </o:p>
      </p>
    </td>
    </tr>
    <tr>
    <td width="661" colspan="4" style="height: 2.25pt; padding: 2.25pt" align="center"></td>
    </tr>
    <tr>
    <td width="661" colspan="4" style="height: 2.25pt; padding: 2.25pt" align="center">
      <div class="MsoNormal" align="center" style="text-align:center;mso-line-height-alt:
  2.25pt">
        <hr size="1" width="100%" noshade color="green" align="center">
      </div>
      <p class="MsoNormal" align="right" style="text-align:right;mso-line-height-alt:
  2.25pt">&nbsp;</p>
    </td>
    </tr>
    <%}    
}
catch(Exception e)
{
 System.out.println("error"+e);
}
finally
{
	rs.close();
	st.close();
	con.close();
}  
%>

    <tr>
    <td width="661" colspan="4" style="height: 3.75pt; padding: 2.25pt" align="center">
      <p class="MsoNormal" align="right" style="text-align:right;mso-line-height-alt:
  3.75pt"><input TYPE="submit" NAME="B1"></p>
    </td>
    </tr>
    <tr>
      <td width="20" height="337" align="center"></td>
    </tr>
    </form>
  </table>
  </center>
</div>
<p class="MsoNormal">&nbsp;<o:p>
</o:p>
</p>

</body>

</html>
