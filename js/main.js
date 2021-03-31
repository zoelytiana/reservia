'use strict';

/************************************************************************************/
/********************************** CODE PRINCIPAL **********************************/
/************************************************************************************/

/*
 * Installation d'un gestionnaire d'évènement déclenché quand l'arbre DOM sera
 * totalement construit par le navigateur.
 */

$( "#icon_search" ).click(function() {
    $( "#search" ).show( "slow" );
    });
    
$(function()
{
    // Installation des gestionnaires d'évènements.
    $('#btn_ok').on('click', onClickAddUser);

    $('#btn_enregistrer').on('click', onClickUpdateArticle);

    $('.service').on('click', onClickService);
});