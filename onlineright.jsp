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
<% String name=(String)session.getAttribute("str1");%>               

<div align="center">
  <center>
  <table border="0" width="88%" cellpadding="4" height="1" cellspacing="4">
    <tr>
      <td width="100%" height="0" bordercolor="#B3B3FF">
        &nbsp;
        <font color="#B3B3FF"><b><font size="5">W</font></b>elcome &nbsp;&nbsp;&nbsp;&nbsp;
        </font><font color="Red" size="5"> <%=name%>....&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </font>
        <p><font color="Red" size="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </font><font size="5" color="#B3B3FF">U want to Start the Online Test <a href="onlinetest.jsp"> 
        Yes..</a>&nbsp; <a href="crs.htm" target="_top">No..</a></font></p>
        <p><img border="0" src="background.jpg" width="626" height="228" align="right">
      </td>
    </tr>
  </table>
  </center>
</div>
</body>

</html>
