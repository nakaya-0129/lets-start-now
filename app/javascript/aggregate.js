window.addEventListener('turbolinks:load', ()=>{
  const modalObject = document.getElementById("aggregate-menu");
 modalObject.addEventListener('click', ()=>{
  document.getElementById("aggregate-note").classList.add("active");
 });
});

window.addEventListener('turbolinks:load', ()=>{
  const listAggregate = document.getElementById("ifthen-list");
  const listClose = document.getElementById("list-close");
  listAggregate.addEventListener('click', ()=>{
  document.getElementById("ifthen-index").classList.add("active");
 });
 listClose.addEventListener('click',()=>{
  document.getElementById("ifthen-index").classList.remove("active");
 })
});

window.addEventListener('turbolinks:load', ()=>{
  const modalObject = document.getElementById("close");
 modalObject.addEventListener('click', ()=>{
  document.getElementById("aggregate-note").classList.remove("active");
 });
});


window.addEventListener('turbolinks:load', ()=>{
  const pullDownObject = document.getElementById("note-btn");
  const pullDownLists = document.getElementById("note-lists");
 pullDownObject.addEventListener('click', ()=>{
   if (pullDownLists.getAttribute("style") =="display:block;") {
     pullDownLists.removeAttribute("style","display:block;")
   } else{
     pullDownLists.setAttribute("style","display:block;")
   }
 });
});

function first(){
  document.getElementById('note-title').classList.add('show')
};

function  second(){
 document.getElementById('note-info').classList.add('show')
};

window.document.addEventListener('turbolinks:load',function(){
  setTimeout(first,3000);
  setTimeout(second,8000);
});

setTimeout(first,3000);
setTimeout(second,8000);
