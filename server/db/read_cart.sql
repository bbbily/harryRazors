select products.default_img, products.name, products.price, cart.product_quantity, cart.purchase_date, cart.product_id from cart
join products
on cart.user_id = $1
where cart.product_id = products.id
