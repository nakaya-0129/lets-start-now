window.addEventListener('turbolinks:load', ()=>{
  const modalObject = document.getElementById("modal-lists");
 modalObject.addEventListener('click', ()=>{
  document.getElementById("modal").classList.add("active");
  document.getElementById("mask").classList.add("active"); 
 });
});

window.addEventListener('turbolinks:load', ()=>{
  const modalObject = document.getElementById("close");
 modalObject.addEventListener('click', ()=>{
  document.getElementById("modal").classList.remove("active");
  document.getElementById("mask").classList.remove("active"); 
 });
});

window.addEventListener('turbolinks:load', ()=>{
  const modalObject = document.getElementById("modal-class");
 modalObject.addEventListener('click', ()=>{
  document.getElementById("modal-content").classList.add("active");
  document.getElementById("hobit-mask").classList.add("active"); 
 });
});

window.addEventListener('turbolinks:load', ()=>{
  const modalObject = document.getElementById("hobit-close");
 modalObject.addEventListener('click', ()=>{
  document.getElementById("modal-content").classList.remove("active");
  document.getElementById("hobit-mask").classList.remove("active"); 
 });
});

window.addEventListener('turbolinks:load', ()=>{
  const modalObject = document.getElementById("modal-userIndex");
 modalObject.addEventListener('click', ()=>{
  document.getElementById("user-contents").classList.add("active");
 });
});

window.addEventListener('turbolinks:load', ()=>{
  const modalObject = document.getElementById("user-close");
 modalObject.addEventListener('click', ()=>{
  document.getElementById("user-contents").classList.remove("active");
 });
});