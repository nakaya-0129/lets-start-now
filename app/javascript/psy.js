document.addEventListener('load',()=>{
  const title = document.querySelectorAll('.psy-menu');

 for(let i =0; i < title.length; i++){
   let titleEach = title[i];
   let content = titleEach.nextElementSibling;
   titleEach.addEventListener('click',()=>{
     titleEach.classList.toggle('is-active');
     content.classList.toggle('is-open');
   });
 }  
});