'use strict';

let basket = {};
let price = {};

// mise à jours du panier
function updateBasket(i,x) {
  basket["t"+i] = Number($("#a"+i).val());
  //console.log(basket);

  price["p"+i] = Number(x);
  //console.log(price);
  save("quantity", basket);
  save("price", price)
}

//sauvegarde des tshirts selectionnés dans localStorage
function save(key, data) {
  let val = JSON.stringify(data);
  window.localStorage.setItem(key, val);
}

// chargement des tshirts depuis le localStorage
function load(key) {
  let value = window.localStorage.getItem(key);
  return JSON.parse(value);
}

let tQuantity = load("quantity");
let tPrice = load("price");

function showQuantity(){

  for (let key in tQuantity) {
    // affiche la quantité
    if(tQuantity[key]>0){
      $('#t'+key.slice(1)).val(tQuantity[key]);
      // affiche les t-shirts selectionnés
      $('#art'+key.slice(1)).removeClass('hide');

      // affiche les t-shirts dans le recapitulatif de la commande
      $('#total'+key.slice(1)).removeClass('hide');
      $('#priceByQuantity'+key.slice(1)).html(tQuantity[key]);
    }
  }
}

// calcul + affichage du prix total du panier
function showTotalPrice(){
  let sum = 0;

  for (var key in tPrice) {
    sum += tQuantity["t"+key.slice(1)]*tPrice["p"+key.slice(1)];
  }
  $('#totalBasket').html(sum+" €");
}

// modification de la quantité sur la pange panier
function updateQuantity(id){

  tQuantity["t"+id] = Number($('#t'+id).val());
  save("quantity", tQuantity);
  showTotalPrice();
  showQuantity()
}
showQuantity();
showTotalPrice();
