# ⚡ Urja Insight: Electricity Demand Forecasting and Energy Analysis System

## 📌 Project Overview

Urja Insight is a machine learning-based electricity demand forecasting and energy analysis system developed to predict future peak electricity demand and analyze historical energy consumption patterns. The project combines data analytics, machine learning, business intelligence, and big data technologies to support efficient energy planning and decision-making.

The system analyzes historical electricity demand and supply data from 2020 to 2026 and generates future demand forecasts using predictive modeling techniques. Interactive dashboards and a web application provide insights into electricity demand trends, supply efficiency, and energy shortages.

---

## 🎯 Objectives

- Forecast future electricity peak demand using machine learning.
- Analyze historical electricity demand and supply patterns.
- Identify key factors influencing electricity demand.
- Visualize electricity consumption trends through interactive dashboards.
- Demonstrate the use of big data technologies for energy analytics.

---

## 📊 Dataset Information

The dataset contains monthly electricity demand and supply records from 2020 to 2026.

### Features

- Year
- Month
- Energy Requirement
- Energy Supplied
- Energy Not Supplied
- Energy Not Supplied (%)
- Peak Demand
- Peak Met
- Demand Not Met
- Demand Not Met (%)
- Date

### Target Variable

- Peak Demand

---

## 🔍 Exploratory Data Analysis (EDA)

The project includes:

- Data quality assessment
- Missing value analysis
- Duplicate record detection
- Trend analysis
- Correlation analysis
- Distribution analysis
- Peak demand pattern analysis
- Energy supply and shortage analysis

---

## ⚙️ Machine Learning Pipeline

### Data Preprocessing

- Missing value verification
- Duplicate record checking
- Data type validation
- Feature selection
- Data scaling using StandardScaler

### Feature Selection

Selected features:

- Year
- Month
- Peak Met
- Energy Requirement

Target:

- Peak Demand

### Models Implemented

- Linear Regression
- Random Forest Regressor
- Decision Tree Regressor

### Hyperparameter Tuning

- GridSearchCV
- Cross Validation

---

## 📈 Model Performance

| Model | R² Score |
|---------|---------|
| Linear Regression | 0.9992 |
| Random Forest Regressor | 0.9921 |
| Decision Tree Regressor | 0.9519 |

Linear Regression achieved the highest prediction accuracy among the evaluated models.

---

## 🔮 Future Demand Forecasting

The trained forecasting model predicts future peak electricity demand based on user-provided inputs such as:

- Year
- Month
- Peak Met
- Energy Requirement

Example future forecasts were generated for the year 2027.

---

## 🖥️ Streamlit Web Application

Features:

- Dataset Preview
- Electricity Demand Prediction
- Feature Importance Visualization
- Interactive User Interface
- Real-time Forecast Generation

---

## 📊 Business Intelligence Dashboards

### Tableau Dashboard

- Energy Requirement Analysis
- Energy Supply Analysis
- Peak Demand Analysis
- Shortage Trend Analysis

### Power BI Dashboard

- Supply Efficiency KPI
- Energy Requirement Trends
- Energy Supply Distribution
- Peak Demand Monitoring
- Energy Shortage Analysis

---

## 🗄️ SQL Analysis

SQL queries were used for:

- Dataset exploration
- Record retrieval
- Average Peak Demand analysis
- Year-wise demand analysis
- Data validation

---

## 📈 R Programming Analysis

Performed:

- Data exploration
- Correlation analysis
- Decision Tree modeling
- Model evaluation
- Feature importance analysis

---

## ☁️ Big Data Technologies

### Hadoop HDFS

- HDFS directory creation
- Dataset storage
- Distributed file management

### Apache Spark

- Dataset loading
- Data preview
- Schema verification
- Record count analysis

---

## 🛠️ Technologies Used

### Programming Languages
- Python
- SQL
- R

### Machine Learning Libraries
- Pandas
- NumPy
- Scikit-learn
- Matplotlib
- Seaborn

### Visualization Tools
- Streamlit
- Tableau
- Power BI

### Big Data Technologies
- Hadoop HDFS
- Apache Spark

### Database
- MySQL

---

## 📌 Key Findings

- Electricity demand showed a consistent upward trend from 2020 to 2026.
- Energy Requirement and Peak Demand exhibited strong positive correlation.
- Peak Met was identified as the most influential feature.
- Machine learning models achieved high forecasting accuracy.
- Interactive dashboards improved analysis and decision-making.

---

## 🚀 Future Enhancements

- Real-time electricity demand monitoring
- Weather-integrated forecasting
- Deep Learning models (LSTM, GRU)
- Cloud deployment
- State-wise demand forecasting
- Renewable energy integration

---

## 👨‍💻 Author

**Shadil K**  
Data Science Student  
G-TEC Centre of Excellence

---

## 📄 License

This project is developed for academic and educational purposes.
