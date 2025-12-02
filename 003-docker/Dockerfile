FROM mysql:9.5.0

COPY init.sql /docker-entrypoint-initdb.d/

# Crear una imagen basada en MySQL 9.5.0
# Crear un esquema para la base de datos principal 
# Tabla: users
# Campos: id (INT, PK, AI), username (VARCHAR(50)), password (VARCHAR(255)), email (VARCHAR(100))
# Importar datos iniciales desde un archivo SQL ubicado en /docker-entrypoint-initdb.d/init.sql