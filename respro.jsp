<%@ include file="makecon.jsp" %>
<%@ page import="java.io.*"%>
<%@ page session="true"%>

<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>Resume Process</title>
<Script>
function checkit(R) {
var tg=document.forms[0];
 document.forms[0].exp.disabled=(!R.checked)
 document.forms[0].quali.disabled=(R.checked)
}
</script>
</head>
<body>

<TABLE cellSpacing=0 cellPadding=0 width=780 border=0 height="186">

<form action="resumepro.jsp" method="post">
  <TR>
    <TD vAlign=center height=70 >
    <p align="center"><b><i><font color="#BE7DFF" size="4">Resume processing</font></i></b></p>

<tr>


<td width="131" align=center height="55"><p align=center><font color="#0000FF">Job Seeker Experience in number</font>
Experience<input type="checkbox" name="C" value="EXP" onclick=checkit(this); checked><INPUT type="text" name="exp"></p>
<!--<p align="center">Qualification<SELECT name="quali" disabled size=1 tabIndex=18> <OPTION selected>Select
          Highest Degree<OPTION value="BE/B.Tech">BE/B.Tech<OPTION value="ME/M.Tech">ME/M.Tech<OPTION 
        value="MCA">MCA</OPTION><OPTION 
        value="MSc. Computer Science">MSc. Computer Science</OPTION><OPTION 
        value="BSc. Computer Science/BCA">BSc. Computer Science/BCA</OPTION></SELECT></p><input type="submit" name="Submit" value="search" align = center>--><input type="submit" name="Submit" value="search" align = center>
	</tr>
</form>
</tr>

</TABLE>

 
</BODY></HTML>
