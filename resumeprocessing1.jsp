<%@ page session="true"%>
<%@ include file="makecon.jsp" %>
<%! 	
	ResultSet rs=null;
	PreparedStatement ps=null;
%>
<%
	String[] skcode=request.getParameterValues("seekcode");
	//String[] skpwd=request.getParameterValues("seekpwd");
	String[] sc=request.getParameterValues("C");
	String pwd=null;
	String st1="you are suitable for this job";
	String st2="you are not suitable for this job";
	int i=0,j=0,k=0;
	try{
		for(i=0;i<sc.length;i++){ 													
			String cmd="Select * from seek_login where seek_code="+sc[i];
			ResultSet rs1=st.executeQuery(cmd);
			if(rs1.next()){
				pwd=rs1.getString(2);
			}
				ps= con.prepareStatement("insert into online_testlogin values(?,?,?,?)");
				ps.setInt(1,Integer.parseInt(sc[i]));
				ps.setString(2,pwd);
				ps.setString(3,st1);
				ps.setString(4,"Accept");
				ps.executeUpdate();
			}out.println("Message has been sent");	
		}catch(Exception e){	out.println(e);	}				
 %>