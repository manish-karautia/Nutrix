function showName() {
    let name = JSON.parse(localStorage.getItem("userName"))
    console.log(name[name.length - 1])
    document.getElementById("userName").innerText = name[name.length - 1]
}
showName();