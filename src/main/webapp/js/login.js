const signUpBtn = document.getElementById("signUp");
const signInBtn = document.getElementById("signIn");
const container = document.querySelector(".con");
const qqq = document.querySelector("#qqq");






function signup(container){
  window.onload=function(){
    container.classList.add("right-panel-active");  
  }
}


if(qqq){
qqq.addEventListener("click", ()=>{
  const container = document.querySelector(".con");
  window.location.href = "login2.html";
  signup(container);
});}

if(signUpBtn){
signUpBtn.addEventListener("click", () => {
  container.classList.add("right-panel-active");
});}


if(signInBtn){
signInBtn.addEventListener("click", () => {
  container.classList.remove("right-panel-active");
});}


// qqq.addEventListener("click", ()=>{
//   window.location.href = "login2.html";
//   signup(container)});



