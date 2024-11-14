use Proyecto;

--Datos Productos
INSERT INTO Productos (ID_Producto, ID_Categoria, Nombre, ID_Unidad, Costo_Unitario) VALUES
(1, 101, 'DESINFECTANTE EN AEROSOL PARA SUPERFICIES DE 354GRS, CON FRAGANCIA', 1, 3856.77),
(2, 102, 'ABRILLANTADOR PARA SUPERFICIES DE 240 ML (± 10 ML)', 1, 678.25),
(3, 103, 'ACOPLE PARA MANGUERA DE 1.27CM (1/2")', 1, 637.17),
(4, 104, 'ADAPTADOR HEMBRA 25 MM PVC PRESION', 1, 487.61),
(5, 105, 'ADAPTADOR HEMBRA PVC 38MM(1-1/2") PRESION', 1, 887.96),
(6, 106, 'ADAPTADOR HEMBRA, PVC, 50 MM, DE PRESION', 1, 1216.46),
(7, 107, 'ADAPTADOR MACHO DE PLASTICO DE ALTA DENSIDAD', 1, 793.81),
(8, 108, 'ALCOHOL EN GEL, DESINFECTANTE PARA MANOS, ENVASE DE 1.000 ML (1 LITRO)', 1, 1980.00),
(9, 109, 'ALCOHOL MULTIUSO LIQUIDO AL 80%', 2, 1872.03),
(10, 110, 'BALDE PLASTICO DE 10 LITROS, SIN TAPA', 1, 2121.47),
(11, 111, 'BOLIGRAFO AZUL PUNTA FINA', 1, 82.90),
(12, 112, 'CARPETA COLGANTE TAMAÑO OFICIO', 3, 2993.98),
(13, 113, 'CUADERNO DE 100 HOJAS, RAYADO COMUN', 1, 609.87),
(14, 114, 'DESINFECTANTE PARA MANOS, SPRAY, 400 ML', 1, 6584.50),
(15, 115, 'ESCOBA CORRIENTE DE FIBRA DE NYLON', 1, 1310.35),
(16, 116, 'FIBRA (ESPONJA) DE LIMPIEZA COLOR AZUL', 1, 404.17),
(17, 117, 'GUANTE DE HULE N°9', 4, 508.92),
(18, 118, 'JABON ABRASIVO EN POLVO (PQ DE 250 GR)', 5, 573.19),
(19, 119, 'LIQUIDO DESINFECTANTE A BASE DE CLORO', 2, 1418.47),
(20, 120, 'PAÑO DE MICROFIBRA COLOR "AMARILLO"', 1, 926.13),
(21, 121, 'PEGAMENTO DE CONTACTO, PRESENTACION 4OZ', 1, 2447.59),
(22, 122, 'REGLA PLASTICA DE 30 CM DE LARGO', 1, 214.20),
(23, 123, 'ROTULADOR PIZARRA ACRILICA COLOR AZUL', 1, 298.20),
(24, 124, 'SACAGRAPAS METALICO DE 6 CM', 1, 251.36),
(25, 125, 'TOMA CORRIENTE DOBLE POLARIZADO', 1, 1324.12);

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











