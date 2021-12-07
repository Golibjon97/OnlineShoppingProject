<%@ page import="Connection.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%
	String email = request.getAttribute("email").toString();
	try{
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		st.executeUpdate("delete from users where email='"+email+"'");
		response.sendRedirect("login.jsp");
	} catch(Exception e){
		
	}
%>