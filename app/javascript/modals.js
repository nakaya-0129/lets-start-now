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