// 페이지가 로드될 때 장바구니 목록을 불러와서 보여주는 함수
/**async function loadCartItems() {
    try {
        const response = await fetch(`/mall/cart/`, {
            method: "GET",
            headers: {
                "Content-Type": "application/json",
            },
        });

        if (response.ok) {
            const cartList = await response.json();
            const tbody = document.getElementById("tBody");
            tbody.innerHTML = ""; // 기존의 테이블 내용 초기화

            cartList.forEach((entry) => {
                const tr = document.createElement("tr");
                tr.innerHTML = `
                    <td><a href="#"><img src="${entry.value.p_img}" alt="Image"></a></td>
                    <td><a href="#">${entry.value.p_name}</a></td>
                    <td>$${entry.value.saleprice}</td>
                    <td>
                        <div class="qtyy">
                            <button class="btn-minus"><i class="fa fa-minus"></i></button>
                            <input type="text" value="${entry.value.quantity}" name="quantity" readonly>
                            <button class="btn-plus"><i class="fa fa-plus"></i></button>
                        </div>
                    </td>
                    <td>$${entry.value.saleprice * entry.value.quantity}</td>
                    <td>
                        <button class="btn-remove" data-productid="${entry.value.product_id}">Remove</button>
                    </td>`;
                tbody.appendChild(tr);
            });
        } else {
            alert("장바구니 목록을 불러오는데 실패했습니다.");
        }
    } catch (error) {
        console.error("Error occurred during loading cart items:", error);
        alert("장바구니 목록을 불러오는 중 오류가 발생했습니다.");
    }
}

// 페이지가 로드될 때 장바구니 목록을 불러와서 보여줌
document.addEventListener("DOMContentLoaded", () => {
    loadCartItems();
});*/

// 삭제 버튼 클릭 시의 코드
const removeButtons = document.querySelectorAll(".btn-remove");
removeButtons.forEach((button) => {
    button.addEventListener("click", async () => {
        const productId = button.dataset.productid;
        if (confirm("정말 삭제하시겠습니까?")) {
            try {
                const response = await fetch(`/mall/cart/remove?productId=${productId}`, {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                    },
                    body: JSON.stringify({ productId: productId }),
                });

                if (response.ok) {
                    // 삭제 성공 시, 해당 행 제거
                    alert('삭제에 성공했습니다');
                    const row = button.closest("tr");
                    row.remove();
                    location.reload();
                } else {
                    alert("삭제에 실패했습니다.");
                }
            } catch (error) {
                console.error("Error occurred during remove request:", error);
                alert("삭제 요청 중 오류가 발생했습니다.");
            }
        }
    });
});