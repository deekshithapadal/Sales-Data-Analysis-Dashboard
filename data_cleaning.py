import pandas as pd

# Load dataset
df = pd.read_csv("sales_data.csv")

# Check null values
print(df.isnull().sum())

# Drop or fill missing values
df = df.dropna()

# Convert date column
df['Order Date'] = pd.to_datetime(df['Order Date'])

# Remove duplicates
df = df.drop_duplicates()

# Save cleaned data
df.to_csv("cleaned_sales_data.csv", index=False)

print("Data cleaned successfully!")
