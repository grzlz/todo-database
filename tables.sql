
CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,   
    nombre VARCHAR(30) NOT NULL,     
    apellido VARCHAR(30) NOT NULL,   
    correo VARCHAR(100) UNIQUE NOT NULL, 
    password VARCHAR (255) NOT NULL,  
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);

CREATE TABLE tareas (
    id_tarea SERIAL PRIMARY KEY, 
    id_usuario INT REFERENCES usuarios(id_usuario) ON DELETE CASCADE,          
    titulo VARCHAR(100),
    completado BOOLEAN NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);
