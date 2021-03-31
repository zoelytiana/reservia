<?php



// --------------------------------------------------------------------------------------
// FONCTIONS
// --------------------------------------------------------------------------------------


function addArticle($article)
{
    $pdo = new PDO('mysql:host=localhost;dbname=blog;port=3306', 'root', 'root');
    $pdo->exec('SET NAMES UTF8');
    echo("les valeurs sont :".$article['title']." ". $article['description']." ". $article['author']." ". $article['idCategorie']);
    $query = $pdo->prepare
    (
        'INSERT INTO article(Title, Description, DateCreation, DateModification, Author,IdCategorie) values (?, ?, now(),now(),?,?)'
    );
    $query->execute([$article['title'], $article['description'],$article['author'],$article['idCategorie']]);
}

function updateArticle($article)
{
$pdo = new PDO('mysql:host=localhost;dbname=blog;port=3306', 'root', 'root');
$pdo->exec('SET NAMES UTF8');

    echo  $article['title'].$article['description']. $article['author']. $article['idCategorie'];

    $query = $pdo->prepare
    (
        "UPDATE article SET Title = ?, Description = ?, Author = ?, IdCategorie = ? WHERE IdArticle = ?"
    );
    $query->execute([$article['title'],$article['description'], $article['author'], $article['idCategorie'], $article['idArticle']]);
}


// --------------------------------------------------------------------------------------
// CODE PRINCIPAL
// --------------------------------------------------------------------------------------

// Récupération des données de formulaire.
$article['idArticle']     = $_POST['idArticle'];
$article['title']     = $_POST['title'];
$article['description']    = $_POST['description'];
$article['author']   = $_POST['author'];
$article['idCategorie']    = $_POST['categorie'];

echo $article['title']." ". $article['description']." ".$article['author']." ".$article['idCategorie'];
// Ajout de la tâche aux tâches existantes.
// Si id a de valeur alors il s'agit d'un modif

if(empty($_POST['idArticle']) == false){
    echo("modif");
    updateArticle($article);
}else{ 
    echo("add");
    addArticle($article);

}

//include("selectAll.php");
header('Location: ../index.php');



