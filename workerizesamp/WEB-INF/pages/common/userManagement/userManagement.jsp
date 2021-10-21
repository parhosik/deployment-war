<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>    
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>

<%@ page import="java.util.List,java.util.ArrayList,com.dsiksjane.beans.common.LookupBean" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> <s:property value="userBean.title"/> </title>

</head>
<body>

	<div id="userManagementListView" style="display: none;"></div>
	
	<div id="userManagementMaintView" style="display: block;">
	
		<div class="custom-toolbar">
			<button class="custom-button custom-button-sm" onclick="loadListView( '/userManagement/UserManagementAction.action', 'userManagementListView', 'userManagementMaintView' )"> Search </button>
			<button class="custom-button custom-button-sm btn-sensitive" onclick="clearAndReloadScreen( '/userManagement/UserManagementAction.action?actionCommand=clear' )"> clear </button>
		</div>
		<jsp:include page="userManagementMaint.jsp"></jsp:include>
	
	</div>
	
</body>
</html>