window.addEventListener('turbolinks:load', ()=>{
  const pullDownObject = document.getElementById("start-btn");
  const pullDownLists = document.getElementById("top-pulldown-lists");
 pullDownObject.addEventListener('click', ()=>{
   if (pullDownLists.getAttribute("style") =="display:block;") {
     pullDownLists.removeAttribute("style","display:block;")
   } else{
     pullDownLists.setAttribute("style","display:block;")
   }
 });
});