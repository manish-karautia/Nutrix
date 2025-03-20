const appId = 'bc69168d';
const appKey = '8efa258151534be97544d824f874e7f4';

const inputField = document.getElementById('food-input');
const submitBtn = document.getElementById('submit-btn');
const resultsSection = document.getElementById('results');

submitBtn.addEventListener('click', () => {
    const foodItem = inputField.value;

    fetch(`https://api.edamam.com/api/nutrition-data?app_id=${bc69168d}&app_key=${8efa258151534be97544d824f874e7f4
}&ingr=${foodItem}`)
        .then(response => response.json())
        .then(data => {
            resultsSection.innerHTML = `
        <div>
          <><h2>Nutritional Information for ${foodItem}</h2><p>${data.totalNutrients.ENERC_KCAL.label}: ${data.totalNutrients.ENERC_KCAL.quantity.toFixed(1)} ${data.totalNutrients.ENERC_KCAL.unit}</p><p>${data.totalNutrients.PROCNT.label}: ${data.totalNutrients.PROCNT.quantity.toFixed(1)} ${data.totalNutrients.PROCNT.unit}</p><p>${data.totalNutrients.FAT.label}: ${data.totalNutrients.FAT.quantity.toFixed(1)} ${data.totalNutrients.FAT.unit}</p><p>${data.totalNutrients.CHOCDF.label}: ${data.totalNutrients.CHOCDF.quantity.toFixed(1)} ${data.totalNutrients.CHOCDF.unit}</p></>
        </div>
      `;
        })
        .catch(error => console.log(error));
});
