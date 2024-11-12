use Proyecto;

--Datos Productos
INSERT INTO Productos (ID_Producto, ID_Categoria, Nombre, Unidad_medida, Costo_Unitario, Saldo, Total) VALUES 
(1, 101, 'DESINFECTANTE EN AEROSOL PARA SUPERFICIES DE 354GRS, CON FRAGANCIA', 'Unidad', 3856.77, 163, 628653.51),
(2, 102, 'ABRILLANTADOR PARA SUPERFICIES DE 240 ML (± 10 ML)', 'Unidad', 678.25, 0, 0.00),
(3, 103, 'ACOPLE PARA MANGUERA DE 1.27CM (1/2")', 'Unidad', 637.17, 13, 8283.21),
(4, 104, 'ADAPTADOR HEMBRA 25 MM PVC PRESION', 'Unidad', 487.61, 33, 16091.13),
(5, 105, 'ADAPTADOR HEMBRA PVC 38MM(1-1/2") PRESION', 'Unidad', 887.96, 32, 28414.72),
(6, 106, 'ADAPTADOR HEMBRA, PVC, 50 MM, DE PRESION', 'Unidad', 1216.46, 22, 26762.12),
(7, 107, 'ADAPTADOR MACHO DE PLASTICO DE ALTA DENSIDAD', 'Unidad', 793.81, 23, 18257.63),
(8, 108, 'ALCOHOL EN GEL, DESINFECTANTE PARA MANOS, ENVASE DE 1.000 ML (1 LITRO)', 'Unidad', 1980.00, 88, 174240.00),
(9, 109, 'ALCOHOL MULTIUSO LIQUIDO AL 80%', 'Galón', 1872.03, 81, 151634.43),
(10, 110, 'BALDE PLASTICO DE 10 LITROS, SIN TAPA', 'Unidad', 2121.47, 23, 48793.81),
(11, 111, 'BOLIGRAFO AZUL PUNTA FINA', 'Unidad', 82.90, 444, 36807.60),
(12, 112, 'CARPETA COLGANTE TAMAÑO OFICIO', 'Caja', 2993.98, 32, 95807.36),
(13, 113, 'CUADERNO DE 100 HOJAS, RAYADO COMUN', 'Unidad', 609.87, 14, 8538.18),
(14, 114, 'DESINFECTANTE PARA MANOS, SPRAY, 400 ML', 'Unidad', 6584.50, 83, 546513.50),
(15, 115, 'ESCOBA CORRIENTE DE FIBRA DE NYLON', 'Unidad', 1310.35, 23, 30138.05),
(16, 116, 'FIBRA (ESPONJA) DE LIMPIEZA COLOR AZUL', 'Unidad', 404.17, 142, 57392.14),
(17, 117, 'GUANTE DE HULE N°9', 'Par', 508.92, 89, 45293.88),
(18, 118, 'JABON ABRASIVO EN POLVO (PQ DE 250 GR)', 'Paquete', 573.19, 232, 132980.08),
(19, 119, 'LIQUIDO DESINFECTANTE A BASE DE CLORO', 'Galón', 1418.47, 96, 136173.12),
(20, 120, 'PAÑO DE MICROFIBRA COLOR "AMARILLO"', 'Unidad', 926.13, 143, 132436.59),
(21, 121, 'PEGAMENTO DE CONTACTO, PRESENTACION 4OZ', 'Unidad', 2447.59, 5, 12237.95),
(22, 122, 'REGLA PLASTICA DE 30 CM DE LARGO', 'Unidad', 214.20, 39, 8353.80),
(23, 123, 'ROTULADOR PIZARRA ACRILICA COLOR AZUL', 'Unidad', 298.20, 263, 78426.60),
(24, 124, 'SACAGRAPAS METALICO DE 6 CM', 'Unidad', 251.36, 15, 3770.40),
(25, 125, 'TOMA CORRIENTE DOBLE POLARIZADO', 'Unidad', 1324.12, 48, 63557.76);

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
(1, 101, 'Entrada', 50, '2024-07-04', 'Ingreso de producto para reaprovisionamiento', 'Risvan Eduardo Vargas Esquivel'),
(2, 102, 'Salida', 30, '2024-07-05', 'Entrega para solicitud 2024-2110', 'Maureen Manley Baeza'),
(3, 103, 'Ajuste', -5, '2024-07-06', 'Ajuste por rotura', 'Jorge Campos Pérez'),
(4, 104, 'Entrada', 100, '2024-07-07', 'Ingreso por nueva compra', 'Ana María González'),
(5, 105, 'Salida', 20, '2024-07-08', 'Pedido interno', 'Carlos Jiménez Rodríguez'),
(6, 106, 'Ajuste', -10, '2024-07-09', 'Ajuste por inventario físico', 'Laura Castillo Solano'),
(7, 107, 'Entrada', 25, '2024-07-10', 'Reaprovisionamiento', 'José Antonio Salazar'),
(8, 108, 'Salida', 15, '2024-07-11', 'Solicitud de materiales administrativos', 'María Fernanda Rojas'),
(9, 109, 'Ajuste', -3, '2024-07-12', 'Producto defectuoso', 'Luis Fernando Rodríguez'),
(10, 110, 'Entrada', 45, '2024-07-13', 'Ingreso de material para mantenimiento', 'Patricia Arias Castro'),
(11, 111, 'Salida', 60, '2024-07-14', 'Solicitud aprobada de materiales', 'Andrés Villalobos Mora'),
(12, 112, 'Ajuste', 8, '2024-07-15', 'Ajuste por ingreso extra', 'Rosa Elena Vargas'),
(13, 113, 'Entrada', 75, '2024-07-16', 'Nueva adquisición', 'Miguel Hidalgo Ortega'),
(14, 114, 'Salida', 25, '2024-07-17', 'Salida para despacho interno', 'Gloria Ramírez Castro'),
(15, 115, 'Ajuste', -12, '2024-07-18', 'Ajuste por deterioro', 'Carlos Montero Rodríguez'),
(16, 116, 'Entrada', 55, '2024-07-19', 'Reingreso por devolución', 'Paula Quirós Vargas'),
(17, 117, 'Salida', 35, '2024-07-20', 'Entrega a proyecto', 'Esteban Morales'),
(18, 118, 'Ajuste', -7, '2024-07-21', 'Ajuste de inventario mensual', 'Sandra Pérez Mena'),
(19, 119, 'Entrada', 90, '2024-07-22', 'Ingreso de productos nuevos', 'Marcos Ramírez Soto'),
(20, 120, 'Salida', 40, '2024-07-23', 'Consumo mensual', 'Marta Arias Fernández'),
(21, 121, 'Ajuste', -2, '2024-07-24', 'Corrección por error en registro', 'Ricardo Vargas Esquivel'),
(22, 122, 'Entrada', 20, '2024-07-25', 'Entrega de proveedor', 'Isabel Cruz García'),
(23, 123, 'Salida', 18, '2024-07-26', 'Solicitud específica', 'Mario Sánchez Vega'),
(24, 124, 'Ajuste', -4, '2024-07-27', 'Pérdida registrada', 'Carolina Zamora Chaves'),
(25, 125, 'Entrada', 12, '2024-07-28', 'Ingreso para nuevo pedido', 'Adriana Ortiz Leiva');

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
INSERT INTO Detalle_Solicitud (ID_Detalle, ID_Solicitud, ID_Producto, Cantidad, Unidad_Medida) VALUES 
(1, 1, 101, 2, 'Ud'),
(2, 1, 102, 3, 'Lt'),
(3, 2, 103, 4, 'Ud'),
(4, 2, 104, 10, 'Ud'),
(5, 3, 105, 8, 'Lt'),
(6, 3, 106, 12, 'Ud'),
(7, 4, 107, 1, 'Kg'),
(8, 4, 108, 15, 'Ud'),
(9, 5, 109, 20, 'Ud'),
(10, 5, 110, 6, 'Ud'),
(11, 6, 111, 4, 'Lt'),
(12, 6, 112, 5, 'Ud'),
(13, 7, 113, 9, 'Ud'),
(14, 7, 114, 8, 'Kg'),
(15, 8, 115, 2, 'Lt'),
(16, 8, 116, 11, 'Ud'),
(17, 9, 117, 14, 'Ud'),
(18, 9, 118, 7, 'Lt'),
(19, 10, 119, 3, 'Ud'),
(20, 10, 120, 16, 'Ud'),
(21, 11, 121, 10, 'Lt'),
(22, 11, 122, 18, 'Ud'),
(23, 12, 123, 13, 'Ud'),
(24, 12, 124, 9, 'Kg'),
(25, 13, 125, 5, 'Lt');

--Muestra los datos de los detalles de las solicitudes
select * from Detalle_Solicitud;











