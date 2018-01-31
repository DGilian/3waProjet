'use strict';

let basket = {};
let price = {};
let tQuantity = load("quantity");
let tPrice = load("price");


// mise à jours du panier
function updateBasket(i,x) {
  //ajout des tshirts dans localStorage
  basket["t"+i] = Number($("#a"+i).val());
  price["p"+i] = Number(x);

  save("quantity", basket);
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


// affichage page panier
function showQuantity(){

  for (let key in tQuantity) {

    if(tQuantity[key]>0){
      // affiche la quantité
      $('#t'+key.slice(1)).val(tQuantity[key]);
      // affiche les t-shirts selectionnés
      $('#art'+key.slice(1)).removeClass('hide');

      // affiche les t-shirts dans le recapitulatif de la commande
      $('#total'+key.slice(1)).removeClass('hide');
      $('#priceByQuantity'+key.slice(1)).html(tQuantity[key]);
    }
    else{
      $('#art'+key.slice(1)).addClass('hide');
      $('#total'+key.slice(1)).addClass('hide');
    }
  }
}

// calcul + affichage du prix total du panier
function showTotalPrice(){
  let sum = 0;

  for (var key in tPrice) {
    sum += tQuantity["t"+key.slice(1)]*tPrice["p"+key.slice(1)];
  }

  if(sum == 0){
    $('#totalBasket').html("Panier vide");
  }
  else{
    $('#totalBasket').html(sum+" €");
    $('#sum').val(sum);
  }
}

// modification de la quantité sur la page panier
function updateQuantity(id){
  tQuantity["t"+id] = Number($('#t'+id).val());
  if(tQuantity["t"+id] == 0 && tPrice["p"+id] != 0 || tQuantity["t"+id] < 0){
    tQuantity["t"+id] = 1;
  }
  save("quantity", tQuantity);

  refresh();
}

//evite de prendre en compte la modification de l'input au clavier
$(document).click(showQuantity);

// suppression article panier
function deleteArticle(id){

    console.log("hello");
    $('#t'+id).val(0);
    tPrice["p"+id] = 0;

    updateQuantity(id);
}


//gestion ajax envoi formulaire
let cartContent = tQuantity;
console.log(cartContent);
$("#sendCommand").click(function(){
  $.ajax({
      // controller : Cart, method update(), registered as POST
      url: 'cart/update',
      // convert JSON data into string format
      data: JSON.stringify(cartContent),
      method: 'post',
      dataType: 'json',
      contentType: 'application/json; charset=utf-8'
  }).done(function (success) {
      if (success) {
          document.location = 'cart';
      } else {
          alert('Impossible de mettre à jour votre panier, veuillez réessayer...');
      }
  });
});

function refresh(){
  showQuantity();
  showTotalPrice();
}

refresh();
