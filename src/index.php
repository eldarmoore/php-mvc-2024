<?php

$dsn = "mysql:host=db;dbname=php-mvc-2024;charset=utf8;port=3306";

$pdo = new PDO($dsn, 'php_mvc_2024', 'php_mvc_2024', [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);

$stmt = $pdo->query('SELECT * FROM product');

$products = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>
<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
    <meta charset="UTF-8">
</head>
<body>

<h1>Products</h1>

<?php foreach ($products as $product): ?>
    <h2><?= htmlspecialchars($product["name"]) ?></h2>
    <p><?= htmlspecialchars($product["description"]) ?></p>

<?php endforeach; ?>

</body>
</html>