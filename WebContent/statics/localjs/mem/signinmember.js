$(function() {
	agree();
	$("#agree").click(function() {
		agree();
	});
})

function agree() {
	if($("#agree").is(':checked')){
		$('#next').removeAttr("disabled");
	}else{
		$('#next').attr('disabled',"true");
	}
}