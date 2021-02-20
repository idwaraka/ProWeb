<%@ page session="true"%>
<%@ page import="java.sql.*"%>

<%
 System.out.println("hai");
 //Integer slogid=(Integer)session.getAttribute("slogin1");
 Integer qno2=(Integer)session.getAttribute("tqno");
 Integer tcount=(Integer)session.getAttribute("count");
 System.out.println("hai1");
int count;
if(tcount==null)
{
 count=0;
}
else
{
count=tcount.intValue();
}
 System.out.println(count);
int qno3=qno2.intValue();
System.out.println(qno3);
System.out.println("hai2");
%>


<%! 	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	
%>

<% String op=request.getParameter("D1"); %>
<%	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:crs","crs","crs");
	 st=con.createStatement();
	rs=st.executeQuery("select * from test_queries where ques_no="+qno3);
	while(rs.next())
	{
	if((op.compareTo(rs.getString(7)))==0)
	{
	session.setAttribute("count",new Integer(count+1));
	}	
	System.out.println("compared");
	System.out.println(count);
                Integer qno4= new Integer(qno3+1);
              session.setAttribute("tqno",qno4);
             %>
<p align="center">

&nbsp;
<p align="center">

&nbsp;
<p align="center">

&nbsp;
<p align="center">

<b><font color="#CA6ACA">



 </font></b>

	<%
	
 
 }

%>
<jsp:forward page="onlinetest.jsp"/>










	

