---------------------------------------------------------------------------------------------------------------------
--- 2: Cruza los datos de la tabla usuarios y posts mostrando las siguientes columnas 
--- nombre e email del usuario junto al título y contenido del post.
SELECT
    u.nombre,
    u.email,
    p.titulo,
    p.contenido
FROM
    usuarios AS u
    JOIN posts AS p ON u.id = p.usuario_id;

---------------------------------------------------------------------------------------------------------------------
--- 3: Muestra el id, título y contenido de los posts de los administradores. 
--- El administrador puede ser cualquier id y debe ser seleccionado dinámicamente.
SELECT
    u.id,
    p.titulo,
    p.contenido
FROM
    posts AS p
    JOIN usuarios AS u ON p.usuario_id = u.id
WHERE
    u.rol = 'administrador';

---------------------------------------------------------------------------------------------------------------------
--- 4: Cuenta la cantidad de posts de cada usuario.
--- La tabla resultante debe mostrar el id junto al email del usuario junto con la cantidad de posts de cada usuario.
SELECT
    u.id AS "ID",
    u.email AS "Email",
    count(p.usuario_id) AS "Cantidad Posts"
FROM
    usuarios AS u
    LEFT JOIN posts AS p ON u.id = p.usuario_id
GROUP BY
    p.usuario_id,
    u.id,
    u.email;

---------------------------------------------------------------------------------------------------------------------
-- 5: Muestra el email del usuario que ha creado más posts.
-- Aquí la tabla resultante tiene un único registro y muestra solo el email.
SELECT
    u.email
FROM
    posts AS u FULL
    JOIN usuarios AS u ON p.usuario_id = u.id
GROUP BY
    u.email
ORDER BY
    count(p.usuario_id) DESC
LIMIT
    1;

---------------------------------------------------------------------------------------------------------------------
-- 6: Muestra la fecha del último post de cada usuario.
SELECT
    u.nombre,
    MAX(p.fecha_creacion) as "Fecha ultimo Post"
FROM
    usuarios AS u
    INNER JOIN posts AS p ON u.id = p.usuario_id
GROUP BY
    p.usuario_id,
    u.nombre;

---------------------------------------------------------------------------------------------------------------------
-- 7: Muestra el título y contenido del post (artículo) con más comentarios.
SELECT
    p.titulo,
    p.contenido
FROM
    comentarios AS c
    INNER JOIN posts AS p ON c.post_id = p.id
GROUP BY
    c.post_id,
    p.titulo,
    p.contenido
order by
    post_id asc
limit
    1;

---------------------------------------------------------------------------------------------------------------------
-- 8: Muestra en una tabla el título de cada post, el contenido de cada post y el contenido
-- de cada comentario asociado a los posts mostrados, junto con el email del usuario que lo escribió.
SELECT
    p.titulo,
    p.contenido As "Contenido Post",
    c.contenido AS "Contenido Comentarios",
    u.email
FROM
    posts AS p
    INNER JOIN comentarios AS c ON p.id = c.post_id
    INNER JOIN usuarios AS u ON c.usuario_id = u.id;

---------------------------------------------------------------------------------------------------------------------
-- 9: Muestra el contenido del último comentario de cada usuario.
SELECT
    c.usuario_id,
    c.fecha_creacion,
    c.contenido
FROM
    comentarios AS c
    INNER JOIN (
        SELECT
            max(c.id) AS max_id_search
        FROM
            comentarios AS c
        GROUP BY
            usuario_id
    ) AS max_result ON c.id = max_result.max_id_search
ORDER BY
    c.usuario_id;

---------------------------------------------------------------------------------------------------------------------
-- 10 Muestra los emails de los usuarios que no han escrito ningún comentario.
SELECT
    u.email
FROM
    usuarios AS u
    LEFT JOIN comentarios AS c ON u.id = c.usuario_id
GROUP BY
    u.email,
    c.contenido
HAVING
    c.contenido IS NULL;

---------------------------------------------------------------------------------------------------------------------