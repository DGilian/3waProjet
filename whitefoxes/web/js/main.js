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
    let result ="";
    let temp;
    for( let i = 0; i<convert.constructor.keys.length; i++){

      console.log(Object.keys(convert));
      temp=Object.keys(convert)[i];

      result += "<li>"+convert.v[i]+"</li>"; 
    }


$('#test').html("<ul>"+result+"</ul>");
}

showQuantity();
