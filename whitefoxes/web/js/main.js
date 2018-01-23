'use strict';

let basket = {};

// mise à jours du panier
function updateBasket(i) {
  basket["v"+i] = Number($("#a"+i).val());
  console.log(basket);
  save("quantity", basket);
}

//sauvegarde des tshirts selectionnés dans localStorage
function save(key, data) {
  var val = JSON.stringify(data);
  window.localStorage.setItem(key, val);
}

// chargement des tshirts depuis le localStorage
function load(key) {
  let value = window.localStorage.getItem(key);
  return JSON.parse(value);
}

let convert = load("quantity");


function showQuantity(){

  for (var key in convert) {
    // affiche la quantité
    $('#t'+key.slice(1)).val(convert[key]);
    // affiche les t-shirts selectionnés
    $('#art'+key.slice(1)).removeClass('hide');
  }
}
showQuantity();
