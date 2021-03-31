<?php
// --------------------------------------------------------------------------------------
// CONNEXION BDD
// --------------------------------------------------------------------------------------

$pdo = new PDO('mysql:host=localhost;dbname=blog;port=3306', 'root', 'root');
$pdo->exec('SET NAMES UTF8');

// --------------------------------------------------------------------------------------
// CODE PRINCIPAL
// --------------------------------------------------------------------------------------


$toDelete = $_GET['id'];

    $query = $pdo->prepare
    (
        'DELETE FROM Article where IdArticle = ?'
    );
    $query->execute([$toDelete]);

    header('Location: ../index.php');

    //include('selectAll.php');