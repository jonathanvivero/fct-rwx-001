<?php

$conexion = new mysqli(
    "mysql-003",
    "appuser",
    "pass123",
    "main_db"
);

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

echo "<h1>Conectado correctamente a MySQL en Docker!</h1>";

$result = $conexion->query("SELECT * FROM users");

echo "<pre>";
print_r($result->fetch_all(MYSQLI_ASSOC));
echo "</pre>";