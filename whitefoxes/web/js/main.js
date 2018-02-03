'use strict';

let quantity = {};
let price = {};
let allQuantity = load("quantity");
let allPrice = load("price");


function updateBasket(i,x) {
  //ajout des tshirts dans localStorage
  quantity["t"+i] = Number($("#product"+i).val());
  price["p"+i] = Number(x);

  save("quantity", quantity);
  save("price", price);

  //affichage validation check sur page modele
  $("#fa"+i).removeClass("fa fa-cart-arrow-down");
  $("#fa"+i).addClass("fa fa-check");
  $("#fa"+i).addClass("green");

  setTimeout(()=>{
    $("#fa"+i).removeClass("green");
    $("#fa"+i).removeClass("fa fa-check");
    $("#fa"+i).addClass("fa fa-cart-arrow-down");
  }, 1000);
}

//sauvegarde dans localStorage au format JSON
function save(key, data) {
  let val = JSON.stringify(data);
  window.localStorage.setItem(key, val);
}

// chargement depuis localStorage
function load(key) {
  let value = window.localStorage.getItem(key);
  return JSON.parse(value);
}

// calcul + affichage du prix total du panier
function showTotalPrice(){
  let sum = 0;

  for (var key in allPrice) {
    sum += allQuantity["t"+key.slice(1)]*allPrice["p"+key.slice(1)];
  }

  if(sum == 0){
    $('#totalBasket').html("Panier vide");
  }
  else{
    $('#totalBasket').html(sum+" €");
    $('#sum').val(sum);
  }
}

// affichage page panier
function showQuantity(){

  for (let key in allQuantity) {

    if(allQuantity[key]>0){
      // affiche la quantité
      $('#t'+key.slice(1)).val(allQuantity[key]);

      // affiche les t-shirts selectionnés
      $('#art'+key.slice(1)).removeClass('hide');

      // affiche les t-shirts dans le recapitulatif de la commande
      $('#total'+key.slice(1)).removeClass('hide');
      $('#priceByQuantity'+key.slice(1)).html(allQuantity[key]);
      $('#postQuantity'+key.slice(1)).val(allQuantity[key]);
    }
    else{
      $('#art'+key.slice(1)).remove();
      $('#total'+key.slice(1)).remove();

    }
  }
  $('.hide').remove();
}

// modification de la quantité sur la page panier
function updateQuantity(id){
  allQuantity["t"+id] = Number($('#t'+id).val());
  if(allQuantity["t"+id] == 0 && allPrice["p"+id] != 0 || allQuantity["t"+id] < 0){
    allQuantity["t"+id] = 1;
  }
  save("quantity", allQuantity);

  refresh();
}

//evite de prendre en compte la modification de l'input au clavier
$(document).click(showQuantity);


// suppression article panier
function deleteArticle(id){

    $('#t'+id).val(0);
    allPrice["p"+id] = 0;

    updateQuantity(id);
}

function refresh(){
  showQuantity();
  showTotalPrice();
}

refresh();
