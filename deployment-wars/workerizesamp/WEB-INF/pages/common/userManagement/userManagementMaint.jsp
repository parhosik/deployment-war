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


<div class="row custom-border-bottom custom-legend">
	<div class="col-sm-12 text-center"> <div class="custom-page-title"> User Management </div> </div>
</div>


<form id="userManagementForm" action="/userManagement/UserManagementAction.action?actionCommand=submit">
<s:hidden name="co.appUser.id"/>

<!-- One "tab" for each step in the form: -->
<div class="tab">

	<div class="row">
		<div class="col-sm-12">
			<label class="custom-wizard-tab-title"> Personal Information </label>
		</div>
	</div>
	
	<div class="row m-b-10">
		<div class="col-sm-2 custom-input-group">
			<label for="co.appUser.userName" class="custom-label"> User Name </label>
			<s:textfield name="co.appUser.userName" onchange="validateUserNameExistence( this, 'userManagementForm' )" class="custom-field" required="true"></s:textfield>
		</div>
		<div class="col-sm-2 custom-input-group">
			<label for="co.appUser.password" class="custom-label"> Password </label>
			<s:textfield name="co.appUser.password" class="custom-field" required="true"></s:textfield>
		</div>
	</div>
	
	<div class="row m-b-10 border-top">
		<div class="col-sm-3 custom-input-group">
			<label for="co.appUser.firstName" class="custom-label"> First Name </label>
			<s:textfield name="co.appUser.firstName" class="custom-field" required="true"></s:textfield>
		</div>
		<div class="col-sm-3 custom-input-group">
			<label for="co.appUser.lastName" class="custom-label"> Last Name </label>
			<s:textfield name="co.appUser.lastName" class="custom-field" required="true"></s:textfield>
		</div>
		<div class="col-sm-3 custom-input-group">
			<label for="co.appUser.emailAddress" class="custom-label"> Email Address </label>
			<s:textfield name="co.appUser.emailAddress" class="custom-field" required="true"></s:textfield>
		</div>
	</div>
	

	<div class="row border-top">
		<div class="col-sm-12">
			<fieldset class="border p-2 border-top">
			   <legend  class="w-auto"> <label class="custom-label"> Available Applications </label> </legend>
			   <div class="col-sm-12 radio-font-size ">
					<s:checkboxlist list = "applicationsList"
			                name="co.appUser.userApps"
			               value = ""
			               label = "Applications" 
			               listKey="id"
			               listValue="appName"
			               />
				</div>
			</fieldset>
		</div>
	</div>

</div>



<!-- Circles which indicates the steps of the form: -->
<div style="text-align:center;margin-top:40px;">
  <span class="step"></span>
</div>

<hr>
<div style="overflow:auto;">
  <div style="float:left;">
    <button type="button" class="custom-button" id="prevBtn" onclick="nextPrev(-1, 'userManagementForm')">Previous</button>
    <button type="button" class="custom-button" id="nextBtn" onclick="nextPrev(1, 'userManagementForm')">Next</button>
  </div>
</div>


</form>

</body>
</html>