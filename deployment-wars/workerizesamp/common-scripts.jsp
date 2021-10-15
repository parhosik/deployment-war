<link rel="stylesheet" href='<%=request.getContextPath()+"/assets/css/custom-style.css"%>'>

<link rel="stylesheet" href='<%=request.getContextPath()+"/assets/css/profile-page-style.css"%>'>

<link rel="stylesheet" href='<%=request.getContextPath()+"/assets/css/wizard-form-style.css"%>'>

<link rel="stylesheet" href='<%=request.getContextPath()+"/assets/bootstrap/css/bootstrap.min.css"%>'>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" />

<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src='<%=request.getContextPath()+"/assets/bootstrap/js/bootstrap.min.js"%>'></script>

<script src='<%=request.getContextPath()+"/assets/js/jquery-3.2.1.slim.min.js"%>' crossorigin="anonymous"></script>

<script src='<%=request.getContextPath()+"/assets/js/1.12.9/umd/popper.min.js"%>' crossorigin="anonymous"></script>

<script src='<%=request.getContextPath()+"/assets/js/commonconstants.js"%>'></script>

<script src='<%=request.getContextPath()+"/assets/js/commonfunctions.js"%>'></script>

<script src='<%=request.getContextPath()+"/assets/js/custom-wizard-form.js"%>'></script>

<script src='<%=request.getContextPath()+"/assets/jquery/jquery-3.5.1.min.js"%>'></script>

<script src='<%=request.getContextPath()+"/assets/jquery/jquery-1.11.1.min.js"%>'></script>
 
<script src='<%=request.getContextPath()+"/assets/jquery/jquery-ui.min.js"%>'></script>


<div id="dialog" > <div id="dialogContents" class="text-center"></div> </div>
<div id="dialog-small" ><div id="dialog-smallContents"></div> </div>
<div id="dialog-medium" > <div id="dialog-mediumContents"></div> </div>
<div id="dialog-large" > <div id="dialog-largeContents"></div> </div>

<script type="text/javascript">

	$( document ).ready(function() {
		applyLoaderOn(null);
	});
	
	$(function () {
		  $( "#dialog" ).dialog({
			    autoOpen: false,
			    width: 400,
		        height: 100,
		        modal: true
			  });
			  
		  $( "#dialog-small" ).dialog({
			    autoOpen: false,
			    width: 400,
		        height: 300,
		        modal: true
			  });
			  
		  $( "#dialog-medium" ).dialog({
			    autoOpen: false,
			    width: 600,
		        height: 500,
		        modal: true
			  });
			  
		  $( "#dialog-large" ).dialog({
			    autoOpen: false,
			    width: 800,
		        height: 500,
		        modal: true
			  });
			  
	});

</script>
