select features.id, features.index, features.img_url, features.title, features.text from features
join products
on features.product_id = products.id
where products.id = $1
order by features.index asc
