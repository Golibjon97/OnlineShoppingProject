<%@ include file="adminHeader.jsp" %>
<%@ include file="../footer.jsp" %>

<%-- <%
	String msg=request.getParameter("msg");
	if("done".equals(msg)){
%>
	<h1 style="text-align:center; color: green">Mentioned row deleted successfully</h1>	
<% 
	} 
	if("wrong".equals(msg)){
%>
	<h1 style="text-align:center; color: green">Mentioned row deleted successfully</h1>
<%
	} if("error".equals(msg)){
%>
	<h1 style="text-align:center; color: green">There is an error</h1>
<%
	}
%> --%>

<body>
<form action="ForDeletingAction.jsp" method="post">
	<input type="submit" value="DELETE">
</form>
</body>