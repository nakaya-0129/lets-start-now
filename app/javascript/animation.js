function first(){
  document.getElementById('first-text').classList.add('show')
};

function  second(){
 document.getElementById('second-text').classList.add('show')
};

window.document.addEventListener('turbolinks:load',function(){
  setTimeout(first,3000);
  setTimeout(second,8000);
});

setTimeout(first,3000);
setTimeout(second,8000);