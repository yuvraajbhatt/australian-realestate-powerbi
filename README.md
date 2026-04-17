# 🏠 Australian Real Estate Market Analysis

An end-to-end data analysis project exploring the Australian real estate market. Raw property data was cleaned and engineered using **R**, then visualised in an interactive **Power BI** dashboard across 3 report pages.

---

## 🔄 Project Workflow

```
Raw Data (aus_real_estate.csv)
        ↓
Data Cleaning & Feature Engineering (R / tidyverse)
        ↓
Cleaned CSV (Cleaned_Real_Estate_For_PowerBI.csv)
        ↓
Interactive Dashboard (Power BI)
```

---

## 📊 Power BI Dashboard

The report contains **3 pages** with a range of interactive visuals:

| Page | Description |
|---|---|
| Executive Overview | High-level KPIs and summary cards across the market |
| Detailed Insights | Deep-dive into price trends, property age, and market segments |
| Interactive Explorer | Slicers and filters to explore data by state, price tier, and property type |

**Visuals used:** Cards, Donut Chart, Scatter Chart, 100% Stacked Column Chart, Map, Pivot Table, Slicers

---

## 🧹 R Data Cleaning (data_cleaning.R)

The raw dataset was processed using `tidyverse` with the following transformations:

| Feature | Transformation |
|---|---|
| `State` | Derived from `City` using `case_when` (Sydney → NSW, Melbourne → VIC, etc.) |
| `Garage` | Converted from binary (0/1) to readable Yes/No |
| `Price_Per_SqFt` | Calculated as `Price / SqFt` (rounded to 2 decimal places) |
| `Property_Age` | Calculated as `2026 - Year_Built` |
| `Price_Tier` | Segmented into Entry-Level (<$750k), Mid-Market ($750k–$1.5M), Premium ($1.5M+) |

Duplicates removed using `distinct()` before export.

---

## 📁 Files

```
australian-realestate-powerbi/
├── Yuvraj_Bhatt.pbix       # Power BI dashboard
├── data_cleaning.R         # R script for data cleaning
└── README.md
```

---

## 🛠 Tools Used

- **R** — tidyverse (data cleaning & feature engineering)
- **Power BI Desktop** — dashboard design and visualisation

---

## 🚀 How to Run

**R Script:**
1. Place `aus_real_estate.csv` in your working directory
2. Run `data_cleaning.R` — this outputs `Cleaned_Real_Estate_For_PowerBI.csv`

**Power BI:**
1. Open `Yuvraj_Bhatt.pbix` in [Power BI Desktop](https://powerbi.microsoft.com/desktop/) (free)

---

## 👤 Author

**Yuvraj Bhatt**  
[LinkedIn](linkedin.com/in/yuvraj-bhatt-b9b5301b5) · [GitHub](yuvrajbhatt9865.url)
