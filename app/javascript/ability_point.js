window.addEventListener('load', () => {
  const abilityPoint = document.getElementById("grow-up");
  abilityPoint.addEventListener("input", () => {
    const inputValue = abilityPoint.value;
    const addAbilityPoint = document.getElementById("ability-point");
    addAbilityPoint.innerHTML = inputValue * 0.1;
    Math.floor(addAbilityPoint.innerHTML);
    const addActionPoint = document.getElementById("action-point");
    addActionPoint.innerHTML = inputValue / 2 * 0.1 ;
    Math.floor(addActionPoint.innerHTML);
  });
});