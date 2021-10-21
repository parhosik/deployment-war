/**
 * this functions gets id of the div and hides it
 * @param divId
 * @returns
 */
function hideDiv( divId )
{
	$( "#" + divId ).css( 'display', 'none' );
}


/**
 * this function returns a jsp page from action, and asks an element id to append in the returned page
 * @param url
 * @param targetId
 * @returns
 */
function ajaxPageReturn( url, targetId ) {
	var url = getContextPath() + url;
	var formData = null; //$("#"+formId);

	$.ajax({
        url:url,
        //data: formData.serialize(),
        cache: false,
        type: 'POST',
        success: function ( pageReturned ) {
        	hideLoader();
        	$("#"+targetId).css( 'display', 'block' );
        	$("#"+targetId).html( pageReturned );
        },
        error: function (xhr, ajaxOptions, thrownError) {
        	hideLoader();
        	alert( thrownError );
        }
    });
}


function validateUserNameExistence( obj, formId ) {
	var url = getContextPath()+"/CheckUserName.action";
	var formData = $("#"+formId);

	$.ajax({
        url:url,
        data: formData.serialize(),
        cache: false,
        type: 'POST',
        success: function (jsonString) {
        	hideLoader();
        	var jsonObject = $.parseJSON(jsonString);
        	if( jsonObject.value != null ) {
        		$("[name='"+obj.name+"']").addClass( "errlabel" );
        	} else {
        		$("[name='"+obj.name+"']").removeClass( "errlabel" );
        	}
        },
        error: function (xhr, ajaxOptions, thrownError) {
        	hideLoader();
        	alert( thrownError );
        }
    });
}


/**
 * 
 * @param action: copy from database menu url (without parameters) until '.action'
 * @param id: id of the record to edit
 * @param actionPackageName: the name of the package of Action Class
 * @returns
 */
function edit( action, id, actionPackageName )
{
	var editUrl = getContextPath() + action + "?actionCommand=edit&id="+id;
	showLoader( "Loading..." );
	$.ajax({
        url:editUrl,
        /*data: formData.serialize(),*/
        cache: false,
        type: 'POST',
        success: function (thePage) {
        	//load required javascript files
        	loadJSFiles( action );
        	
        	//clear container and add thePage to show
        	document.getElementById( actionPackageName + "MaintView").innerHTML = "";
        	document.getElementById( actionPackageName + "MaintView").innerHTML = thePage;
        	
        	//show the first tab of the form and data
        	currentTab = 0;
        	showTab(currentTab);
        	
        	//apply placeholders, so that empty fields can indicate
        	applyPlaceHolders();
        	
        	//toggle the view
        	commonToggle( actionPackageName + 'ListView', actionPackageName + 'MaintView' );
        	
        	//hide loader
        	hideLoader();
        },
        error: function (xhr, ajaxOptions, thrownError) {
        	hideLoader();
        	alert( thrownError );
        }
    });
}

/**
 * 
 * @param actionUrl: copy from database menu url (without parameters) until '.action' 
 * @returns
 */
function clearAndReloadScreen( actionUrl ) {
	openPage( actionUrl + "&menuRef=" + menuRef );
}

/**
 * Opens a dialog to add a new field on an opened screen
 * @returns
 */
function addNewField()
{
	showLoader( "New Field Specification..." );
	var targetUrl = getContextPath() + "/dynamicScreen/DynamicScreenAction.action?actionCommand=create&type=field&menuRef="+menuRef;
	$.ajax({
        url:targetUrl,
        cache: false,
        type: 'POST',
        success: function (thePage) {
        	openDialog( "dialog-medium", "New Field", thePage );
        	hideLoader();
        },
        error: function (xhr, ajaxOptions, thrownError) {
        	hideLoader();
        	alert( thrownError );
        }
    });

}


/**
 * 
 * @param dialogId: dialog, dialog-small, dialog-medium, dialog-large
 * @param dialogTitle: title of the dialog to show
 * @param dialogContents: the contents to show in dialog, normally we are showing a full jsp page in it
 * @returns
 */
function openDialog( dialogId, dialogTitle, dialogContents ) {
	$("#"+dialogId+"Contents").html( dialogContents );
	$("#"+dialogId).dialog("option","title",dialogTitle).dialog('open');
}

/**
 * adds filters to normal html table
 * @param columnSerial
 * @param tableId
 * @param filterElementId
 * @returns
 */
function filterTable( columnSerial, tableId, filterElementId ) {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = $("#"+filterElementId).text();
  filter = input.toUpperCase();
  table = document.getElementById( tableId );
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[columnSerial];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}


/**
 * loads list view
 * @param url
 * @param listViewId
 * @param maintViewId
 * @returns
 */
function loadListView( url, listViewId, maintViewId )
{
	if( !$("#"+listViewId).is(":visible") ) {
		showLoader( "Loading list..." );
		var targetUrl = getContextPath() + url + "?actionCommand=list";
		$.ajax({
	        url:targetUrl,
	        cache: false,
	        type: 'POST',
	        success: function (thePage) {
	        	$("#"+listViewId).html( thePage );
	        	commonToggle( listViewId, maintViewId );
	        	hideLoader();
	        },
	        error: function (xhr, ajaxOptions, thrownError) {
	        	hideLoader();
	        	alert( thrownError );
	        }
	    });

	} else {
		$("#"+listViewId).html("");
    	commonToggle( listViewId, maintViewId );
	}

}

/**
 * submits any form
 * @param formId
 * @param theAction
 * @returns
 */
function submitForm( formId, theAction ) {
	
	showLoader( "Submitting your data..." );
	
	var formData = $("#"+formId);
	var url  = theAction === null ? formData.attr('action') : theAction;
	var jsonObject = getFormData( formData );
	var arrayOfKeys = Object.keys(jsonObject);
	
	var queryParams = "";
	for(i=0; i<arrayOfKeys.length; i++) 
	{
		var key = arrayOfKeys[i];
		var val = jsonObject[key];
		queryParams += key+"="+val+"&";
	}
	
	var targetUrl = getContextPath() + url; // + queryParams;
	
	alert( targetUrl );
	alert( formData.serialize() );
	
	$.ajax({
        url:targetUrl,
        data: formData.serialize(),
        cache: false,
        type: 'POST',
        success: function (dataofconfirm) {
        	openPage( url.substring(0, url.indexOf(".",2)) + ".action?menuRef="+menuRef );
        	hideLoader();
        },
        error: function (xhr, ajaxOptions, thrownError) {
        	hideLoader();
        	alert( thrownError );
        }
    });
	
}


function getContextPath() {
	return window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));
}

function openPage( action ) {
	
	showLoader( "Loading..." );
	var url = getContextPath() + action;
	$.ajax({
        url:url,
        /*data: $(document.commonPopupParamForm).serialize(),*/
        cache: false,
        processData: false,
        contentType:'application/x-www-form-urlencoded',
        type: 'POST',
        success: function ( thePage ) {
        	
        	menuRef = new URL("https://"+getContextPath() + action).searchParams.get('menuRef');
        	
        	loadJSFiles( action );
        	
        	loadCommonJSFiles( action );
        	
        	$("#thePageContainer").fadeIn();
        	document.getElementById("thePageContainer").innerHTML = "";
        	document.getElementById("thePageContainer").innerHTML = thePage;
        	window.parent.parent.scrollTo(0,0);
        	hideLoader();
        	$("#thePageContainer").fadeIn();
        	
        	currentTab = 0;
        	showTab(currentTab); // Display the current tab
        	
        	$( document ).ready( onLoadFunction );
        	
        	applyPlaceHolders();

        },
        error: function (xhr, ajaxOptions, thrownError) {
        	$("#thePageContainer").fadeIn();
        	document.getElementById("thePageContainer").innerHTML = thrownError;
        	hideLoader(); 
        }
    });
	
	
	
}

function loadJSFiles(action) 
{
	var packageAsFileNamePrefix = action.substring(0, action.indexOf("/",2));
	var maintenanceJsFilePath = "js" + packageAsFileNamePrefix + packageAsFileNamePrefix + "Maintenance.js";
	var listJsFilePath = "js" + packageAsFileNamePrefix + packageAsFileNamePrefix + "List.js";
	
	var jsFiles = [ maintenanceJsFilePath, listJsFilePath ];
	
	for(var i = 0; i < jsFiles.length; i++ )
	{
		var fileName = jsFiles[i];
    	$.getScript( fileName )
    	  .done(function( script, textStatus ) {
    		  console.log( fileName + " loaded!" );
    	  })
    	  .fail(function( jqxhr, settings, exception ) {
    	    console.error( "Possible problems: \n- (List, Maintenance) are not created for this page \n" +
    	    		"- package name is not conventional! \n" +
    	    		"- No struts configuration defined! \n" );
    	});
	}
}

function loadCommonJSFiles(action) 
{
	var packageAsFileNamePrefix = action.substring(0, action.indexOf("/",2));
	var maintenanceJsFilePath = "js/common" + packageAsFileNamePrefix + packageAsFileNamePrefix + "Maintenance.js";
	var listJsFilePath = "js/common" + packageAsFileNamePrefix + packageAsFileNamePrefix + "List.js";
	
	var jsFiles = [ maintenanceJsFilePath, listJsFilePath ];
	
	for(var i = 0; i < jsFiles.length; i++ )
	{
		var fileName = jsFiles[i];
    	$.getScript( fileName )
    	  .done(function( script, textStatus ) {
    		  console.log( fileName + " loaded!" );
    	  })
    	  .fail(function( jqxhr, settings, exception ) {
    	    console.error( "Possible problems: \n- (CommonList, CommonMaintenance) are not created for this page \n" +
    	    		"- package name is not conventional! \n" +
    	    		"- No struts configuration defined! \n" );
    	});
	}
}

function onLoadFunction() 
{
	var selected = [];
	var aa= document.getElementsByTagName("input");
    for (var i =0; i < aa.length; i++){
        if (aa[i].type == 'checkbox') {
            //console.log(aa[i].id);
            //console.log($(document).next('label').attr("for", aa[i].id));
        }
        
    }
   }

function applyLoaderOn(container) 
{
	$('body').append('<div class="the-main-content"><div id="thePageContainer"></div></div>');
	
	$('body').append( '<div class="loader-on-target" style="display: none; text-align: center; padding-top: 8%;"> </div>' );
}

function showLoader(message) 
{
	if( message != null ) {
    	$('.loader-on-target').empty();
    	$('.loader-on-target').append( '<img style="width: 100px; height: 100px;" src="'+"./assets/images/icons/loader.gif"+'"> <p class="contents" style="color: silver; font-size: 22px; font-weight: bold;">'+ message +'</p>' );
    	$('.loader-on-target').css('display', 'block');
	} else {
		$('.loader-on-target').empty();
    	$('.loader-on-target').append( '<img style="width: 100px; height: 100px;" src="'+"./assets/images/icons/loader.gif"+'"> <p class="contents" style="color: silver; font-size: 22px; font-weight: bold;"> In Progress </p>' );
    	$('.loader-on-target').css('display', 'block');
	}
}
    
function hideLoader() 
{
	$('.loader-on-target').css('display', 'none');
}


function getFormData($form){
    var unindexed_array = $form.serializeArray();
    var indexed_array = {};

    $.map(unindexed_array, function(n, i){
        indexed_array[n['name']] = n['value'];
    });

    return indexed_array;
}

function commonToggle( listDivId, maintDivId ) 
{
	$("#"+listDivId).toggle();
	$("#"+maintDivId).toggle();
	
	hideLoader();
}

function applyPlaceHolders() {
	var formElements = $('form').serializeArray();
	var elements = [];
	for( var i=0; i<formElements.length; i++ ) 
	{
		elements.push( formElements[i].name );
	}
	
	retrievePlaceHolders( elements );
}

function retrievePlaceHolders(fieldNames) {
	var i = 0;
	
	for (i = 0; i < fieldNames.length; i++) {
		var name = "[name='"+fieldNames[i]+"']"
	  	$( name ).attr("placeholder", returnLabel("'" + fieldNames[i] + "'")); 

	}
}

function returnLabel(fieldName) {
	return $('label[for='+  fieldName  +']').text();
}