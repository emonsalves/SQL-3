---------------------------------------------------------------------------------------------------------------------
SCRIPT PARA CREACION DB - TABLAS & POBLADO DE TABLAS PARA LA REALIZACION DE LAS QUERYS ---------------------------------------------------------------------------------------------------------------------
CREATE DATABASE Emonsalves_Desafio3;

---------------------------------------------------------------------------------------------------------------------
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    email VARCHAR (50) NOT NULL,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    rol VARCHAR (50) NOT NULL,
    CHECK (
        rol = 'administrador'
        OR rol = 'usuario'
    )
);

---------------------------------------------------------------------------------------------------------------------
INSERT INTO
    usuarios(
        email,
        nombre,
        apellido,
        rol
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
    id SERIAL PRIMARY KEY,
    titulo VARCHAR (50),
    contenido TEXT,
    fecha_creacion TIMESTAMP,
    fecha_actualizacion TIMESTAMP,
    destacado BOOLEAN,
    usuario_id BIGINT CHECK (
        destacado = 'True'
        OR destacado = 'False'
    )
);

---------------------------------------------------------------------------------------------------------------------
INSERT INTO
    posts(
        titulo,
        contenido,
        fecha_creacion,
        fecha_actualizacion,
        destacado,
        usuario_id
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
    id SERIAL PRIMARY KEY,
    contenido TEXT,
    fecha_creacion TIMESTAMP NOT NULL,
    usuario_id BIGINT NOT NULL,
    post_id BIGINT NOT NULL
)
INSERT INTO
    comentarios (
        contenido_id,
        fecha_creacion,
        usuario_id,
        post_id
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