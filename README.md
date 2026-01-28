# Marketing Funnel & Revenue Attribution | End-to-End Analysis
> **A Strategic Deep-Dive Linking Lead Acquisition to E-commerce Profitability**

## 📖 Table of Contents
* [Project Overview](#-project-overview)
* [Tech Stack & Tools](#-tech-stack--tools)
* [Executive Summary & Recommendations](#-executive-summary--recommendations)
* [Visual Insights & Performance Analysis](#-visual-insights--performance-analysis)
* [Project Context & Data Pipeline](#-project-context--data-pipeline)
* [Assumptions & Caveats](#-assumptions--caveats)
* [Repository Structure](#-repository-structure)
* [How to Reproduce](#-how-to-reproduce)
* [Author](#-author) 

## 📌 Project Overview
This analysis serves as a **Strategic Business Intelligence** layer for Olist. By analyzing marketing acquisition within a $13.5M+ e-commerce platform, I have mapped the seller journey for a specialized bridge of sellers generating **$676,851** in attributed revenue.

The **goal** is to move beyond simple "lead counting" and uncover the true ROI of marketing spend by identifying which channels bring in the most profitable and reliable sellers.

### 🎯 The "Big 5" Business Questions
To provide a 360-degree view of marketing performance, this project answers:
1. **Conversion Efficiency** 
   * Which marketing origins provide the highest quality leads (Lead-to-Deal)?
2. **Sales Velocity** 
   * How long does it take to close a deal across different channels?
3. **Revenue Attribution** 
   * Which channels drive the highest Gross Merchandise Volume (GMV) and Average Order Value (AOV)?
4. **Niche Profitability** 
   * Which business segments (industries) are the "hidden gems" of the platform?
5. **Customer Satisfaction** 
   * Do specific marketing sources lead to higher-quality sellers and better review scores?

## 🛠️ Tech Stack & Tools
* **Database Management**
   * **PostgreSQL** (Relational modeling, complex multi-table JOINs, and Data Integrity enforcement via Composite Primary Keys).
* **Database Clients**
   * **pgAdmin4** & **DBeaver** (Schema architecture and high-performance bulk data loading using `COPY` commands).
* **Data Processing**
   * **Python / Pandas** (End-to-end ETL pipelines, string vectorization for label cleaning, and financial data type optimization).
* **Visualization**
   * **Seaborn & Matplotlib:** Advanced custom-branded "Olist Dark Theme" visualizations, including Dual-Axis Line/Bar charts and Lollipop charts.
   * **Squarify:** Treemap implementation for hierarchical Business Segment market-share analysis.
* **Environment & Ops**
   * **VS Code**, **Jupyter Notebooks**, and **Git/GitHub** for version control and documentation.

## 🏆 Executive Summary & Recommendations
Based on this end-to-end analysis of Olist's marketing funnel and sales performance, I have identified four primary strategic pillars for growth.
1. **Target the "Golden Goose" Niches** 
   * The **Watches** segment is highly under-penetrated. With an average revenue of **$39,092 per seller**, marketing should pivot to specifically target high-end watch distributors to maximize GMV with minimal seller overhead.
2. **Optimize "Slow Burn" Channels** 
   * **Social Media** leads take over 60 days to close with low conversion rates (5.56%). The sales team should implement automated lead-nurturing workflows for this channel to reduce the manual effort spent on lower-intent leads.
3. **Prioritize Quality Acquisition** 
   * **Email and Organic Search** leads not only result in the highest **AOV ($353.54)** but also the highest customer satisfaction scores (4.3+). These channels should be the cornerstone of Olist's "High-Value Seller" acquisition programs.
4. **Efficiency Over Volume** 
   * While **Paid Search** drives high lead volume, its AOV is lower than organic channels. Olist should test shifting a portion of the Paid Search budget into SEO and Referral programs to attract higher-ticket sellers with better long-term retention.

## 📈 Visual Insights & Performance Analysis
To maintain a professional and cohesive aesthetic, I developed a custom "Olist Dark Brand" for all visualizations, focusing on high-contrast Electric Cyan accents against a modern slate background.
### 1. Lead Quality: Conversion Rate by Marketing Origin
This analysis identifies the "quality" of leads entering the funnel. While volume varies, identifying the origins that convert at the highest rate is critical for sales efficiency.

![Conversion Rate](assets/Lead-to-Deal%20Conversion%20Rate%20by%20Marketing%20Origin.png)

* **Key Finding:** "Unknown" origins (likely direct-to-site or brand-driven traffic) lead with a dominant **16.65% conversion rate**.
* **Efficiency Insight:** **Paid Search** (12.30%) and **Organic Search** (11.80%) show nearly identical conversion profiles, proving that Olist's brand strength matches its paid acquisition efforts.

### 2. Marketing Efficiency: Conversion vs. Velocity
By plotting the **Lead-to-Deal Conversion Rate** against the **Average Days to Close**, I created a "Magic Quadrant" to find the "Sweet Spot" of marketing performance.

![Efficiency Matrix](assets/Marketing%20Efficiency%20-%20Conversion%20Rate%20vs.%20Velocity.png)

* **The Velocity Leader:** **Display Ads** are the fastest to close (10.3 days), indicating leads from this channel have high immediate intent.
* **The "Slow Burn":** **Social Media** leads represent the highest overhead for the sales team, taking an average of **61 days** to close with the lowest conversion efficiency.

### 3. Financial Impact: Revenue Attribution & Order Quality
Linking acquisition data to the $13.5M+ revenue bridge reveals the true financial weight of each channel.

![Revenue and AOV](assets/Revenue%20Impact%20vs.%20Order%20Quality%20by%20Origin.png)

* **The Volume Drivers:** **Organic Search** and **Unknown** origins contribute the bulk of total GMV (over $420k combined).
* **The "Whale" Channel:** While order volume is lower, **Email marketing** produces the highest **Average Order Value (AOV) at $353.54**—more than triple the value of Social Media leads.

### 4. Niche Profitability: Business Segment Analysis
Not all seller industries perform equally. By analyzing the top 10 business segments, I identified where marketing acquisition spend is most effective relative to seller volume.

![Business Segment Treemap](assets/Revenue%20Share%20by%20Business%20Segment%20(Size%20=%20Total%20GMV).png)

* **The Golden Goose:** The **Watches** segment is a massive outlier in efficiency; just **3 sellers generated over $117k in GMV** ($39k avg. per seller).
* **Core Stability:** **Health & Beauty** is the most mature segment, providing high total volume and a dense, reliable seller community.
* **Optimization Opportunity:** Segments like **Home Decor** show high seller counts but lower average revenue, suggesting high competition and lower individual ROI.

### 5. Quality Control: Customer Satisfaction by Origin
Sustainable growth depends on the quality of the sellers acquired. I mapped marketing origins to customer review scores to ensure acquisition channels are bringing in reliable partners.

![Customer Satisfaction](assets/Customer%20Satisfaction%20-%20Average%20Review%20Score%20by%20Origin.png)

* **Top-Tier Quality:** **Email** (4.35) and **Organic Search** (4.33) leads result in the highest customer satisfaction, reinforcing their status as premium acquisition sources.
* **Consistency at Scale:** **Paid Search** maintains a strong 4.25 score despite having the highest volume of reviews (1,444), proving that scaling this channel does not compromise quality.
* **The Red Flag:** Experimental sources categorized as **"Other"** show a significant drop to 3.53, indicating these sellers require stricter onboarding vetting.

## 📌 Project Context & Data Sources
This repository serves as the "commercial layer" of a larger data ecosystem. It bridges the gap between marketing lead acquisition and financial performance by integrating funnel data with processed logistics data from an upstream project.

### 🔗 Data Sources & Dependencies
* **Primary Datasets** 
   * [Marketing Funnel by Olist (Kaggle)](https://www.kaggle.com/datasets/olistbr/marketing-funnel-olist)
   * [Brazilian E-Commerce Public Dataset (Kaggle)](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
* **Upstream Project Dependency** 
   * This analysis requires processed files generated in the [Ecommerce-Logistics-And-Revenue-Optimization](https://github.com/ZoranG99/Ecommerce-Logistics-And-Revenue-Optimization) repository.

## ⚠️ Assumptions & Caveats
To ensure the integrity of the strategic recommendations, the following constraints were applied to the analysis.
* **Currency Simulation** 
   * Original values in Brazilian Reals (BRL) were formatted as **USD ($)** to simulate a US-based executive reporting environment.
* **The "Bridge" Dataset** 
   * Revenue attribution is based on a "Bridge" of **380 unique sellers**. Financial totals ($676k+) reflect the performance of these specific sellers tracked through the marketing funnel, rather than the entire $13.5M+ Olist platform analyzed in my previous project.
* **Attribution Logic** 
   * This analysis uses a **First-Touch Attribution** model based on the "Origin" recorded when the lead first entered the Olist marketing funnel.
* **Data Date Range** 
   * The analysis uses historical data (2016–2018). While the logic is scalable, it does not reflect 2025 market volatility or recent e-commerce trends.
* **Lead Anonymity** 
   * Leads with an "Unknown" origin were retained in the analysis as they represent a significant portion of the GMV, likely driven by direct brand equity or word-of-mouth.

## 📂 Repository Structure
The project is organized to ensure full reproducibility, following a logical flow from raw data to final business insights.

```text
Marketing-Funnel-And-Revenue-Attribution/
├── assets/                     # High-resolution branded visualizations
├── data/                       # Data directory (Datasets ignored, structure preserved)
│   ├── processed/              # Processed CSVs ready for database upload
│   │   └── Ecommerce-Logistics-And-Revenue-Optimization_processed/  # Refined logistics data
│   └── raw/                    # Original Kaggle datasets
├── scripts/                    # Codebase for analysis
│   ├── PostgreSQL/             # Numbered SQL analysis scripts (01-07)
│   └── Python/                 # ETL, Data Cleaning, and Visualization Notebooks
├── .gitignore                  # Excludes large datasets and archives
└── README.md                   # Comprehensive project documentation
```

## 🚀 How to Reproduce
This project follows a strict execution order to maintain data integrity across the pipeline.
1. **Data Pipeline & External Dependencies**
   * This analysis requires processed files from the [Ecommerce-Logistics-And-Revenue-Optimization](https://github.com/ZoranG99/Ecommerce-Logistics-And-Revenue-Optimization) project.
   * Download raw datasets from Kaggle (links in [📌 Project Context](#-project-context--data-pipeline)).
   * Run the [01_etl_pipeline.ipynb](https://github.com/ZoranG99/Ecommerce-Logistics-And-Revenue-Optimization/blob/main/scripts/01_etl_pipeline.ipynb) from the logistics project.
   * Place the resulting files into: `data/processed/Ecommerce-Logistics-And-Revenue-Optimization_processed/`.
2. **Data Staging & Cleaning (Python)**
   * Run **`scripts/Python/01_Data_Cleaning_and_Database_Upload.ipynb`**.
   * This script merges the marketing leads with logistics data to create the **`cleaned_marketing_funnel.csv`** and automatically uploads all tables to your PostgreSQL instance.
3. **Database Analysis (PostgreSQL)**
   * Once the tables are staged, navigate to `scripts/PostgreSQL/`.
   * Execute scripts **01_create_and_import.sql** through **07_review_score_correlation.sql** in numerical order to generate the core analytical tables.
4. **Final Visualization (Python)**
   * Run **`scripts/Python/02_Final_Analysis_Visuals.ipynb`** to generate the branded "Olist Dark Theme" charts showcased in this report.

## 👤 Author
**Zoran Gusic**
* [LinkedIn](https://www.linkedin.com/in/zoran-gusic-28910a242/)
* [Upwork](https://www.upwork.com/freelancers/~01ebd850cecc962829)
* [GitHub](https://github.com/ZoranG99)
