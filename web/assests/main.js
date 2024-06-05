/* loder start */

const preloaderWrapper = document.querySelector('.preloader-wrapper')
window.addEventListener('load', function () {
    preloaderWrapper.classList.add('fade-out-animation');
});


/* loder end */


let dropdownBtn = document.getElementById("drop-text");
let list = document.getElementById("list");
let icon = document.getElementById("icon");
dropdownBtn.onclick = function () {
    //rotate arrow icons
    if (list.classList.contains("show")) {

    } else {
        icon.style.rotate = "0deg";
    }
    list.classList.toggle("show");
};
window.onclick = function (e) {
    if (
            e.target.id !== "drop-text" &&
            e.target.id !== "span" &&
            e.target.id !== "icon"
            )

    {

        icon.style.rotate = "0deg";
        list.classList.remove("show");
    }
};



/*cart*/


function add_cart(pId, pName, pPrice)
{
    let cart = localStorage.getItem("cart");
    if (cart == null)
    {
        let products = [];
        let product = {productId: pId, productName: pName, productQuantity: 1, productPrice: parseInt(pPrice)};
        products.push(product);
        localStorage.setItem("cart", JSON.stringify(products));
        console.log("Product Added for first time")
        showToast("Product is added to cart")
    } else {

        let pcart = JSON.parse(cart);
        let oldProduct = pcart.find((item) => item.productId == pId)
        if (oldProduct)
        {
            oldProduct.productQuantity = oldProduct.productQuantity + 1;
            pcart.map((item) => {
                if (item.productId == oldProduct.productId)
                {
                    item.productQuantity = oldProduct.productQuantity
                }

            })
            localStorage.setItem("cart", JSON.stringify(pcart));
            console.log("Product quantity is increased")
            showToast(oldProduct.productName + " Product quantity increased")

        } else {

            let product = {productId: pId, productName: pName, productQuantity: 1, productPrice: parseInt(pPrice)};
            pcart.push(product)
            localStorage.setItem("cart", JSON.stringify(pcart));
            console.log("Product is added")
            showToast("Product is added to cart")
        }

    }



}

function updateCart()
{
    let cartString = localStorage.getItem("cart");
    let cart = JSON.parse(cartString);
    if (cart == null || cart.length == 0)
    {
        console.log("Cart is empty!!")
        $(".cart-items").html("(0)");
        $(".cart-body").html("<h3>Cart does not have any item</h3>");
        $(".checkout-btn").attr('disabled', true);
    } else
    {
        console.log(cart)
        $(".cart-items").html(`(${cart.length})`);
        let table = `
                                <table class='table'>
                <thead class='thread-light'>
                  <tr>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total Price</th>
                    <th>Remove</th>
                  </tr>
                </thead>

                `;
        let totalPrice = 0;
        cart.map((item) => {
            table += `
                <tr>
                    <td>${item.productName}</td>
                    <td>${item.productPrice}</td>
                    <td>${item.productQuantity}</td>
                    <td>${item.productQuantity * item.productPrice}</td>
                    <td><button onclick='deleteFromCart(${item.productId})' type="button" class="btn btn-danger">Remove</button></td>
                  </tr>


            `

            totalPrice += item.productPrice * item.productQuantity;
        })



        table = table + `

        <tr>
        <td colspan='5' class='text-right font-weight-bold m-5'> Total Price: Rs <span class="cart-tot"> ${totalPrice}</span>
        </td>
        </tr>


        </table>`
        $(".cart-body").html(table);
        $(".checkout-btn").attr('disabled', false);
        $("#cartTotalPrice").text(totalPrice.toFixed(2));

    }

}



function deleteFromCart(pId)
{
    let cart = JSON.parse(localStorage.getItem('cart'));

    let newcart = cart.filter((item) => item.productId != pId)

    localStorage.setItem('cart', JSON.stringify(newcart))
    updateCart();

    showToast("Product removed from cart")

}


$(document).ready(function () {
    updateCart()


})

let cartString = localStorage.getItem("cart");
let cart = JSON.parse(cartString);
let totalPrice = 0;

if (cart) {
    cart.forEach(item => {
        totalPrice += item.productPrice * item.productQuantity;
    });
}


let dividedTotalPrice = totalPrice / 325;

document.getElementById("totalPrice").innerText = dividedTotalPrice.toFixed(2);


function clearCart() {
    // Remove the cart data from local storage
    localStorage.removeItem("cart");

    // Update the cart display
    updateCart();
}

$("#logout").on("click", function () {
    clearCart();
});
/*cart*/


function showToast(content)
{
    $("#toast").addClass("display");
    $("#toast").html(content);


    setTimeout(() => {
        $("#toast").removeClass("display");
    }, 2000)
}



paypal.Buttons({
    createOrder: function (data, actions) {
        // Fetch the total price from the cart
        let cartString = localStorage.getItem("cart");
        let cart = JSON.parse(cartString);
        let totalPrice = 0;

        if (cart) {
            cart.forEach(item => {
                totalPrice += item.productPrice * item.productQuantity;
            });
        }

        // Convert the total price to USD by dividing it
        let totalPriceUSD = totalPrice / 325; // Assuming the conversion rate is 325

        // Set up the transaction with the dynamic total price in USD
        return actions.order.create({
            purchase_units: [{
                    amount: {
                        value: totalPriceUSD.toFixed(2), // Pass the total price in USD here, rounded to 2 decimal places
                        currency_code: 'USD' // Specify the currency code
                    }
                }]
        });
    },

    onApprove: function (data, actions) {
        return actions.order.capture().then(function (details) {

            submitOrder(details);



            clearCart();


        });
    }

}).render('#paypal-button-container');





function sendEmail() {

    var userEmailValue = document.getElementById('userEmail').value;
    var userNameValue = document.getElementById('userName').value;


    emailjs.init("HOulsnQ1G4ina9ns4");


    var params = {
        to_email: userEmailValue,
        from_name: 'Your Name',
        to_name: userNameValue
    };



    emailjs.send("service_cko1ztr", "template_oki38xq", params)
            .then(function (response) {
                console.log('Email sent successfully:', response);
            }, function (error) {
                console.log('User Email:', userEmail);

                console.error('Error sending email:', error);
            });
}


function submitOrder(details) {
    var customerName = document.getElementById('userName').value;
    var customerEmail = document.getElementById('userEmail').value;
    var customerAddress = document.getElementById('userAddress').value;
    var customerZip = document.getElementById('userZip').value;
    let payerName = details.payer.name.given_name;
    let productDetails = [];

    // Extract product details from localStorage
    let cartString = localStorage.getItem("cart");
    let cart = JSON.parse(cartString);

    if (cart) {
        cart.forEach(item => {
            productDetails.push({
                productId: item.productId,
                productName: item.productName,
                productQuantity: item.productQuantity,
                productTotalPrice: item.productQuantity * item.productPrice
            });
        });
    }

    // Create a form element in memory
    let form = document.createElement("form");
    form.method = "post";
    form.action = "orderservlet"; // Change this to the appropriate action URL

    // Add payerName as a hidden input field
    form.innerHTML += `<input type="hidden" name="customerName" value="${customerName}">`;
    form.innerHTML += `<input type="hidden" name="customerEmail" value="${customerEmail}">`;
    form.innerHTML += `<input type="hidden" name="customerAddress" value="${customerAddress}">`;
    form.innerHTML += `<input type="hidden" name="customerZip" value="${customerZip}">`;
    form.innerHTML += `<input type="hidden" name="payerName" value="${payerName}">`;

    // Add product details as hidden input fields
    productDetails.forEach((product, index) => {
        for (const key in product) {
            form.innerHTML += `
                <input type="hidden" name="productDetails[${index}][${key}]" value="${product[key]}">
            `;
        }
    });

    // Append the form to the body and submit it
    document.body.appendChild(form);
    form.submit();


}






// external.js

