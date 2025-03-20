# Nutrix
Nutrix is a comprehensive nutrition management app that enables users to track daily food intake, calculate BMI, set fitness goals, subscribe to premium plans, and hire a nutritionist for personalized guidance.
# MyFitnessPal - Clone

## 📌 Project Overview
MyFitnessPal is a smartphone app and website that tracks diet and exercise. This is a **full-stack** collaborative project, built as a clone of [MyFitnessPal](https://www.myfitnesspal.com/).  

The project was completed within **1 Month** which results in enhancing my skills in **frontend, backend, and database integration**.

## 🚀 Tech Stack  
- **Frontend:** HTML, CSS, JavaScript, React (18.2.0), Chakra UI (2.2.4) , Bootstrap 
- **State Management:** Redux (4.2.0), Redux Thunks (4.2.1)  
- **Backend:** C# 
- **Database:** Microsoft SQL Server Mangement Studio


## 🌟 Features & Functionalities
✅ **User Authentication:** Sign-up & Sign-in  
✅ **Manage Diet:** Track and modify daily meals  
✅ **Food Logging:** Add/delete food under Breakfast, Lunch, Snack, and Dinner  
✅ **Blog Section:** View health-related blogs  

## 🔗 Project Links  
- **Original Website:** [MyFitnessPal](https://www.myfitnesspal.com/)    


## 📂 Installation & Setup  
To run this project locally using Visual Studio, follow these steps:  

1️⃣ Clone the Repository
bash

git clone https://github.com/your-username/myfitnesspal-clone.git
cd myfitnesspal-clone
2️⃣ Open in Visual Studio
Open Visual Studio and select Open a project or solution
Navigate to the cloned folder and open the .sln (Solution) file
3️⃣ Configure Microsoft SQL Server Database
Open Microsoft SQL Server Management Studio (SSMS)
Create a new database (e.g., MyFitnessPalDB)
Run the provided SQL scripts (database.sql) to set up tables for food logging, user authentication, and diet tracking
Update the connection string in appsettings.json:
json

"ConnectionStrings": {
  "DefaultConnection": "Server=YOUR_SERVER_NAME;Database=MyFitnessPalDB;Trusted_Connection=True;"
}
4️⃣ Run the Backend (ASP.NET + C# API)
Set the API project as the startup project
Press F5 or click Run to start the backend
5️⃣ Run the Frontend (Live Server)
Open the frontend project in Visual Studio Code
Install dependencies:
bash

npm install
Start the frontend server:
bash

npm start
6️⃣ Access the Application
The backend API will run on https://localhost:5001 or https://localhost:5000
The frontend will run on http://localhost:3000
Open a browser and go to http://localhost:3000 to access MyFitnessPal Clone

### Clone the Repository  
```bash
git clone https://github.com/your-username/myfitnesspal-clone.git
cd myfitnesspal-clone

