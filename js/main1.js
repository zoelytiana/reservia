'use strict';

/************************************************************************************/
/********************************** CODE PRINCIPAL **********************************/
/************************************************************************************/

/*
 * Installation d'un gestionnaire d'évènement déclenché quand l'arbre DOM sera
 * totalement construit par le navigateur.
 */
$(function()
{
    // Installation des gestionnaires d'évènements.
    $('##btn_ok').on('click', onClickAddUser);
    $('#add-comment').on('click', onClickAddComment);
    //$('.update-article').on('click', onClickUpdateArticle);
    $('.del-article').on('click', onClickDeleteArticle);
    $('#save-article').on('click', onClickSaveArticle);
    $('#save-comment').on('click', onClickSaveComment);
    $('#edit-article').on('click', onClickEditArticle);

    $('.update-article').on('click', onClickUpdateArticle);
});