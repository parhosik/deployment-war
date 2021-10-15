function ajaxJsonReturn( formId, theAction ) {
	var url = theAction === null ? formData.attr('action') : theAction;
	url = getContextPath() + url;
	var formData = $("#"+formId);

	$.ajax({
        url:url,
        data: formData.serialize(),
        cache: false,
        type: 'POST',
        success: function (jsonString) {
        	hideLoader();
        	var jsonObject = $.parseJSON(jsonString);
        	alert( "success: " + jsonObject );
        },
        error: function (xhr, ajaxOptions, thrownError) {
        	hideLoader();
        	alert( thrownError );
        }
    });
}

function abc() {
	alert( "okay working..." );
}