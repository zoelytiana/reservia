<?
// --------------------------------------------------------------------------------------
// CONNEXION BDD
// --------------------------------------------------------------------------------------

$pdo = new PDO('mysql:host=localhost;dbname=blog;port=3306', 'root', 'root');
$pdo->exec('SET NAMES UTF8');

// --------------------------------------------------------------------------------------
// CODE PRINCIPAL
// --------------------------------------------------------------------------------------

   


//if(empty($_POST['id']) == false){
    echo $_POST['idArticle']. $_POST['title'].$_POST['description']. $_POST['author']. $_POST['categorie'];

    $query = $pdo->prepare
    (
        "UPDATE article SET Title = ?, Description = ?, Author = ?, IdCategorie = ? WHERE IdArticle = ?"
    );
    $query->execute([$_POST['title'],$_POST['description'], $_POST['author'], $_POST['categorie'], $_POST['idArticle']]);
//}


//include("php/selectAll.php");
header('Location: ../index.php');