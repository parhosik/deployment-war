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
		<button class="custom-button custom-button-sm" onclick="loadListView( '/userManagement/UserManagementAction.action', 'userManagementListView', 'userManagementMaintView' )"> Search </button>
	</div>
	
	list view...
</body>
</html>