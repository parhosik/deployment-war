<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>    
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>

<%@ page import="java.util.*,com.dsiksjane.beans.common.LookupBean, com.dsiksjane.beans.fitness.FitnessUser" %>
    

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
</head>
<body>
	<div class="custom-toolbar">
		<button class="custom-button custom-button-sm" onclick="loadListView( '/clientRegistration/ClientRegistrationAction.action', 'clientRegistrationListView', 'clientRegistrationMaintView' )"> Search </button>
	</div>
	
	<% List<FitnessUser> fitnessUsersList = (List<FitnessUser>) request.getAttribute("fitnessUsersList"); %>
	<table id="clientRegistrationList" class="custom-table">
		<thead>
			<tr>
				<th style="display: none;">ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Username</th>
			</tr>
			<tr id="filters">
				<th style="display: none;" id="clientRegistrationListID" 			onkeyup="filterTable(0, 'clientRegistrationList','clientRegistrationListID')" contenteditable></th>
				<th id="clientRegistrationListFirstName" 	onkeyup="filterTable(1, 'clientRegistrationList','clientRegistrationListFirstName')" contenteditable></th>
				<th id="clientRegistrationListLastName" 	onkeyup="filterTable(2, 'clientRegistrationList','clientRegistrationListLastName')" contenteditable></th>
				<th id="clientRegistrationListEmail" 	onkeyup="filterTable(3, 'clientRegistrationList','clientRegistrationListEmail')" contenteditable></th>
				<th id="clientRegistrationListUsername" 	onkeyup="filterTable(4, 'clientRegistrationList','clientRegistrationListUsername')" contenteditable></th>
			</tr>
		</thead>
		<tbody>
		<%for(FitnessUser obj : fitnessUsersList ) {%>
			<tr ondblclick="edit( '/clientRegistration/ClientRegistrationAction.action', '<%=obj.getId()%>', 'clientRegistration' )">
				<td style="display: none;"> <%=obj.getId() %> </td>
				<td> <%=obj.getFirstName() %> </td>
				<td> <%=obj.getLastName() %> </td>
				<td> <%=obj.getEmail() %> </td>
				<td> <%=obj.getUserName() %> </td>
			</tr>
		<%} %>
		</tbody>
	</table>
	
</body>
</html>