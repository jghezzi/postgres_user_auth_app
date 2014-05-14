$(function() {

	$(".divone").click(function () {
    $(this).addClass("divtwo")
	});

// 	$('#new_submit').click(function(){
//    if($('#new_email').val() == ''){
//       alert('Input can not be left blank');
//    }
// });
	// $(document).ready

		$("#new_submit").click (function() {
			var myText = $("#user_email").val();
			var myPass = $("#user_password").val();
			var myPassConfirm = $("#user_password_confirmation").val();
			if(myText.length >0 && myPass.length >0 && myPassConfirm.length >0){
				alert("Submission Complete");
			} else {
				alert("Missing E-mail or Password Information");
			};
		});	

});

// 	console.log("this is output")
// 	$("#special").on("click", function(){
// 		$(this).hide("slow");
// 	});
// });

  //$('form#myForm').submit()
