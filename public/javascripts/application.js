// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function showPic (whichpic) { 
	if (document.getElementById) { 
		document.getElementById('placeholder').src = whichpic.href; 
		if (whichpic.title) { 
			document.getElementById('next_placeholder').href = whichpic.title; 
		} 
		return false; 
	} else { 
		return true; 
	} 
};