-- =================================================================
-- Script de Inicialización de Base de Datos para FCT-RWX
-- Compatible con MySQL 9.5
-- =================================================================

-- 1. Creación de la Base de Datos
-- Se utiliza IF NOT EXISTS para evitar errores si ya se ejecutó el script previamente.
-- Se define utf8mb4 para soporte completo de caracteres Unicode (incluyendo emojis).
CREATE DATABASE IF NOT EXISTS `fct-rwx`
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- 2. Selección de la Base de Datos
USE `fct-rwx`;

-- 3. Creación de la Tabla Users
-- Se utiliza IF NOT EXISTS.
-- Se añaden restricciones NOT NULL y UNIQUE para asegurar la integridad de los datos.
CREATE TABLE IF NOT EXISTS `Users` (
    `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único del usuario',
    `username` VARCHAR(50) NOT NULL UNIQUE COMMENT 'Nombre de usuario para login',
    `password` VARCHAR(255) NOT NULL COMMENT 'Hash MD5 de la contraseña',
    `email` VARCHAR(100) NOT NULL UNIQUE COMMENT 'Correo electrónico de contacto'
) ENGINE=InnoDB COMMENT='Tabla de usuarios del sistema FCT';


-- 4. Inserción de datos de ejemplo
-- Usamos INSERT IGNORE para que, si el script se ejecuta una segunda vez,
-- no falle por intentar duplicar los 'username' o 'email' que son UNIQUE.
-- NOTA: Se usa la función MD5() nativa de MySQL según los requisitos.

INSERT IGNORE INTO `Users` (`username`, `password`, `email`) VALUES
('admin_sistema', MD5('AdminClaveSegura2024!'), 'admin@fct-rwx.local'),
('alumno_practicas', MD5('Fct_user_1234'), 'alumno.ejemplo@educacion.es'),
('tutor_empresa', MD5('EmpresaAccess#99'), 'rrhh.tutor@empresa-partner.com'),
('coordinador_centro', MD5('ProfeMasterKey'), 'coordinacion@instituto.es');

-- =================================================================
-- Fin del Script
-- Para verificar, puedes ejecutar: SELECT * FROM Users;
-- =================================================================