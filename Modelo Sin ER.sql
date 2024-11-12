Create database Proyecto;

use Proyecto;

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

CREATE TABLE Almacenes(
  ID_Almacen int,,
  Nombre_Almacen varchar(50),
  Ubicacion varchar(50),
  Responsable varchar(50),
  PRIMARY KEY(ID_Almacen)
);

CREATE TABLE Proveedores(
  ID_Proveedor int,
  Nombre varchar(50),
  Contacto varchar(50),
  Direccion varchar(254),
  Telefono int,
  Correo varchar(50),
  PRIMARY KEY(ID_Proveedor)
);

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

CREATE TABLE Solicitud_Materiales(
  ID_Solicitud int,
  ID_Usuario int,
  Fecha_Solicitud date,
  Estado varchar(50),
  Descripcion varchar(50),
  PRIMARY KEY(ID_Solicitud)
);

CREATE TABLE Detalle_Solicitud(
  ID_Detalle int,
  ID_Solicitud int,
  ID_Producto int,
  Cantidad int,
  Unidad_Medida varchar(50),
  PRIMARY KEY(ID_Detalle)
);

CREATE TABLE Toma_Fisica(
  ID_Toma int,
  Fecha date,
  ID_Almacen int,
  Estado varchar(50),
  PRIMARY KEY(ID_Toma)
);

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

CREATE TABLE Categoria_Productos(
  ID_Categoria int,
  Nombre_Categoria varchar(50),
  PRIMARY KEY(ID_categoria)
);

CREATE TABLE Unidad_Medida(
  ID_Unidad int,
  Nombre varchar(50),
  Abreviatura(50),
  PRIMARY KEY(ID_Unidad)
);

CREATE TABLE Resposables_Almacen(
  ID_Responsable int,
  Nombre varchar(50),
  Cargo varchar(50),
  Contacto varchar(50),
  PRIMARY KEY(ID_Responsable)
);

CREATE TABLE Orden_Compra(
  ID_Orden int,
  ID_Proveedor int,
  Fecha_Orden date,
  Estado varchar(50),
  PRIMARY KEY(ID_Orden)
);

CREATE TABLE Detalle_Orden(
  ID_Detalle_Orden int,
  ID_Orden int,
  ID_Producto int,
  Cantidad int,
  Precio_Unitario double,
  PRIMARY KEY(ID_Detalle_Orden)
);

CREATE TABLE Ubicacion_Producto(
  ID_Ubicacion int,
  ID_Producto int,
  Estante int,
  Pasillo int,
  Seccion int,
  PRIMARY KEY(ID_Ubicacion)
);

CREATE TABLE Usuarios(
  ID_Usuario int,
  Nombre varchar(50),
  ID_Rol int,
  Correo varchar(50),
  Contrasena varchar(50),
  PRIMARY KEY(ID_Usuario)
);

CREATE TABLE Roles_Usuario(
  ID_Rol int,
  Nombre_Rol varchar(50),
  Permisos boolean,
  PRIMARY KEY(ID_Rol)
);











