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
