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
    'SELECT * FROM savoir WHERE idService=?'
);

$id = $_GET['id'];

$query->execute([$id]);
$savoirs = $query->fetchAll();

?>
<!-- Formulaire listant toutes les tâches existantes avec possibilité de suppression. -->
<?php if(empty($savoirs) == false): ?>
			<!-- Formulaire listant toutes les tâches existantes avec possibilité de suppression. -->
            <fieldset>
                    <legend>choisir les savoir-faire</legend>
					<?php foreach($savoirs as $savoirData): ?>
						<input id="<?=$savoirData['nameSavoir']?>" type="checkbox" name="<?=$savoirData['nameSavoir']?>" value="<?=$savoirData['idSavoir']?>">
                        <label for="<?=$savoirData['nameSavoir']?>" class="savoir "><?=$savoirData['nameSavoir']?></label>
					<?php endforeach ?>
                    </fieldset>
<?php endif ?>
