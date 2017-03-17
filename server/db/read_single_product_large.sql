select singleproductpics.id, singleproductpics.size, singleproductpics.index, singleproductpics.img_url, singleproductpics.showcolor, singleproductpics.gelorcream from singleproductpics
join products
on singleproductpics.product_id = products.id
where singleproductpics.size = 'large' and products.id = $1
order by singleproductpics.index asc
