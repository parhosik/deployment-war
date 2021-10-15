<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>    
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Workerize Caraousel </title>
<jsp:include page="/common-scripts.jsp"></jsp:include>

<style type="text/css">
h2 {
	color: #ffa64d;
	height: 100px;
	position: relative;
	animation-name: theCarouselTitle;
	animation-duration: 30s;
}

@keyframes theCarouselTitle {
  0%   {left:0px; top:0px;}
  15%  {color:gray;left:200px; top:0px;}
  0%   {left:0px; top:0px;}
  /* 50%  {left:200px; top:200px;}
  75%  {left:0px; top:200px;}
  100% {left:0px; top:0px;} */
}

</style>

</head>
<body>

<!-- caraousel start -->
<div id="demo" class="carousel slide" data-ride="carousel" style="background: radial-gradient(#3c99e969, transparent);">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>

  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active" style="background-image: url('newsoftware.png'); background-size: cover;">
    	<div style="height: 400px;">
    		<p> &nbsp; </p>
    		<h2> We provide you software applications to manage your business ! </h2>
    	</div>
    </div>
    <div class="carousel-item" style="background-image: url('softwaremaintenance.png'); background-size: cover;">
    	<div style="height: 400px;">
    		<p> &nbsp; </p>
    		<h2> Our energetic team is always there to support you ! </h2>
    	</div>
    </div>
    <div class="carousel-item" style="background-image: url('labor.png'); background-size: cover;">
    	<div style="height: 400px;">
    		<p> &nbsp; </p>
    		<h2> Additionally; do you need resources ? Yes, we handle service contracts! </h2>
    	</div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>

</div>
<!-- caraousel end -->

</body>

</html>

