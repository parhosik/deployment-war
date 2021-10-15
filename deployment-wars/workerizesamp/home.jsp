<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="/struts-tags" prefix="s" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> <s:property value="loginCO.userBean.title"/> </title>
<jsp:include page="/common-scripts.jsp"></jsp:include>

</head>
<body>
	
	<jsp:include page="/WEB-INF/pages/profile-header.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/pages/profile-navbar.jsp"></jsp:include>
	
	<!-- The sidebar -->
	<div class="sidebar">
		
		<div class="text-center">
			<button data-toggle="collapse" data-target="#profileDetail" class="btn btn-link btn-lg"> <s:property value="loginCO.userBean.fullName"/> </button>
		</div>
		<div id="profileDetail" class="collapse text-center">
			<form id="theloginform" action="<%=request.getContextPath()%>/LogoutAction.action" method="post" onsubmit="showLoader('Logging out...')">
				<button class="custom-button"> Logout </button>
			</form>
			<hr/>
		</div>
		
		<s:iterator value="loginCO.userBean.menus" var="menu">
	  		<a onclick="openPage('${menu.url}&userName=<s:property value="loginCO.userBean.userName"/>')"> ${menu.description } </a>
		</s:iterator>
	</div>
	
	<!-- Page content -->
	<div class="the-main-content">
		<div id="thePageContainer">
		  <div class="text-center"> ... </div>
		</div>
	</div>
	
</body>
</html>