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
			    <h5 class="card-title"> Do you already have a software ? </h5>
			    <h6 class="card-subtitle mb-2 text-muted"> Live Software </h6>
			    <p class="card-text"> Do you already have a system software for your business and you want to enhance it, we are there for you! </p>
			    <a href="#" class="card-link">Learn More</a>
			  </div>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="card" >
			  <div class="card-body">
			    <h5 class="card-title"> Software Support </h5>
			    <h6 class="card-subtitle mb-2 text-muted"> Resource provision </h6>
			    <p class="card-text">If you have a software and you want to hire related resource to keep maintained, we can provide you what you need.</p>
			    <a href="#" class="card-link">Learn More</a>
			  </div>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="card" >
			  <div class="card-body">
			    <h5 class="card-title"> Any other question ? </h5>
			    <h6 class="card-subtitle mb-2 text-muted"> Contact us </h6>
			    <p class="card-text">Click on the button 'Contact Us' to reach us and ask anything we will give you a proper support!</p>
			    <!-- <a href="#" class="card-link">Learn More</a> -->
			  </div>
			</div>
		</div>
	</div>
	
	<div class="m-50">
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