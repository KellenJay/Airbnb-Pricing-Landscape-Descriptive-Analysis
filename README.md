# Revenue Optimization Analysis - Project Overview 

This repository focused exclusively on optimizing Airbnb operations in **Barcelona** through data analytics and agentic system design. Led by the fictional persona **Javier**, Revenue Optimization Manager at Airbnb Europe, the project combines descriptive pricing insights with manual and AI-enhanced booking workflows to drive higher conversion rates and better inform host strategy.

---

## Business Objective

To improve revenue and user satisfaction across Airbnb’s Barcelona market by:
- Analyzing pricing patterns and seasonal trends.
- Redesigning the booking experience to reduce friction and increase conversions.
- Supporting hosts with data-informed pricing strategies.

---

## Stakeholder Context

**Javier** oversees pricing and booking operations in Barcelona. After noticing high drop-off rates during booking (especially at the payment step), Javier initiated this two-part project:
- **Task 1**: Understand which listings perform best across seasons, room types, and neighborhoods.
- **Task 2**: Streamline the booking journey using both **manual UX** and **AI-powered workflows**.

---

## Requirements Engineering Framework (Business/ BI Analyst Lens)

## Stakeholder Matrix

| Stakeholder                  | Power  | Interest | Strategy             | Classification |
| ---------------------------- | ------ | -------- | -------------------- | -------------- |
| Sponsor (VP of Ops)          | High   | Medium   | Keep Satisfied        | 🔴 Resistant    |
| Head of Revenue (Europe)     | High   | High     | Manage Closely        | 🟢 Supportive   |
| Shareholders                 | High   | Low      | Keep Satisfied        | ⚪ Neutral      |
| Airbnb Hosts                 | Low    | High     | Keep Informed         | 🟢 Supportive   |
| End Users (Guests)           | Medium | Medium   | Educate via chatbot   | 🟡 Cautious     |
| Cognitive/ Data Analysts     | Medium | High     | Collaborate Closely   | 🟢 Supportive   |
| UX/UI Designers              | Medium | Medium   | Consult As Needed     | ⚪ Neutral      |
| System Admin                 | Low    | Low      | Monitor               | 🟢 Supportive   |

### Techniques Used

- **Interviews + Prototyping**: Based on stakeholder persona “Javier”
- **Document Analysis**: Airbnb documentation & user journey constraints
- **MoSCoW Prioritization**:
  - Must-have: Room search, Booking, Cancellation
  - Should-have: Booking history filter + print
  - Could-have: Email reminders, trust signals
  - Won’t-have: Multi-city availability

### Requirements Lifecycle Applied

- **Elicitation**: Simulated stakeholder interviews & brief analysis
- **Analysis**: Interpreted drop-off trends and workflow gaps
- **Documentation**: Structured requirements across both workflows
- **Validation**: Compared outputs against original prompt
- **Management**: Aligned new AI workflow under existing business rules
  
---

## Task 1: Barcelona Pricing Analysis

A data-driven pricing study using **Inside Airbnb datasets** and Tableau visualizations. To ensure a robust and insight-driven process, the following steps were implemented:

### 1. Data Preparation & Cleaning
- Removed null values in critical fields (e.g., `price`, `room_type`, `id`)
- Filtered listings to a valid price range (0–850 EUR) to eliminate outliers
- Filtered guest reviews to a valid review range (0–1600) to eliminate outliers
- Ensured valid date formatting for time-based analysis
- Removed duplicate entries using `ROW_NUMBER()` to retain only the most recent records

### 2. Data Integration
- **Base table**: `listings_viz`
- **Left joins**:
  - With `listings` to pull in:
    - `review_scores_rating`
    - `estimated_revenue_l365d`
    - `bedrooms`, `beds`, `bathrooms`
  - With `reviews_viz` to bring in:
    - `review_date`

### 3. Descriptive Analysis (Python, SQL & Tableau)
- Monthly average pricing trends across multiple years
- Neighborhood-level price comparisons
- Revenue performance across different room types
- Guest review patterns (total volume, recency of reviews)
- Distribution of listings by price bands and estimated revenue

### 🛠️ Tools Used
- **Python** (Pandas, Seaborn)
- **SQL** (SQL Server)
- **Tableau** (Dashboarding)
- **Excel** (Initial validation & exploratory checks)
- **Sublime Text** (Initial validation)


**View Dashboard**: [Barcelona Airbnb Pricing Analysis on Tableau](https://public.tableau.com/views/BarcelonaAirbnbPricingAnalysis/Dashboard2)

---

## Task 2: AI-Powered & Manual Booking Workflow (Barcelona)

A redesigned booking experience addressing all user stories:

| Requirement                          | Manual Workflow Support | AI Workflow Support |
|--------------------------------------|--------------------------|----------------------|
| List rooms by price and date         | Filters applied manually | GPT-4 query parsed, LangChain + Postman handle filtering |
| Book or cancel a reservation         | Through UI             | Via chatbot intent, Postman executes |
| Retrieve booking history             | UI + filter controls   | Auto-retrieval via GPT-4 |
| Print booking history to console     | Manual export          | Handled by Postman |
| Filter booking history               | Based on UI filters    | Automated filtering via LangChain logic |

### Technologies Used (Simulated tools used)

- **GPT-4**: Conversational agent for booking interaction
- **LangChain**: Handles business logic and workflow orchestration
- **Postman Flows**: Executes backend API calls and automates outputs

---

## Final Recommendations

- **Blend manual and agentic workflows** to offer flexibility while reducing friction.
- **Continue investing in agentic tools** like GPT-4 and LangChain to personalize and scale interactions.
- **Educate users** with onboarding tutorials to build trust in AI interfaces.
- **Use pricing insights** to help hosts align offerings with seasonal and location-specific demand.
- **Track user metrics** such as click-through rate, feature adoption, and drop-off rate to evaluate and optimize new booking features.

---

## Author
**Ellen Ivanovic**  
Product Analyst
