<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Zadanie dodatkowe</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
<header>
    <h1>Zainteresowania</h1>
</header>
<main>
    <?php
    require_once 'php/database.php';
    $stmt = $db->prepare("SELECT * FROM article");
    $stmt->execute();
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

    foreach ($rows as $row) {
        echo "<section>
            <img width='700px' src=\"img/".$row['title'].".jpg\" alt=\"".$row['title']."\">
            <h2>".$row['title']."</h2>
            <p>".$row['description']."</p>
            <p><span>Data dodania: </span>".$row['date']."</p>
            </section>";
    }
    ?>
</main>
<script src="scripts/script.js"></script>
</body>
</html>
