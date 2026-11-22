Zepto Inventory & Pricing Analysis (SQL)

 Project Overview
This project explores Zepto product inventory and pricing data using SQL to examine product prices, discounts, stock availability, inventory distribution, and category-level patterns.

The objective is to extract useful business insights from product data and understand how SQL can support inventory and pricing analysis.

 Tools Used
- MySQL
- SQL
- Microsoft Excel (dataset inspection)

Dataset
The dataset contains product-level information, including:
- Product name
- Category
- Maximum Retail Price (MRP)
- Discount percentage
- Discounted selling price
- Available quantity
- Out-of-stock status
- Product weight

Analysis Performed
- Data exploration and quality checks
- Identification of zero-priced records
- Examination of repeated product listings
- Category-wise product listing analysis
- Average discount comparison
- Inventory quantity analysis
- Out-of-stock analysis
- Estimated inventory value analysis
- Product price, discount, and weight comparisons

 SQL Skills Demonstrated
- SELECT, WHERE, ORDER BY, LIMIT
- GROUP BY and aggregate functions (COUNT, SUM, AVG)
- ROUND
- Filtering and sorting
- Calculated columns using arithmetic operations
- Category-level analysis

Key Business Insights
- Borges Extra Light Olive Oil had the highest MRP in the dataset at ₹2,600.
- The olive oil's discounted selling price was ₹1,399, representing savings of ₹1,201.
- Fruits & Vegetables had the highest average category discount at 15.46%.
- Home & Cleaning had the lowest average category discount at 5.68%.
- Cooking Essentials and Munchies had the highest recorded inventory quantity at 2,179 each.
- Cooking Essentials and Munchies also had the highest estimated inventory value at ₹3,37,131 each.
- The heaviest products included 10 kg atta packs.

 Project Structure
```text
Zepto-Inventory-and-Pricing-Analysis/
│
├── Dataset/
│   └── zepto_v2.csv
│
├── Insights/
│   └── Business_Insights.txt
│
├── Project_Documentation/
│   ├── Query_01_Highest_MRP.txt
│   ├── Query_02_Highest_Discounts.txt
│   ├── Query_03_Highest_Selling_Price.txt
│   ├── Query_04_Category_Product_Count.txt
│   ├── Query_05_Average_Discount_by_Category.txt
│   ├── Query_06_Category_Inventory.txt
│   ├── Query_07_Highest_Stock_Products.txt
│   ├── Query_08_Out_of_Stock_Products.txt
│   ├── Query_09_Out_of_Stock_by_Category.txt
│   ├── Query_10_Inventory_Value.txt
│   ├── Query_11_Discount_Amount.txt
│   └── Query_12_Heaviest_Products.txt
│
├── SQL/
│   ├── 01_Data_Exploration_and_Cleaning.sql
│   └── 02_Business_Analysis.sql
│
└── README.md
```

