document.addEventListener('turbolinks:load',()=>{
  const title = document.querySelectorAll('.aggregate-menu');

 for(let i =0; i < title.length; i++){
   let titleEach = title[i];
   let contents = titleEach.nextElementSibling;
   titleEach.addEventListener('click',()=>{
     titleEach.classList.toggle('is-active');
     contents.classList.toggle('is-open');
   });
 }  
});