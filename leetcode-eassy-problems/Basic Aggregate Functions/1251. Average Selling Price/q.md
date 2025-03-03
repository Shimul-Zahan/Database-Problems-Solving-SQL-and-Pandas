# 1251. Average Selling Price

**Difficulty:** Easy  
**Topics:** SQL  
**Schema:**  
Table: `Prices`

| Column Name | Type |
|-------------|------|
| product_id  | int  |
| start_date  | date |
| end_date    | date |
| price       | int  |

- `(product_id, start_date, end_date)` is the primary key for this table.
- Each row in this table indicates the price of the `product_id` within the period from `start_date` to `end_date`.
- There are no overlapping periods for the same `product_id`.

Table: `UnitsSold`

| Column Name   | Type |
|---------------|------|
| product_id    | int  |
| purchase_date | date |
| units         | int  |

- This table may contain duplicate rows.
- Each row indicates the date, units, and `product_id` of each product sold.

---

### Problem Statement
Write a solution to find the **average selling price** for each product. The result must include:
- `average_price` rounded to **two decimal places**.
- If a product does not have any sold units, its average selling price is `0`.

Return the result table in any order.

---

### Example

#### Input

`Prices` table:

| product_id | start_date | end_date   | price |
|------------|------------|------------|-------|
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |

`UnitsSold` table:

| product_id | purchase_date | units |
|------------|---------------|-------|
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |

#### Output

| product_id | average_price |
|------------|---------------|
| 1          | 6.96          |
| 2          | 16.96         |

---

### Explanation
- **Average selling price** = Total Price of Product / Number of Products Sold.
- For `product_id = 1`:  
  \[((100 × 5) + (15 × 20)) / 115\] = 6.96
- For `product_id = 2`:  
  \[((200 × 15) + (30 × 30)) / 230\] = 16.96


