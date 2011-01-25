$('li.thumb:eq(0)').addClass('selected');

$("li.thumb").click(function () {

	var imgsrc = ($("img", this).attr("full_url"));
	var imgcaption = ($("img", this).attr("caption"));	
	$("img.test").attr("src", imgsrc);
	$("#gallery_caption").text("");	
	$("#gallery_caption").text(imgcaption);

	var thisimage = $(this);
	var thisindex = $('li.thumb').index(thisimage);
	var imgselected = $('.block li.selected');
	var selectedindex = $('li.thumb').index(imgselected);
	var last_image = $("li.thumb").length;
	
	/*Moving Gallery inner*/
	if ( thisindex == selectedindex + 1 ){
		$("#gallery_inner").animate({"left": "-=602px"}, "slow");
	}	

	if ( thisindex == selectedindex + 2 ){
		$("#gallery_inner").animate({"left": "-=1204px"}, "slow");
	}	

	if ( thisindex == selectedindex + 3 ){
		$("#gallery_inner").animate({"left": "-=1808px"}, "slow");
	}	

	if ( thisindex == selectedindex - 1 ){
		$("#gallery_inner").animate({"left": "+=602px"}, "slow");
	}	

	if ( thisindex == selectedindex - 2 ){
		$("#gallery_inner").animate({"left": "+=1204px"}, "slow");
	}	

	if ( thisindex == selectedindex - 3 ){
		$("#gallery_inner").animate({"left": "+=1808px"}, "slow");
	}	

	/*Moving Thumnails*/
	if ( thisindex == selectedindex + 1 && thisindex > 1 && thisindex < last_image - 2){
		$(".block").animate({"top": "-=127px"}, "slow");
	}


	else if ( (thisindex == selectedindex + 2 || thisindex == selectedindex + 3) && thisindex !== 2 && thisindex < last_image - 2){
		$(".block").animate({"top": "-=254px"}, "slow");
	}

	else if ( thisindex == selectedindex + 3 && thisindex > last_image - 3){
		$(".block").animate({"top": "-=127px"}, "slow");
	}
	
	else if ( thisindex == selectedindex + 2  && thisindex == last_image - 2 && last_image > 4){
		$(".block").animate({"top": "-=127px"}, "slow");
	}
	
	else if ( thisindex == selectedindex + 2 && thisindex == 2 && last_image > 4 ){
		$(".block").animate({"top": "-=127px"}, "slow");
	}

	else if ( thisindex < selectedindex && thisindex > 0 && thisindex < last_image - 3 ){
		$(".block").animate({"top": "+=127px"}, "slow");
	}
	
	$("li.selected").removeClass("selected");
	$(this).addClass("selected");	

});

$("a.next").click(function () {
	var imgselected = $('.block li.selected');
	var selectedindex = $('li.thumb').index(imgselected);
	var last_image = $("li.thumb").length;
	var next = selectedindex + 1;
	var nextimage = $('li.thumb:eq('+next+') img').attr("full_url");
	var nextcaption = $('li.thumb:eq('+next+') img').attr("caption");
	


	if (selectedindex < last_image - 1) {
						
		$("#gallery_inner").animate({"left": "-=602px"}, "slow");
		$("#gallery_caption").text("");
		$("#gallery_caption").text(nextcaption);	
		$(".block li.selected").removeClass("selected");
		$("li.thumb:eq(" +next+ ")").addClass("selected");
	}	

		
		if ( selectedindex > 0 && selectedindex < last_image - 3 ) {
			$(".block").animate({"top": "-=127px"}, "slow");
		}



});

$("a.previous").click(function () {
	var imgselected = $('.block li.selected');
	var selectedindex = $('li.thumb').index(imgselected);
	var number_of_images = $("li.thumb").length;
	var last_image = $("li.thumb").length;	
	var previous = selectedindex - 1;
	var previous_image = $('li.thumb:eq('+previous+') img').attr("full_url");
	var previous_caption = $('li.thumb:eq('+previous+') img').attr("caption");	


	if (selectedindex > 0) {
		$("#gallery_inner").animate({"left": "+=602px"}, "slow");
		$("#gallery_caption").text("");
		$("#gallery_caption").text(previous_caption);	
		$(".block li.selected").removeClass("selected");
		$("li.thumb:eq(" +previous+ ")").addClass("selected");	
	}	

		
		if ( selectedindex > 1 && selectedindex < last_image - 2) {
			$(".block").animate({"top": "+=127px"}, "slow");
		}

});

