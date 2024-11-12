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







