function calculateCalories() {
    // Get the selected activity and time spent
    var activity = document.getElementById("activity").value;
    var time = document.getElementById("time").value;

    // Calculate the calories burned based on the activity and time spent
    var calories = 0;
    switch (activity) {
        case "cycling":
            calories = 8 * time;
            break;
        case "running":
            calories = 10 * time;
            break;
        case "weight-lifting":
            calories = 5 * time;
            break;
        case "yoga":
            calories = 3 * time;
            break;
        default:
            calories = 0;
    }

    // Display the result
    var result = document.getElementById("result");
    if (calories > 0) {
        result.innerHTML = "You burned " + calories + " calories.";
    } else {
        result.innerHTML = "Please select an activity and enter the time spent.";
    }
}
