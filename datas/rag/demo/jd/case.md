【示例】
用户问题："查询北京用户最近一个月购买过智能手机的订单"

输出：
-- 查询北京用户近一个月购买智能手机的订单
SELECT o.order_no, u.username, oi.total_price, o.order_time 
FROM orders o
JOIN users u ON o.user_id = u.id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
WHERE u.address LIKE '北京市%'
  AND p.product_name = '智能手机'
  AND o.order_time >= CURRENT_DATE - INTERVAL '1 month'
  AND o.status NOT IN ('已取消') 
ORDER BY o.order_time DESC;
