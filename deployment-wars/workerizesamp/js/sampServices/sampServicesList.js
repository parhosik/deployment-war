function ajaxJsonReturn( formId, theAction, jsonTargetId ) {

	showLoader( "Sending your inquiry to one of the agents..." );
	
	var formData = new FormData(document.querySelector("#"+formId));
	//formData.append("sampServicesCO.companyName", "hardCoded..."); //it appends hardCoded... in the data provided for companyName
	var url = theAction === null ? $("#"+formId).attr('action') : theAction;
	url = getContextPath()+url;

	$.ajax({
        url:url,
        data: formData,
        type: 'POST',
        cache: false,
        enctype: 'multipart/form-data',
        processData: false,  // tell jQuery not to process the data
        contentType: false,   // tell jQuery not to set contentType
        success: function (jsonString) {
        	hideLoader();
        	var jsonObject = $.parseJSON(jsonString);
        	if( jsonObject.value != null ) {
        		$( "#" + jsonTargetId ).text( jsonObject.value );
        	} else {
        		$( "#" + jsonTargetId ).text( "An error occured, please contact sikandarali744@gmail.com" );

        	}
        },
        error: function (xhr, ajaxOptions, thrownError) {
        	hideLoader();
        	alert( thrownError );
        }
    });
}