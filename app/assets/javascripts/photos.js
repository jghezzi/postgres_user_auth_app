$(function() {
	
	$('#image-1-small').click (function() {
		 //$(this).removeClass("small-image");
		 //$(this).addClass("show-image");
		//var img = $("#image1");
		var my_image = $(this).attr('src');
		// $(this).removeClass(my_image);
		// $(this).addClass(my_image);
		console.log(my_image);
		//$('#image-2-large').hide("slow");
		$('#image-2-large').hide("slow");
		$('#image-1-large').show("slow");
		//$('.show-image').html(my_image).css("display", "block");
	});

	$('#image-2-small').click (function() {
		 //$(this).removeClass("small-image");
		 //$(this).addClass("show-image");
		//var img = $("#image1");
		var my_image = $(this).attr('src');
		// $(this).removeClass(my_image);
		// $(this).addClass(my_image);
		console.log(my_image);
		$('#image-1-large').hide("slow");
		$('#image-2-large').show("slow");
		//$('.show-image').html(my_image).css("display", "block");
	});
});