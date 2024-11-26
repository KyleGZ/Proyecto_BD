--Productos con mayor costo unitario por categoría:
SELECT ID_Categoria, Nombre, Costo_Unitario
FROM Productos
WHERE Costo_Unitario = (
    SELECT MAX(Costo_Unitario)
    FROM Productos p2
    WHERE p2.ID_Categoria = Productos.ID_Categoria
);

--Inventario por almacén, mostrando total de productos:
SELECT a.ID_Almacen, a.Nombre_Almacen, COUNT(p.ID_Producto) AS Total_Productos
FROM Almacenes a
LEFT JOIN Toma t ON a.ID_Almacen = t.ID_Almacen
LEFT JOIN Productos p ON t.ID_Producto = p.ID_Producto
GROUP BY a.ID_Almacen, a.Nombre_Almacen;

--Productos con costo mayor al promedio por almacén:
SELECT t.ID_Almacen, p.Nombre, p.Costo_Unitario
FROM Toma t
INNER JOIN Productos p ON t.ID_Producto = p.ID_Producto
WHERE p.Costo_Unitario > (
    SELECT AVG(Costo_Unitario)
    FROM Productos
);

--Roles con mayor cantidad de usuarios asignados:
SELECT r.Nombre_Rol, COUNT(u.ID_Usuario) AS Total_Usuarios
FROM Roles r
LEFT JOIN Usuario u ON r.ID_Rol = u.ID_Rol
GROUP BY r.Nombre_Rol
ORDER BY Total_Usuarios DESC;

--Productos con inventario faltante por almacén:
SELECT a.Nombre_Almacen, p.Nombre, t.Estado
FROM Toma t
INNER JOIN Productos p ON t.ID_Producto = p.ID_Producto
INNER JOIN Almacen a ON t.ID_Almacen = a.ID_Almacen
WHERE t.Estado = 'Pendiente';

--Promedio de costos por categoría:
SELECT ID_Categoria, AVG(Costo_Unitario) AS Promedio_Costo
FROM Productos
GROUP BY ID_Categoria;

--Listado de productos y su categoría con costos por encima del 75 percentil:
SELECT p.ID_Producto, p.Nombre, p.Costo_Unitario, c.Nombre_Categoria
FROM Productos p
INNER JOIN Categorias c ON p.ID_Categoria = c.ID_Categoria
WHERE p.Costo_Unitario > (
    SELECT PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Costo_Unitario)
    FROM Productos
);

--Usuarios con roles administrativos:
SELECT u.ID_Usuario, u.Nombre, r.Nombre_Rol
FROM Usuario u
INNER JOIN Roles r ON u.ID_Rol = r.ID_Rol
WHERE r.Nombre_Rol = 'Administrador';

--Productos sin asociar a tomas:
SELECT p.ID_Producto, p.Nombre
FROM Productos p
WHERE NOT EXISTS (
    SELECT 1
    FROM Toma t
    WHERE t.ID_Producto = p.ID_Producto
);
--Tomas realizadas por fecha, agrupadas por almacén:
SELECT t.Fecha, a.Nombre_Almacen, COUNT(t.ID_Toma) AS Tomas_Realizadas
FROM Toma t
INNER JOIN Almacenes a ON t.ID_Almacen = a.ID_Almacen
GROUP BY t.Fecha, a.Nombre_Almacen;

--Productos más costosos en cada almacén:
SELECT t.ID_Almacen, p.ID_Producto, p.Nombre, p.Costo_Unitario
FROM Toma t
INNER JOIN Productos p ON t.ID_Producto = p.ID_Producto
WHERE p.Costo_Unitario = (
    SELECT MAX(Costo_Unitario)
    FROM Productos p2
    INNER JOIN Toma t2 ON p2.ID_Producto = t2.ID_Producto
    WHERE t2.ID_Almacen = t.ID_Almacen
);
