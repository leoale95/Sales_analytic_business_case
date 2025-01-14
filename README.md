# Sales Analytics Business Case
**Leonel Ale**

---

## Contents
- [Business Request & User Stories](#business-request--user-stories)
- [Data Structure](#data-structure)
  - [Dimension Tables](#dimension-tables)
    - [Customers](#customers)
    - [Calendar](#calendar)
    - [Products](#products)
  - [Fact Tables](#fact-tables)
    - [Sales](#sales)
- [Dashboards](#dashboards)
  - [Sales Overview](#sales-overview)
  - [Customer Details](#customer-details)

---

## Business Request & User Stories
The business request for this data analytics project was an executive sales report for sales managers. Based on the business requirements, the following user stories were defined to ensure delivery and maintain acceptance criteria throughout the project.

| # | As a (role)         | I want (request/demand)                             | So that I (user value)                                  | Acceptance Criteria                                                        |
|---|----------------------|---------------------------------------------------|--------------------------------------------------------|----------------------------------------------------------------------------|
| 1 | Sales Manager       | To get a dashboard overview of internet sales     | Can follow better which customers and products sell the best | A Power BI dashboard which updates data once a day                         |
| 2 | Sales Representative| A detailed overview of Internet Sales per Customers| Can follow up with my customers who buy the most and who we can sell more to | A Power BI dashboard allowing me to filter data for each customer          |
| 3 | Sales Representative| A detailed overview of Internet Sales per Products | Can follow up with my products that sell the most      | A Power BI dashboard allowing me to filter data for each product           |
| 4 | Sales Manager       | A dashboard overview of internet sales            | Follow sales over time against budget                  | A Power BI dashboard with graphs and KPIs comparing against the budget     |

---

## Data Structure
To create the necessary data model for analysis and fulfill the business needs defined in the user stories, the following tables were extracted using SQL.

One data source (sales budgets) was provided in Excel format and connected in the data model later in the process.

Below are the SQL statements for cleansing and transforming necessary data.

### Dimension Tables
#### Customers
This query retrieves cleansed customer data, including names, gender, first purchase date, and city. It:
- Transforms gender codes into readable formats.
- Combines first and last names for a full name field.
- Joins geography details for enhanced context.
- Results are sorted by customer key.

#### Calendar
This query retrieves a structured view of the date dimension table, including:
- Full and abbreviated date details such as day, month, year, week number, and quarter.
- Filters dates from 2012 onwards to ensure relevance.
- Provides both textual and numeric representations for easy analysis.

#### Products
This query retrieves a detailed and cleansed product dataset, including:
- Product name, category, subcategory, color, size, and description.
- Ensures data quality by setting a default status for missing values.
- Organizes the output in ascending order by product key.

### Fact Tables
#### Sales
This query retrieves key details from the Internet Sales fact table, including:
- Product, customer, and order-specific data.
- Includes an optional filter to limit sales to the last 12 years.
- Organizes results chronologically by order date.

---

## Dashboards
Users can filter by year, month, product, subproduct, and customer, with synchronized filters across visuals.

### Sales Overview
This Power BI dashboard integrates all cleansed tables to provide a comprehensive sales overview. Features include:
- A donut chart for product distribution.
- Top 10 products and customers.
- A sales trend over the year.
- A global heat map highlighting city-level sales performance.

### Customer Details
The Customer Details dashboard enhances analysis with:
- A detailed table featuring a heat map of customer activity by month.
- Visualization highlighting patterns and trends in customer behavior.
- Synchronized filters for seamless exploration.
