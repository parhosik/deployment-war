<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>    
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>

<%@ page import="java.util.List,java.util.ArrayList,com.dsiksjane.beans.common.LookupBean" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Customer Requirement </title>
</head>
<body>

<form id="requestQuoteFormId" action="/RequestQuote.action" method="POST" enctype="multipart/form-data">
	<div class="row m-b-10">
		<div class="col-sm-3 custom-input-group"></div>
		<div class="col-sm-3 custom-input-group">
			<label for="sampServicesCO.companyName" class="custom-label"> Company Name </label>
			<s:textfield name="sampServicesCO.companyName" class="custom-field" required="true"></s:textfield>
		</div>		
	</div>

	<div class="row m-b-10">
		<div class="col-sm-3 custom-input-group"></div>
		<div class="col-sm-3 custom-input-group">
			<label for="sampServicesCO.companyEmail" class="custom-label"> Company Email </label>
			<s:textfield name="sampServicesCO.companyEmail" class="custom-field" required="true"></s:textfield>
		</div>		
		<div class="col-sm-3 custom-input-group">
			<label for="sampServicesCO.contactNumber" class="custom-label"> Contact Number </label>
			<s:textfield name="sampServicesCO.contactNumber" class="custom-field" required="true"></s:textfield>
		</div>		
	</div>

	<div class="row m-b-10">
		<div class="col-sm-3 custom-input-group"></div>
		<div class="col-sm-7">
			<div class="custom-section-label"> <label for = "sampServicesCO.description"> Description </label> </div>
			<div class="row col-sm-12 text-center" style="margin: 0px; padding:0px;">
				<s:textarea name="sampServicesCO.description" class="form-control"></s:textarea>
				<label class="custom-notes"> Example: I want a web application for my business! </label>
			</div>
		</div>
	</div>
	
	<div class="row m-b-10">
		<div class="col-sm-3 custom-input-group"></div>
		<div class="col-sm-3 custom-input-group">
			<label for="sampServicesCO.requirementFile" class="custom-label"> Requirement File or any attachment ? </label>
			<s:file id="requirementFile" name="sampServicesCO.requirementFile"></s:file>
		</div>		
	</div>
	
	<hr>
	<div class="row m-b-10">
		<div class="col-sm-3 custom-input-group"></div>
		<div class="col-sm-7">
			<div style="overflow:auto;">
			  <div style="float:left;">
			    <button type="button" class="custom-button" onclick="ajaxJsonReturn('requestQuoteFormId', null, 'quoteResponseId')"> Send Inquiry </button>
			  </div>
			</div>
		</div>
	</div>
</form>
</body>

</html>

