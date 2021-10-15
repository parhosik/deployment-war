<%String type = (String) request.getParameter("type");%>

<% if( "field".equals(type) ) {%>
	<jsp:include page="dynamicNewScreenField.jsp"></jsp:include>
<% } else if( "screen".equals(type) ) { %>
	<jsp:include page="dynamicNewScreen.jsp"></jsp:include>
<% }%>