$(function() {
	$("#numberApplicantsResults").text(
			$('#numberApplicants option:selected').text());
	$("#numberApplicantsResults").text(
			$('#numberApplicants option:selected').text());

	$('#numberApplicants').on(
			'change',
			function() {
				$("#numberApplicantsResults").text(
						$('#numberApplicants option:selected').text());
			});

	$("#visaTypesResults").text($('#visaTypes option:selected').text());
	$('#visaTypes').on('change', function() {
		$("#visaTypesResults").text($('#visaTypes option:selected').text());
	});

	$("#visaPurposeResutls").text($('#visaPurpose option:selected').text());
	$('#visaPurpose').on(
			'change',
			function() {
				$("#visaPurposeResutls").text(
						$('#visaPurpose option:selected').text());
			});

	$("#visaServiceResults").text($('input[name=radiogroup]:checked').val());

	$("input[name=radiogroup]:radio").change(
			function() {
				$("#visaServiceResults").text(
						$('input[name=radiogroup]:checked').val());

			});
	totalPrice() ;
	$("input, select").change(
			function() {
				var numberApplicant = parseInt($(
						'#numberApplicants option:selected').text().charAt(0));
				var purpose = $('#visaPurpose option:selected').text();
				var types = $('#visaTypes option:selected').text();
				var process = $('input[name=radiogroup]:checked').val();
				var country = $('#strCountry option:selected').text();
				$("#visaTotal").text(
						calculate(numberApplicant, purpose, types, process,
								country));

			});

});
function totalPrice() {
	var numberApplicant = parseInt($('#numberApplicants option:selected')
			.text().charAt(0));
	var purpose = $('#visaPurpose option:selected').text();
	var types = $('#visaTypes option:selected').text();
	var process = $('input[name=radiogroup]:checked').val();
	var country = $('#strCountry option:selected').text();
	$("#visaTotal").text(
			calculate(numberApplicant, purpose, types, process, country));
}
function calculate(numberApplicant, purpose, types, process, country) {
	var eTouristType = new Hashtable();
	var eBusinessType = new Hashtable();
	var dTouristType = new Hashtable();

	var fee = 0;
	var available = true;
	eTouristType.put("1 month single", "12");
	eTouristType.put("3 month single", "22");
	eTouristType.put("1 month mutilple", "17");
	eTouristType.put("3 month mutilple", "40");

	eBusinessType.put("1 month single", "12");
	eBusinessType.put("1 month mutilple", "19");
	eBusinessType.put("3 month single", "Not available");
	eBusinessType.put("3 month mutilple", "Not available");

	dTouristType.put("1 month single", "30");
	dTouristType.put("3 month single", "45");
	dTouristType.put("1 month mutilple", "45");
	dTouristType.put("3 month mutilple", "55");

	var total = 0;

	if ($.inArray(country, listDiffcultCountry) != 0) {
		fee = 0;
		if (process == "Normal Service") {
			fee = 0;
		}
		if (process == "Urgent") {
			fee = 10;
		}
		if (process == "Emergency") {
			fee = 20;
		}
		if (purpose == "Tourism") {
			total = numberApplicant * eTouristType.get(types) + fee;

		}
		if (purpose == "Business") {
			total = numberApplicant * eBusinessType.get(types) + fee;

		}

	} else if ($.inArray(country, listDiffcultCountry) == 0) {
		fee = 0;
		if (process == "Normal Service") {
			fee = 0;
		}
		if (process == "Urgent") {
			fee = 20;
		}
		if (process == "Emergency") {
			fee = 35;
		}
		if (purpose == "Tourism") {
			total = numberApplicant * dTouristType.get(types) + fee;

		}
		if (purpose == "Business") {
			total = 0;

		}

	}
	if (total > 0)
		return total + " USD";
	else
		return "Not available";

}
