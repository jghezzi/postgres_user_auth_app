$(function() {

	$(':checkbox').on('click', function(){
		
		var row = $(this).parents('tr');
		console.log(row);
		list_id = $(this).attr('data-list-id');
		console.log(list_id)

		$.ajaxSetup({
		  headers: {
		    'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
		  }
		});

		$.ajax({

			url: 	"lists/" + list_id,
			type: 'DELETE',

			success: function(data){
				console.log(data);
				if (data == "1") {
					$(row).hide("slow");
					console.log("true");
				}
				else {
					console.log("false");
					$(row).addClass("failed");
				}
			}

		});
	});
});