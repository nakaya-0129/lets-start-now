window.document.addEventListener('scroll',()=>{
const targetElement = document.querySelectorAll(".top-lists");
for (let i = 0; i< targetElement.length; i++){
  const getElementDistance =targetElement[i].getBoundingClientRect().top + targetElement[i].clientHeight * 0.6;
    if(window.innerHeight > getElementDistance){
      targetElement[i].classList.add("show");
    }else if(window.innerHeight < getElementDistance){
      targetElement[i].classList.remove("show");
    }
}
});

window.document.addEventListener('scroll',()=>{
  const targetElement = document.querySelectorAll(".contents-text");
  for (let i = 0; i< targetElement.length; i++){
    const getElementDistance =targetElement[i].getBoundingClientRect().top + targetElement[i].clientHeight * 0.6;
      if(window.innerHeight > getElementDistance){
        targetElement[i].classList.add("show");
      }else if(window.innerHeight < getElementDistance){
        targetElement[i].classList.remove("show");
      }
  }
  });

  window.document.addEventListener('scroll',()=>{
    const targetElement = document.querySelectorAll(".second-text");
    for (let i = 0; i< targetElement.length; i++){
      const getElementDistance =targetElement[i].getBoundingClientRect().top + targetElement[i].clientHeight * 0.6;
        if(window.innerHeight > getElementDistance){
          targetElement[i].classList.add("show");
        }else if(window.innerHeight < getElementDistance){
          targetElement[i].classList.remove("show");
        }
    }
    });