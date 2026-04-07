import pandas as pd
import sqlite3

# Connect to SQLite database
conn = sqlite3.connect("sales.db")

# Load data from database table
df = pd.read_sql_query("SELECT * FROM sales", conn)

# --- 1. Total Sales by Product Line ---
product_sales = df.groupby("Product line")["Sales"].sum().sort_values(ascending=False)
print("\nTotal Sales by Product Line:\n", product_sales)

# --- 2. Total Sales by City ---
city_sales = df.groupby("City")["Sales"].sum().sort_values(ascending=False)
print("\nTotal Sales by City:\n", city_sales)

# --- 3. Total Sales by Gender ---
gender_sales = df.groupby("Gender")["Sales"].sum().sort_values(ascending=False)
print("\nTotal Sales by Gender:\n", gender_sales)

# --- 4. Save results to CSV (optional but nice for GitHub) ---
product_sales.to_csv("product_sales.csv")
city_sales.to_csv("city_sales.csv")
gender_sales.to_csv("gender_sales.csv")

# Close connection
conn.close()
