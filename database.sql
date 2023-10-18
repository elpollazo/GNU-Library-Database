-- Tabla Estudiante
CREATE TABLE Estudiante (
    Rut CHAR(12) PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Teléfono VARCHAR(15),
    Dirección VARCHAR(255),
    Correo VARCHAR(255)
);

-- Tabla Préstamo
CREATE TABLE Préstamo (
    id_prestamo INT PRIMARY KEY,
    Fecha DATE NOT NULL,
    id_libro INT,
    rut_alumno CHAR(12),
    id_bibliotecario INT,
    FOREIGN KEY (id_libro) REFERENCES Libro(id_libro),
    FOREIGN KEY (rut_alumno) REFERENCES Estudiante(Rut),
    FOREIGN KEY (id_bibliotecario) REFERENCES Bibliotecario(id_bibliotecario)
);

-- Tabla Libro
CREATE TABLE Libro (
    id_libro INT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Autor VARCHAR(255),
    Editorial VARCHAR(255),
    Resúmen TEXT
);

-- Tabla Bibliotecario
CREATE TABLE Bibliotecario (
    id_bibliotecario INT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Correo VARCHAR(255),
    Teléfono VARCHAR(15)
);
