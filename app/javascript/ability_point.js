window.addEventListener('load', () => {
  const abilityPoint = document.getElementById("grow-up");
  abilityPoint.addEventListener("input", () => {
    const inputValue = abilityPoint.value;
    const addAbilityPoint = document.getElementById("ability-point");
    addAbilityPoint.innerHTML = inputValue * 0.7;
    Math.floor(addAbilityPoint.innerHTML);
  });
});