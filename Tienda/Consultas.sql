use tienda;

-- 1. Listar todos los productos con categoría y nombre del vendedor. --
SELECT 
    p.pro_nombre AS Producto,
    c.cat_nombre AS Categoría,
    v.ven_nombre AS Vendedor,
    p.pro_precio AS Precio,
    p.pro_stock AS Stock
FROM productos p
JOIN categorias c ON p.cat_id = c.cat_id
JOIN vendedores v ON p.ven_id = v.ven_id
ORDER BY c.cat_nombre, p.pro_nombre;

-- 2.Mostrar el total de ventas por categoría (suma de cantidad * precioUnitario). 
SELECT 
    c.cat_nombre AS Categoría,
    SUM(dp.det_cantidad * dp.det_precio_unitario) AS Total_Ventas
FROM detalle_pedido dp
JOIN productos p ON dp.pro_id = p.pro_id
JOIN categorias c ON p.cat_id = c.cat_id
GROUP BY c.cat_nombre
ORDER BY Total_Ventas DESC;

-- Obtener los 3 clientes con mayor gasto acumulado. 
SELECT 
    cl.cli_nombre AS Cliente,
    SUM(p.ped_total) AS Gasto_Total
FROM pedidos p
JOIN clientes cl ON p.cli_id = cl.cli_id
WHERE p.ped_estado = 'completado'
GROUP BY cl.cli_id, cl.cli_nombre
ORDER BY Gasto_Total DESC
LIMIT 3;

-- 4. Consultar los productos sin stock. 
SELECT 
    pro_nombre AS Producto,
    pro_precio AS Precio,
    cat_nombre AS Categoría,
    ven_nombre AS Vendedor
FROM productos p
JOIN categorias c ON p.cat_id = c.cat_id
JOIN vendedores v ON p.ven_id = v.ven_id
WHERE p.pro_stock = 0
ORDER BY p.pro_nombre;

-- 5. Calcular el promedio de calificación de vendedores
SELECT 
    ROUND(AVG(ven_calificacion), 2) AS Promedio_Calificacion
FROM vendedores;

-- 6.  Listar los pedidos realizados en el último mes y su total
SELECT 
    p.ped_id AS Pedido,
    cl.cli_nombre AS Cliente,
    p.ped_fecha AS Fecha,
    p.ped_total AS Total,
    p.ped_estado AS Estado
FROM pedidos p
JOIN clientes cl ON p.cli_id = cl.cli_id
WHERE p.ped_fecha >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
ORDER BY p.ped_fecha DESC;

-- 7. Mostrar el detalle completo de un pedido específico (idPedido = 2)
SELECT 
    p.pro_nombre AS Producto,
    dp.det_cantidad AS Cantidad,
    dp.det_precio_unitario AS Precio_Unitario,
    (dp.det_cantidad * dp.det_precio_unitario) AS Subtotal,
    c.cat_nombre AS Categoría
FROM detalle_pedido dp
JOIN productos p ON dp.pro_id = p.pro_id
JOIN categorias c ON p.cat_id = c.cat_id
WHERE dp.ped_id = 2; 

-- 8. Contar cuántos pedidos hizo cada cliente
SELECT 
    cl.cli_nombre AS Cliente,
    COUNT(p.ped_id) AS Total_Pedidos,
    SUM(CASE WHEN p.ped_estado = 'completado' THEN 1 ELSE 0 END) AS Pedidos_Completados,
    SUM(CASE WHEN p.ped_estado = 'pendiente' THEN 1 ELSE 0 END) AS Pedidos_Pendientes
FROM clientes cl
LEFT JOIN pedidos p ON cl.cli_id = p.cli_id
GROUP BY cl.cli_id, cl.cli_nombre
ORDER BY Total_Pedidos DESC;

-- 9. Encontrar el vendedor cuyo producto generó mayor ingreso en un solo pedido
SELECT 
    v.ven_nombre AS Vendedor,
    p.pro_nombre AS Producto,
    dp.det_cantidad AS Cantidad,
    dp.det_precio_unitario AS Precio_Unitario,
    (dp.det_cantidad * dp.det_precio_unitario) AS Ingreso_Total,
    ped.ped_id AS Pedido,
    ped.ped_fecha AS Fecha
FROM detalle_pedido dp
JOIN productos p ON dp.pro_id = p.pro_id
JOIN vendedores v ON p.ven_id = v.ven_id
JOIN pedidos ped ON dp.ped_id = ped.ped_id
ORDER BY Ingreso_Total DESC
LIMIT 1;

-- 10. Crear vista VentasPorCategoria
CREATE VIEW VentasPorCategoria AS
SELECT 
    c.cat_nombre AS Categoria,
    SUM(dp.det_cantidad * dp.det_precio_unitario) AS TotalVentas,
    COUNT(DISTINCT dp.ped_id) AS TotalPedidos,
    SUM(dp.det_cantidad) AS TotalProductosVendidos
FROM detalle_pedido dp
JOIN productos p ON dp.pro_id = p.pro_id
JOIN categorias c ON p.cat_id = c.cat_id
GROUP BY c.cat_id, c.cat_nombre
ORDER BY TotalVentas DESC;

-- Consultar la vista:
SELECT * FROM VentasPorCategoria;