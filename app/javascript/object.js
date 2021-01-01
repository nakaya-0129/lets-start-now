window.addEventListener('turbolinks:load', ()=>{
  const pullDownObject = document.getElementById("lists");
  const pullDownLists = document.getElementById("pull-down-lists");
 pullDownObject.addEventListener('click', ()=>{
   if (pullDownLists.getAttribute("style") =="display:block;") {
     pullDownLists.removeAttribute("style","display:block;")
   } else{
     pullDownLists.setAttribute("style","display:block;")
   }
 });
});