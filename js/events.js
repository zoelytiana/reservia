'use strict';

/***************************************************************************************/
/**************************** EVENEMENTS CARNET D'ADRESSES *****************************/
/***************************************************************************************/
function ajaxAffiche(htmlArticle){
    $('#article-list').html(htmlArticle);
}

function ajaxAfficheSavoir(htmlArticle){
    $('#savoir').html(htmlArticle);
}

function onClickAddUser()
{
    console.log("add")
    // Réinitialisation du formulaire (efface les champs texte, etc.).
    console.log($("#email").val()); 
    console.log($("#userName").val()); 
    if ($("#email").val()!="" & $("#userName").val()!=""){
        let src='selectUser.php?email='+$("#email").val()+'&userName='+$("#userName").val();
        //alert(src);
        $.getJSON(src, function(result){ 
        $.each(result, function(i, field){                
        console.log(field.reponse); 
        if(field.reponse=='non'){
            $('#session').html($("#userName").val());
            $('#form').trigger('reset');
            $( "#identification" ).hide( "slow" );            
            $( "#form" ).show( "slow" );   
        }else{$('#erreur').html("Utilisateur existe déjà, <a href='login.php'>Connexion</a>");}  
        });          
        }); 
    }  
 
}

function onClickAddComment()
{
    console.log("add")
    // Réinitialisation du formulaire (efface les champs texte, etc.).
    $('#comment-form').trigger('reset');

    // Basculement du formulaire en mode ajout puis affichage.
    $('#comment-form').show();
}

function onClickDeleteArticle()
{
    let index = $(this).data('index');
    let src='php/remove.php?id='+index;
    $.get(src, ajaxAffiche);
}


function onClickSaveArticle()
{
    $('#article-form').fadeOut('slow');
    $('#article-details').hide();
}

function onClickSaveComment()
{
    $('#comment-form').fadeOut('slow');
}


function onClickService()
{
    let index = $(this).data('index');
    console.log(index);
    let src='selectSavoir.php?id='+index;
    //alert(src);
   $.get(src,ajaxAfficheSavoir)
}


function onClickUpdateArticle()
{
    $('#article-form').data('mode', 'modif');//ici je modifie la valeur de data-mode en 'modif'
    console.log($('#article-form').data('mode'));
    let index = $(this).data('index');
    ShowArticleDetails(index);
}


function onClickEditArticle()
{
    let index = $(this).data('index');
    ShowCommentDetails(index);
}