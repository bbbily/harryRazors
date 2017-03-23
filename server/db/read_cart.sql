select products.name, products.price, cart.product_quantity, cart.purchase_date, cart.product_id from products
join cart
on cart.user_id = 14
