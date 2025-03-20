function myfun1() {
    let img = document.getElementById("rightimg1");
    let btn = document.getElementById("btn1");
    btn.innerHTML = "";
    img.src = ""
}

async function data() {
    let search = document.getElementById("searchFruit").value;
    console.log(search)
    let res = await fetch(`http://localhost:3000/${search}/`);
    let data = await res.json();
    let maindiv = document.getElementById("container")

    for (let i = 0; i < data.length; i++) {
        let div = document.createElement("div");
        div.setAttribute("id", "parent")
        let div1 = document.createElement("div");
        div1.setAttribute("id", "div1")
        let div2 = document.createElement("div")
        div2.setAttribute("id", "div2")
        let name = document.createElement("h2")
        name.textContent = data[i].Name;
        let quantity = document.createElement("p");
        quantity.innerHTML = "Quantity :" + data[i].Quantity;
        let div3 = document.createElement("div");
        div3.setAttribute("id", "div3");
        let calorie = document.createElement("p");
        calorie.innerHTML = "Calories  " + data[i].Calories;
        let calorie1 = document.createElement("h3");
        calorie1.setAttribute("id", "calorie1")
        calorie1.innerHTML = data[i].Calories + " calorie"
        let carb = document.createElement("p");
        carb.innerHTML = ". Carb  " + data[i].Carbs;
        let fat = document.createElement("p");
        fat.innerHTML = ". Fat  " + data[i].Fat;
        let protein = document.createElement("p");
        protein.innerHTML = ". Protein  " + data[i].Protein;
        div3.append(calorie, carb, fat, protein);
        div1.append(name, quantity, div3)
        div2.append(calorie1)
        div.append(div1, div2)
        maindiv.append(div)
        document.getElementById("foodAnalysis").style.display = "none"
    }
}
let input = document.getElementById("searchFruit");
input.addEventListener("keypress", function (event) {
    if (event.key === "Enter") {
        data();
    }
})