SELECT nameRestaurant, description, price
FROM restaurant, food
WHERE restaurant.menuId = 102 && food.menuId = 102
ORDER BY price ASC;