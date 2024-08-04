<?php

$dsn = "mysql:host=db;dbname=php-mvc-2024;charset=utf8;port=3306";

$pdo = new PDO($dsn, 'php_mvc_2024', 'php_mvc_2024', [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);

$stmt = $pdo->query('SELECT * FROM product');

$products = $stmt->fetchAll(PDO::FETCH_ASSOC);

print_r($products);