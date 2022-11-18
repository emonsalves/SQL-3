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
