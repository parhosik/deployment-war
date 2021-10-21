<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
<%@ taglib uri="/struts-tags" prefix="s" %>

<form 
id="addNewFieldForm" 
action="/dynamicScreen/DynamicScreenAction.action?actionCommand=saveField" >

<div class="row">
	<div class="col-sm-4">
		<label for="co.bean.menuRef" class="custom-label"> Screen Reference </label>
		<s:textfield name="co.bean.menuRef" class="custom-field"></s:textfield>
		<s:textfield name="co.bean.appName" class="custom-field"></s:textfield>
	</div>
</div>


<button class="custom-button" onclick="submitForm('addNewFieldForm', null)"> Save Field </button>

</form>