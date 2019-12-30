create database aereodb;
use aereodb;
CREATE TABLE Vuelo (
    Id_vuelo int(11) auto_increment,
    Fecha date NOT NULL,
    Origen varchar(50) not null,
    Destino varchar(50) not null,
    PRIMARY KEY (Id_vuelo)
);

CREATE TABLE Avion (
    Id_avion int(11) auto_increment,
    matricula varchar(20) NOT NULL,
    Nombre_Fabricante varchar(50) not null,
    modelo int(6) not null,
    Capacidad varchar(50),
    PRIMARY KEY (Id_avion)
);

  CREATE TABLE Categoria (
    Id_categoria int(11) auto_increment,
    Nombre varchar(50) not null,
    PRIMARY KEY (Id_categoria)
);
  
    CREATE TABLE Puesto (
    Id_puesto int(11) auto_increment,
    Nombre varchar(50) not null,
    Descripcion varchar(50),
    PRIMARY KEY (Id_puesto)
);
CREATE TABLE Tripulacion (
    Id_tripulacion int(11) auto_increment,
    Nombre varchar(50) NOT NULL,
    Apellido varchar(50) not null,
    Id_categoria int(11) not null,
    Id_puesto int(11) not null,
    PRIMARY KEY (Id_tripulacion),
    FOREIGN KEY(Id_categoria) REFERENCES Categoria(Id_categoria),
   FOREIGN KEY(Id_puesto) REFERENCES Puesto(Id_Puesto)
);

CREATE TABLE Pasajero (
    Id_pasajero int(11) auto_increment,
    CUI int(13) not null,
    Nombre varchar(50) NOT NULL,
    Apellido varchar(50) not null,
    Asiento int(11) not null,
    Id_clase int(11) not null,
    PRIMARY KEY (Id_pasajero),
    FOREIGN KEY(Id_clase) REFERENCES Clase(Id_clase)
  );
  


 CREATE TABLE Clase (
    Id_clase int(11) auto_increment,
    Nombre varchar(50) not null,
    Precio double(5,2) not null,
    PRIMARY KEY (Id_clase)
);

CREATE TABLE EquipoTrabajo(
   Id_avion INT(11) NOT NULL,
   Id_tripulacion INT(11) NOT NULL,
   PRIMARY KEY(Id_avion,Id_tripulacion),
   FOREIGN KEY(Id_avion) REFERENCES Avion(Id_Avion),
   FOREIGN KEY(Id_Tripulacion) REFERENCES Tripulacion(Id_tripulacion)
);

CREATE TABLE DetalleVuelo(
   Id_vuelo INT(11) NOT NULL,
   Id_pasajero INT(11) NOT NULL,
   Id_avion INT(11) NOT NULL,
   PRIMARY KEY(Id_vuelo,Id_pasajero,Id_avion),
   FOREIGN KEY(Id_vuelo) REFERENCES Vuelo(Id_vuelo),
   FOREIGN KEY(Id_pasajero) REFERENCES Pasajero(Id_pasajero),
   FOREIGN KEY(Id_avion) REFERENCES Avion(Id_Avion)
);



