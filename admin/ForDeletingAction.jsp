<%@ page import="Connection.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<% 
	
	
	try{
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		st.executeUpdate("delete from users where answer='osha'");
		
	} catch(Exception e){
		System.out.println(e);
		
	}
%>