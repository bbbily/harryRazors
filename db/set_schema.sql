DROP TABLE IF EXISTS cart, products, singleproductpics, users

CREATE table products (
    id SERIAL PRIMARY KEY,
    type text,
    name text,
    price integer,
    alternative_color boolean,
    tag_text text,
    tag_color text,
    default_imgurl text,
    blue_imgurl text,
    green_imgurl text
    )

CREATE table users (
    user_id SERIAL PRIMARY KEY,
    email text,
    password text,
    facebook_id integer,
    user_name varchar(40),
    shipping_name varchar(40),
    shipping_address text,
    shipping_aptnum integer,
    shipping_city varchar(40),
    shipping_state varchar(2),
    shipping_zipcode integer,
    tele integer
)

create table cart (
  cart_id SERIAL PRIMARY KEY,
  user_id integer,
  product_id integer,
  product_quantity integer
)

create table singleproductpics (
 id SERIAL PRIMARY KEY,
 product_id integer,
 name text,
 index integer,
   size text,
   img_url text,
   color text,
   gelorcream text
)

create table features (
 id SERIAL PRIMARY KEY,
 product_id integer,
 index integer,
 img_url text,
 title text,
 text text
)



insert into products
(type, name, price, tag_text, tag_color, quantity, gelorcream, default_img,  blue_img, green_img, description)
values('starter sets', 'Truman Set', 25, 'ENGRAVABLE', 'brown', true, true,
       'images/products/94849e8c3594aede6ac5383e90c1bba37ac2a8d3.jpg',
       'images/products/520cf74e3af959a832fd6a1c4bbc829db9e98e8d.jpg',
       'images/products/c3f11094c1c83c9f3fc2c2760ddd45b3fec8bb12.jpg',
       'This set has all you need to get started with Harry''s. A great shave at a fair price.')

insert into products
(type, name, price, tag_text, tag_color, quantity, gelorcream, default_img, description)
values('starter sets', 'Winston Set', 25, 'ENGRAVABLE', 'blue', true, true,
 'images/products/e0a7a78118eca9ff10d8a4b683ac39ff429d5b7a.jpg',
 'This set has all you need to get started with Harry''s. A great shave at a fair price.')

insert into products
(type, name, price, quantity, size, default_img, description)
values('Grooming Supplies', 'The Winston', 20, true, false,
       'images/products/706bd996ca4442dd17cdc06bd0bc6d347798a18d.jpg',
      'Made of zinc with a polished chrome body and strategically placed grips, the Winston is designed for effortless glide and precise control.'),
      ('Grooming Supplies', 'Foaming Shave Gel', 4, true, true,
      'images/products/c0d20001a49d9ecd3fad5e77d9cd3431b0f87356.jpg',
       'Our foaming shave gel lathers up to help your razor glide smoothly over your skin, ensuring a close and comfortable shave.'),
       ('Grooming Supplies', 'Shave Cream', 8, true, true,
       'images/products/e4930570e3fcd0511847f475e06d9235399da306.jpg',
        'Our shave cream with a blend of 12 natural ingredients delivers an effortless glide, ensuring a close and comfortable shave.'),
        ('Grooming Supplies', 'Post Shave Balm', 8, true, true,
        'images/products/209392ef8071b025b52d3854d9f397405e1f6755.jpg',
         'Get immediate relief after shaving. Our soothing formula with natural ingredients moisturizes skin and helps reduce redness.'),
         ('Grooming Supplies', 'Daily Face Wash', 7, true, false,
         'images/products/1408f112898707225cab17bea694e13b32d05511.jpg',
          'A non-drying, gentle exfoliator that''s perfect for daily use—whether you''re shaving or not. It lathers up for a deep clean, leaving your skin feeling fresh.'),
          ('Grooming Supplies', 'Daily Face Lotion SPF 15', 8, true, false,
          'images/products/e5a84fdbaee465509c66cf140b870c175a4b18d1.jpg',
           'Light, daily face lotion with SPF 15 that instantly hydrates and protects skin without leaving any greasy residue.'),
           ('Grooming Supplies', 'Lip Balm SPF 15', 9, true, false,
           'images/products/ce53b71356b173254eaa84192aa38352914f5a20.jpg',
            'Moisturizing lip balm with SPF 15 protection that immediately relieves dry lips with a peppermint-y flavor and no-shine finish.'),
            ('Grooming Supplies', 'Harry''s Travel Kit', 25, true, false,
            'images/products/6f33df53c334c2bedde150ae038c8fbd97132aa8.jpg',
             'Specially-designed for optimal packing and to contain spills, this Italian cotton-nylon travel kit is perfect for every guy on the go.')


insert into products
(type, name, price, quantity, packsize, color, default_img, blue_img, green_img, description)
values('Grooming Supplies', 'Harry''s Blades', 2, false, true, false,
      'images/products/598c604085810cbdda46813db38ed1ba69567a8e.jpg', null, null,
      'Each cartridge comes with 5 German blades, a flex hinge, a lubricating strip, and a precision trimmer. Designed to custom fit with Harry''s handles for a close, comfortable shave.'),
      ('Grooming Supplies', 'Harry''s Razor Stand', 15, true, false, false,
      'images/products/db54937b47193ac45b801135ac61061c29df0f1d.jpg', null, null,
       'Designed to keep your blades dry and on display, this anodized aluminum stand has a minimal feel with a lot of function (there''s even a built-in grip at the base to prevent slipping). One size fits all Harry''s razors.'),
       ('Grooming Supplise', 'The Truman', 9, true, false, true,
       'iamges/products/42e223daae8eb2f42f0cf84b215b42e00c58d321.jpg',
       'images/products/9bea977db558d3bc2c576bb2074812637c77bbbc.jpg',
       'images/products/a357c363edbb857290450776cf62368062074254.jpg',
        'The Truman has a weighted core, texturized grip, and rubberized body for maximum control.')

insert into singleproductpics
(product_id, name, index, size, img_url, color, gelorcream)
values( 1, 'Truman Set', 0, 'small', 'images/singleProduct/b631304ad383652022c943692cda6c67cde3e695.jpg', 'default', 'gel'),
(1, 'Truman Set', 0, 'small', 'images/singleProduct/546e51e650619da81caf52ad1dc90e1f5f16ce29.jpg', 'default', 'cream'),
(1, 'Truman Set', 1, 'small', 'images/singleProduct/3ab5a1caee0a26b9c76b4016cdb8825b68a49505.jpg', 'default', 'cream'),
(1, 'Truman Set', 2, 'small', 'images/singleProduct/f12ad5e2a4634aebc03c5f6464453ca744f559ba.jpg', 'default', 'cream'),
(1, 'Truman Set', 3, 'small', 'images/singleProduct/8c493e7a5f2d5a0c3180d9a34c1a72122072d278.jpg', 'default', 'gel'),
(1, 'Truman Set', 3, 'small', 'images/singleProduct/52aaf3342022280e02949fe3f99a70d89ddbe4c2.jpg', 'default', 'cream'),
(1, 'Truman Set', 4, 'small', 'images/singleProduct/7d541a76f1af9203d4d21b77e368c52f3d65accd.jpg', 'default', 'cream'),
(1, 'Truman Set', 5, 'small', 'images/singleProduct/81dea28882679a2ed4d13ab23506d3f68b048a0b.jpg', 'default', 'cream'),
(1, 'Truman Set', 0, 'small', 'images/singleProduct/1aced206e8bdfb6e47c6dd3cbc81b0f16cb32d8e.jpg', 'blue', 'gel'),
(1, 'Truman Set', 0, 'small', 'images/singleProduct/fa2de1487a5cc343005385cd7754c5ff696bfd73.jpg', 'blue', 'cream'),
(1, 'Truman Set', 1, 'small', 'images/singleProduct/9588c4fc4cf58471ce9b4e211ce2e56f6212acb9.jpg', 'blue', 'cream'),
(1, 'Truman Set', 2, 'small', 'images/singleProduct/5dd17de4d5649976ba8e09777ab2ac56d3889633.jpg', 'blue', 'cream'),
(1, 'Truman Set', 3, 'small', 'images/singleProduct/05684d5a04b33d1efd442aa67b6e3109c55add7d.jpg', 'blue', 'gel'),
(1, 'Truman Set', 3, 'small', 'images/singleProduct/3093dc6b7b6084b84d6233d5cf3040f88a48fadc.jpg', 'blue', 'cream'),
(1, 'Truman Set', 4, 'small', 'images/singleProduct/27f60831bc0cb0b8d8027797159a65d6d311e2f5.jpg', 'blue', 'cream'),
(1, 'Truman Set', 5, 'small', 'images/singleProduct/6c3cd623c915805bfac40339c98422e9868ab450.jpg', 'blue', 'cream'),
(1, 'Truman Set', 0, 'small', 'images/singleProduct/f0f6df5da2b7c454ddf6831c691bc8faed20e794..jpg', 'green', 'gel'),
(1, 'Truman Set', 0, 'small', 'images/singleProduct/bd2323ddac0bb1557c04b3b07361967b285404be.jpg', 'green', 'cream'),
(1, 'Truman Set', 1, 'small', 'images/singleProduct/636cdcfe1873a4dcde8a5b07216d6671f791cb9c.jpg', 'green', 'cream'),
(1, 'Truman Set', 2, 'small', 'images/singleProduct/861b40c7343a850cd10d780e4938ca3841df4e8b.jpg', 'green', 'cream'),
(1, 'Truman Set', 3, 'small', 'images/singleProduct/bc3f495f0fa8cb2b70f12cccd65658b28621f5b0.jpg', 'green', 'gel'),
(1, 'Truman Set', 3, 'small', 'images/singleProduct/13964831c52ffadfb3e8871147ae15883041f3e0.jpg', 'green', 'cream'),
(1, 'Truman Set', 4, 'small', 'images/singleProduct/2a3eab470be2f4725898f3c331c2a83d5dd92546.jpg', 'green', 'cream'),
(1, 'Truman Set', 5, 'small', 'images/singleProduct/4e902f206472c2f023c7caa0eb21a127050f6b39.jpg', 'green', 'cream')

insert into singleproductpics
(product_id, name, index, size, img_url, showcolor, gelorcream)
values (1, 'Truman Set', 1, 'small',
        'images/singleProduct/3ab5a1caee0a26b9c76b4016cdb8825b68a49505.jpg',
        'default', 'gel'),
        (1, 'Truman Set', 2, 'small',
        'images/singleProduct/f12ad5e2a4634aebc03c5f6464453ca744f559ba.jpg',
        'default', 'gel'),
        (1, 'Truman Set', 4, 'small', '
        images/singleProduct/7d541a76f1af9203d4d21b77e368c52f3d65accd.jpg',
        'default', 'gel'),
        (1, 'Truman Set', 5, 'small',
        'images/singleProduct/81dea28882679a2ed4d13ab23506d3f68b048a0b.jpg',
        'default', 'gel'),
        (1, 'Truman Set', 1, 'small',
        'images/singleProduct/9588c4fc4cf58471ce9b4e211ce2e56f6212acb9.jpg',
        'blue', 'gel'),
        (1, 'Truman Set', 2, 'small',
        'images/singleProduct/5dd17de4d5649976ba8e09777ab2ac56d3889633.jpg',
        'blue', 'gel'),
        (1, 'Truman Set', 4, 'small',
        'images/singleProduct/27f60831bc0cb0b8d8027797159a65d6d311e2f5.jpg',
        'blue', 'gel'),
        (1, 'Truman Set', 5, 'small',
        'images/singleProduct/6c3cd623c915805bfac40339c98422e9868ab450.jpg',
        'blue', 'gel'),
        (1, 'Truman Set', 1, 'small',
        'images/singleProduct/636cdcfe1873a4dcde8a5b07216d6671f791cb9c.jpg',
        'green', 'gel'),
        (1, 'Truman Set', 2, 'small', '
        images/singleProduct/861b40c7343a850cd10d780e4938ca3841df4e8b.jpg',
        'green', 'gel'),
        (1, 'Truman Set', 4, 'small',
        'images/singleProduct/2a3eab470be2f4725898f3c331c2a83d5dd92546.jpg',
        'green', 'gel'),
        (1, 'Truman Set', 5, 'small',
        'images/singleProduct/4e902f206472c2f023c7caa0eb21a127050f6b39.jpg',
        'green', 'gel')


insert into singleproductpics
(product_id, name, index, size, img_url, showcolor, gelorcream)
values (1, 'Truman Set', 1, 'large',
        'images/singleProduct/f03e18a13a0cd1d9cbaa89192e11e59b042fded9.jpg',
        'default', 'gel'),
        (1, 'Truman Set', 2, 'large',
        'images/singleProduct/121b40b7e06cc811b0fb8906c36fbed6e20ff366.jpg',
        'default', 'gel'),
        (1, 'Truman Set', 4, 'large',
        'images/singleProduct/0be009bf9e98ef7d5d7c05a16802815301630a39.jpg',
        'default', 'gel'),
        (1, 'Truman Set', 5, 'large',
        'images/singleProduct/f93e192859651abf3c74b22b14930f86f014778f.jpg',
        'default', 'gel'),
        (1, 'Truman Set', 1, 'large',
        'images/singleProduct/0fe1cd9fb00e545a66d809384e12181cb6131866.jpg',
        'blue', 'gel'),
        (1, 'Truman Set', 2, 'large',
        'images/singleProduct/c8b0a8efa08ed4e652af69394b125dcf4efca972.jpg',
        'blue', 'gel'),
        (1, 'Truman Set', 4, 'large',
        'images/singleProduct/f89fee9ef4ecb31d72dae07438332da441565333.jpg',
        'blue', 'gel'),
        (1, 'Truman Set', 5, 'large',
        'images/singleProduct/fdcf773730a14a5a3d13c927f3ecd8e8f0b48942.jpg',
        'blue', 'gel'),
        (1, 'Truman Set', 1, 'large',
        'images/singleProduct/08ac9d93a0658601f45b4a69eb38c96a7e5e8c44.jpg',
        'green', 'gel'),
        (1, 'Truman Set', 2, 'large',
        'images/singleProduct/41727b02df598c4c7b45f548ec385d797d86b403.jpg',
        'green', 'gel'),
        (1, 'Truman Set', 4, 'large',
        'images/singleProduct/b277022d1c5ada6c21d7a0528f9ea7950c5c0011.jpg',
        'green', 'gel'),
        (1, 'Truman Set', 5, 'large',
        'images/singleProduct/eb923ac29b5eda490bf19d35859c7bf6649f8ffa.jpg',
        'green', 'gel')

insert into singleproductpics
(product_id, name, size, showcolor, gelorcream, index, img_url)
values(3, 'Winston Sets', 'large', 'default', 'gel', 0, 'images/singleProduct/1c6983b4b4128be00f6ed1734845cfb9501244b4.jpg'),
(3, 'Winston Sets', 'large', 'default', 'gel', 1, 'images/singleProduct/38856d9cd9f9526e32b9171ad9a2cb53e0e742f7.jpg'),
(3, 'Winston Sets', 'large', 'default', 'gel', 2, 'images/singleProduct/31ec0c057ded9673f144cfcb197eb1ecc23ea984.jpg'),
(3, 'Winston Sets', 'large', 'default', 'gel', 3, 'images/singleProduct/9c4529513fe5539708746b625d924818a5d58212.jpg'),
(3, 'Winston Sets', 'large', 'default', 'gel', 4, 'images/singleProduct/4fd96b3053a5e127dd86a1965e814aced7f0d43b.jpg'),
(3, 'Winston Sets', 'large', 'default', 'gel', 5, 'images/singleProduct/b1477e65cf6e719ba34dd603e4eb5ab456db0582.jpg'),
(3, 'Winston Sets', 'large', 'default', 'cream', 0, 'images/singleProduct/4b0e791434751773fee705fb12ffd293569a10bc.jpg'),
(3, 'Winston Sets', 'large', 'default', 'cream', 1, 'images/singleProduct/38856d9cd9f9526e32b9171ad9a2cb53e0e742f7.jpg'),
(3, 'Winston Sets', 'large', 'default', 'cream', 2, 'images/singleProduct/31ec0c057ded9673f144cfcb197eb1ecc23ea984.jpg'),
(3, 'Winston Sets', 'large', 'default', 'cream', 3, 'images/singleProduct/9113e6a12a8ee04075ca5f7ef0a39994cba1b196.jpg'),
(3, 'Winston Sets', 'large', 'default', 'cream', 4, 'images/singleProduct/4fd96b3053a5e127dd86a1965e814aced7f0d43b.jpg'),
(3, 'Winston Sets', 'large', 'default', 'cream', 5, 'images/singleProduct/b1477e65cf6e719ba34dd603e4eb5ab456db0582.jpg'),
(3, 'Winston Sets', 'small', 'default', 'gel', 0, 'images/singleProduct/33fe7981d5afb60de1d045a2c5753835c84816a4.jpg'),
(3, 'Winston Sets', 'small', 'default', 'gel', 1, 'images/singleProduct/99defeb1efa16c7a99a6fd9916a53da06103cb52.jpg'),
(3, 'Winston Sets', 'small', 'default', 'gel', 2, 'images/singleProduct/421bd9ca14c99d1a8b53d0dca5b365475651d737.jpg'),
(3, 'Winston Sets', 'small', 'default', 'gel', 3, 'images/singleProduct/6974b64aa2a9a9d43b34043078d49393e7715e4c.jpg'),
(3, 'Winston Sets', 'small', 'default', 'gel', 4, 'images/singleProduct/c490bcf57784196a9f97635fd9aeb9080a4d778d.jpg'),
(3, 'Winston Sets', 'small', 'default', 'gel', 5, 'images/singleProduct/b60a6bf2795b3398abc8bd571cc8bd67d11259cc.jpg'),
(3, 'Winston Sets', 'small', 'default', 'cream', 0, 'images/singleProduct/55e593cb6cffa543a7bb5fdf22e0f8bb30f2e04a.jpg'),
(3, 'Winston Sets', 'small', 'default', 'cream', 1, 'images/singleProduct/99defeb1efa16c7a99a6fd9916a53da06103cb52.jpg'),
(3, 'Winston Sets', 'small', 'default', 'cream', 2, 'images/singleProduct/421bd9ca14c99d1a8b53d0dca5b365475651d737.jpg'),
(3, 'Winston Sets', 'small', 'default', 'cream', 3, 'images/singleProduct/cc69ad2d3ccf5faac8969a9b31a8c868c5bc63d9.jpg'),
(3, 'Winston Sets', 'small', 'default', 'cream', 4, 'images/singleProduct/c490bcf57784196a9f97635fd9aeb9080a4d778d.jpg'),
(3, 'Winston Sets', 'small', 'default', 'cream', 5, 'images/singleProduct/b60a6bf2795b3398abc8bd571cc8bd67d11259cc.jpg')

insert into singleproductpics
(product_id, name, size, showcolor, gelorcream, pack_size, index, img_url)
values(4, 'Harry''s Blades', 'large', 'default', 'gel', 4, 0, 'images/singleProduct/edffa1d140a9b8d2da243898d62de0300bdc0b4b.jpg'),
(4, 'Harry''s Blades', 'large', 'default', 'gel', 4, 1, 'images/singleProduct/b1382f1f4061de6167bbbfd9c5221d87082f9295.jpg'),
(4, 'Harry''s Blades', 'large', 'default', 'gel', 4, 2, 'images/singleProduct/2e32c53464fc90ba5cb07e3a349b5a1393a8eed5.jpg'),
(4, 'Harry''s Blades', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/78294910ca2ea4b132980519e2e47b0b57d7aca8.jpg'),
(4, 'Harry''s Blades', 'large', 'default', 'gel', 8, 1, 'images/singleProduct/b1382f1f4061de6167bbbfd9c5221d87082f9295.jpg'),
(4, 'Harry''s Blades', 'large', 'default', 'gel', 8, 2, 'images/singleProduct/2e32c53464fc90ba5cb07e3a349b5a1393a8eed5.jpg'),
(4, 'Harry''s Blades', 'large', 'default', 'gel', 16, 0, 'images/singleProduct/b01e0559a15e03d064ff71647acc1c65dddb1fcd.jpg'),
(4, 'Harry''s Blades', 'large', 'default', 'gel', 16, 1, 'images/singleProduct/b1382f1f4061de6167bbbfd9c5221d87082f9295.jpg'),
(4, 'Harry''s Blades', 'large', 'default', 'gel', 16, 2, 'images/singleProduct/2e32c53464fc90ba5cb07e3a349b5a1393a8eed5.jpg'),
(4, 'Harry''s Blades', 'small', 'default', 'gel', 4, 0, 'images/singleProduct/d3de1a9c3ed57f3ac285f3238599c7b5fac176c0.jpg'),
(4, 'Harry''s Blades', 'small', 'default', 'gel', 4, 1, 'images/singleProduct/df01b174a4f07e009fff1396e0dc476241ec5359.jpg'),
(4, 'Harry''s Blades', 'small', 'default', 'gel', 4, 2, 'images/singleProduct/cee63fdaf8e82707d17a6595e08e517d4d8358bf.jpg'),
(4, 'Harry''s Blades', 'small', 'default', 'gel', 8, 0, 'images/singleProduct/d28f04d3f6043c0f15c73b7873d94295935cce12.jpg'),
(4, 'Harry''s Blades', 'small', 'default', 'gel', 8, 1, 'images/singleProduct/df01b174a4f07e009fff1396e0dc476241ec5359.jpg'),
(4, 'Harry''s Blades', 'small', 'default', 'gel', 8, 2, 'images/singleProduct/cee63fdaf8e82707d17a6595e08e517d4d8358bf.jpg'),
(4, 'Harry''s Blades', 'small', 'default', 'gel', 16, 0, 'images/singleProduct/04b4e422a7626043371144de0f77247f4fc818c4.jpg'),
(4, 'Harry''s Blades', 'small', 'default', 'gel', 16, 1, 'images/singleProduct/df01b174a4f07e009fff1396e0dc476241ec5359.jpg'),
(4, 'Harry''s Blades', 'small', 'default', 'gel', 16, 2, 'images/singleProduct/cee63fdaf8e82707d17a6595e08e517d4d8358bf.jpg')

insert into singleproductpics
(product_id, name, size, showcolor, gelorcream, pack_size, index, img_url)
values  (5, 'Blades & Shave Gel', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/530bc14614d817a8b14f48c7aa888332f680524d.jpg'),
        (6, 'Blades, Shave Gel & Post Shave Balm', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/6ed90f3e41ee0ab47bd0f12bd7a5a45e5a5d78ee.jpg')

        (7, 'The Winston', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/2053c31b0c4c5ce0d851cc495bf3819be395cc7b.jpg'),
        (7, 'The Winston', 'large', 'default', 'gel', 8, 1, 'images/singleProduct/d9369addfb5bafdf155bc578ec3bf3a081a048f6.jpg'),
        (7, 'The Winston', 'large', 'default', 'gel', 8, 2, 'images/singleProduct/13eebef5c4719e8c9e2db814d9d6f9fa0be4332b.jpg'),
        (7, 'The Winston', 'large', 'default', 'gel', 8, 3, 'images/singleProduct/a69c552522e6c210021579134f87269b44338c90.jpg'),
        (7, 'The Winston', 'small', 'default', 'gel', 8, 0, 'images/singleProduct/49a559bdf55972956ab48487d9c65c16c46147f5.jpg'),
        (7, 'The Winston', 'small', 'default', 'gel', 8, 1, 'images/singleProduct/39c92a84d336885d3981d5c62be3334fbf70b484.jpg'),
        (7, 'The Winston', 'small', 'default', 'gel', 8, 2, 'images/singleProduct/9028c3fddfa5e903ad9866c011e3b6562da7c7a6.jpg'),
        (7, 'The Winston', 'small', 'default', 'gel', 8, 3, 'images/singleProduct/c6f11ff08af75873757136144c515fdd8d547b55.jpg'),
        (8, 'Foaming Shave Gel', 'small', 'default', 'gel', 4, 0, 'images/singleProduct/51630d07f48ddab136e1009e5676ed763a4a3537.jpg'),
        (8, 'Foaming Shave Gel', 'small', 'default', 'gel', 4, 1, 'images/singleProduct/9097e82cc819bc1649765b6fe5a35c9785d91ac1.jpg'),
        (8, 'Foaming Shave Gel', 'small', 'default', 'gel', 8, 0, 'images/singleProduct/4dda4a833fa2ed3ba8bf76b174711c5b6e00c665.jpg'),
        (8, 'Foaming Shave Gel', 'small', 'default', 'gel', 8, 1, 'images/singleProduct/8157d88d5b0f5d110dee7d9ebe382565c91db695.jpg'),
        (8, 'Foaming Shave Gel', 'small', 'default', 'gel', 16, 0, 'images/singleProduct/2cb4d75081def43876e444d6963d5d6f58fd0799.jpg'),
        (8, 'Foaming Shave Gel', 'small', 'default', 'gel', 16, 0, 'images/singleProduct/db7f910ee3e973e2c64dca16bdb899b6cd5cce31.jpg'),
        (8, 'Foaming Shave Gel', 'large', 'default', 'gel', 4, 0, 'images/singleProduct/5cb52fe84e2fd863c9018b4be9bb20cb61c66b32.jpg'),
        (8, 'Foaming Shave Gel', 'large', 'default', 'gel', 4, 1, 'images/singleProduct/299b3703afbaf3b51e0a9d3fd82ae76348eda7b0.jpg'),
        (8, 'Foaming Shave Gel', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/825c7aff510b523e0a41fb18c84a2448eec20bc9.jpg'),
        (8, 'Foaming Shave Gel', 'large', 'default', 'gel', 8, 1, 'images/singleProduct/d702c5d713c8e566678b07e039433f6e41a69944.jpg'),
        (8, 'Foaming Shave Gel', 'large', 'default', 'gel', 16, 0, 'images/singleProduct/cb52098baea18d87c03282068cea9cc18f70c45e.jpg'),
        (8, 'Foaming Shave Gel', 'large', 'default', 'gel', 16, 1, 'images/singleProduct/95e774a6a45fb4980cc5f7aaab05df53679395cb.jpg')


        (9, 'Shave Cream', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/627b0a2e4283034db763af8e95bf7203d07e853a.jpg'),
        (9, 'Shave Cream', 'large', 'default', 'gel', 16, 1, 'images/singleProduct/04862389effd2f4223d33309bfbf597c4d6d2849.jpg'),
        (10, 'Post Shave Balm', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/6d862f8ed585bf9d5bb51d874a10dcee0f4fd923.jpg'),
        (10, 'Post Shave Balm', 'large', 'default', 'gel', 4, 1, 'images/singleProduct/21a935bf50a7afc7e2d83ce1ab13fc8205221aff.jpg'),
        (11, 'Daily Face Wash', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/cc67f87c9dd51a81c02cfa08f858cb2985b3e98c.jpg'),
        (12, 'Daily Face Lotion SPF 15', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/2b0a26fcee727e96f25738151fdc5cad260117f6.jpg'),
        (12, 'Daily Face Lotion SPF 15', 'large', 'default', 'gel', 8, 1, 'images/singleProduct/e124d65b2f7b54d92f3e90f3f16e642e1a434e69.jpg'),
        (12, 'Daily Face Lotion SPF 15', 'small', 'default', 'gel', 8, 0, 'images/singleProduct/ab923a388df9d227f5714134520a7cf66d15f3e8.jpg'),
        (12, 'Daily Face Lotion SPF 15', 'small', 'default', 'gel', 8, 1, 'images/singleProduct/3b8fd9b8cb08c5d0a16c070770a1f22cc4fcd7dd.jpg')


        (13, 'Lip Balm SPF 15', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/8df2ec06eb26d9c4dfa200538a67228cd21f2573.jpg'),
        (13, 'Lip Balm SPF 15', 'large', 'default', 'gel', 8, 1, 'images/singleProduct/0b5d6e0f801ab8b5fa3373804e9099b1d9c27a39.jpg'),
        (13, 'Lip Balm SPF 15', 'large', 'default', 'gel', 8, 2, 'images/singleProduct/4a1f89c781ffefa12f266b234610cc3032726b37.jpg'),
        (13, 'Lip Balm SPF 15', 'small', 'default', 'gel', 8, 0, 'images/singleProduct/06f9738ceaea8ae59a76c8c02b1cbf37d61a6480.jpg'),
        (13, 'Lip Balm SPF 15', 'small', 'default', 'gel', 8, 1, 'images/singleProduct/c3012dee8842e2a695584e1c1f52d63ccd0b11cc.jpg'),
        (13, 'Lip Balm SPF 15', 'small', 'default', 'gel', 8, 2, 'images/singleProduct/022e6bbeef6349ec91d0503f1bba14fa920202ca.jpg'),
        (14, 'Harry''s Travel Kit', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/0448bbcfd0c1c2925ecd6816aca17a22847175dd.jpg'),
        (14, 'Harry''s Travel Kit', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/7c2a60dba3d6eeb6607445a5174b3bfe3fcc63b7.jpg'),
        (14, 'Harry''s Travel Kit', 'small', 'default', 'gel', 8, 0, 'images/singleProduct/3a3b2555bc09b0405921af05e72756e21ae09dcd.jpg'),
        (14, 'Harry''s Travel Kit', 'small', 'default', 'gel', 8, 0, 'images/singleProduct/dcf763af0f5d4335668fc9bb3f52e07fdc05b7f4.jpg'),


insert into singleproductpics
(product_id, name, size, showcolor, gelorcream, pack_size, index, img_url)
values(16, 'Harry''s Razor Stand', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/32bcb53be660a2c21f192743ea181fb6c2eede30.jpg'),
(16, 'Harry''s Razor Stand', 'large', 'default', 'gel', 8, 1, 'images/singleProduct/33eb8b261e7fd266e19a218f1e1d18894a66bc74.jpg'),
(16, 'Harry''s Razor Stand', 'small', 'default', 'gel', 8, 0, 'images/singleProduct/9e30024a0f578346ec4793d628a34201f208bbef.jpg'),
(16, 'Harry''s Razor Stand', 'small', 'default', 'gel', 8, 1, 'images/singleProduct/ee788091c91f6416ed6ccb409576b75013e38ee2.jpg'),
(17, 'The Truman', 'large', 'default', 'gel', 8, 0, 'images/singleProduct/b522425deb6ba642e1a67f06fc3ef8147f475fb1.jpg'),
(17, 'The Truman', 'large', 'default', 'gel', 8, 1, 'images/singleProduct/ac078c7378e9f279a01104c8cbf27edb9b93488b.jpg'),
(17, 'The Truman', 'large', 'default', 'gel', 8, 2, 'images/singleProduct/da36c68931e70fdad3254d3c63fcf5d135f221d9.jpg'),
(17, 'The Truman', 'large', 'default', 'gel', 8, 3, 'images/singleProduct/cd650a945754e5de369faf0d523968d1b216cb96.jpg'),
(17, 'The Truman', 'large', 'blue', 'gel', 8, 0, 'images/singleProduct/615549dd39b1b059231820c58e71536a51515cca.jpg'),
(17, 'The Truman', 'large', 'blue', 'gel', 8, 1, 'images/singleProduct/3e7a2b280c5282ac4e4dc2cb51855b1bfc4d4a23.jpg'),
(17, 'The Truman', 'large', 'blue', 'gel', 8, 2, 'images/singleProduct/e5da9f433af82b8ee0841d030a198481122ebc19.jpg'),
(17, 'The Truman', 'large', 'blue', 'gel', 8, 3, 'images/singleProduct/78bbe036b1cf9c0849b3e67b0232b201c53c64a5.jpg'),
(17, 'The Truman', 'large', 'green', 'gel', 8, 0, 'images/singleProduct/8926a47c1b8b46e13d817db270e29f61267f3cc9.jpg'),
(17, 'The Truman', 'large', 'green', 'gel', 8, 1, 'images/singleProduct/ba87265ea6a8098b604fd5713eaff94edea27027.jpg'),
(17, 'The Truman', 'large', 'green', 'gel', 8, 2, 'images/singleProduct/196722c9a5fc79a3b2f1524a24ea70002144ea68.jpg'),
(17, 'The Truman', 'large', 'green', 'gel', 8, 3, 'images/singleProduct/e345222674b0b43d083ec73d11d5669fe07f1516.jpg'),
(17, 'The Truman', 'small', 'default', 'gel', 8, 0, 'images/singleProduct/89b9b47eb6dadf3a0ecf3111d272266079748aa4.jpg'),
(17, 'The Truman', 'small', 'default', 'gel', 8, 1, 'images/singleProduct/75fd065205d77a5e32245a2d5c38007983334e79.jpg'),
(17, 'The Truman', 'small', 'default', 'gel', 8, 2, 'images/singleProduct/c2a8bc3edc74b740199bd662ec90b62c993baa09.jpg'),
(17, 'The Truman', 'small', 'default', 'gel', 8, 3, 'images/singleProduct/94f3fcb12ac6d418d9ff549f8aba71012d63f718.jpg'),
(17, 'The Truman', 'small', 'blue', 'gel', 8, 0, 'images/singleProduct/c50f0c2fb7d848deb8bc19a413c343b68ed32767.jpg'),
(17, 'The Truman', 'small', 'blue', 'gel', 8, 1, 'images/singleProduct/45d9ad78d18852008f84fcf4a848a8bc3fd7e385.jpg'),
(17, 'The Truman', 'small', 'blue', 'gel', 8, 2, 'images/singleProduct/cbd1ecb63f9005fe49c803a4fe655e4f81ac9eb8.jpg'),
(17, 'The Truman', 'small', 'blue', 'gel', 8, 3, 'images/singleProduct/ad05399b6d5429736c2afd6d440d4e6507711b51.jpg'),
(17, 'The Truman', 'small', 'green', 'gel', 8, 0, 'images/singleProduct/848d2a8a0c24453ec1ab34f4ad78e4dd97a3c1cf.jpg'),
(17, 'The Truman', 'small', 'green', 'gel', 8, 1, 'images/singleProduct/def4127ff81ed1b27fce1788e73de855d1506d55.jpg'),
(17, 'The Truman', 'small', 'green', 'gel', 8, 2, 'images/singleProduct/208828c9fd078188a8f7fc8ee615d53b249876df.jpg'),
(17, 'The Truman', 'small', 'green', 'gel', 8, 3, 'images/singleProduct/b8cc94f89bbba39ee6a09998880856f58116046e.jpg')

insert into features
(product_id, index, img_url, title, text)
values
(3, 0, 'images/singleProduct/d7a1cee4292bf1ae76a3528db453128fa659a80a.jpg',
'5 German blades. Flex hinge. Lubricating strip. Precision trimmer.',
'Everything you need for a close, comfortable shave: sharp, durable blades, a flex hinge, a lubricating strip, and a precision trimmer for your sideburns and hard-to-reach places like under your nose.'),
(3, 1, 'images/singleProduct/e4b7c3a4819ba0b2615fe9591b866a575b10029d.jpg',
'Increased Control',
'The ergonomic body is made of die-cast zinc and polished chrome for a handsome finish and a rubberized grip for optimal control. For a more personalized experience, get it engraved.'),
(3, 2, 'images/singleProduct/38a19b08ef062cce2f1c5b7d0edb77852d984d5e.jpg',
'Smooth Shave',
'Our Foaming Shave Gel lathers into a rich foam, while our Shave Cream has a smooth texture. Both help your razor glide effortlessly over your skin for a close, comfortable shave.'),
(4, 0, 'images/singleProduct/d7a1cee4292bf1ae76a3528db453128fa659a80a.jpg',
'5 German blades. Flex hinge. Lubricating strip. Precision trimmer.',
'Everything you need for a close, comfortable shave: sharp, durable blades, a flex hinge, a lubricating strip, and a precision trimmer for your sideburns and hard-to-reach places like under your nose.'),
(4, 1, 'images/singleProduct/4d06af5893b1d7336b8d16a0a9368a9ea3270f4a.jpg',
'Get to know our blades better.',
'Want to see the details behind our new precision trimmer and more flexible hinge?'),
(4, 2, 'images/singleProduct/757741b96655d282bb3df11697d36f21f6c024b9.jpg',
'Protect your blades.',
'Our blade box keeps your blades in optimal condition until you are ready to use them. It''s easy to use, water-friendly, and 100% recyclable.'),
(5, 0, 'images/singleProduct/eec83ce6bc0df73b67ac6900158fe19f03743dfe.jpg',
'Stay right there.',
'With your Harry''s refill set you can rest easy knowing we have all your shaving needs covered.'),
(6, 0, 'images/singleProduct/e1afe5948c5e7eb999a5a58e4804d83d4eb5e462.jpg',
'Stay right there.',
'With your Harry''s refill set you can rest easy knowing we have all your shaving needs covered.'),
(7, 0, 'images/singleProduct/d7a1cee4292bf1ae76a3528db453128fa659a80a.jpg',
'5 German blades. Flex hinge. Lubricating strip. Precision trimmer.',
'Everything you need for a close, comfortable shave: sharp, durable blades, a flex hinge, a lubricating strip, and a precision trimmer for your sideburns and hard-to-reach places like under your nose.'),
(7, 1, 'images/singleProduct/f9aa85c8a8f89e26b38ac3050da5328bcea13a2d.jpg',
'Get to know the Winston better.',
'Want to learn how we made our polished metal handle easier to grip and control?'),
(7, 3, 'images/singleProduct/e4b7c3a4819ba0b2615fe9591b866a575b10029d.jpg',
'Increased Control',
'The ergonomic body is made of die-cast zinc and polished chrome for a handsome finish and a rubberized grip for optimal control. For a more personalized experience, get it engraved.'),
(8, 1, 'images/singleProduct/10a17031092ebedcde4924c59a8f7ac4483e044b.jpg',
'Smooth shaving',
'Our shave gel lathers into a rich foam that helps your razor glide effortlessly over your skin, ensuring a close and comfortable shave.'),
(8, 2, 'images/singleProduct/878e96257c39a5ece0aaca4b6a311e012faeefcb.jpg',
'Better for your skin',
'Unlike many other shaving foams, our formula has natural ingredients, like aloe and cucumber, that hydrate and refresh your skin. Say goodbye to dry.'),
(9, 1, 'images/singleProduct/10a17031092ebedcde4924c59a8f7ac4483e044b.jpg',
'Smooth shaving',
'Our shave gel lathers into a rich foam that helps your razor glide effortlessly over your skin, ensuring a close and comfortable shave.'),
(9, 2, 'images/singleProduct/6e39516ab34c65d64db0d93a2155d63fbf8d54e5.jpg',
'Fine Natural Ingredients',
'Our formula is made with a blend of 12 natural oils and extracts, like marula oil and eucalyptus, that moisturize and refresh your skin.'),
(10, 1, 'images/singleProduct/fe518fbfb694172d06e6916b10bbdb080634db62.jpg',
'Soothing',
'Get immediate relief after shaving. Our formula soothes skin and helps reduce redness. Ahhh.'),
(10, 2, 'images/singleProduct/2684777b0a94e6a765e5953249b763caf545c8a7.jpg',
'Natural hydration',
'Natural ingredients like aloe and cucumber moisturize and leave you feeling cool and refreshed after you shave.'),
(11, 1, 'images/singleProduct/71fd880964ce569b5b7dd17567e1bafeb0f5a5cc.jpg',
'Fresh. Cool. Clean.',
'Our face wash contains volcanic rock that exfoliates, while eucalyptus and peppermint leave your face feeling fresh and cool. It''s a deep clean you can feel working.'),
(11, 2, 'images/singleProduct/5131505a421d4cce016fa8c9660868a224b3d79e.jpg',
'Day in, day out',
'Our formula combines the deep cleansing benefits of a foaming wash with the gentle exfoliation of a facial scrub, which makes it perfect for everyday cleansing. Your face will thank you.'),
(11, 3, 'images/singleProduct/b5f38f3c39231af6fe02fe1ffd3c5c383a5f7aa5.jpg',
'Perfect pre-shave',
'Our face wash not only removes dirt and scrubs away dead skin cells, it also softens your beard, preparing your face for an even more comfortable shave.'),
(12, 0, 'images/singleProduct/582fcd8cac172e8e6211db9ce00d19c35cb23acd.jpg',
'Quickly Hydrates',
'Our non-greasy, lightweight lotion hydrates skin with shea butter and refreshes with subtle mint. It''s like a vacation for your face.'),
(12, 1, 'images/singleProduct/4d5c384915fda68bb51abe4477d99f9cf4b0ca7c.jpg',
'SPF Protection',
'Unlike chemical-based sunscreens, our mineral broad spectrum SPF 15 formula instantly protects from UVA/UVB rays and doesn''t leave any residue. Bonus: It’s so light you’ll forget you have it on.'),
(13, 0, 'images/singleProduct/220346457ffc7f00ac62dc62b4f18d8803f095b5.jpg',
'Instantly Relieves. Prevents Chapping.',
'Contains shea butter to immediately relieve dry lips and prevent chapping without leaving a shiny finish.'),
(13, 1, 'images/singleProduct/e207dc5c6a217ed7ca93287c1a8fc22abd463824.jpg',
'Soothing Protection.',
'Our SPF 15 formula protects lips with a pleasant, peppermint-y cooling sensation. So go ahead, keep applying.'),
(14, 1, 'images/singleProduct/b5b0e20eb23684ff14e7a8cf0aa793c3db97a816.jpg',
'Just right',
'Our Travel Kit is large enough to fit your travel necessities but small enough to pack, giving your carry-on some breathing room. Added bonus: it looks great on your sink.'),
(14, 2, 'images/singleProduct/ccd90ba95e96e1a1c0bdb3933e01c1c39ae53e46.jpg',
'Water-friendly fabric',
'Made in Italy, the cotton-nylon exterior is water-resistant and flexible. A waterproof lining helps contain spills, so you have one less thing to worry about on your trip.'),
(15, 0, 'images/singleProduct/d7a1cee4292bf1ae76a3528db453128fa659a80a.jpg',
'5 German blades. Flex hinge. Lubricating strip. Precision trimmer.',
'Everything you need for a close, comfortable shave: sharp, durable blades, a flex hinge, a lubricating strip, and a precision trimmer for your sideburns and hard-to-reach places like under your nose.'),
(15, 1, 'images/singleProduct/4d06af5893b1d7336b8d16a0a9368a9ea3270f4a.jpg',
'Get to know our blades better.',
'Want to see the details behind our new precision trimmer and more flexible hinge?'),
(15, 2, 'images/singleProduct/757741b96655d282bb3df11697d36f21f6c024b9.jpg',
'Protect your blades.',
'Our blade box keeps your blades in optimal condition until you are ready to use them. It''s easy to use, water-friendly, and 100% recyclable.'),
(16, 0, 'images/singleProduct/c03b6af587e8bf09cd6847b3b537088a208c3819.jpg',
'High and dry',
'Our new razor stand is designed to keep your blades above water so they can stay sharper, longer.'),
(16, 1, 'images/singleProduct/84234dee3b475edf19b571dc0b368e1658a9657f.jpg',
'On point',
'Form meets function with our aluminum stand - complete with a built-in grip at the base to prevent slipping.'),
(16, 2, 'images/singleProduct/448e930b8682fd2443bd4e7aeb1b91b722e9e785.jpg',
'On display',
'Your razor is worthy of prime bathroom real estate. It''s time to upgrade to the counter.'),
(17, 0, 'images/singleProduct/d7a1cee4292bf1ae76a3528db453128fa659a80a.jpg',
'5 German blades. Flex hinge. Lubricating strip. Precision trimmer.',
'Everything you need for a close, comfortable shave: sharp, durable blades, a flex hinge, a lubricating strip, and a precision trimmer for your sideburns and hard-to-reach places like under your nose.'),
(17, 1, 'images/singleProduct/fe31896b0df6d9a3730f730755ac7ea50d993681.jpg',
'Increased Control',
'The Truman handle is designed with a rubberized matte exterior, texturized grip pattern, and weighted core for maximum grip and control. It may be the best-looking thing in your bathroom (other than you.)'),
(17, 2, 'images/singleProduct/a588e9bcd9f8cc13a7cae9ff83b79905cbf57cdf.jpg',
'Take your pick.',
'Select the color that best complements your style and add some more personality to your sink.')