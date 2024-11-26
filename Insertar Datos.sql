use Proyecto;

--Datos Productos
INSERT INTO Productos (ID_Producto, ID_Categoria, Nombre, ID_Unidad, Costo_Unitario) VALUES
(1, 2, 'DESINFECTANTE EN AEROSOL PARA SUPERFICIES DE 354GRS, CON FRAGANCIA',3 , 3856.77),
(2, 2, 'ABRILLANTADOR PARA SUPERFICIES DE 240 ML (± 10 ML)', 9, 678.25),
(3, 3, 'ACOPLE PARA MANGUERA DE 1.27CM (1/2")', 1, 637.17),
(4, 3, 'ADAPTADOR HEMBRA 25 MM PVC PRESION', 1, 487.61),
(5, 3, 'ADAPTADOR HEMBRA PVC 38MM(1-1/2") PRESION', 1, 887.96),
(6, 3, 'ADAPTADOR HEMBRA, PVC, 50 MM, DE PRESION', 1, 1216.46),
(7, 3, 'ADAPTADOR MACHO DE PLASTICO DE ALTA DENSIDAD', 1, 793.81),
(8, 2, 'ALCOHOL EN GEL, DESINFECTANTE PARA MANOS, ENVASE DE 1.000 ML (1 LITRO)', 9, 1980.00),
(9, 2, 'ALCOHOL MULTIUSO LIQUIDO AL 80%', 2, 1872.03),
(10, 2, 'BALDE PLASTICO DE 10 LITROS, SIN TAPA', 1, 2121.47),
(11, 1, 'BOLIGRAFO AZUL PUNTA FINA', 1, 82.90),
(12, 1, 'CARPETA COLGANTE TAMAÑO OFICIO', 5, 2993.98),
(13, 1, 'CUADERNO DE 100 HOJAS, RAYADO COMUN', 1, 609.87),
(14, 2, 'DESINFECTANTE PARA MANOS, SPRAY, 400 ML', 9, 6584.50),
(15, 2, 'ESCOBA CORRIENTE DE FIBRA DE NYLON', 1, 1310.35),
(16, 2, 'FIBRA (ESPONJA) DE LIMPIEZA COLOR AZUL', 5, 404.17),
(17, 2, 'GUANTE DE HULE N°9', 5, 508.92),
(18, 2, 'JABON ABRASIVO EN POLVO (PQ DE 250 GR)', 3, 573.19),
(19, 2, 'LIQUIDO DESINFECTANTE A BASE DE CLORO', 2, 1418.47),
(20, 2, 'PAÑO DE MICROFIBRA COLOR "AMARILLO"', 5, 926.13),
(21, 3, 'PEGAMENTO DE CONTACTO, PRESENTACION 4OZ', 1, 2447.59),
(22, 1, 'REGLA PLASTICA DE 30 CM DE LARGO', 1, 214.20),
(23, 1, 'ROTULADOR PIZARRA ACRILICA COLOR AZUL', 1, 298.20),
(24, 1, 'SACAGRAPAS METALICO DE 6 CM', 1, 251.36),
(25, 3, 'TOMA CORRIENTE DOBLE POLARIZADO', 1, 1324.12);

--Muestra los datos de los productos
select * from Productos;

--Datos Almacenes

INSERT INTO Almacenes (ID_Almacen, nombre_almacen, ubicacion, responsable) VALUES 
(1, ‘Almacen Principal’, ‘Sede Central’, ‘Risvan Vargas Esquivel’),
(2, ‘Almacen de Mantenimiento’, ‘Sede del Pacifico’, ‘Juan Carlos Umanzor’);

--Muestra los datos de los almacenes 
select * from Almacenes; 

--Datos Proveedores

INSERT INTO proveedores (ID_Proveedor, nombre, contacto, dirección, teléfono, correo) VALUES 
(1, 'Distribuidora Costa Rica', 'Luis Pérez', 'San José, Costa Rica', '+506 2222 1111', 'lperez@dcr.com'),
(2, 'Soluciones Técnicas S.A.', 'María Gómez', 'Heredia, Costa Rica', '+506 2233 2222', 'mgomez@soltec.com'),
(3, 'Grupo Comercial Tico', 'Carlos Rodríguez', 'Cartago, Costa Rica', '+506 2444 3333', 'crodriguez@gcticocr.com'),
(4, 'Proveedora Industrial Centroamericana', 'Ana Méndez', 'Alajuela, Costa Rica', '+506 2555 4444', 'amendez@pica.co.cr');

--Muestra los datos de los proveedores
select * from Proveedores;  

--Movimientos_Inventario

INSERT INTO Movimientos_Inventario (ID_Movimiento, ID_Producto, Tipo_Movimiento, Cantidad, Fecha, Descripción, Responsable) VALUES  
(1, 18, 'Entrada', 50, '2024-07-04', 'Ingreso de producto para reaprovisionamiento', 'Risvan Eduardo Vargas Esquivel'),
(2, 5, 'Salida', 30, '2024-07-05', 'Entrega para solicitud 2024-2110', 'Maureen Manley Baeza'),
(3, 11, 'Ajuste', -5, '2024-07-06', 'Ajuste por rotura', 'Jorge Campos Pérez'),
(4, 1, 'Entrada', 100, '2024-07-07', 'Ingreso por nueva compra', 'Ana María González'),
(5, 6, 'Salida', 20, '2024-07-08', 'Pedido interno', 'Carlos Jiménez Rodríguez'),
(6, 8, 'Ajuste', -10, '2024-07-09', 'Ajuste por inventario físico', 'Laura Castillo Solano'),
(7, 17, 'Entrada', 25, '2024-07-10', 'Reaprovisionamiento', 'José Antonio Salazar'),
(8, 16, 'Salida', 15, '2024-07-11', 'Solicitud de materiales administrativos', 'María Fernanda Rojas'),
(9, 10, 'Ajuste', -3, '2024-07-12', 'Producto defectuoso', 'Luis Fernando Rodríguez'),
(10, 13, 'Entrada', 45, '2024-07-13', 'Ingreso adicional de producto', 'Daniela Salazar Ramírez'),
(11, 9, 'Salida', 60, '2024-07-14', 'Solicitud aprobada de materiales', 'Andrés Villalobos Mora'),
(12, 12, 'Ajuste', 8, '2024-07-15', 'Ajuste por ingreso extra', 'Rosa Elena Vargas'),
(13, 3, 'Entrada', 75, '2024-07-16', 'Nueva adquisición', 'Miguel Hidalgo Ortega'),
(14, 4, 'Salida', 25, '2024-07-17', 'Salida para despacho interno', 'Gloria Ramírez Castro'),
(15, 15, 'Ajuste', -12, '2024-07-18', 'Ajuste por deterioro', 'Carlos Montero Rodríguez'),
(16, 2, 'Entrada', 55, '2024-07-19', 'Reingreso por devolución', 'Paula Quirós Vargas'),
(17, 14, 'Salida', 35, '2024-07-20', 'Entrega a proyecto', 'Esteban Morales'),
(18, 7, 'Ajuste', -7, '2024-07-21', 'Ajuste de inventario mensual', 'Sandra Pérez Mena'),
(19, 19, 'Entrada', 90, '2024-07-22', 'Ingreso de productos nuevos', 'Marcos Ramírez Soto'),
(20, 20, 'Salida', 40, '2024-07-23', 'Consumo mensual', 'Marta Arias Fernández'),
(21, 21, 'Ajuste', -2, '2024-07-24', 'Corrección por error en registro', 'Ricardo Vargas Esquivel'),
(22, 22, 'Entrada', 20, '2024-07-25', 'Entrega de proveedor', 'Isabel Cruz García'),
(23, 23, 'Salida', 18, '2024-07-26', 'Solicitud específica', 'Mario Sánchez Vega'),
(24, 24, 'Ajuste', -4, '2024-07-27', 'Pérdida registrada', 'Carolina Zamora Chaves'), 
(25, 5, 'Entrada', 12, '2024-07-28', 'Ingreso para nuevo pedido', 'Adriana Ortiz Leiva');


--Muestra los datos de los movimientos del inventario
select * from Movimientos_Inventario; 


--Solicitudes_Materiales

INSERT INTO Solicitudes_Materiales (ID_Solicitud, ID_Usuario, Fecha_Solicitud, Estado, Descripción) VALUES 
(1, 1001, '2024-11-05', 'Aprobado', 'Limpieza y aseo oficinas y s. sanitarios áreas recreativas Sede del Pacífico'),
(2, 1002, '2024-11-05', 'Aprobado', 'Solicitud de materiales de limpieza para mantenimiento'),
(3, 1003, '2024-11-04', 'Aprobado', 'Requisición de artículos de papelería'),
(4, 1004, '2024-10-28', 'Aprobado', 'Materiales para eventos recreativos estudiantiles'),
(5, 1005, '2024-10-29', 'Aprobado', 'Requerimientos para oficina Editorial y audiovisual'),
(6, 1006, '2024-11-03', 'Pendiente', 'Artículos para la Unidad de Trabajo Social y Programa Residencias'),
(7, 1007, '2024-11-02', 'Aprobado', 'Materiales para uso en oficina de salud'),
(8, 1008, '2024-10-27', 'Rechazado', 'Solicitudes para biblioteca y área de investigación'),
(9, 1009, '2024-10-25', 'Aprobado', 'Reabastecimiento de productos de limpieza y aseo'),
(10, 1010, '2024-10-26', 'Aprobado', 'Solicitudes de materiales biodegradables'),
(11, 1011, '2024-11-01', 'Pendiente', 'Productos para el mantenimiento de áreas comunes'),
(12, 1012, '2024-10-30', 'Aprobado', 'Solicitudes para áreas de alto tráfico'),
(13, 1013, '2024-10-29', 'Aprobado', 'Material para actividades de promoción estudiantil'),
(14, 1014, '2024-11-04', 'Aprobado', 'Suministro de productos de limpieza y desinfección'),
(15, 1015, '2024-10-31', 'Rechazado', 'Requerimiento de material biodegradable'),
(16, 1016, '2024-11-01', 'Aprobado', 'Solicitud de papelería adicional'),
(17, 1017, '2024-11-03', 'Aprobado', 'Productos específicos para desinfección'),
(18, 1018, '2024-10-28', 'Pendiente', 'Solicitud para reposición de equipos pequeños'),
(19, 1019, '2024-10-30', 'Aprobado', 'Requerimientos para oficinas administrativas'),
(20, 1020, '2024-10-25', 'Aprobado', 'Productos para eventos institucionales'),
(21, 1021, '2024-10-31', 'Rechazado', 'Suministros para áreas de descanso y recreación'),
(22, 1022, '2024-10-29', 'Aprobado', 'Requerimiento de material para soporte técnico'),
(23, 1023, '2024-11-02', 'Aprobado', 'Materiales para mantenimiento preventivo'),
(24, 1024, '2024-11-05', 'Pendiente', 'Suministro de artículos de seguridad e higiene'),
(25, 1025, '2024-11-04', 'Aprobado', 'Productos para uso diario de la comunidad universitaria');

---Muestra los datos de las solicitudes de los materiales
select * from Solicitudes_Materiales;

--Detalle_Solicitud
INSERT INTO Detalle_Solicitud (ID_Detalle, ID_Solicitud, ID_Producto, Cantidad) VALUES
(1, 1, 101, 2),
(2, 1, 102, 3),
(3, 2, 103, 4),
(4, 2, 104, 10),
(5, 3, 105, 8),
(6, 3, 106, 12),
(7, 4, 107, 1),
(8, 4, 108, 15),
(9, 5, 109, 20),
(10, 5, 110, 6),
(11, 6, 111, 4),
(12, 6, 112, 5),
(13, 7, 113, 9),
(14, 7, 114, 8),
(15, 8, 115, 2),
(16, 8, 116, 11),
(17, 9, 117, 14),
(18, 9, 118, 7),
(19, 10, 119, 3),
(20, 10, 120, 16),
(21, 11, 121, 10),
(22, 11, 122, 18),
(23, 12, 123, 13),
(24, 12, 124, 9),
(25, 13, 125, 5);


--Muestra los datos de los detalles de las solicitudes
select * from Detalle_Solicitud;

--Ajustes_Toma
INSERT INTO Ajustes_Toma (ID_Ajuste, ID_Toma, ID_Producto, Cantidad_Existente, Cantidad_Contada, Diferencia, Fecha) VALUES
(1, 424, 62872, 1, 51, 50, '2024-11-05'),
(2, 430, 527872, 0, 10, 10, '2024-11-05'),
(3, 434, 838281, 0, 20, 20, '2024-11-05'),
(4, 434, 9940, 0, 100, 100, '2024-11-05'),
(5, 434, 8940, 90, 290, 200, '2024-11-05'),
(6, 434, 2966, 5, 15, 10, '2024-11-05'),
(7, 437, 4917, 0, 60, 60, '2024-11-05'),
(8, 437, 41872, 2, 12, 10, '2024-11-05'),
(9, 434, 91940, 90, 190, 100, '2024-11-05'),
(10, 434, 41698, 35, 75, 40, '2024-11-05'),
(11, 438, 1941, 9, 29, 20, '2024-11-05'),
(12, 437, 60872, 0, 420, 420, '2024-11-05'),
(13, 434, 4966, 4, 14, 10, '2024-11-05'),
(14, 434, 7940, 0, 200, 200, '2024-11-05'),
(15, 430, 527872, 0, 10, 10, '2024-11-05'),
(16, 434, 2966, 5, 15, 10, '2024-11-05'),
(17, 437, 4917, 0, 60, 60, '2024-11-05'),
(18, 434, 41698, 35, 75, 40, '2024-11-05'),
(19, 438, 21008, 1, 5, 4, '2024-11-05'),
(20, 434, 7940, 0, 200, 200, '2024-11-05'),
(21, 437, 60872, 0, 420, 420, '2024-11-05'),
(22, 437, 41872, 2, 12, 10, '2024-11-05'),
(23, 438, 1186275, 5, 35, 30, '2024-11-05'),
(24, 430, 527872, 0, 10, 10, '2024-11-05'),
(25, 424, 62872, 1, 51, 50, '2024-11-05');

--Muestra los datos de ajustes_toma
select * from Ajustes_Toma;

--Categorias_Producto
INSERT INTO Categorias_Producto (ID_Categoria, Nombre_Categoria) VALUES
(1, 'Oficina'),
(2, 'Limpieza'),
(3, 'Ferreteria');

--Muestra los datos de las categorías de los productos
select * from Categorias_Producto;

--Unidad_Medida 
--CAMBIAR
INSERT INTO Unidad_Medida (ID_Unidad, Nombre, Abreviatura) VALUES
(1, 'Unidad', 'Un'),
(2, 'Galón', 'Gal'),
(3, 'Kilogramo', 'Kg'),
(4, 'Metro', 'Mts'),
(5, 'Paquete', 'Paq'),
(6, 'Caja', 'Cj'),
(7, 'Rollo', 'Roll'),
(8, 'Pliego', 'Plg'),
(9, 'Litro', 'L');

--Muestra los datos de las unidades de medida
select * from Unidad_Medida;

--Responsables
INSERT INTO Responsables (ID_Responsable, Nombre, Cargo, Contacto) VALUES
(1, 'Risvan  Eduardo Vargas Esquivel', 'Jefe de Inventario', 'risvan.vargas@empresa.com'),
(2, 'Carlos Martínez', 'Supervisor de Almacén', 'carlos.martinez@empresa.com'),
(3, 'María Pérez', 'Encargada de Compras', 'maria.perez@empresa.com'),
(4, 'Javier Gómez', 'Asistente de Inventario', 'javier.gomez@empresa.com'),
(5, 'Laura Sánchez', 'Coordinadora de Logística', 'laura.sanchez@empresa.com'),
(6, 'Maureen Manley Baeza', 'Analista de Datos', 'maureen.baeza@empresa.com'),
(7, 'Carmen Ruiz', 'Jefa de Proveeduría', 'carmen.ruiz@empresa.com');

--Muestra los datos de los responsables de los almacenes
select * from Responsables_Almacen;

--Ordenes
INSERT INTO Ordenes (ID_Orden, ID_Proveedor, Fecha_Orden, Estado) VALUES 
(1, 1, '2024-01-30', 'Entregada'),
(2, 1, '2024-01-31', 'Entregada'),
(3, 1, '2024-02-09', 'Entregada'),
(4, 1, '2024-04-09', 'Entregada'),
(5, 1, '2024-06-25', 'Entregada'),
(6, 1, '2024-07-04', 'Entregada'),
(7, 1, '2024-10-30', 'Aprobada Alisto'),
(8, 1, '2024-03-07', 'Entregada'),
(9, 1, '2024-05-31', 'Entregada'),
(10, 2, '2024-07-05', 'Entregada'),
(11, 2, '2024-11-01', 'Entregada'),
(12, 2, '2024-02-08', 'Entregada'),
(13, 2, '2024-05-30', 'Entregada'),
(14, 2, '2024-07-10', 'Entregada'),
(15, 3, '2024-06-05', 'Entregada'),
(16, 3, '2024-03-08', 'Entregada'),
(17, 3, '2024-01-31', 'Entregada'),
(18, 3, '2024-11-04', 'Entregada'),
(19, 3, '2024-04-04', 'Entregada'),
(20, 3, '2024-02-10', 'Entregada'),
(21, 4, '2024-06-30', 'Entregada'),
(22, 4, '2024-05-04', 'Entregada'),
(23, 4, '2024-10-30', 'Aprobada Alisto'),
(24, 4, '2024-01-31', 'Entregada'),
(25, 4, '2024-07-01', 'Entregada');

--Muestra los datos de la orden de compra
select * from Orden_Compra;

--Detalle_Orden
INSERT INTO Detalle_Orden (ID_Detalle_Orden, ID_Orden, ID_Producto, Cantidad, Precio_Unitario) VALUES
(1, 1, 18, 20, 573.19),
(2, 2, 3, 100, 637.17),
(3, 3, 5, 200, 887.96),
(4, 4, 10, 20, 2121.47),
(5, 5, 19, 70, 1418.47),
(6, 6, 7, 178, 793.81),
(7, 7, 16, 10, 404.17),
(8, 8, 20, 40, 926.13),
(9, 9, 11, 50, 82.90),
(10, 10, 25, 12, 1324.12),
(11, 11, 19, 100, 1418.47),
(12, 12, 4, 200, 487.61),
(13, 13, 5, 30, 887.96),
(14, 14, 6, 60, 1216.46),
(15, 15, 24, 48, 251.36),
(16, 16, 7, 420, 793.81),
(17, 17, 22, 240, 214.20),
(18, 18, 20, 60, 926.13),
(19, 19, 2, 36, 678.25),
(20, 20, 21, 25, 2447.59),
(21, 21, 14, 100, 6584.50),
(22, 22, 23, 24, 298.20),
(23, 23, 18, 10, 573.19),
(24, 24, 12, 48, 2993.98),
(25, 25, 15, 90, 1310.35);

--Muestra los datos del detalle de la orden de compra
select * from Detalle_Orden;

--Ubicaciones_Producto
INSERT INTO  Ubicaciones_Producto (ID_Ubicacion, ID_Producto, ID_Almacen) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 2),
(9, 9, 2),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 2),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 2),
(19, 19, 2),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1);

--Muestra los datos de la ubicación del producto
select * from Ubicaciones_Producto;

--Usuarios
INSERT INTO Usuarios (ID_Usuario, Nombre, ID_Rol, Correo, Contraseña) VALUES
(1, 'Juan Pérez', 1, 'juan.perez@example.com', 'Contraseña123'),
(2, 'María Gómez', 2, 'maria.gomez@example.com', 'Segura456'),
(3, 'Luis Fernández', 1, 'luis.fernandez@example.com', 'Clave789'),
(4, 'Ana López', 3, 'ana.lopez@example.com', 'Pass2023'),
(5, 'Carlos Ruiz', 2, 'carlos.ruiz@example.com', 'Secretos321'),
(6, 'Elena Ramírez', 1, 'elena.ramirez@example.com', 'ClaveSegura'),
(7, 'Jorge Martínez', 3, 'jorge.martinez@example.com', 'Pass1234'),
(8, 'Lucía Torres', 2, 'lucia.torres@example.com', 'Clave4567'),
(9, 'Sofía Herrera', 1, 'sofia.herrera@example.com', 'ClaveUnica'),
(10, 'Andrés Castro', 3, 'andres.castro@example.com', 'Password6789');

--Muestra los datos de los usuarios
select * from Usuarios;









