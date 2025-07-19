# 🍽️ Recipe Management System – SQL Project

A PostgreSQL-based relational database project to manage recipes, ingredients, nutrition, user subscriptions, and reviews. Built as part of a B.Tech curriculum to demonstrate SQL design, normalization, and stored procedures.

---
## Group Members:
- Harshil Joshi-202303047
- Riddhish Upadhyay-202303048
- Utsav Tala-202303018



## 🔧 Features

- Categorizes recipes by dish type, season, and time of day
- Manages ingredients with nutritional information
- Links users and subscriptions
- Allows recipe ratings and reviews
- Calculates total nutritional value per recipe using a stored function

---

## 🗃️ Key Tables

- `recipe`, `ingredient`, `rp_user`, `rp_rating`
- `cate`, `dishtype`, `season`, `tod` (categorization)
- `spec_rp`, `rp_ingre`, `subscribe` (relationships)
- `diet_req(recipe_id)` – stored function to compute nutrition totals

---

## 🛠️ How to Run

1. Clone this repo
2. Run `schema.sql` in PostgreSQL
3. (Optional) Run `sample_data.sql` for sample recipes and users
4. Test using `queries.sql` or try:
   ```sql
   SELECT * FROM rp.diet_req(101);
