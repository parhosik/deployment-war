<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="/struts-tags" prefix="s" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> <s:property value="userBean.title"/> </title>
<jsp:include page="/common-scripts.jsp"></jsp:include>
</head>
<body>

<div class="custom-profile-header">
	<div class="row container-fluid">
		<div class="col-sm-4"> <label class="custom-title"> <s:property value="loginCO.userBean.title"/> </label> </div>
		<div class="col-sm-4"></div>
		<div class="col-sm-4 text-right">
			<!-- <button onclick="openDialog('dialog', 'message', 'record saved successfully!')">message</button> --> 
			<button onclick="addNewField()" class="custom-button"> + New Field </button> 
			<button onclick="" class="custom-button"> + New Screen </button> 
			<!-- <button onclick="openDialog('dialog-medium', 'medium', 'a larger form.. ?')">medium</button> --> 
			<!-- <button onclick="openDialog('dialog-large', 'large', 'may be a screen to return.. ')">large</button> --> 
		</div>
	</div>
</div>

</body>
</html>

