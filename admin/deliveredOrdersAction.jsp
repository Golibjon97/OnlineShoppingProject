<%@ page import="Connection.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<% 
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	String status = "Delivered";
	
	try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		st.executeUpdate("update carts set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NULL");
		response.sendRedirect("ordersReceived.jsp?msg=update");
	} catch(Exception e){
		System.out.println(e);
		response.sendRedirect("ordersReceived.jsp?msg=invalid");
	}
%>