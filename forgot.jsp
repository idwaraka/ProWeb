<%@ include file="makecon.jsp" %>
<%@page session="true"%>

<%!  	
	ResultSet rs=null;
	PreparedStatement ps=null;
%>
<%! String spass,spass1,spass2;%>




<%  	int fid=Integer.parseInt(request.getParameter("textfield1"));

%>



<% try
	{
 	rs=st.executeQuery("select * from seek_login where seek_code="+fid);

	while(rs.next())
          {	
		
	       int scode=rs.getInt(1); 
	       if(fid ==scode)	
		
	       {
			
		%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000 leftMargin=0 topMargin=0>
<TABLE cellSpacing=0 cellPadding=0 width=780  border=0>
  <TBODY>
  <TR>
    <TD vAlign=top height=321>
      <TABLE cellSpacing=0 cellPadding=0 width="790" border=0>
        <TBODY>
        <TR>
          <TD vAlign=top width=220 
    bgColor=#ffffff>&nbsp;
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <b>&nbsp;&nbsp;</b>
            <p>

		
         </p>
          </TD>
          <TD vAlign=top width=552 
    bgColor=#ffffff>&nbsp;
            <p>&nbsp;</p>
            <p><font color="#0000FF">&nbsp;Ur Question was Retrieved from Database...</font></p>
            <table width="313">
              <form action="retrieve.jsp" method="post"> 
                  <tr>
                <td width="305"><b><font color="#6699CC">Ur Question is</font></b>
                  <b>:&nbsp;&nbsp; </b><%=rs.getString(3)%>
                </td>
              </tr>
              <tr>
                <td width="305"><font color="#6699CC"><b>Ur Answer is</b></font>
                  &nbsp;&nbsp; <b>:&nbsp;&nbsp; </b><input type="text" name="answer" size="20"></td>
              </tr>
              <tr>
                <td width="305">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="submit" value="Retrive"></td>
              </tr>
              </form>	
            </table>
            <p>&nbsp;
          </TD>
        </TR>
        </TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>

		

 		<%

			}	
              else
	      {%>             
			                               
  			
<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>Welcome....</b>
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



	<%     }
		Integer fid1= new Integer(fid);
		session.setAttribute("fid2",fid1);
	     }            	
		%>             
			                               
  			
<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>Sorry Check It Pls.......</b>
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
