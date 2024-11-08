-- Aquí van los create table statements

CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,    -- ID unico para cada usuario
    nombre VARCHAR(30) NOT NULL,     -- Nombre del usuario
    apellido VARCHAR(30) NOT NULL,   -- Apellido del usuario
    correo VARCHAR(100) UNIQUE NOT NULL, -- Correo electronico unico
    password VARCHAR (255) NOT NULL,  -- Contrasenia
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP  -- Fecha de registro
);

CREATE TABLE tareas (
    id_tarea SERIAL PRIMARY KEY, 
    id_usuario INT REFERENCES usuarios(id_usuario) ON DELETE CASCADE,          
    titulo VARCHAR(100),
    completado BOOLEAN NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP 
);
