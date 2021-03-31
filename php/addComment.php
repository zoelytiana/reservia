<?php



// --------------------------------------------------------------------------------------
// FONCTIONS
// --------------------------------------------------------------------------------------


function addComment($comment)
{
    $pdo = new PDO('mysql:host=localhost;dbname=blog;port=3306', 'root', 'root');
    $pdo->exec('SET NAMES UTF8');

    echo $comment['comment']." ". $comment['author']." ".$comment['idArticle'];

    $query = $pdo->prepare
    (
        'INSERT INTO comment(Comment, Author, IdArticle) values (?, ?, ?)'
    );
    $query->execute([$comment['comment'], $comment['author'],$comment['idArticle']]);

}




// --------------------------------------------------------------------------------------
// CODE PRINCIPAL
// --------------------------------------------------------------------------------------

// Si l'utilisateur n'a pas saisi de titre à la tâche alors on ne l'ajoute pas.
if(empty($_POST['author']) == false) // ou if($_POST['title'] != '')
{
    // Récupération des données de formulaire.
    $comment['author']   = $_POST['author'];
    $comment['comment']    = $_POST['comment'];   
    $comment['idArticle']    = $_POST['idArticle'];

    // Ajout de la tâche aux tâches existantes.

    addComment($comment);

}
$id=$_POST['idArticle'];

header('Location: ../showPost.php?id='.$id);



