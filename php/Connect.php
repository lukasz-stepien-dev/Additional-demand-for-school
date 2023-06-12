<?php
require_once 'Database.php';

function printData()
{
    try {
        $data = $pdo->query('SELECT * FROM Article')->fetchAll(PDO::FETCH_ASSOC);
        foreach ($data as $value) {
            echo '<section><img src="img/'.$value['title'].'.jpeg">'.
                '<h2>'.$value['title'].'</h2>'.
                '<p>'.$value['description'].'</p>'.
                '<p><span>Data dodania: </span>'.$value['date'].'</p>'.'</section>';
        }
    } catch (PDOException $e) {
        echo '<script>console.log("Connect error")</script>';
        exit();
    }
}
