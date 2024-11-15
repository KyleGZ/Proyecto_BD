--Se crea la base de datos
Create database Proyecto;

--Se llama a la base de datos
use Proyecto;


--Se crea la tabla Productos
CREATE TABLE Productos(
  ID_Producto int,
  ID_Categoria int,
  Nombre varchar(50),
  Unidad_Medida varchar(50),
  Costo_Unitario int,
  Saldo int,
  Total int,
  PRIMARY KEY(ID_Producto)
);

--Se elimina la tabla Productos
Drop table Productos;

--Se crea la tabla ALmacenes
CREATE TABLE Almacenes(
  ID_Almacen int,,
  Nombre_Almacen varchar(50),
  Ubicacion varchar(50),
  Responsable varchar(50),
  PRIMARY KEY(ID_Almacen)
);

--Se elimina la tabla Productos
Drop table Productos;

--Se crea la tabla Proveedores
CREATE TABLE Proveedores(
  ID_Proveedor int,
  Nombre varchar(50),
  Contacto varchar(50),
  Direccion varchar(254),
  Telefono int,
  Correo varchar(50),
  PRIMARY KEY(ID_Proveedor)
);

--Se elimina la tabla Proveedores
Drop table Proveedores;

--Se crea la tabla MOvimiento_Inventario
CREATE TABLE Movimientos_Inventario(
  ID_Movimiento int,
  ID_Producto int,
  Tipo_movimiento varchar(50),
  Cantidad int,
  Fecha date,
  Descripcion varchar(50),
  Responsable varcah(50), 
  PRIMARY KEY(ID_Movimiento)
);

--Se elimina la tabla Movimientos_inventario
Drop table Moviminentos_inventario;

--Se crea la tabla Solicitud_Materiales
CREATE TABLE Solicitud_Materiales(
  ID_Solicitud int,
  ID_Usuario int,
  Fecha_Solicitud date,
  Estado varchar(50),
  Descripcion varchar(50),
  PRIMARY KEY(ID_Solicitud)
);

--Se elimina la tabla Solicitud_Materiales
Drop table Solicitud_Materiales;

--Se crea la tabla Detalle_Solicitud
CREATE TABLE Detalle_Solicitud(
  ID_Detalle int,
  ID_Solicitud int,
  ID_Producto int,
  Cantidad int,
  Unidad_Medida varchar(50),
  PRIMARY KEY(ID_Detalle)
);

--Se elimina la tabla Detalle_Solicitud
Drop table Detalle_Solicitud;

--Se crea la tabla Toma_Fisica
CREATE TABLE Toma_Fisica(
  ID_Toma int,
  Fecha date,
  ID_Almacen int,
  Estado varchar(50),
  PRIMARY KEY(ID_Toma)
);

--Se elimina la tabla Toma_fisica
Drop table Toma_Fisica;

--Se crea la tabla Ajuste_Toma
CREATE TABLE Ajuste_Toma(
  ID_Ajuste int,
  ID_Toma int,
  ID_Producto int,
  Cantidad_Existente int,
  Cantidad_Contada int,
  Diferencia int,
  Fecha date,
  PRIMARY KEY(ID_Ajuste)
);

--Se elimina la tabla Ajuste_Toma
Drop table Ajuste_Toma;

--Se crea la tabla Categoria_Productos
CREATE TABLE Categoria_Productos(
  ID_Categoria int,
  Nombre_Categoria varchar(50),
  PRIMARY KEY(ID_categoria)
);

--Se elimina la tabla Categoria_Productos
Drop table Categoria_Productos;

--Se crea la tabla Unidad_Medida
CREATE TABLE Unidad_Medida(
  ID_Unidad int,
  Nombre varchar(50),
  Abreviatura(50),
  PRIMARY KEY(ID_Unidad)
);

--Se elimina la tabla Unidad_Medida
Drop table Unidad_Medida;

--Se crea la tabla Responsables_Almacen
CREATE TABLE Resposables_Almacen(
  ID_Responsable int,
  Nombre varchar(50),
  Cargo varchar(50),
  Contacto varchar(50),
  PRIMARY KEY(ID_Responsable)
);

--Se elimina la tabla Responsables_Almacen
Drop table Responsables_Almacen;

--Se crea la tabla Orden_Compra
CREATE TABLE Orden_Compra(
  ID_Orden int,
  ID_Proveedor int,
  Fecha_Orden date,
  Estado varchar(50),
  PRIMARY KEY(ID_Orden)
);

--Se elimina la tabla Orden_Compra
Drop table Orden_Compra;

--Se crea la tabla Detalle_Orden
CREATE TABLE Detalle_Orden(
  ID_Detalle_Orden int,
  ID_Orden int,
  ID_Producto int,
  Cantidad int,
  Precio_Unitario double,
  PRIMARY KEY(ID_Detalle_Orden)
);

--Se elimina la tabla Detalle_Orden
Drop table Detalle_orden;

--Se crea la tabla Ubicacion_Productos
CREATE TABLE Ubicacion_Producto(
  ID_Ubicacion int,
  ID_Producto int,
  ID_Almacen int,
  PRIMARY KEY(ID_Ubicacion)
);

--Se elimina la tabla Ubicacion_Productos
Drop table Ubicacion_Productos;

--Se crea la tabla Usuarios
CREATE TABLE Usuarios(
  ID_Usuario int,
  Nombre varchar(50),
  ID_Rol int,
  Correo varchar(50),
  Contrasena varchar(50),
  PRIMARY KEY(ID_Usuario)
);

--Se elimina la tabla Usuarios
Drop table Usuarios;

--Se crea la tabla ROles_Usuarios
CREATE TABLE Roles_Usuario(
  ID_Rol int,
  Nombre_Rol varchar(50),
  Permisos boolean,
  PRIMARY KEY(ID_Rol)
);

--Se elimina la tabla Roles_Usuario
Drop table Roles_Usuario;

-- Se crea la tabla Historial_Precios_Productos
CREATE TABLE Historial_Precios_Productos (
    ID_Historia int,
    ID_Producto int,
    Precio_Anterior double,
    Nuevo_Precio double,
    Fecha_Cambio date,
    Motivo_Cambio varchar(50),
    PRIMARY KEY (ID_Historial)
);

--Se elimina la tabla Historial_Precios_Productos 
Drop table Historial_Precios_Productos ;

-- Se crea la tabla Pedidos_Proveedores
CREATE TABLE Pedidos_Proveedores (
    ID_Pedido int,
    ID_Proveedor int,
    Fecha_Pedido date,
    Estado_Pedido varchar(50),
    PRIMARY KEY (ID_Pedido)
);

--Se elimina la tabla Pedidos_Proveedores
Drop table Pedidos_Proveedores;

-- Se crea la tabla Detalle_Pedido
CREATE TABLE Detalle_Pedido (
    ID_Detalle_Pedido int,
    ID_Pedido int,
    ID_Producto int,
    Cantidad int,
    Precio_Unitario double,
    Subtotal double,
    PRIMARY KEY (ID_Detalle_Pedido)
);

--Se elimina la tabla Detalle_Pedido
Drop table Detalle_Pedido;

-- Se crea la tabla Lotes_Producto
CREATE TABLE Lotes_Producto (
    ID_Lote int,
    ID_Producto int,
    Fecha_Recepcion date,
    Fecha_Vencimiento date,
    Cantidad_Inicial int,
    Cantidad_Disponible int,
    PRIMARY KEY (ID_Lote)
);

--Se elimina la tabla Lotes_Producto
Drop table Lotes_Producto;

-- Tabla Aprobaciones_Solicitudes
CREATE TABLE Aprobaciones_Solicitudes (
    ID_Aprobacion int,
    ID_Solicitud int,
    ID_Coordinador int,
    Fecha_Aprobacion date,
    Estado_Aprobacion varchar(50),
    PRIMARY KEY (ID_Aprobacion)
);

--Se elimina la tabla Aprobaciones_Solicitudes
Drop table Aprobaciones_Solicitudes;

-- Se crea la tabla Entradas_Manual
CREATE TABLE Entradas_Manual (
    ID_Entrada int,
    ID_Producto int,
    Fecha_Entrada date,
    Cantidad_Entrada int,
    Descripcion varchar(255),
    Responsable varchar(255),
    PRIMARY KEY (ID_Entrada)
);

--Se elimina la tabla Entradas_Manual
Drop table Entradas_Manual;;

-- Se crea la tabla Reajustes_Inventario
CREATE TABLE Reajustes_Inventario (
    ID_Reajuste int,
    ID_Toma_Fisica int,
    ID_Producto int,
    Cantidad_Reajustada int,
    Motivo_Reajuste varchar(255),
    Fecha_Reajuste date,
    PRIMARY KEY (ID_Reajuste)
);

--Se elimina la tabla Reajustes_Inventario
Drop table Reajustes_Inventario;

-- Se crea la tabla Categorias_Almacen
CREATE TABLE Categorias_Almacen (
    ID_Categoria_Almacen int,
    Nombre_Categoria_Almacen varchar(100),
    Descripcion varchar(255),
    PRIMARY KEY (ID_Categoria_Almacen)
);

--Se elimina la tabla Categorias_Almacen
Drop table Categorias_Almacen;


-- Se crea la tabla Documentos_Proveedor
CREATE TABLE Documentos_Proveedor (
    ID_Documento int,
    ID_Proveedor int,
    Tipo_Documento varchar(100),
    Fecha_Subida date,
    Descripcion varchar(255),
    PRIMARY KEY (ID_Documento)
);

--Se elimina la tabla Documentos_Proveedor
Drop table Documentos_Proveedor;










