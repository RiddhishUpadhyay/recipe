-- Sample data for rp.cate
INSERT INTO rp.cate (cate_id, name) VALUES
(1, 'Vegetarian'),
(2, 'Non-Vegetarian'),
(3, 'Dessert');

-- Sample data for rp.dishtype
INSERT INTO rp.dishtype (dishtype_id, name, cate_id1) VALUES
(1, 'Curry', 1),
(2, 'Snack', 1),
(3, 'Grilled', 2);

-- Sample data for rp.tod (Time of Day)
INSERT INTO rp.tod (tod_id, name, cate_id2) VALUES
(1, 'Lunch', 1),
(2, 'Dinner', 1),
(3, 'Breakfast', 1);

-- Sample data for rp.season
INSERT INTO rp.season (season_id, name, cate_id3) VALUES
(1, 'Summer', 1),
(2, 'Winter', 1),
(3, 'Rainy', 2);

-- Sample data for rp.recipe
INSERT INTO rp.recipe (recipe_id, name, instruction, prep_time) VALUES
(101, 'Paneer Butter Masala', 'Cook paneer in tomato gravy with spices and butter.', 30),
(102, 'Grilled Chicken', 'Marinate chicken and grill till cooked.', 45),
(103, 'Fruit Custard', 'Mix chopped fruits with prepared custard and chill.', 15);

-- Sample data for rp.ingredient
INSERT INTO rp.ingredient (ingre_id, ingre_name, energy, fat, carbohydrates, protein) VALUES
(1, 'Paneer', 265, 21, 5, 18),
(2, 'Butter', 717, 81, 0, 0),
(3, 'Tomato', 18, 0, 4, 1),
(4, 'Chicken', 239, 14, 0, 27),
(5, 'Milk', 42, 1, 5, 3),
(6, 'Apple', 52, 0, 14, 0),
(7, 'Banana', 89, 0, 23, 1);

-- Sample data for rp.rp_ingre (Recipe-Ingredient link)
INSERT INTO rp.rp_ingre (recipe_id, ingre_id) VALUES
(101, 1), -- Paneer
(101, 2), -- Butter
(101, 3), -- Tomato
(102, 4), -- Chicken
(102, 2), -- Butter
(103, 5), -- Milk
(103, 6), -- Apple
(103, 7); -- Banana

-- Sample data for rp.spec_rp (Recipe classification)
INSERT INTO rp.spec_rp (recipe_id, dishtype_id, tod_id, season_id) VALUES
(101, 1, 1, 2),
(102, 3, 2, 1),
(103, 2, 3, 1);

-- Sample data for rp.subscribe
INSERT INTO rp.subscribe (sub_id, time_span, expense) VALUES
(1, 30, 199),
(2, 60, 349),
(3, 90, 499);

-- Sample data for rp.rp_user
INSERT INTO rp.rp_user (rp_user, user_name, contact, user_pw, sub_id, start_date, end_date) VALUES
(1001, 'Harshil', 9876543210, 'abc12345', 1, '2025-06-01', '2025-07-01'),
(1002, 'Priya', 8765432190, 'pass6789', 2, '2025-06-10', '2025-08-09');

-- Sample data for rp.rp_rating
INSERT INTO rp.rp_rating (recipe_id, user_id, rating, review) VALUES
(101, 1001, 9, 'Delicious and creamy!'),
(102, 1001, 8, 'Perfectly grilled.'),
(103, 1002, 7, 'Refreshing and sweet.');
