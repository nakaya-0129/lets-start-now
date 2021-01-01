window.addEventListener('turbolinks:load', () => {
  const abilityPoint = document.getElementById("grow-up");
  abilityPoint.addEventListener("input", () => {
    const inputValue = abilityPoint.value;
    const addAbilityPoint = document.getElementById("action-point");
    const actionValue = document.querySelector(".action")
    if(inputValue == 100){
    addAbilityPoint.innerHTML = "目標達成おめでとう!"
    actionValue.animate({
      color: ['#409EFF','#FF409E']
    },{
      duration: 1000,
      iterations: Infinity
    });
  }else if(inputValue <= 99 && inputValue >= 80){
    addAbilityPoint.innerHTML ="素晴らしい結果です！"
    actionValue.animate({
    })
  }else{
    addAbilityPoint.innerHTML ="結果をノートに記録しよう！"
    actionValue.animate({
      color: ['#409EFF']
    });
  }
  });
});

