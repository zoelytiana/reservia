<!--<article>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in sagittis urna, nec molestie ipsum. Fusce at augue tincidunt diam interdum bibendum eu eu nisi. Sed justo arcu, tincidunt eu malesuada vitae, gravida in sapien. Quisque blandit nulla eget velit scelerisque congue. Phasellus efficitur massa non nulla placerat vulputate. Integer vitae nibh sapien. Suspendisse a lectus condimentum, pharetra lacus eu, feugiat nibh.
</article>
-->


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
    'SELECT * FROM Article'
);
$query->execute();
$articles = $query->fetchAll();
foreach($articles as $article){
    echo $article['Title']." ".$article['Description'];
}


