<?php
$host = 'localhost';
$user = 'root';
$password = '';
$dbName = 'Hobbies';
$dsn = 'mysql:host='.$host.';dbname='.$dbName;

$pdo = new PDO($dsn, $user, $password);