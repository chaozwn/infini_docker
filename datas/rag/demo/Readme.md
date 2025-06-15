1. 在mysql创建数据 
tmall数据源建表语句
```

create database tmall;
use tmall;
### 用户表
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    phone VARCHAR(11) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE,
    address VARCHAR(200),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

### 产品表
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price > 0),
    stock INT NOT NULL CHECK (stock >= 0),
    status VARCHAR(10) CHECK (status IN ('上架', '下架')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

### 订单表
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id int,
    order_no VARCHAR(20) NOT NULL UNIQUE,
    total_amount NUMERIC(10,2) NOT NULL,
    status VARCHAR(10) CHECK (status IN ('已付款', '已发货', '已完成', '已取消')),
    order_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

### 订单明细表
CREATE TABLE order_items (
    id SERIAL PRIMARY KEY,
    order_id INT ,
    product_id INT,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price NUMERIC(10,2) NOT NULL,
    total_price NUMERIC(10,2)
);
```

2. 在mysql插入数据
```sql

INSERT INTO users (username,phone,email,address,created_at) VALUES
('张三','13812345678','zhangsan@example.com','北京市朝阳区','2025-05-07 20:31:34.510')
,('李四','13987654321','lisi@example.com','上海市浦东新区','2025-05-07 20:31:34.510')
,('王五','13698765432','wangwu@example.com','广州市天河区','2025-05-07 20:31:34.510')
,('赵六','13312341234','zhaoliu@example.com','深证福田区','2025-05-09 13:46:45.036');
INSERT INTO products (product_name,price,stock,status,created_at) VALUES
('智能手机',2999.00,100,'上架','2025-05-07 20:31:38.313')
,('无线耳机',499.00,200,'上架','2025-05-07 20:31:38.313')
,('智能手表',899.00,50,'上架','2025-05-07 20:31:38.313')
,('笔记本电脑',7999.00,30,'下架','2025-05-07 20:31:38.313')
,('蓝牙鼠标',59.00,1000,'上架','2025-05-09 13:48:00.413')
,('智能音箱',199.00,150,'上架','2025-05-09 13:48:31.846');
INSERT INTO orders (user_id,order_no,total_amount,status,order_time) VALUES
(2,'ORDER20231001567',1398.00,'已发货','2025-05-07 20:32:03.184')
,(1,'ORDER20231001123',3997.00,'已付款','2025-05-07 20:32:03.184')
,(3,'ORDER20231001999',8998.00,'已取消','2025-05-07 20:32:03.184')
,(4,'ORDER20250509213',558.00,'已付款','2025-05-09 13:51:30.838');
INSERT INTO order_items (order_id,product_id,quantity,unit_price,total_price) VALUES
(1,1,1,2999.00,2999.00)
,(1,2,2,499.00,998.00)
,(2,3,1,899.00,899.00)
,(2,2,1,499.00,499.00)
,(3,4,1,7999.00,7999.00)
,(3,3,1,899.00,899.00)
,(4,2,1,499.00,499.00)
,(4,5,1,59.00,59.00);
```

3. 在postgres创建数据库
```sql
create database jd;

CREATE TABLE users (
                       id SERIAL PRIMARY KEY, --用户ID，主键
                       username VARCHAR(50) NOT NULL UNIQUE, --用户名
                       phone VARCHAR(11) NOT NULL UNIQUE, --手机号
                       email VARCHAR(100) UNIQUE, --电子邮箱（唯一）
                       address VARCHAR(200), --收货地址
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP --创建时间
);

CREATE TABLE products (
                          id SERIAL PRIMARY KEY, --商品ID，主键
                          product_name VARCHAR(100) NOT NULL, --商品名称
                          price NUMERIC(10,2) NOT NULL CHECK (price > 0), --商品价格（必须＞0）
                          stock INT NOT NULL CHECK (stock >= 0), --库存数量（必须≥0）
                          status VARCHAR(10) CHECK (status IN ('上架', '下架')),  --商品状态（上架/下架）
                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP --创建时间
);

CREATE TABLE orders (
                        id SERIAL PRIMARY KEY, --订单ID，主键
                        user_id INT REFERENCES users(id), --用户ID，外键关联users.id
                        order_no VARCHAR(20) NOT NULL UNIQUE, --订单编号
                        total_amount NUMERIC(10,2) NOT NULL, --订单总金额
                        status VARCHAR(10) CHECK (status IN ('已付款', '已发货', '已完成', '已取消')), --订单状态(已付款/已发货/已完成/已取消)
                        order_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP --下单时间
);

CREATE TABLE order_items (
                             id SERIAL PRIMARY KEY, --明细ID，主键
                             order_id INT REFERENCES orders(id), --订单ID，外键关联orders.id
                             product_id INT REFERENCES products(id), --商品ID，外键关联products.id
                             quantity INT NOT NULL CHECK (quantity > 0), --购买数量（必须＞0）
                             unit_price NUMERIC(10,2) NOT NULL, --下单时的商品单价
                             total_price NUMERIC(10,2) GENERATED ALWAYS AS (quantity * unit_price) stored --明细总价（自动计算：数量×单价）
);
```

4. 在postgres插入数据
```sql

INSERT INTO users (username,phone,email,address,created_at) VALUES
('测试人员1','13812345678','zhangsan@example.com','北京市朝阳区','2025-05-07 20:31:34.510')
,('测试人员2','13987654321','lisi@example.com','上海市浦东新区','2025-05-07 20:31:34.510')
,('测试人员3','13698765432','wangwu@example.com','广州市天河区','2025-05-07 20:31:34.510')
,('测试人员4','13312341234','zhaoliu@example.com','深证福田区','2025-05-09 13:46:45.036');
INSERT INTO products (product_name,price,stock,status,created_at) VALUES
('围巾',2999.00,100,'上架','2025-05-07 20:31:38.313')
,('华为电脑',499.00,200,'上架','2025-05-07 20:31:38.313')
,('苹果手表',899.00,50,'上架','2025-05-07 20:31:38.313')
,('镜子',7999.00,30,'下架','2025-05-07 20:31:38.313')
,('无限鼠标',59.00,1000,'上架','2025-05-09 13:48:00.413')
,('高档音箱',199.00,150,'上架','2025-05-09 13:48:31.846');
INSERT INTO orders (user_id,order_no,total_amount,status,order_time) VALUES
(2,'ORDER20231001567',1398.00,'已发货','2025-05-07 20:32:03.184')
,(1,'ORDER20231001123',3997.00,'已付款','2025-05-07 20:32:03.184')
,(3,'ORDER20231001999',8998.00,'已取消','2025-05-07 20:32:03.184')
,(4,'ORDER20250509213',558.00,'已付款','2025-05-09 13:51:30.838');
INSERT INTO order_items (order_id,product_id,quantity,unit_price) VALUES
(1,1,1,2999.00)
,(1,2,2,499.00)
,(2,3,1,899.00)
,(2,2,1,499.00)
,(3,4,1,7999.00)
,(3,3,1,899.00)
,(4,2,1,499.00)
,(4,5,1,59.00);
```




