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
		<div class="col-sm-12">
			<div class="card">
			  <div class="card-body">
			    <h5 class="card-title"> Quality Assurance </h5>
			    <h6 class="card-subtitle mb-2 text-muted"> We assure the best quality </h6>
			    <p class="card-text"> Our team and integrated environment makes sure to deliver the quality product and efficient user interface and continuous support! We never break the touch after the delivery but keep providing to support our valuable customers. </p>
			    <a href="#" class="card-link">Learn More</a>
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