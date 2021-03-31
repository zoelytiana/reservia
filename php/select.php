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
    'SELECT * FROM article where IdArticle=?'
);

$id = $_GET['id'];

$query->execute([$id]);
$article = $query->fetch();


$result = 
[
    [ 'IdArticle'=>$id, 'Title'=>$article['Title'],       'Description'=>$article['Description'] , 'Author'=>$article['Author'],'IdCategorie'=>$article['IdCategorie']]
];


// Sérialisation JSON de la liste de resultat et envoi dans la réponse HTTP. 
echo json_encode($result);