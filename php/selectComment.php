<?php

// --------------------------------------------------------------------------------------
// CONNEXION BDD
// --------------------------------------------------------------------------------------

$pdo = new PDO('mysql:host=localhost;dbname=blog;port=3306', 'root', 'root');
$pdo->exec('SET NAMES UTF8');

// --------------------------------------------------------------------------------------
// CODE PRINCIPAL
// --------------------------------------------------------------------------------------

$query = $pdo->prepare
(
    'SELECT * FROM comment where IdArticle=?'
);

$id = $_GET['id'];

$query->execute([$id]);
$comments = $query->fetchAll();

foreach($comments as $commentData){
$results = 
[
    [ 'IdComment'=>$commentData['IdComment'], 'Comment'=>$commentData['Title'],  'Author'=>$commentData['Author']]
];

}

// Sérialisation JSON de la liste de resultat et envoi dans la réponse HTTP. 
echo json_encode($results);