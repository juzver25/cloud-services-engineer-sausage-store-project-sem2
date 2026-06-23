CREATE TABLE product (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    picture_url VARCHAR(255),
    price DOUBLE PRECISION
);

CREATE TABLE orders (
    id BIGSERIAL PRIMARY KEY,
    status VARCHAR(255),
    date_created DATE,
    product_id BIGINT,
    product_name VARCHAR(255),
    product_price DOUBLE PRECISION,
    product_picture_url VARCHAR(255),
    quantity INTEGER,
    CONSTRAINT fk_orders_product FOREIGN KEY (product_id) REFERENCES product(id)
);
