---------------------------------------------------------------------------------------------------------------------
SCRIPT PARA CREACION DB - TABLAS & POBLADO DE TABLAS PARA LA REALIZACION DE LAS QUERYS 

---------------------------------------------------------------------------------------------------------------------
CREATE DATABASE Emonsalves_Desafio3;

---------------------------------------------------------------------------------------------------------------------
CREATE TABLE usuarios (
    usuario_id SERIAL PRIMARY KEY,
    usuario_email VARCHAR (50) NOT NULL,
    usuario_nombre VARCHAR (50) NOT NULL,
    usuario_apellido VARCHAR (50) NOT NULL,
    usuario_rol VARCHAR (50) NOT NULL,
    CHECK (
        usuario_rol = 'administrador'
        OR usuario_rol = 'usuario'
    )
);

---------------------------------------------------------------------------------------------------------------------
INSERT INTO
    usuarios(
        usuario_email,
        usuario_nombre,
        usuario_apellido,
        usuario_rol
    )
VALUES
    (
        'enzo1@gmail.com',
        'enzo',
        'monsalves',
        'administrador'
    ),
    (
        'andree2@gmail.com',
        'andree',
        'gonzalez',
        'administrador'
    ),
    (
        'verena3@gmail.com',
        'verena',
        'alvarez',
        'usuario'
    ),
    (
        'carlos4@gmail.com',
        'carlos',
        'perez',
        'usuario'
    ),
    (
        'francisco5@gmail.com',
        'francisco',
        'olate',
        'usuario'
    );

---------------------------------------------------------------------------------------------------------------------
CREATE TABLE posts (
    post_id SERIAL PRIMARY KEY,
    post_titulo VARCHAR (50),
    post_contenido TEXT,
    post_fecha_creacion TIMESTAMP,
    post_fecha_actualizacion TIMESTAMP,
    post_destacado BOOLEAN,
    post_usuario_id BIGINT CHECK (
        post_destacado = 'True'
        OR post_destacado = 'False'
    )
);

---------------------------------------------------------------------------------------------------------------------
INSERT INTO
    posts(
        post_titulo,
        post_contenido,
        post_fecha_creacion,
        post_fecha_actualizacion,
        post_destacado,
        post_usuario_id
    )
VALUES
    (
        'Evaluacion 1',
        'React 1',
        '11-11-2021',
        '11-11-2021',
        True,
        1
    ),
    (
        'Evaluacion 2',
        'React 2',
        '01-01-2022',
        '10-02-2022',
        True,
        2
    ),
    (
        'Pasantia',
        'React 1',
        '06-06-2022',
        '06-06-2022',
        False,
        3
    ),
    (
        'Pasantia',
        'React 2',
        '05-05-2022',
        '05-05-2022',
        False,
        4
    ),
    (
        'Pasantia',
        'React 3',
        '04-04-2022',
        '04-04-2022',
        False,
        NULL
    );

---------------------------------------------------------------------------------------------------------------------
CREATE TABLE comentarios (
    comentario_id SERIAL PRIMARY KEY,
    comentario_contenido TEXT,
    comentario_fecha_creacion TIMESTAMP NOT NULL,
    comentario_usuario_id BIGINT NOT NULL,
    comentario_post_id BIGINT NOT NULL
)
INSERT INTO
    comentarios (
        comentario_contenido_id,
        comentario_fecha_creacion,
        comentario_usuario_id,
        comentario_post_id
    )
VALUES
    (
        'jueeee chico lo mataste',
        '2022-02-22',
        1,
        1
    ),
    (
        'siiii chicoooooo',
        '2022-02-23',
        2,
        1
    ),
    (
        'nada que hacer wey',
        '2022-02-24',
        3,
        1
    ),
    (
        'vamos a ir a concierto????',
        '2022-05-25',
        1,
        2
    ),
    (
        'si voy saliendooo compren las entradas',
        '2022-05-15',
        2,
        2
    );
