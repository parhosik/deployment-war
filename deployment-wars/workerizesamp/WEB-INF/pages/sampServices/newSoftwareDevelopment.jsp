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

<style>
.card-title {
	color: green;
	animation-name: theCardTitle;
	animation-duration: 1s;
}
@keyframes theCardTitle {
  0% {color:maroon;font-size:25px;}
}

</style>

</head>
<body>

	<div class="row">
		<div class="col-sm-3">
			<div class="card">
			  <div class="card-body">
			    <h5 class="card-title"> Step 01: What is your business requirement ? </h5>
			    <h6 class="card-subtitle mb-2 text-muted"> Planning and Requirement Analysis </h6>
			    <p class="card-text">We collect your requirement and analyze it.</p>
			    <a href="#" class="card-link">Learn More</a>
			  </div>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="card" >
			  <div class="card-body">
			    <h5 class="card-title"> Step 02: We define the product requirements to you. </h5>
			    <h6 class="card-subtitle mb-2 text-muted"> Defining Requirements </h6>
			    <p class="card-text">We clearly define you the product requirement and get it approved by you or your market analysts.</p>
			    <a href="#" class="card-link">Learn More</a>
			  </div>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="card" >
			  <div class="card-body">
			    <h5 class="card-title"> Step 03: Development and Testing Phase </h5>
			    <h6 class="card-subtitle mb-2 text-muted"> Building or Developing the Product </h6>
			    <p class="card-text">We now start developing the product, arrange UAT with you and deliver the product.</p>
			    <a href="#" class="card-link">Learn More</a>
			  </div>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="card" >
			  <div class="card-body">
			    <h5 class="card-title"> Application ready to go.. ! </h5>
			    <h6 class="card-subtitle mb-2 text-muted"> Deployment in the Market and Maintenance </h6>
			    <p class="card-text">Once the product is tested and ready to be deployed it is released formally in the appropriate market. Sometimes product deployment happens in stages as per the business strategy of your organization.</p>
			    <a href="#" class="card-link">Learn More</a>
			  </div>
			</div>
		</div>
	</div>
	
	<div>
		<p class="text-center">
			<a class="btn btn-warning btn-lg" data-toggle="collapse" href="#requestAQuote" role="button" aria-expanded="false" aria-controls="collapseExample">
			  Request a Quote
			</a>
		</p>
		<h4 class="text-center" style="color: green;" id="quoteResponseId">  </h4>
		
		<div class="collapse" id="requestAQuote">
		  <div class="card card-body">
		    <jsp:include page="/WEB-INF/pages/customerrequirement.jsp"></jsp:include>
		  </div>
		</div>
	</div>

</body>
</html>