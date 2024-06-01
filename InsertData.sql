insert into consumen (name, email, phone, address) values
('Yoyoy','yoyoy@gmail.com','081122334455','Digital Park, Nongsa, Kota Batam 29466');

insert into seller (name, email, phone, address) values
('TokoOKe','TokoOke@gmail.com','082233445566','Digital Park, Nongsa, Kota Batam 29466');

insert into product (name, price, weight) values
('SAPPHIRE NITRO+ Radeon RX 7900 XTX 24GB',20000000,5.00);

insert into orderitem (quantity, price, productid) values
(1,20000000,1);

insert into orders (quantity, totalprice, consumenid, sellerid, orderitemid) values
(1,20000000,1,1,1);