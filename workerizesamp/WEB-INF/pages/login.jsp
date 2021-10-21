<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form id="theloginform" action="<%=request.getContextPath()%>/LoginAction.action?actionCommand=login" method="post" onsubmit="showLoader('Attempting to login...')">
	<div style="float: right; border-bottom: solid gray 1px;" class="form-inline">
		<div class="form-group">
		
			<label class="custom-label"> Username </label> 
			<input type="text" name="loginCO.userBean.userName" class="custom-field" /> 
			<label class="custom-label"> Password </label> 
			<input type="password" name="loginCO.userBean.password" class="custom-field" /> 
			<input type="submit" class="custom-button" value="Login" />
			<!-- <input type="button" onclick="openPage('/ClientRegistrationAction.action')" class="custom-button" value="Register" /> -->
			
		</div>
	</div>
</form>

</body>

</html>