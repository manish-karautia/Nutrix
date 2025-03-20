function showName() {
    let name = JSON.parse(localStorage.getItem("userName"))
    console.log(name[name.length - 1])
    document.getElementById("userName").innerText = name[name.length - 1]
}
showName();
let cardNumber = document.getElementById("cardNumber");
let mmyy = document.getElementById("mmyy");
let cvv = document.getElementById("cvv");
let zipCode = document.getElementById("zipCode");
let invalidPayment = document.getElementById("invalidPayment");
document.getElementById("placeOrder").addEventListener("click", function () {
    if (cardNumber.value == "" || mmyy.value == "" || cvv.value == "" || zipCode.value == "") {
        invalidPayment.style.display = "block";
    } else {
        invalidPayment.style.display = "none";
        alert("Order Succesfully Placed !");
        window.location.href = "./homePage.html";
    }
})

document.querySelector("#paymentHeader>div:nth-child(1)").addEventListener("click", function () {
    window.location.href = "./homePage.html"
})