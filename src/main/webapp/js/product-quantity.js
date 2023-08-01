 const addToCartButton = document.getElementById('addToCartButton');
    const quantityInput = document.getElementById('quantityInput');


    addToCartButton.addEventListener('click', () => {
        const productId = addToCartButton.getAttribute('data-productid');
        const quantity = quantityInput.value;

        const cartUrl = `/mall/cart?productId=${productId}&quantity=${quantity}`;
        window.location.href = cartUrl;
    });