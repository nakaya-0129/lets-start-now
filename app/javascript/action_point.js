window.addEventListener('load', () => {
  const abilityPoint = document.getElementById("grow-up");
  abilityPoint.addEventListener("input", () => {
    const inputValue = abilityPoint.value;
    const addAbilityPoint = document.getElementById("action-point");
    const addAction = document.getElementById("action-complet");
    const actionValue = document.querySelector(".action")
    if(inputValue == 100){
    addAction.classList.add("action");
    addAbilityPoint.innerHTML = "目標達成おめでとう!"
    actionValue.animate({
      color: ['#409EFF','#FF409E'],
      opacity: [0,1],
    },{
      delay: 1000,
      direction: 'reverse',
      duration: 3000,
      easing: 'ease-in-out',
      fill: 'forwards',
      iterations: Infinity
    });
  }else if(inputValue <= 99 && inputValue >= 80){
    addAction.classList.add("show")
    addAbilityPoint.innerHTML ="素晴らしい結果です！"
    actionValue.animate({
      color: ['//#region '],
      opacity: [0,1],
        delay: 1000,
        duration: 3000,
        iterations: Infinity
    })
  }else{
    addAbilityPoint.innerHTML ="結果をノートに記録しよう！"
    actionValue.animate({
      color: ['#409EFF']
    });
  }
  });
});

