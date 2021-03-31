<?php



// --------------------------------------------------------------------------------------
// FONCTIONS
// --------------------------------------------------------------------------------------


function addArticle($article)
{
    $pdo = new PDO('mysql:host=localhost;dbname=blog;port=3306', 'root', 'root');
    $pdo->exec('SET NAMES UTF8');
    //echo($title." ". $lastname." ". $firstname." ". $phone." ". now());
    $today = date("Y-m-d H:i:s");
    $query = $pdo->prepare
    (
        'INSERT INTO article(Title, Description, DateCreation, DateModification, Author,IdCategorie) values (?, ?, $today,now(),?,?)'
    );
    $query->execute([$article['title'], $article['description'],$article['author'],$article['idCategorie']]);
    //header('Location: index.php');
}




// --------------------------------------------------------------------------------------
// CODE PRINCIPAL
// --------------------------------------------------------------------------------------

// Si l'utilisateur n'a pas saisi de titre à la tâche alors on ne l'ajoute pas.
if(empty($_POST['title']) == false) // ou if($_POST['title'] != '')
{
    // Récupération des données de formulaire.
    $article['title']     = $_POST['title'];
    $article['description']    = $_POST['description'];
    $article['author']   = $_POST['author'];
    $article['idCategorie']    = $_POST['categorie'];

    echo $article['title']." ". $article['description']." ".$article['author']." ".$article['idCategorie'];
    // Ajout de la tâche aux tâches existantes.

    addArticle($article);

}

//include("selectAll.php");
header('Location: ../index.php');



