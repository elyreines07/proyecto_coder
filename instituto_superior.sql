CREATE DATABASE instituto_sup;
USE instituto_sup;


CREATE TABLE Carrera (
    IdCarrera INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(30) NOT NULL,
       PRIMARY KEY (IdCarrera));
    

CREATE TABLE Materia (
    idMateria INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(30) NOT NULL,
    Cuatrimestre INT NOT NULL,
    IdCarrera INT NOT NULL,
    Creditos INT NOT NULL,
    PRIMARY KEY (idMateria),
    FOREIGN KEY(IdCarrera) REFERENCES Carrera(idCarrera),
    INDEX idx_nomMateria (Nombre)
);

INSERT INTO Carrera (Nombre) VALUES
('Ingeniería en Sistemas Computacionales'),
('Ingeniería Electrónica'),
('Administración de Empresas'),
('Medicina'),
('Artes Visuales'),
('Derecho'),
('Contaduría Pública'),
('Educación'),
('Arquitectura'),
('Comunicación');


INSERT INTO Materia (Nombre, Cuatrimestre, IdCarrera, Creditos) VALUES
('Introducción a la Programación', 1, 1, 6),
('Matemática Discreta', 1, 1, 6),
('Álgebra Lineal', 2, 1, 6),
('Análisis Matemático', 2, 1, 6),
('Física', 2, 1, 6),
('Química', 2, 1, 6),
('Probabilidad y Estadística', 3, 1, 6),
('Arquitectura de Computadoras', 3, 1, 6),
('Sistemas Operativos', 3, 1, 6),
('Bases de Datos', 4, 1, 6),
('Lenguajes de Programación', 4, 1, 6),
('Ingeniería de Software', 4, 1, 6),
('Redes de Computadoras', 1, 2, 6),
('Electrónica', 1, 2, 6),
('Telecomunicaciones', 2, 2, 6),
('Señales y Sistemas', 2, 2, 6),
('Control Automático', 3, 2, 6),
('Procesamiento de Señales', 3, 2, 6),
('Instrumentación', 4, 2, 6),
('Robótica', 4, 2, 6),
('Economía de la Empresa', 1, 3, 6),
('Contabilidad', 1, 3, 6),
('Derecho Comercial', 2, 3, 6),
('Marketing', 2, 3, 6),
('Administración de Empresas', 3, 3, 6),
('Finanzas', 3, 3, 6),
('Gestión de Proyectos', 4, 3, 6),
('Emprendimiento', 4, 3, 6),
('Anatomía y Fisiología', 1, 4, 6),
('Bioquímica', 1, 4, 6),
('Farmacología', 2, 4, 6),
('Microbiología', 2, 4, 6),
('Patología', 3, 4, 6),
('Semiología', 3, 4, 6),
('Clínica Médica', 4, 4, 6),
('Cirugía', 4, 4, 6),
('Historia del Arte', 1, 5, 6),
('Teoría del Arte', 1, 5, 6),
('Historia de la Arquitectura', 2, 5, 6),
('Diseño Gráfico', 2, 5, 6),
('Escultura', 3, 5, 6),
('Pintura', 3, 5, 6),
('Fotografía', 4, 5, 6),
('Diseño de Interiores', 4, 5, 6);