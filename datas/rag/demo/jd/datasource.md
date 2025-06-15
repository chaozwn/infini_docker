### 用户表,手机号是可以用来跨平台查询的，不管什么平台都可以用手机号查询用户信息
CREATE TABLE users (
    id SERIAL PRIMARY KEY, --用户ID，主键
    username VARCHAR(50) NOT NULL UNIQUE, --用户名
    phone VARCHAR(11) NOT NULL UNIQUE, --手机号,跨平台的身份标识 
    email VARCHAR(100) UNIQUE, --电子邮箱（唯一）
    address VARCHAR(200), --收货地址
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP --创建时间
);

### 产品表
CREATE TABLE products (
    id SERIAL PRIMARY KEY, --商品ID，主键
    product_name VARCHAR(100) NOT NULL, --商品名称
    price NUMERIC(10,2) NOT NULL CHECK (price > 0), --商品价格（必须＞0）
    stock INT NOT NULL CHECK (stock >= 0), --库存数量（必须≥0）
    status VARCHAR(10) CHECK (status IN ('上架', '下架')),  --商品状态（上架/下架）
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP --创建时间
);

### 订单表
CREATE TABLE orders (
    id SERIAL PRIMARY KEY, --订单ID，主键
    user_id INT REFERENCES users(id), --用户ID，外键关联users.id
    order_no VARCHAR(20) NOT NULL UNIQUE, --订单编号
    total_amount NUMERIC(10,2) NOT NULL, --订单总金额
    status VARCHAR(10) CHECK (status IN ('已付款', '已发货', '已完成', '已取消')), --订单状态(已付款/已发货/已完成/已取消)
    order_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP --下单时间
);

### 订单明细表
CREATE TABLE order_items (
    id SERIAL PRIMARY KEY, --明细ID，主键
    order_id INT REFERENCES orders(id), --订单ID，外键关联orders.id
    product_id INT REFERENCES products(id), --商品ID，外键关联products.id
    quantity INT NOT NULL CHECK (quantity > 0), --购买数量（必须＞0）
    unit_price NUMERIC(10,2) NOT NULL, --下单时的商品单价
    total_price NUMERIC(10,2) GENERATED ALWAYS AS (quantity * unit_price) stored --明细总价（自动计算：数量×单价）
);
