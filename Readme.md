--------------------------------------------------------------------------------------------------------------------- <br>
CREATE TABLE usuarios <br>
(usuario_id SERIAL PRIMARY KEY, usuario_email VARCHAR (50) NOT NULL, usuario_nombre VARCHAR (50) NOT NULL, usuario_apellido VARCHAR (50) NOT NULL, usuario_rol VARCHAR (50) NOT NULL, <br>
CHECK <br>
(usuario_rol = 'administrador' OR usuario_rol = 'usuario')); <br>
--------------------------------------------------------------------------------------------------------------------- <br>
INSERT INTO usuarios( <br>
usuario_email, usuario_nombre, usuario_apellido, usuario_rol) <br>
VALUES <br>
('e1@gmail.com','enzo','monsalves','administrador'), <br>
('a2@gmail.com','andree','gonzalez','administrador'), <br>
('v3@gmail.com','verena','alvarez','usuario'), <br>
('p4@gmail.com','carlos','perez','usuario'), <br>
('f5@gmail.com','francisco','olate','usuario'); <br>
--------------------------------------------------------------------------------------------------------------------- <br>
CREATE TABLE posts <br>
(post_id SERIAL PRIMARY KEY, post_titulo VARCHAR (50) NOT NULL, post_contenido TEXT NOT NULL, post_fecha_creacion TIMESTAMP NOT NULL, post_fecha_actualizacion TIMESTAMP NOT NULL, post_destacado BOOLEAN NOT NULL, post_usuario_id BIGINT); <br>
--------------------------------------------------------------------------------------------------------------------- <br>
INSERT INTO public.posts( <br>
post_titulo, post_contenido, post_fecha_creacion, post_fecha_actualizacion, post_destacado, post_usuario_id) <br>
VALUES <br>
('Evaluacion 1', 'React 1', '11-11-2021' , '11-11-2021', True, 1), <br>
('Evaluacion 2', 'React 2', '01-01-2022' , '10-02-2022' , True, 2), <br>
('Pasantia', 'React 1', '06-06-2022', '06-06-2022' , False, 3), <br>
('Pasantia', 'React 2', '05-05-2022', '05-05-2022' , False, 4), <br>
('Pasantia', 'React 3', '04-04-2022' , '04-04-2022' , False, NULL); <br>
--------------------------------------------------------------------------------------------------------------------- <br>
