const form = document.getElementById("booking-form");
const nameInput = document.getElementById("name");
const emailInput = document.getElementById("email");
const phoneInput = document.getElementById("phone");
const dateTimeInput = document.getElementById("date-time");
const commentsInput = document.getElementById("comments");

form.addEventListener("submit", function (event) {
	event.preventDefault();

	// You could add additional validation here if desired

	const formData = {
		name: nameInput.value,
		email: emailInput.value,
		phone: phoneInput.value,
		dateTime: dateTimeInput.value,
		comments: commentsInput.value
	};

	// You could add code here to send the form data to a server or store it in a database

	alert("Thank you for booking an appointment!");
	form.reset();
});
