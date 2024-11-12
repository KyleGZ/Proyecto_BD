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
  Estante int,
  Pasillo int,
  Seccion int,
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











