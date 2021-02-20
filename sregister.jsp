<%@ include file="makecon.jsp" %>
<%@ page import="java.sql.Date"%>
<%@ page session="true"%>
<%!	
   	int slogin_id1=1000;
	PreparedStatement ps,ps1,ps2,ps3,ps4,ps5=null;
	ResultSet rs=null;
%><% 
try
{
 	rs=st.executeQuery("select max(seek_code) from seek_per");
	if(rs.next())
		slogin_id1=rs.getInt(1)+1;
	Integer slogin1= new Integer(slogin_id1);
	session.setAttribute("slogin1",slogin1);
try
{
 	String st1=request.getParameter("fname");
	String st2=request.getParameter("lname");
	String dob1=request.getParameter("dob");
	String it4=request.getParameter("cellno");
	String st3=request.getParameter("sex");
	String st4=request.getParameter("passportno");
	String st5=request.getParameter("email");
	String st6=request.getParameter("hobbies");

	String st7=request.getParameter("p_streetname");
	String st8=request.getParameter("p_area");
	String st9=request.getParameter("p_city");
	String st10=request.getParameter("c_streetname");
	String st11=request.getParameter("c_area");
	String st12=request.getParameter("c_city");
	long dt1=Long.parseLong(request.getParameter("phno"));

	String st13=request.getParameter("qualification");
	String st14=request.getParameter("branch");
	String st15=request.getParameter("skills");
	String st16=request.getParameter("o_qualifications");
	String dt21=request.getParameter("experience");
	double dt2;
	if(dt21.equals(""))
		dt2=0;
	else
		dt2=Double.parseDouble(dt21);
	String st17=request.getParameter("quali");
	String st18=request.getParameter("m_board");
	String st19=request.getParameter("m_year");
	String dt31=request.getParameter("m_per");
	double dt3;
	if(dt31.equals(""))
		dt3=0;
	else
		dt3=Double.parseDouble(dt31);
	String st20=request.getParameter("degree");
	String st21=request.getParameter("i_board");
	String st22=request.getParameter("i_year");
	String dt41=request.getParameter("i_per");
	double dt4;
	if(dt41.equals(""))
		dt4=0;
	else
		dt4=Double.parseDouble(dt41);
	String st23=request.getParameter("higher");
	String st24=request.getParameter("u_university");
	String st25=request.getParameter("u_year");
	String dt51=request.getParameter("u_per");
	double dt5;
	if(dt51.equals(""))
		dt5=0;
	else
		dt5=Double.parseDouble(dt51);
	String st26=request.getParameter("ssc");
	String st27=request.getParameter("p_university");
	String st28=request.getParameter("p_year");
	String dt61=request.getParameter("p_per");
	double dt6;
	if(dt61.equals(""))
		dt6=0;
	else
		dt6=Double.parseDouble(dt61);

	String st29=request.getParameter("passwd");
	String st30=request.getParameter("retypepassword");
	String st31=request.getParameter("question");
	String st32=request.getParameter("answer");
	session.setAttribute("pwd",st29);
	
	ps=con.prepareStatement("insert into seek_per values(?,?,?,?,?,?,?,?,?)");
	ps.setInt(1,slogin_id1);
	ps.setString(2,st1);
	ps.setString(3,st2);
	ps.setString(4,dob1);
	ps.setString(5,it4);
	ps.setString(6,st3);
	ps.setString(7,st4);
	ps.setString(8,st5);
	ps.setString(9,st6);
	int i=ps.executeUpdate();

	ps1=con.prepareStatement("insert into seek_add values(?,?,?,?,?,?,?,?)");
	ps1.setInt(1,slogin_id1);
	ps1.setString(2,st7);
	ps1.setString(3,st8);
	ps1.setString(4,st9);
	ps1.setString(5,st10);
	ps1.setString(6,st11);
	ps1.setString(7,st12);
	ps1.setDouble(8,dt1);
	i=ps1.executeUpdate();

	ps2=con.prepareStatement("insert into seek_resume values(?,?,?,?,?,?)");
	ps2.setInt(1,slogin_id1);
	ps2.setString(2,st13);
	ps2.setString(3,st14);
	ps2.setString(4,st15);
	ps2.setString(5,st16);
	ps2.setDouble(6,dt2);
	i=ps2.executeUpdate();

	ps3=con.prepareStatement("insert into seek_edu values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	ps3.setInt(1,slogin_id1);
	ps3.setString(2,st17);
	ps3.setString(3,st18);
	ps3.setString(4,st19);
	ps3.setDouble(5,dt3);
	ps3.setString(6,st20);
	ps3.setString(7,st21);
	ps3.setString(8,st22);
	ps3.setDouble(9,dt4);
	ps3.setString(10,st23);
	ps3.setString(11,st24);
	ps3.setString(12,st25);
	ps3.setDouble(13,dt5);
	ps3.setString(14,st26);
	ps3.setString(15,st27);
	ps3.setString(16,st28);
	ps3.setDouble(17,dt6);
	i=ps3.executeUpdate();

	ps4=con.prepareStatement("insert into seek_login values(?,?,?,?)");
	ps4.setInt(1,slogin_id1);
	ps4.setString(2,st29);
	ps4.setString(3,st31);
	ps4.setString(4,st32);
	i=ps4.executeUpdate();
%>
<jsp:forward page="sreg.jsp"/>
<%
}catch(Exception e)
{ System.out.println("error"+e);}
}catch(Exception e)
{ System.out.println("error"+e);}
%> 