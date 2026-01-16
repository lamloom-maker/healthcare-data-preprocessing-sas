# Healthcare Data Preparation & Exploratory Analytics (SAS)

This project demonstrates an end-to-end **healthcare data preprocessing and exploratory analytics** workflow using **SAS**, focused on diabetes-related health indicators.  
It highlights the ability to transform raw medical data into a clean, analysis-ready format and extract meaningful insights to support **data-driven healthcare decision-making**.

---

## Problem Statement
Healthcare datasets often suffer from missing values, inconsistent formats, and noisy measurements.  
Without a structured preprocessing and exploration pipeline, analytics results and downstream predictive models can be unreliable or misleading.

This project addresses how to:
- assess healthcare data quality and completeness,
- clean and standardize medical indicators,
- perform exploratory statistical analysis,
- prepare the dataset for future predictive modeling and reporting.

---

## Dataset
The dataset consists of medical records for several hundred patients and includes:
- Glucose, cholesterol, and blood pressure measurements
- Body measurements (e.g., BMI or related indicators)
- Demographic attributes

> **Note:** The dataset is not included in this repository due to privacy and licensing constraints.

---

## Key Questions
- Is the dataset sufficiently complete for analytics or modeling?
- Which health indicators show notable statistical patterns?
- Are there missing-data patterns that may bias analysis results?

---

## Approach
1. **Data import and inspection** (structure, variable types, samples)
2. **Missing value analysis** and completeness assessment
3. **Data cleaning and standardization**
4. **Exploratory statistical analysis**
5. **Frequency and correlation analysis**
6. **Basic visual exploration** (distributions and histograms)

---

## Methods (SAS Procedures)
- `PROC IMPORT`, `PROC CONTENTS`, `PROC PRINT`
- Missing value analysis using `CMISS`
- `PROC MEANS`, `PROC FREQ`, `PROC CORR`
- `PROC SGPLOT` for visual exploration

---

## How to Run
1. Place the dataset in:
data/diabetes_upd.csv

2. Run the SAS script:
   data_preprocessing.sas

   
---

## Outputs
The project produces:
- A structured, analysis-ready healthcare dataset
- Descriptive statistics and frequency tables
- Correlation analysis between health indicators
- Visual summaries to support exploratory insights

---

## Project Relevance
This project reflects real-world healthcare analytics workflows where **data quality and EDA** are critical before:
- building predictive or risk models,
- delivering insights to stakeholders,
- developing dashboards or decision-support tools.

It demonstrates practical experience in **healthcare data preprocessing, statistical analysis, and analytical thinking using SAS**.

---

## Next Steps
- Apply imputation strategies for missing values
- Develop a baseline predictive model (e.g., diabetes risk classification)
- Summarize findings for non-technical stakeholders in a report or dashboard

---

## Tools
- SAS
- CSV dataset
