<?php
// --------------------------------------------------------------------------------------
// CONNEXION BDD
// --------------------------------------------------------------------------------------

$pdo = new PDO('mysql:host=localhost;dbname=work;port=3306', 'root', 'root');
$pdo->exec('SET NAMES UTF8');

session_start();
// --------------------------------------------------------------------------------------
// CODE PRINCIPAL
// --------------------------------------------------------------------------------------


    $query = $pdo->prepare
    (
        'SELECT * FROM jobber'
    );
    $query->execute();
    $jobbers = $query->fetchAll();
    //var_dump( $articles);
    
    if (count($jobbers)==0){
        $jobbers=[];
    }

    /*$query = $pdo->prepare
    (
        'SELECT * FROM categorie'
    );
    $query->execute();
    $categories = $query->fetchAll();*/


// --------------------------------------------------------------------------------------
// TEMPLATE
// --------------------------------------------------------------------------------------

include 'inscription.phtml';