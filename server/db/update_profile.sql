update users
  set user_name = $1.user_name,
  shipping_name = $1.shipping_name,
  shipping_address = $1.shipping_address,
  shipping_aptnum = $1.shipping_aptnum,
  shipping_city = $1.shipping_city,
  shipping_state = $1.shipping_state,
  shipping_zipcode = $1.shipping_zipcode,
  tele = $1.tele
  where user_id = $1.user_id;
