<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Workerize SAMP </title>
<jsp:include page="/common-scripts.jsp"></jsp:include>
<script type="text/javascript">

$( document ).ready(function() {
	loadJSFiles("/sampServices/SampServicesAction.action");
});

</script>
</head>
<body style="margin: 15px;">

	<jsp:include page="/WEB-INF/pages/header.jsp"></jsp:include>

	<div class="row custom-toolbar">
		<div class="col-sm-8">
			<div class="btn-toolbar">
			  <button type="button" class="btn btn-info rounded-0 btn-sm m-1" onclick="hideDiv('sampServicesDiv')"> 
			  	<i class="fa fa-home"> </i> 
			  </button>
			  <button type="button" class="btn btn-info rounded-0 btn-sm m-1" onclick="ajaxPageReturn('/sampServices/SampServicesAction.action?service=new', 'sampServicesDiv', 'carouselAndContacsDiv' )"> 
			  	<i class="fa fa-database"> New Software Development </i> 
			  </button>
			  <button type="button" class="btn btn-info rounded-0 btn-sm m-1" onclick="ajaxPageReturn('/sampServices/SampServicesAction.action?service=maintain', 'sampServicesDiv', 'carouselAndContacsDiv' )">
			  	<i class="fa fa-calculator"> Software Maintenance/Support </i> 
			  </button>
			  <button type="button" class="btn btn-info rounded-0 btn-sm m-1" onclick="ajaxPageReturn('/sampServices/SampServicesAction.action?service=qa', 'sampServicesDiv', 'carouselAndContacsDiv' )">
			   <i class="fa fa-clipboard"> Quality Assurance (QA) </i> 
			  </button>
			  <button type="button" class="btn btn-info rounded-0 btn-sm m-1" onclick="ajaxPageReturn('/sampServices/SampServicesAction.action?service=labor', 'sampServicesDiv', 'carouselAndContacsDiv' )">
			  	<i class="fa fa-users"> Labor Service Contracts </i>
			  </button>
			</div>
		</div>
		<div class="col-sm-2"></div>
		<div class="col-sm-2">
			<div class="btn-toolbar" style="float: right;">
			  <!-- <button type="button" class="btn btn-default rounded-0 btn-sm m-1" onclick="ajaxPageReturn('/sampServices/SampServicesAction.action?service=contactus', 'sampServicesDiv', 'carouselAndContacsDiv' )"> Contact Us </button> -->
			</div>
		</div>
		
	</div>
	
	<div id="sampServicesDiv"></div>
	
	<div id="carouselAndContacsDiv">
		<div id="caraouselDiv">
			<jsp:include page="/WEB-INF/pages/workerize_carousel.jsp"></jsp:include>
		</div>
		
		
		<div id="contactDiv" style="display: none;">
			<jsp:include page="/WEB-INF/pages/customerrequirement.jsp"></jsp:include>
		</div>
	</div>

	<div class="footer">
	  <p>&copy; Workerize </p>
	</div>	
	
</body>

</html>

