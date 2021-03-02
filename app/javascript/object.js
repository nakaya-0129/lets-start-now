window.addEventListener('load', ()=>{
  const pullDownObject = document.getElementById("lists");
  const pullDownLists = document.getElementById("side-lists");
 pullDownObject.addEventListener('click', ()=>{
   if (pullDownLists.getAttribute("style") =="display:block;") {
     pullDownLists.removeAttribute("style","display:block;")
   } else{
     pullDownLists.setAttribute("style","display:block;")
   }
 });
});

window.addEventListener('load', ()=>{
  const pullDownObject = document.getElementById("search-lists");
  const pullDownLists = document.getElementById("search-list");
 pullDownObject.addEventListener('click', ()=>{
   if (pullDownLists.getAttribute("style") =="display:block;") {
     pullDownLists.removeAttribute("style","display:block;")
   } else{
     pullDownLists.setAttribute("style","display:block;")
   }
 });
});

window.addEventListener('load', ()=>{
  const likeObject = document.getElementById("search-name");
  likeObject.addEventListener('click', ()=>{
  document.getElementById("like-list").classList.add("active");
 });
});

window.addEventListener('load', ()=>{
  const likeObject = document.getElementById("like-close");
  likeObject.addEventListener('click', ()=>{
  document.getElementById("like-list").classList.remove("active");
 });
});