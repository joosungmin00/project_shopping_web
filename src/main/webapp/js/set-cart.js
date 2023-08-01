document.addEventListener("DOMContentLoaded", () => {
	const qtyDivs = document.querySelectorAll(".qtyy");
	const priceCells = document.querySelectorAll("#tBody td:nth-child(3)");
	const totalCells = document.querySelectorAll("#tBody td:nth-child(5)");
	const subTotalElement = document.getElementById("subTotal").querySelector("span");
	const grandTotalElement = document.getElementById("grandTotal").querySelector("span");
	const shippingCostElement = document.getElementById("shippingCost").querySelector("span");
	let couponLabel = document.querySelector('#couponOut');
	let couponBtn = document.querySelector('.coupon button');
	const freeShipping = document.querySelector('#freeShipping');
	// 가격과 총 가격을 업데이트하는 함수
	const updatePrice = () => {
		let subTotal = 0;
		for (let i = 0; i < qtyDivs.length; i++) {
			const input = qtyDivs[i].querySelector("input[name='quantity']");
			let quantity = parseInt(input.value);
			if (isNaN(quantity) || quantity < 0) {
				quantity = 0;
			}
			const price = parseFloat(priceCells[i].innerText.slice(1)); // 가격에서 $ 기호 제거
			const total = price * quantity;

			totalCells[i].innerText = `$${total.toFixed(2)}`;
			input.value = quantity; // 잘못된 값이 입력되면 0으로 수정
			subTotal += total;
		}
		let shippingCost = 5; // 기본 배송비는 $5로 설정
		if (subTotal >= 100) {
			shippingCost = 0; // 총 가격이 $100 이상이면 배송비는 무료로 설정
			const shippingText = `<h5>『배송비 무료 적용』
								</h5>
								`;
		freeShipping.innerHTML = shippingText;
		}else if(subTotal < 100){
			freeShipping.innerHTML = '';
		}
		
		let grandTotal = subTotal + shippingCost;

		subTotalElement.innerText = `$${subTotal.toFixed(2)}`;
		shippingCostElement.innerText = `$${shippingCost.toFixed(2)}`;
		grandTotalElement.innerText = `$${grandTotal.toFixed(2)}`;
	};
	couponBtn.addEventListener('click', () => {
		const couponText = `<div id="couponLabel">
								<label>존재하는 쿠폰이 없으며 쿠폰 기능은 준비중입니다..
								</label> 
								</div>
								`;
		couponLabel.innerHTML = couponText;
	});
	// 페이지 로드 시 가격과 총 가격 업데이트
	updatePrice();

	// input 값이 변경될 때마다 가격과 총 가격 업데이트
	qtyDivs.forEach((div) => {
		const input = div.querySelector("input[name='quantity']");
		input.addEventListener("input", () => {
			updatePrice();
		});
	});

	// 버튼 감소 클릭 이벤트
	const minusButtons = document.querySelectorAll(".btnMinus");
	minusButtons.forEach((btn) => {
		btn.addEventListener("click", () => {
			const input = btn.parentNode.querySelector("input[name='quantity']");
			let quantity = parseInt(input.value);
			if (isNaN(quantity) || quantity <= 0) {
				quantity = 0;
			} else {
				quantity--;
			}
			input.value = quantity;
			updatePrice();
		});
	});

	// 버튼 증가 클릭 이벤트
	const plusButtons = document.querySelectorAll(".btnPlus");
	plusButtons.forEach((btn) => {
		btn.addEventListener("click", () => {
			const input = btn.parentNode.querySelector("input[name='quantity']");
			let quantity = parseInt(input.value);
			if (isNaN(quantity)) {
				quantity = 1;
			} else {
				quantity++;
			}
			input.value = quantity;
			updatePrice();
		});
	});
});

