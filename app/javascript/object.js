window.addEventListener('turbolinks:load', ()=>{
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

window.addEventListener('turbolinks:load', ()=>{
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

window.addEventListener('turbolinks:load', ()=>{
  const pullDownObject = document.getElementById("search-name");
  const pullDownLists = document.getElementById("search-user");
 pullDownObject.addEventListener('click', ()=>{
   if (pullDownLists.getAttribute("style") =="display:block;") {
     pullDownLists.removeAttribute("style","display:block;")
   } else{
     pullDownLists.setAttribute("style","display:block;")
   }
 });
});
