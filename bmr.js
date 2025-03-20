function calculateBMR() {
    // Get user inputs
    var gender = document.getElementById("gender").value;
    var age = parseInt(document.getElementById("age").value);
    var height = parseInt(document.getElementById("height").value);
    var weight = parseInt(document.getElementById("weight").value);

    // Calculate BMR using Harris-Benedict formula
    if (gender === "male") {
        var bmr = 88.36 + (13.4 * weight) + (4.8 * height) - (5.7 * age);
    } else {
        var bmr = 447.6 + (9.2 * weight) + (3.1 * height) - (4.3 * age);
    }

    // Display result
    var resultElement = document.getElementById("result");
    resultElement.innerHTML = "Your BMR is: " + bmr.toFixed(2) + " calories per day";
}
