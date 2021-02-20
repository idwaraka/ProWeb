
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000 leftMargin=0 topMargin=0>
<%@ page session="true"%>
<%@ include file="makecon.jsp" %>
<%! int login_id1 ;%>
<%! String logid ;%>
<%! ResultSet rs=null;%>
<% try
	{
 	
	rs=st.executeQuery("select max(pro_login_id) from job_pro");
		
	if(rs.next())
	{	
	             
		login_id1=rs.getInt(1)+1;
		System.out.println("Max:"+login_id1);
      	}       
	else
	       {
	   	 login_id1=200;
	 	 System.out.println("Max:"+login_id1);
	       }

                  
	Integer login1= new Integer(login_id1);
	session.setAttribute("login1",login1);
        
	
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

<TABLE cellSpacing=0 cellPadding=0 width=780  border=0>
  <TBODY>
  <TR>
    <TD vAlign=top height=321>
      <TABLE cellSpacing=0 cellPadding=0 width="661" border=0>
     <form name="jobpro1" method="post" action="job_pro1.jsp">
        <TBODY>
        <TR>
          <TD vAlign=top width=170 
    bgColor=#ffffff>&nbsp;</TD>
          <TD vAlign=top width=324 
    bgColor=#ffffff colspan="2">
            <p align="center">&nbsp;</TD>
          <TD vAlign=top width=198 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=692 
    bgColor=#ffffff colspan="4"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;</b>
            <p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <font color="#000080">Welcome To Job Provider
            Registration page</font></b></p>
          </TD>
        </TR>
        <TR>
          <TD vAlign=top width=170 
    bgColor=#ffffff>
            <p align="center">&nbsp;</TD>
          <TD vAlign=top width=176 
    bgColor=#ffffff>
            <p align="center">&nbsp;</TD>
          <TD vAlign=top width=148 
    bgColor=#ffffff>
            <p align="center">&nbsp;</TD>
          <TD vAlign=top width=198 
    bgColor=#ffffff>
            <p align="center">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=170 
    bgColor=#ffffff>
            <p align="left"><span class="text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Password</span></TD>
          <TD vAlign=top width=176 
    bgColor=#ffffff>&nbsp;&nbsp; <input type="password" name="textfield2" size="20" tabindex="2"></TD>


          <TD vAlign=top width=148 
    bgColor=#ffffff>
            <p align="center"> First Name</TD>
          <TD vAlign=top width=198 
    bgColor=#ffffff>
            <p align="center"><input type="text" name="textfield5" size="20" tabindex="5"></TD></TR>
        <TR>
          <TD vAlign=top width=170 
    bgColor=#ffffff>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm Password</TD>
          <TD vAlign=top width=176 
    bgColor=#ffffff>
            <p align="center"><input type="password" name="textfield3" size="20" tabindex="3"></TD>
          <TD vAlign=top width=148 
    bgColor=#ffffff>
            <p align="center"> Last Name</TD>
          <TD vAlign=top width=198 
    bgColor=#ffffff>
            <p align="center"><input type="text" name="textfield6" size="20" tabindex="6"></TD></TR>
        <TR>
          <TD vAlign=top width=170 
    bgColor=#ffffff>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Designation</TD>
          <TD vAlign=top width=176 
    bgColor=#ffffff>
            <p align="center"><input type="text" name="textfield4" size="20" tabindex="4"></TD>
          <TD vAlign=top width=148 
    bgColor=#ffffff>
            <p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Mail Id. &nbsp;</TD>
          <TD vAlign=top width=198 
    bgColor=#ffffff>
            <p align="center"><input type="text" name="textfield7" size="20" tabindex="7"></TD></TR>
        <TR>
          <TD vAlign=top width=170 
    bgColor=#ffffff>&nbsp;</TD>
          <TD vAlign=top width=176 
    bgColor=#ffffff>
            &nbsp;</TD>
          <TD vAlign=top width=148 
    bgColor=#ffffff>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phone No.</TD>
          <TD vAlign=top width=198 
    bgColor=#ffffff>
            <p align="center"><input type="text" name="textfield8" size="20" tabindex="8"></TD></TR>
        <TR>
          <TD vAlign=top width=170 
    bgColor=#ffffff>&nbsp;</TD>
          <TD vAlign=top width=176 
    bgColor=#ffffff>&nbsp;</TD>
          <TD vAlign=top width=148 
    bgColor=#ffffff>&nbsp;</TD>
          <TD vAlign=top width=198 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=170 
    bgColor=#ffffff>&nbsp;</TD>
          <TD vAlign=top width=176 
    bgColor=#ffffff>&nbsp;</TD>
          <TD vAlign=top width=148 
    bgColor=#ffffff>
            <p align="right"><input type="submit" name="Submit" value="Submit" tabindex="9">
          </TD>
          <TD vAlign=top width=198 
    bgColor=#ffffff>&nbsp;&nbsp;&nbsp; <input type="reset" name="Submit2" value="Reset" tabindex="10">
          </TD></TR>
        <TR>
          <TD vAlign=top width=170 
    bgColor=#ffffff>&nbsp;</TD>
          <TD vAlign=top width=176 
    bgColor=#ffffff>&nbsp;</TD>
          <TD vAlign=top width=148 
    bgColor=#ffffff>&nbsp;</TD>
          <TD vAlign=top width=198 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=170 
    bgColor=#ffffff>&nbsp;</TD>
          <TD vAlign=top width=522 
    bgColor=#ffffff colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <font color="#6699CC">* Your Login Id Provides  after Registration Only *</font></TD>
        </TR>
        <TR>
          <TD vAlign=top width=170 
    bgColor=#ffffff>&nbsp;</TD>
          <TD vAlign=top width=522 
    bgColor=#ffffff colspan="3">&nbsp;&nbsp; </TD>
        </TR></TBODY>
    </TABLE></TD></TR></TBODY></TABLE></BODY></HTML>

