CREATE TABLE order_product (
    quantity INTEGER NOT NULL,
    order_id BIGINT NOT NULL REFERENCES orders(id),
    product_id BIGINT NOT NULL REFERENCES product(id),
    PRIMARY KEY (order_id, product_id)
);

INSERT INTO order_product (quantity, order_id, product_id)
SELECT quantity, id, product_id
FROM orders
WHERE product_id IS NOT NULL;

ALTER TABLE orders DROP COLUMN product_id;
ALTER TABLE orders DROP COLUMN product_name;
ALTER TABLE orders DROP COLUMN product_price;
ALTER TABLE orders DROP COLUMN product_picture_url;
ALTER TABLE orders DROP COLUMN quantity;
