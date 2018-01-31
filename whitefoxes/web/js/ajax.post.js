var cartContent = {};

// TODO foreach product in local storage
var idProduct, productQuantity;
idProduct = 1;
productQuantity = 2;
// TODO end foreach
cartContent[idProduct] = productQuantity;

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
        // TODO redirect to /cart
        document.location = 'cart';
    } else {
        alert('Impossible de mettre à jour votre panier, veuillez réessayer...');
    }
});