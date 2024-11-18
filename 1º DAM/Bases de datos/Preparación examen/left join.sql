SELECT

usuarios.Nombre,
usuarios.Apellido,
proyectos.Nombre AS ProyectoNombre,
proyectos.Fechafin,
tareas.Nombre AS TareaNombre,
tareas.Descripcion AS TareaDescripcion,
tareas.Estado

FROM usuarios
LEFT JOIN proyectos
ON usuarios.Identificador = proyectos.Nombreusuario
LEFT JOIN tareas
ON proyectos.Identificador = tareas.Nombreproyecto