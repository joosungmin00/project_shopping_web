// 이벤트 소스에 이벤트 리스너 등록
document.querySelector('#id').addEventListener('input', event => {
   idCheck(event);
});

document.querySelector('#pw').addEventListener('input', event => {
   pwCheck(event);
});

document.querySelector('#email').addEventListener('input', event => {
   emailCheck(event);
});

async function idCheck(event) {
   let inputId = event.target.value;
   // 유효 아이디 체크
   if (Validator.isId(inputId)) {
      const exist = await httpRequestForIdCheck(inputId);
      if (exist) {
         showMessage(false, "이미 사용중인 아이디입니다.");
      } else {
         showMessage(true, "사용 가능한 아이디입니다.");
      }
   } else {
      showMessage(false, "아이디는 6~12자 사이의 영문/숫자만 사용 가능합니다.");
   }
}

function httpRequestForIdCheck(inputId) {
   const url = `/mall/customer/idcheck?id=${inputId}`;
   return fetch(url).then(response => response.json());
}

// 아이디 중복 결과 출력
function showMessage(valid, message) {
   const view = document.querySelector("#dup-result1");
   if (view) {
      if (valid) {
         view.innerHTML = message;
         view.className = "text-primary";
      } else {
         view.innerHTML = message;
         view.className = "text-danger";
      }
   }
}


// 비밀번호 체크
function pwCheck(event) {
   const pw = document.querySelector("#dup-result2");
   let inputPw = event.target.value;
   const trueMessage = '사용 가능한 비밀번호입니다.';
   const falseMessage = '비밀번호는 6~12자만 입력하세요';
   // 유효 비밀번호 체크
   if (Validator.isPassword(inputPw)) {
      pw.innerHTML = trueMessage;
      pw.className = "text-primary";
   } else {
      pw.innerHTML = falseMessage;
      pw.className = "text-danger";
   }
}





// 이메일 체크
function emailCheck(event) {
   const email = document.querySelector("#dup-result3");
   let inputEmail = event.target.value;
   // 유효 이메일 체크
   if (Validator.isEmail(inputEmail)) {
      email.innerHTML = "사용 가능한 이메일입니다.";
      email.className = "text-primary";
   } else {
      email.innerHTML = "이메일 형식이 올바르지 않습니다.";
      email.className = "text-danger";
   }
}



//결과버튼
document.querySelector('#id').addEventListener('input', validateForm);
document.querySelector('#pw').addEventListener('input', validateForm);
document.querySelector('#email').addEventListener('input', validateForm);

function validateForm() {
  const inputId = document.querySelector('#id').value;
  const inputPw = document.querySelector('#pw').value;
  const inputEmail = document.querySelector('#email').value;
  const signupButton = document.querySelector('#signup-button');

  const isIdValid = Validator.isId(inputId);
  const isPwValid = Validator.isPassword(inputPw);
  const isEmailValid = Validator.isEmail(inputEmail);

  if (isIdValid && isPwValid && isEmailValid) {
    signupButton.disabled = false; 
  } else {
    signupButton.disabled = true; 
  }
}








