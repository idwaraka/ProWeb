


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000  leftMargin=0 topMargin=0>

<%@ include file="makecon.jsp" %>
<%!
	ResultSet rs=null;
%>
<%! int j;%>
<%! int jcodeedit;%>
<%! int jcode1;%>
<% System.out.println("welcome");%>
<% jcodeedit=Integer.parseInt(request.getParameter("codeedit").trim());
	
%>

<%
	
	ResultSet rs=st.executeQuery("select * from job_requ where job_code="+jcodeedit);
	if(rs.next())
	{	
		
	System.out.println("job edit  1:");
                if(rs.getInt(1)==jcodeedit)
                 {   
					
		jcode1=jcodeedit;
		
%>
<TABLE cellSpacing=0 cellPadding=0 width=780 bgColor=#6699cc border=0>
<form name="jobcodeedit" action="jobproedit.jsp" method="post">
  <TBODY>
  <TR>
    <TD vAlign=top height=321>

      <TABLE cellSpacing=0 cellPadding=0 width="784" border=0 height="353">
       <form name="jobcode11" method="post" action="jobproedit.jsp">
        <TBODY>
        <TR>
          <TD vAlign=top width=767 
    bgColor=#ffffff colspan="4" height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=767 
    bgColor=#ffffff colspan="4" height="36">
            <p align="center">
              <b>
              <font color="#6699CC">
              Updating the Old Requirements</font></b>
            <p align="center">
              &nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="31"><span class="text">&nbsp;&nbsp;&nbsp; Job Code</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="31">
            <p align="center"><input type="text" name="textfield1" value='<%=jcode1%>' size="20" tabindex="1" ReadOnly>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="31">&nbsp;Job Name 
                &nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="31"><input type="text" name="textfield2" value='<%=rs.getString(2)%>'  size="20" tabindex="5">
          </TD></TR>


        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="31"><span class="text">&nbsp;&nbsp;&nbsp; Qualification&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="31">
            <p align="center"><input type="text" name="textfield3"value='<%=rs.getString(3)%>'size="20" tabindex="2">
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="31">&nbsp;Required Skills&nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="31"><input type="text" name="textfield4" value='<%=rs.getString(4)%>'size="20" tabindex="6">
          </TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp; Responsibilites &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">
            <p align="center"><input type="text" name="textfield5" value='<%=rs.getString(5)%>' size="20" tabindex="3">
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;Required Experience&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26"><input type="text" name="textfield6" value='<%=rs.getFloat(6)%>'size="20" tabindex="7">
          </TD></TR>
        
	
	
	<TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="36">&nbsp;&nbsp;&nbsp; Vacancies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="36">
            <p align="center"> 
                <input type="text" name="textfield7" size="20" value='<%=rs.getInt(7)%>' tabindex="4">
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="36">&nbsp;Created 
                by &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="36"><input type="text"   name="textfield8" size="20" value='<%=rs.getString(8)%>' tabindex="8" >
          </TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="38" rowspan="2">&nbsp;&nbsp;&nbsp; Created On&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="19">
            <p align="center"><input type="text" name="textfield9" value='<%=rs.getString(9)%>'  size="20" tabindex="9">
            </p>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="19">&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="19">
            <p align="center">(dd/mm/yyyy)
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="19">&nbsp; LastDate</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="19"><input type="text" name="textfield10" value='<%=rs.getString(10)%>' size="20" tabindex="11">
          </TD>
        </TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp;&nbsp; Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">
            <p align="center">&nbsp; 
                <input type="text" name="textfield11" value='<%=rs.getString(11)%>' size="20" tabindex="10">
            </p>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">
            <p align="center">(dd/mm/yyyy)</TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">
            <p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" name="Submit" value="Update" tabindex="12">&nbsp;&nbsp;&nbsp;
            </p>
          </TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="25">&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="25">&nbsp;</TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="25">&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="25">&nbsp;</TD></TR></TBODY>


</TABLE></TD></TR></TBODY></form></TABLE>

	<%
	  	
	}
	}
	else
	{%>
<table>
	<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>Sorry could not find the record...</b>
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


%>
</BODY> 