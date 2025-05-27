# Project Overview – Revenue AI: Cognitive Analyst Challenge

This project is a two-part solution developed for the **Revenue AI – Cognitive Analyst Probation Task**, focused on Airbnb operations in Europe. It blends **data-driven pricing analytics** with **agentic user journey optimization**, addressing both strategic insight and technical execution.

---

## Task 1 – Barcelona Pricing Analytics

Using the latest [Inside Airbnb datasets](http://insideairbnb.com/get-the-data.html) for Barcelona, I conducted a comprehensive pricing analysis to identify key trends across **room types**, **neighborhoods**, and **seasonal patterns**.  

The project features:
- Python-based data processing
- A Tableau dashboard highlighting:
  - Average nightly prices
  - Listing availability
  - Guest engagement metrics  
- 📊 **View the Dashboard**: [Barcelona Airbnb Pricing Analysis on Tableau Public](https://public.tableau.com/views/BarcelonaAirbnbPricingAnalysis/Dashboard2?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

Final recommendations were tailored to **Javier, Airbnb’s Revenue Optimization Manager**, to guide host pricing strategies that align with market demand and seasonal trends.

---

## Task 2 – Budapest Booking Workflow Optimization

The second phase involved redesigning a booking system for Budapest properties by planning two complementary workflows:

1. **Manual UX Journey** – focused on reducing friction and improving clarity across the user flow.
2. **AI-Driven Agentic Workflow** – powered by:
   - `RAI Base` (user interaction + booking automation)
   - `RAI Price` (real-time pricing optimization)
   - `Postman Flows` (backend API orchestration)
   - `OpenAI` (natural language understanding and intent resolution)

By identifying a key pain point at the **payment stage**, I integrated:
- Simplified payment flows
- Trust signals
- Progress indicators
- Automated reminders

These enhancements reduce drop-offs and **increase booking completion rates**.  
Both workflows were visualized and compared to support **Javier’s dual strategy**—offering users both flexibility and automation through an intelligent system design.

---





# 📊 Revenue AI: Cognitive Analyst Challenge – Airbnb Pricing & Booking Intelligence

## Project Overview
This project was developed for the **Revenue AI – Cognitive Analyst Probation Task** and consists of two core components focused on Airbnb’s European operations. The work combines exploratory data analysis, data engineering, and UX optimization to surface pricing insights and streamline booking workflows using both manual and AI-enhanced methods.

---

## Task 1 – Barcelona Pricing Analytics

Using publicly available datasets from [Inside Airbnb](http://insideairbnb.com/get-the-data.html), this task involved a full descriptive analysis of listing performance in **Barcelona**. The primary goal was to uncover patterns in nightly pricing, neighborhood dynamics, and seasonality to inform pricing strategy decisions.

### 📌 Proposed Approach for Analysis
To ensure a robust and insight-driven process, the following steps were implemented:

1. **Data Preparation & Cleaning**
   - Removed nulls in critical fields (e.g., price, room type, ID)
   - Filtered listings to a valid price range (`0–850 EUR`) to eliminate outliers
   - Ensured valid date fields for time-based analysis
   - Removed duplicate entries using `ROW_NUMBER()` and kept only the latest records

2. **Data Integration**
   - Base table: `listings_viz`
   - Left joined with `listings` to pull in:
     - `review_scores_rating`
     - `estimated_revenue_l365d`
     - `bedrooms`, `beds`, `bathrooms`
   - Left joined with `reviews_viz` to bring in:
     - `review_date`

3. **Descriptive Analysis (SQL & Tableau)**
   - Seasonality trends: Monthly average pricing across years
   - Neighborhood-level price comparison
   - Room type vs. revenue performance
   - Guest review trends (total volume, recent engagement)
   - Distribution across price bands and estimated revenue

### 🧮 Tools Used
- Python (Pandas, Seaborn)
- SQL (BigQuery)
- Tableau (Dashboarding)
- Excel (initial validation)

### 📈 View Dashboard
👉 [Barcelona Airbnb Pricing Analysis – Tableau Public](https://public.tableau.com/views/BarcelonaAirbnbPricingAnalysis/Dashboard2)

### 💡 Final Recommendations
Tailored for Javier, Airbnb’s Revenue Optimization Manager:
- Prioritize premium pricing in high-demand neighborhoods (e.g., Eixample, Sant Martí)
- Promote full-home listings in spring months to capitalize on seasonality
- Use budget-friendly room types in slower months and low-engagement areas
- Target a citywide average price benchmark (~€140) for competitive alignment

---

## Task 2 – Budapest Booking Workflow Optimization

The second phase involved redesigning the booking system for Airbnb properties in Budapest. Two parallel user journeys were proposed to reduce friction and optimize revenue potential:

### 🛠 Manual UX Journey
- Streamlined UI with clearer booking options
- Simplified payment flows
- Use of trust signals and progress indicators

### 🤖 AI-Driven Agentic Workflow
Powered by:
- **RAI Base** – handles interaction and booking logic
- **RAI Price** – supports real-time dynamic pricing
- **Postman Flows** – manages backend orchestration
- **OpenAI** – understands user intent and personalizes responses

These intelligent workflows reduce user confusion and drop-off while increasing conversion rates and completion velocity.

---

## Outcome
This project demonstrates a complete analytical pipeline, from raw data preparation to business recommendations. The dual focus on pricing insights and product flow optimization enables Javier and his team to:

- Provide data-driven advice to Airbnb hosts
- Adapt booking flows for both manual and automated experiences
- Maximize revenue through strategic pricing and customer experience design

---

## 📂 Repository Structure

