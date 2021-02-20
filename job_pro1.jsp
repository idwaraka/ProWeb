<%@ include file="makecon.jsp" %>
<%@page session="true"%>


<% 
	String st2=request.getParameter("textfield2");
	String st4=request.getParameter("textfield4");	
	String st5=request.getParameter("textfield5");	
	String st6=request.getParameter("textfield6");	
	String st7=request.getParameter("textfield7");	
	int it8=Integer.parseInt(request.getParameter("textfield8"));	
%>





<% Integer logid=(Integer)session.getAttribute("login1");%>

<% 
int n1=logid.intValue();
System.out.println(n1);
%>

<%! PreparedStatement ps=null;%>
<% session.setAttribute("pwd",st2);%>


 

<%
try
	{
 	ps=con.prepareStatement("insert into job_pro values(?,?,?,?,?,?,?)");
	ps.setInt(1,n1);
	ps.setString(2,st2);
	ps.setString(3,st4);
	ps.setString(4,st5);
	ps.setString(5,st6);
	ps.setString(6,st7);
	ps.setInt(7,it8);
	int j=ps.executeUpdate();
		if (j>0)
		{             
			
			response.sendRedirect("jobreg.jsp");
                          			
			ps.close();
		}
		else
		{	out.println("Sorry");
			ps.close();
		}
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
