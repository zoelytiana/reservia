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
    'SELECT * FROM article'
);

$id = $_GET['id'];

$query->execute([$id]);
$articles = $query->fetchAll();

?>
<!-- Formulaire listant toutes les tâches existantes avec possibilité de suppression. -->
<?php if(empty($articles) == false): ?>
			<!-- Formulaire listant toutes les tâches existantes avec possibilité de suppression. -->
            <table id="article-list">
                <tr><td>Titre</td><td>Article</td><td>Auteur</td><td>Categorie</td><td>Action</td></tr>
					<?php foreach($articles as $articleData): ?>
						<tr><td><h2><?= $articleData['Title'] ?></h2></td>
                        <td><?= $articleData['Description'] ?></td>
                        <td><?= $articleData['Author'] ?></td>
                        <td><?= $articleData['IdCategorie'] ?></td>
                        <td><a class="update-article" data-index="<?= $articleData['IdArticle'] ?>"><i class="fas fa-pencil-alt"></i></a><a class="del-article" data-index="<?= $articleData['IdArticle'] ?>"><i class="fas fa-trash-alt"></i></a></td>
                        </tr>	
					<?php endforeach ?>
                </table>
			<hr>
<?php endif ?>
