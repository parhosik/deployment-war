<% String menuRef = request.getParameter("menuRef"); %>


<!-- if no screen is opened/selected -->
<% if( "".equals(menuRef) ) { %>
	Please open a screen on which you want to add a new field!
<% } %>