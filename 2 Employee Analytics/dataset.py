import pandas as pd
import numpy as np

np.random.seed(42)

# List of Indian names
names = [
    "Amit Sharma", "Rahul Verma", "Priya Singh", "Neha Gupta", "Rohit Kumar",
    "Anjali Mehta", "Vikas Yadav", "Pooja Patel", "Suresh Reddy", "Kavita Nair",
    "Arjun Das", "Sneha Iyer", "Manish Jain", "Deepak Mishra", "Ritu Saxena",
    "Karan Malhotra", "Nisha Agarwal", "Aakash Pandey", "Swati Joshi", "Varun Bansal"
]


# -------------------------------
# 1. Departments Table
# -------------------------------
departments = pd.DataFrame({
    "dept_id": [1, 2, 3, 4, 5],
    "dept_name": ["HR", "Finance", "IT", "Marketing", "Sales"]
})

departments.to_csv("departments.csv", index=False)


# -------------------------------
# 2. Employees Table
# -------------------------------
n = 10000

employees = pd.DataFrame({
    "emp_id": range(1, n+1),
    "emp_name": np.random.choice(names, n),
    "dept_id": np.random.choice(departments["dept_id"], n),
    "job_level": np.random.choice(["Junior", "Mid", "Senior", "Manager"], n),
    "gender": np.random.choice(["Male", "Female"], n),
    "experience_years": np.random.randint(1, 15, n),
    "location": np.random.choice(["Bangalore", "Mumbai", "Delhi", "Chennai"], n),
    "salary": np.random.randint(30000, 150000, n),
    "bonus": np.random.randint(5000, 30000, n),
    "attrition": np.random.choice(["Yes", "No"], n, p=[0.2, 0.8])
})

employees.to_csv("employees.csv", index=False)

print("Both datasets created successfully!")