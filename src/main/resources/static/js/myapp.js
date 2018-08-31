$(function() {
		
		
	
	// for handling CSRF token
	var token = $('meta[name="_csrf"]').attr('content');
	var header = $('meta[name="_csrf_header"]').attr('content');
	
	if((token!=undefined && header !=undefined) && (token.length > 0 && header.length > 0)) {		
		// set the token header for the ajax request
		$(document).ajaxSend(function(e, xhr, options) {			
			xhr.setRequestHeader(header,token);			
		});				
	}
	
	
	
	// solving the active menu problem
	switch (menu) {

	case 'Home':
		$('#home').addClass('active');
		break;
		
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
		
	default:
		if (menu == "Home")	break;
	
		$('#ABC Company').addClass('active');
		$('#a_' + menu).addClass('active');
		break;
	}

	
	
	
});